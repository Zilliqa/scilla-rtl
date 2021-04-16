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
target triple = "x86_64-unknown-linux-gnu"

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

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_155"(%"$$fundef_155_env_203"* %0, %TName_Nat* %1) !dbg !4 {
entry:
  %"$$fundef_155_env_f_1018" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %0, i32 0, i32 0
  %"$f_envload_1019" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_1018", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_1019", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_155_env_iter_nat_nat_1020" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_1021" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_1020", align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_1021", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$$fundef_155_env_nat_succ_1022" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %0, i32 0, i32 2
  %"$nat_succ_envload_1023" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_1022", align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_1023", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$retval_156" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1025" = icmp ugt i64 1, %"$gasrem_1024"
  br i1 %"$gascmp_1025", label %"$out_of_gas_1026", label %"$have_gas_1027"

"$out_of_gas_1026":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1027"

"$have_gas_1027":                                 ; preds = %"$out_of_gas_1026", %entry
  %"$consume_1028" = sub i64 %"$gasrem_1024", 1
  store i64 %"$consume_1028", i64* @_gasrem, align 8
  %"$iter_nat_nat_33" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_nat_1029" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$iter_nat_nat_fptr_1030" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1029", 0
  %"$iter_nat_nat_envptr_1031" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1029", 1
  %"$f_1032" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$iter_nat_nat_call_1033" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_1030"(i8* %"$iter_nat_nat_envptr_1031", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1032"), !dbg !8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_1033", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_33", align 8, !dbg !8
  %"$iter_nat_nat_34" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$$iter_nat_nat_33_1034" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_33", align 8
  %"$$iter_nat_nat_33_fptr_1035" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_33_1034", 0
  %"$$iter_nat_nat_33_envptr_1036" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_33_1034", 1
  %"$$iter_nat_nat_33_call_1037" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_fptr_1035"(i8* %"$$iter_nat_nat_33_envptr_1036", %TName_Nat* %1), !dbg !8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_call_1037", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34", align 8, !dbg !8
  %"$iter_nat_nat_35" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_nat_34_1038" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34", align 8
  %"$$iter_nat_nat_34_fptr_1039" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_1038", 0
  %"$$iter_nat_nat_34_envptr_1040" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_1038", 1
  %"$nat_succ_1041" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$$iter_nat_nat_34_call_1042" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_34_fptr_1039"(i8* %"$$iter_nat_nat_34_envptr_1040", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1041"), !dbg !8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_34_call_1042", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_35", align 8, !dbg !8
  %"$$iter_nat_nat_35_1043" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_35", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_35_1043", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_156", align 8, !dbg !8
  %"$$retval_156_1044" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_156", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_156_1044"
}

define internal %TName_Nat* @"$fundef_153"(%"$$fundef_153_env_204"* %0, %TName_Nat* %1) !dbg !9 {
entry:
  %"$$fundef_153_env_ack_991" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %0, i32 0, i32 0
  %"$ack_envload_992" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_153_env_ack_991", align 8
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_992", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$$fundef_153_env_iter_nat_993" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %0, i32 0, i32 1
  %"$iter_nat_envload_994" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_993", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_994", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_153_env_x0_995" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %0, i32 0, i32 2
  %"$x0_envload_996" = load %TName_Nat*, %TName_Nat** %"$$fundef_153_env_x0_995", align 8
  %x0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x0_envload_996", %TName_Nat** %x0, align 8
  %"$retval_154" = alloca %TName_Nat*, align 8
  %"$gasrem_997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_998" = icmp ugt i64 1, %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %entry
  %"$consume_1001" = sub i64 %"$gasrem_997", 1
  store i64 %"$consume_1001", i64* @_gasrem, align 8
  %"$iter_nat_30" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_1002" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$iter_nat_fptr_1003" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1002", 0
  %"$iter_nat_envptr_1004" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1002", 1
  %"$ack_1005" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$iter_nat_call_1006" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_1003"(i8* %"$iter_nat_envptr_1004", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_1005"), !dbg !10
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_1006", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_30", align 8, !dbg !10
  %"$iter_nat_31" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_30_1007" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_30", align 8
  %"$$iter_nat_30_fptr_1008" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_1007", 0
  %"$$iter_nat_30_envptr_1009" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_1007", 1
  %"$$iter_nat_30_call_1010" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_fptr_1008"(i8* %"$$iter_nat_30_envptr_1009", %TName_Nat* %1), !dbg !10
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_call_1010", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_31", align 8, !dbg !10
  %"$iter_nat_32" = alloca %TName_Nat*, align 8
  %"$$iter_nat_31_1011" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_31", align 8
  %"$$iter_nat_31_fptr_1012" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_31_1011", 0
  %"$$iter_nat_31_envptr_1013" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_31_1011", 1
  %"$x0_1014" = load %TName_Nat*, %TName_Nat** %x0, align 8
  %"$$iter_nat_31_call_1015" = call %TName_Nat* %"$$iter_nat_31_fptr_1012"(i8* %"$$iter_nat_31_envptr_1013", %TName_Nat* %"$x0_1014"), !dbg !10
  store %TName_Nat* %"$$iter_nat_31_call_1015", %TName_Nat** %"$iter_nat_32", align 8, !dbg !10
  %"$$iter_nat_32_1016" = load %TName_Nat*, %TName_Nat** %"$iter_nat_32", align 8
  store %TName_Nat* %"$$iter_nat_32_1016", %TName_Nat** %"$retval_154", align 8, !dbg !10
  %"$$retval_154_1017" = load %TName_Nat*, %TName_Nat** %"$retval_154", align 8
  ret %TName_Nat* %"$$retval_154_1017"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_151"(%"$$fundef_151_env_205"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !11 {
entry:
  %"$$fundef_151_env_iter_nat_957" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %0, i32 0, i32 0
  %"$iter_nat_envload_958" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_957", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_958", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_151_env_one_959" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %0, i32 0, i32 1
  %"$one_envload_960" = load %TName_Nat*, %TName_Nat** %"$$fundef_151_env_one_959", align 8
  %one = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$one_envload_960", %TName_Nat** %one, align 8
  %"$retval_152" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_962" = icmp ugt i64 1, %"$gasrem_961"
  br i1 %"$gascmp_962", label %"$out_of_gas_963", label %"$have_gas_964"

"$out_of_gas_963":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_964"

"$have_gas_964":                                  ; preds = %"$out_of_gas_963", %entry
  %"$consume_965" = sub i64 %"$gasrem_961", 1
  store i64 %"$consume_965", i64* @_gasrem, align 8
  %x0 = alloca %TName_Nat*, align 8
  %"$gasrem_966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_967" = icmp ugt i64 1, %"$gasrem_966"
  br i1 %"$gascmp_967", label %"$out_of_gas_968", label %"$have_gas_969"

"$out_of_gas_968":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_969"

"$have_gas_969":                                  ; preds = %"$out_of_gas_968", %"$have_gas_964"
  %"$consume_970" = sub i64 %"$gasrem_966", 1
  store i64 %"$consume_970", i64* @_gasrem, align 8
  %"$ack_29" = alloca %TName_Nat*, align 8
  %"$ack_fptr_971" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_972" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_973" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$ack_call_974" = call %TName_Nat* %"$ack_fptr_971"(i8* %"$ack_envptr_972", %TName_Nat* %"$one_973"), !dbg !12
  store %TName_Nat* %"$ack_call_974", %TName_Nat** %"$ack_29", align 8, !dbg !12
  %"$$ack_29_975" = load %TName_Nat*, %TName_Nat** %"$ack_29", align 8
  store %TName_Nat* %"$$ack_29_975", %TName_Nat** %x0, align 8, !dbg !12
  %"$gasrem_976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_977" = icmp ugt i64 1, %"$gasrem_976"
  br i1 %"$gascmp_977", label %"$out_of_gas_978", label %"$have_gas_979"

"$out_of_gas_978":                                ; preds = %"$have_gas_969"
  call void @_out_of_gas()
  br label %"$have_gas_979"

"$have_gas_979":                                  ; preds = %"$out_of_gas_978", %"$have_gas_969"
  %"$consume_980" = sub i64 %"$gasrem_976", 1
  store i64 %"$consume_980", i64* @_gasrem, align 8
  %"$$fundef_153_envp_981_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_153_envp_981_salloc" = call i8* @_salloc(i8* %"$$fundef_153_envp_981_load", i64 40)
  %"$$fundef_153_envp_981" = bitcast i8* %"$$fundef_153_envp_981_salloc" to %"$$fundef_153_env_204"*
  %"$$fundef_153_env_voidp_983" = bitcast %"$$fundef_153_env_204"* %"$$fundef_153_envp_981" to i8*
  %"$$fundef_153_cloval_984" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_153_env_204"*, %TName_Nat*)* @"$fundef_153" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_153_env_voidp_983", 1
  %"$$fundef_153_env_ack_985" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %"$$fundef_153_envp_981", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_153_env_ack_985", align 8
  %"$$fundef_153_env_iter_nat_986" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %"$$fundef_153_envp_981", i32 0, i32 1
  %"$iter_nat_987" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_987", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_986", align 8
  %"$$fundef_153_env_x0_988" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %"$$fundef_153_envp_981", i32 0, i32 2
  %"$x0_989" = load %TName_Nat*, %TName_Nat** %x0, align 8
  store %TName_Nat* %"$x0_989", %TName_Nat** %"$$fundef_153_env_x0_988", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_153_cloval_984", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_152", align 8, !dbg !13
  %"$$retval_152_990" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_152", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_152_990"
}

define internal %TName_Nat* @"$fundef_149"(%"$$fundef_149_env_206"* %0, %TName_Nat* %1) !dbg !14 {
entry:
  %"$$fundef_149_env_f_941" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %0, i32 0, i32 0
  %"$f_envload_942" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_149_env_f_941", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_942", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_149_env_x_943" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %0, i32 0, i32 1
  %"$x_envload_944" = load %TName_Nat*, %TName_Nat** %"$$fundef_149_env_x_943", align 8
  %x = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x_envload_944", %TName_Nat** %x, align 8
  %"$retval_150" = alloca %TName_Nat*, align 8
  %"$gasrem_945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_946" = icmp ugt i64 1, %"$gasrem_945"
  br i1 %"$gascmp_946", label %"$out_of_gas_947", label %"$have_gas_948"

"$out_of_gas_947":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_948"

"$have_gas_948":                                  ; preds = %"$out_of_gas_947", %entry
  %"$consume_949" = sub i64 %"$gasrem_945", 1
  store i64 %"$consume_949", i64* @_gasrem, align 8
  %"$f_25" = alloca %TName_Nat*, align 8
  %"$f_950" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$f_fptr_951" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_950", 0
  %"$f_envptr_952" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_950", 1
  %"$x_953" = load %TName_Nat*, %TName_Nat** %x, align 8
  %"$f_call_954" = call %TName_Nat* %"$f_fptr_951"(i8* %"$f_envptr_952", %TName_Nat* %"$x_953"), !dbg !15
  store %TName_Nat* %"$f_call_954", %TName_Nat** %"$f_25", align 8, !dbg !15
  %"$$f_25_955" = load %TName_Nat*, %TName_Nat** %"$f_25", align 8
  store %TName_Nat* %"$$f_25_955", %TName_Nat** %"$retval_150", align 8, !dbg !15
  %"$$retval_150_956" = load %TName_Nat*, %TName_Nat** %"$retval_150", align 8
  ret %TName_Nat* %"$$retval_150_956"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_147"(%"$$fundef_147_env_207"* %0, %TName_Nat* %1) !dbg !16 {
entry:
  %"$$fundef_147_env_f_926" = getelementptr inbounds %"$$fundef_147_env_207", %"$$fundef_147_env_207"* %0, i32 0, i32 0
  %"$f_envload_927" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_147_env_f_926", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_927", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$retval_148" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_929" = icmp ugt i64 1, %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %entry
  %"$consume_932" = sub i64 %"$gasrem_928", 1
  store i64 %"$consume_932", i64* @_gasrem, align 8
  %"$$fundef_149_envp_933_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_149_envp_933_salloc" = call i8* @_salloc(i8* %"$$fundef_149_envp_933_load", i64 24)
  %"$$fundef_149_envp_933" = bitcast i8* %"$$fundef_149_envp_933_salloc" to %"$$fundef_149_env_206"*
  %"$$fundef_149_env_voidp_935" = bitcast %"$$fundef_149_env_206"* %"$$fundef_149_envp_933" to i8*
  %"$$fundef_149_cloval_936" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_149_env_206"*, %TName_Nat*)* @"$fundef_149" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_149_env_voidp_935", 1
  %"$$fundef_149_env_f_937" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %"$$fundef_149_envp_933", i32 0, i32 0
  %"$f_938" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_938", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_149_env_f_937", align 8
  %"$$fundef_149_env_x_939" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %"$$fundef_149_envp_933", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_149_env_x_939", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_149_cloval_936", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_148", align 8, !dbg !17
  %"$$retval_148_940" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_148", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_148_940"
}

define internal %TName_Nat* @"$fundef_145"(%"$$fundef_145_env_208"* %0, %TName_Nat* %1) !dbg !18 {
entry:
  %"$$fundef_145_env_f_866" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %0, i32 0, i32 0
  %"$f_envload_867" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_145_env_f_866", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_867", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_145_env_n_868" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %0, i32 0, i32 1
  %"$n_envload_869" = load %TName_Nat*, %TName_Nat** %"$$fundef_145_env_n_868", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_869", %TName_Nat** %n, align 8
  %"$$fundef_145_env_nat_fold_870" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %0, i32 0, i32 2
  %"$nat_fold_envload_871" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_145_env_nat_fold_870", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_871", { i8*, i8* }** %nat_fold, align 8
  %"$retval_146" = alloca %TName_Nat*, align 8
  %"$gasrem_872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_873" = icmp ugt i64 1, %"$gasrem_872"
  br i1 %"$gascmp_873", label %"$out_of_gas_874", label %"$have_gas_875"

"$out_of_gas_874":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_875"

"$have_gas_875":                                  ; preds = %"$out_of_gas_874", %entry
  %"$consume_876" = sub i64 %"$gasrem_872", 1
  store i64 %"$consume_876", i64* @_gasrem, align 8
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_878" = icmp ugt i64 1, %"$gasrem_877"
  br i1 %"$gascmp_878", label %"$out_of_gas_879", label %"$have_gas_880"

"$out_of_gas_879":                                ; preds = %"$have_gas_875"
  call void @_out_of_gas()
  br label %"$have_gas_880"

"$have_gas_880":                                  ; preds = %"$out_of_gas_879", %"$have_gas_875"
  %"$consume_881" = sub i64 %"$gasrem_877", 1
  store i64 %"$consume_881", i64* @_gasrem, align 8
  %"$nat_fold_882" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_883" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_882", i32 2
  %"$nat_fold_884" = bitcast { i8*, i8* }* %"$nat_fold_883" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_885" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_884", align 8
  %"$nat_fold_fptr_886" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_885", 0
  %"$nat_fold_envptr_887" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_885", 1
  %"$nat_fold_call_888" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_886"(i8* %"$nat_fold_envptr_887"), !dbg !19
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_888", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8, !dbg !20
  %"$gasrem_889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_890" = icmp ugt i64 1, %"$gasrem_889"
  br i1 %"$gascmp_890", label %"$out_of_gas_891", label %"$have_gas_892"

"$out_of_gas_891":                                ; preds = %"$have_gas_880"
  call void @_out_of_gas()
  br label %"$have_gas_892"

"$have_gas_892":                                  ; preds = %"$out_of_gas_891", %"$have_gas_880"
  %"$consume_893" = sub i64 %"$gasrem_889", 1
  store i64 %"$consume_893", i64* @_gasrem, align 8
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_892"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_892"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$$fundef_147_envp_899_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_147_envp_899_salloc" = call i8* @_salloc(i8* %"$$fundef_147_envp_899_load", i64 16)
  %"$$fundef_147_envp_899" = bitcast i8* %"$$fundef_147_envp_899_salloc" to %"$$fundef_147_env_207"*
  %"$$fundef_147_env_voidp_901" = bitcast %"$$fundef_147_env_207"* %"$$fundef_147_envp_899" to i8*
  %"$$fundef_147_cloval_902" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_147_env_207"*, %TName_Nat*)* @"$fundef_147" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_147_env_voidp_901", 1
  %"$$fundef_147_env_f_903" = getelementptr inbounds %"$$fundef_147_env_207", %"$$fundef_147_env_207"* %"$$fundef_147_envp_899", i32 0, i32 0
  %"$f_904" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_904", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_147_env_f_903", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_147_cloval_902", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8, !dbg !21
  %"$gasrem_905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_906" = icmp ugt i64 1, %"$gasrem_905"
  br i1 %"$gascmp_906", label %"$out_of_gas_907", label %"$have_gas_908"

"$out_of_gas_907":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_908"

"$have_gas_908":                                  ; preds = %"$out_of_gas_907", %"$have_gas_897"
  %"$consume_909" = sub i64 %"$gasrem_905", 1
  store i64 %"$consume_909", i64* @_gasrem, align 8
  %"$folder_26" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$folder_910" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_911" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_910", 0
  %"$folder_envptr_912" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_910", 1
  %"$step_913" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$folder_call_914" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_911"(i8* %"$folder_envptr_912", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_913"), !dbg !22
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_914", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_26", align 8, !dbg !22
  %"$folder_27" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_26_915" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_26", align 8
  %"$$folder_26_fptr_916" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_915", 0
  %"$$folder_26_envptr_917" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_915", 1
  %"$$folder_26_call_918" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_26_fptr_916"(i8* %"$$folder_26_envptr_917", %TName_Nat* %1), !dbg !22
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_26_call_918", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8, !dbg !22
  %"$folder_28" = alloca %TName_Nat*, align 8
  %"$$folder_27_919" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8
  %"$$folder_27_fptr_920" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_919", 0
  %"$$folder_27_envptr_921" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_919", 1
  %"$n_922" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_27_call_923" = call %TName_Nat* %"$$folder_27_fptr_920"(i8* %"$$folder_27_envptr_921", %TName_Nat* %"$n_922"), !dbg !22
  store %TName_Nat* %"$$folder_27_call_923", %TName_Nat** %"$folder_28", align 8, !dbg !22
  %"$$folder_28_924" = load %TName_Nat*, %TName_Nat** %"$folder_28", align 8
  store %TName_Nat* %"$$folder_28_924", %TName_Nat** %"$retval_146", align 8, !dbg !22
  %"$$retval_146_925" = load %TName_Nat*, %TName_Nat** %"$retval_146", align 8
  ret %TName_Nat* %"$$retval_146_925"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_143"(%"$$fundef_143_env_209"* %0, %TName_Nat* %1) !dbg !23 {
entry:
  %"$$fundef_143_env_f_847" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %0, i32 0, i32 0
  %"$f_envload_848" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_143_env_f_847", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_848", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_143_env_nat_fold_849" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %0, i32 0, i32 1
  %"$nat_fold_envload_850" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_143_env_nat_fold_849", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_850", { i8*, i8* }** %nat_fold, align 8
  %"$retval_144" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_852" = icmp ugt i64 1, %"$gasrem_851"
  br i1 %"$gascmp_852", label %"$out_of_gas_853", label %"$have_gas_854"

"$out_of_gas_853":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_854"

"$have_gas_854":                                  ; preds = %"$out_of_gas_853", %entry
  %"$consume_855" = sub i64 %"$gasrem_851", 1
  store i64 %"$consume_855", i64* @_gasrem, align 8
  %"$$fundef_145_envp_856_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_145_envp_856_salloc" = call i8* @_salloc(i8* %"$$fundef_145_envp_856_load", i64 32)
  %"$$fundef_145_envp_856" = bitcast i8* %"$$fundef_145_envp_856_salloc" to %"$$fundef_145_env_208"*
  %"$$fundef_145_env_voidp_858" = bitcast %"$$fundef_145_env_208"* %"$$fundef_145_envp_856" to i8*
  %"$$fundef_145_cloval_859" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_145_env_208"*, %TName_Nat*)* @"$fundef_145" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_145_env_voidp_858", 1
  %"$$fundef_145_env_f_860" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %"$$fundef_145_envp_856", i32 0, i32 0
  %"$f_861" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_861", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_145_env_f_860", align 8
  %"$$fundef_145_env_n_862" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %"$$fundef_145_envp_856", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_145_env_n_862", align 8
  %"$$fundef_145_env_nat_fold_863" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %"$$fundef_145_envp_856", i32 0, i32 2
  %"$nat_fold_864" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_864", { i8*, i8* }** %"$$fundef_145_env_nat_fold_863", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_145_cloval_859", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_144", align 8, !dbg !24
  %"$$retval_144_865" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_144", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_144_865"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_141"(%"$$fundef_141_env_210"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !25 {
entry:
  %"$$fundef_141_env_nat_fold_832" = getelementptr inbounds %"$$fundef_141_env_210", %"$$fundef_141_env_210"* %0, i32 0, i32 0
  %"$nat_fold_envload_833" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_141_env_nat_fold_832", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_833", { i8*, i8* }** %nat_fold, align 8
  %"$retval_142" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_835" = icmp ugt i64 1, %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %entry
  %"$consume_838" = sub i64 %"$gasrem_834", 1
  store i64 %"$consume_838", i64* @_gasrem, align 8
  %"$$fundef_143_envp_839_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_143_envp_839_salloc" = call i8* @_salloc(i8* %"$$fundef_143_envp_839_load", i64 24)
  %"$$fundef_143_envp_839" = bitcast i8* %"$$fundef_143_envp_839_salloc" to %"$$fundef_143_env_209"*
  %"$$fundef_143_env_voidp_841" = bitcast %"$$fundef_143_env_209"* %"$$fundef_143_envp_839" to i8*
  %"$$fundef_143_cloval_842" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_143_env_209"*, %TName_Nat*)* @"$fundef_143" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_143_env_voidp_841", 1
  %"$$fundef_143_env_f_843" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %"$$fundef_143_envp_839", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_143_env_f_843", align 8
  %"$$fundef_143_env_nat_fold_844" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %"$$fundef_143_envp_839", i32 0, i32 1
  %"$nat_fold_845" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_845", { i8*, i8* }** %"$$fundef_143_env_nat_fold_844", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_143_cloval_842", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_142", align 8, !dbg !26
  %"$$retval_142_846" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_142", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_142_846"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_139"(%"$$fundef_139_env_211"* %0) !dbg !27 {
entry:
  %"$$fundef_139_env_nat_fold_818" = getelementptr inbounds %"$$fundef_139_env_211", %"$$fundef_139_env_211"* %0, i32 0, i32 0
  %"$nat_fold_envload_819" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_139_env_nat_fold_818", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_819", { i8*, i8* }** %nat_fold, align 8
  %"$retval_140" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_821" = icmp ugt i64 1, %"$gasrem_820"
  br i1 %"$gascmp_821", label %"$out_of_gas_822", label %"$have_gas_823"

"$out_of_gas_822":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_823"

"$have_gas_823":                                  ; preds = %"$out_of_gas_822", %entry
  %"$consume_824" = sub i64 %"$gasrem_820", 1
  store i64 %"$consume_824", i64* @_gasrem, align 8
  %"$$fundef_141_envp_825_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_141_envp_825_salloc" = call i8* @_salloc(i8* %"$$fundef_141_envp_825_load", i64 8)
  %"$$fundef_141_envp_825" = bitcast i8* %"$$fundef_141_envp_825_salloc" to %"$$fundef_141_env_210"*
  %"$$fundef_141_env_voidp_827" = bitcast %"$$fundef_141_env_210"* %"$$fundef_141_envp_825" to i8*
  %"$$fundef_141_cloval_828" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_141_env_210"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_141" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_141_env_voidp_827", 1
  %"$$fundef_141_env_nat_fold_829" = getelementptr inbounds %"$$fundef_141_env_210", %"$$fundef_141_env_210"* %"$$fundef_141_envp_825", i32 0, i32 0
  %"$nat_fold_830" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_830", { i8*, i8* }** %"$$fundef_141_env_nat_fold_829", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_141_cloval_828", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_140", align 8, !dbg !28
  %"$$retval_140_831" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_140", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_140_831"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_137"(%"$$fundef_137_env_212"* %0, %TName_Nat* %1) !dbg !29 {
entry:
  %"$$fundef_137_env_f_802" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %0, i32 0, i32 0
  %"$f_envload_803" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_802", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_803", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_137_env_x_804" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %0, i32 0, i32 1
  %"$x_envload_805" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_137_env_x_804", align 8
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_805", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$retval_138" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_807" = icmp ugt i64 1, %"$gasrem_806"
  br i1 %"$gascmp_807", label %"$out_of_gas_808", label %"$have_gas_809"

"$out_of_gas_808":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_809"

"$have_gas_809":                                  ; preds = %"$out_of_gas_808", %entry
  %"$consume_810" = sub i64 %"$gasrem_806", 1
  store i64 %"$consume_810", i64* @_gasrem, align 8
  %"$f_25" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$f_811" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$f_fptr_812" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_811", 0
  %"$f_envptr_813" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_811", 1
  %"$x_814" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$f_call_815" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_812"(i8* %"$f_envptr_813", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_814"), !dbg !30
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_815", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_25", align 8, !dbg !30
  %"$$f_25_816" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_25", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_25_816", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_138", align 8, !dbg !30
  %"$$retval_138_817" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_138", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_138_817"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_135"(%"$$fundef_135_env_213"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !31 {
entry:
  %"$$fundef_135_env_f_787" = getelementptr inbounds %"$$fundef_135_env_213", %"$$fundef_135_env_213"* %0, i32 0, i32 0
  %"$f_envload_788" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_787", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_788", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$retval_136" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_790" = icmp ugt i64 1, %"$gasrem_789"
  br i1 %"$gascmp_790", label %"$out_of_gas_791", label %"$have_gas_792"

"$out_of_gas_791":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_792"

"$have_gas_792":                                  ; preds = %"$out_of_gas_791", %entry
  %"$consume_793" = sub i64 %"$gasrem_789", 1
  store i64 %"$consume_793", i64* @_gasrem, align 8
  %"$$fundef_137_envp_794_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_137_envp_794_salloc" = call i8* @_salloc(i8* %"$$fundef_137_envp_794_load", i64 32)
  %"$$fundef_137_envp_794" = bitcast i8* %"$$fundef_137_envp_794_salloc" to %"$$fundef_137_env_212"*
  %"$$fundef_137_env_voidp_796" = bitcast %"$$fundef_137_env_212"* %"$$fundef_137_envp_794" to i8*
  %"$$fundef_137_cloval_797" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_137_env_212"*, %TName_Nat*)* @"$fundef_137" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_137_env_voidp_796", 1
  %"$$fundef_137_env_f_798" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %"$$fundef_137_envp_794", i32 0, i32 0
  %"$f_799" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_799", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_798", align 8
  %"$$fundef_137_env_x_800" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %"$$fundef_137_envp_794", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_137_env_x_800", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_137_cloval_797", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8, !dbg !32
  %"$$retval_136_801" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_136_801"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_133"(%"$$fundef_133_env_214"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !33 {
entry:
  %"$$fundef_133_env_f_727" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %0, i32 0, i32 0
  %"$f_envload_728" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_727", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_728", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_133_env_n_729" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %0, i32 0, i32 1
  %"$n_envload_730" = load %TName_Nat*, %TName_Nat** %"$$fundef_133_env_n_729", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_730", %TName_Nat** %n, align 8
  %"$$fundef_133_env_nat_fold_731" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %0, i32 0, i32 2
  %"$nat_fold_envload_732" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_133_env_nat_fold_731", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_732", { i8*, i8* }** %nat_fold, align 8
  %"$retval_134" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %entry
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_736"
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem, align 8
  %"$nat_fold_743" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_744" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_743", i32 1
  %"$nat_fold_745" = bitcast { i8*, i8* }* %"$nat_fold_744" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_746" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_745", align 8
  %"$nat_fold_fptr_747" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_746", 0
  %"$nat_fold_envptr_748" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_746", 1
  %"$nat_fold_call_749" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_747"(i8* %"$nat_fold_envptr_748"), !dbg !34
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_749", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8, !dbg !35
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_741"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_756" = icmp ugt i64 1, %"$gasrem_755"
  br i1 %"$gascmp_756", label %"$out_of_gas_757", label %"$have_gas_758"

"$out_of_gas_757":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_758"

"$have_gas_758":                                  ; preds = %"$out_of_gas_757", %"$have_gas_753"
  %"$consume_759" = sub i64 %"$gasrem_755", 1
  store i64 %"$consume_759", i64* @_gasrem, align 8
  %"$$fundef_135_envp_760_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_135_envp_760_salloc" = call i8* @_salloc(i8* %"$$fundef_135_envp_760_load", i64 16)
  %"$$fundef_135_envp_760" = bitcast i8* %"$$fundef_135_envp_760_salloc" to %"$$fundef_135_env_213"*
  %"$$fundef_135_env_voidp_762" = bitcast %"$$fundef_135_env_213"* %"$$fundef_135_envp_760" to i8*
  %"$$fundef_135_cloval_763" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_135_env_213"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_135" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_135_env_voidp_762", 1
  %"$$fundef_135_env_f_764" = getelementptr inbounds %"$$fundef_135_env_213", %"$$fundef_135_env_213"* %"$$fundef_135_envp_760", i32 0, i32 0
  %"$f_765" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_765", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_764", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_135_cloval_763", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8, !dbg !36
  %"$gasrem_766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_767" = icmp ugt i64 1, %"$gasrem_766"
  br i1 %"$gascmp_767", label %"$out_of_gas_768", label %"$have_gas_769"

"$out_of_gas_768":                                ; preds = %"$have_gas_758"
  call void @_out_of_gas()
  br label %"$have_gas_769"

"$have_gas_769":                                  ; preds = %"$out_of_gas_768", %"$have_gas_758"
  %"$consume_770" = sub i64 %"$gasrem_766", 1
  store i64 %"$consume_770", i64* @_gasrem, align 8
  %"$folder_26" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$folder_771" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_772" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_771", 0
  %"$folder_envptr_773" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_771", 1
  %"$step_774" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$folder_call_775" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_772"(i8* %"$folder_envptr_773", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_774"), !dbg !37
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_775", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_26", align 8, !dbg !37
  %"$folder_27" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_26_776" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_26", align 8
  %"$$folder_26_fptr_777" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_26_776", 0
  %"$$folder_26_envptr_778" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_26_776", 1
  %"$$folder_26_call_779" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_fptr_777"(i8* %"$$folder_26_envptr_778", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1), !dbg !37
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_call_779", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8, !dbg !37
  %"$folder_28" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_27_780" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8
  %"$$folder_27_fptr_781" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_27_780", 0
  %"$$folder_27_envptr_782" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_27_780", 1
  %"$n_783" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_27_call_784" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_fptr_781"(i8* %"$$folder_27_envptr_782", %TName_Nat* %"$n_783"), !dbg !37
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_call_784", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_28", align 8, !dbg !37
  %"$$folder_28_785" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_28", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_28_785", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_134", align 8, !dbg !37
  %"$$retval_134_786" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_134", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_134_786"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_131"(%"$$fundef_131_env_215"* %0, %TName_Nat* %1) !dbg !38 {
entry:
  %"$$fundef_131_env_f_708" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %0, i32 0, i32 0
  %"$f_envload_709" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_708", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_709", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_131_env_nat_fold_710" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %0, i32 0, i32 1
  %"$nat_fold_envload_711" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_131_env_nat_fold_710", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_711", { i8*, i8* }** %nat_fold, align 8
  %"$retval_132" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %entry
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem, align 8
  %"$$fundef_133_envp_717_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_133_envp_717_salloc" = call i8* @_salloc(i8* %"$$fundef_133_envp_717_load", i64 32)
  %"$$fundef_133_envp_717" = bitcast i8* %"$$fundef_133_envp_717_salloc" to %"$$fundef_133_env_214"*
  %"$$fundef_133_env_voidp_719" = bitcast %"$$fundef_133_env_214"* %"$$fundef_133_envp_717" to i8*
  %"$$fundef_133_cloval_720" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_133_env_214"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_133" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_133_env_voidp_719", 1
  %"$$fundef_133_env_f_721" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %"$$fundef_133_envp_717", i32 0, i32 0
  %"$f_722" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_722", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_721", align 8
  %"$$fundef_133_env_n_723" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %"$$fundef_133_envp_717", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_133_env_n_723", align 8
  %"$$fundef_133_env_nat_fold_724" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %"$$fundef_133_envp_717", i32 0, i32 2
  %"$nat_fold_725" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_725", { i8*, i8* }** %"$$fundef_133_env_nat_fold_724", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_133_cloval_720", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_132", align 8, !dbg !39
  %"$$retval_132_726" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_132", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_132_726"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_129"(%"$$fundef_129_env_216"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !40 {
entry:
  %"$$fundef_129_env_nat_fold_693" = getelementptr inbounds %"$$fundef_129_env_216", %"$$fundef_129_env_216"* %0, i32 0, i32 0
  %"$nat_fold_envload_694" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_129_env_nat_fold_693", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_694", { i8*, i8* }** %nat_fold, align 8
  %"$retval_130" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_696" = icmp ugt i64 1, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %entry
  %"$consume_699" = sub i64 %"$gasrem_695", 1
  store i64 %"$consume_699", i64* @_gasrem, align 8
  %"$$fundef_131_envp_700_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_131_envp_700_salloc" = call i8* @_salloc(i8* %"$$fundef_131_envp_700_load", i64 24)
  %"$$fundef_131_envp_700" = bitcast i8* %"$$fundef_131_envp_700_salloc" to %"$$fundef_131_env_215"*
  %"$$fundef_131_env_voidp_702" = bitcast %"$$fundef_131_env_215"* %"$$fundef_131_envp_700" to i8*
  %"$$fundef_131_cloval_703" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_131_env_215"*, %TName_Nat*)* @"$fundef_131" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_131_env_voidp_702", 1
  %"$$fundef_131_env_f_704" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %"$$fundef_131_envp_700", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_704", align 8
  %"$$fundef_131_env_nat_fold_705" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %"$$fundef_131_envp_700", i32 0, i32 1
  %"$nat_fold_706" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_706", { i8*, i8* }** %"$$fundef_131_env_nat_fold_705", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_131_cloval_703", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8, !dbg !41
  %"$$retval_130_707" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_130_707"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_127"(%"$$fundef_127_env_217"* %0) !dbg !42 {
entry:
  %"$$fundef_127_env_nat_fold_679" = getelementptr inbounds %"$$fundef_127_env_217", %"$$fundef_127_env_217"* %0, i32 0, i32 0
  %"$nat_fold_envload_680" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_127_env_nat_fold_679", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_680", { i8*, i8* }** %nat_fold, align 8
  %"$retval_128" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %entry
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem, align 8
  %"$$fundef_129_envp_686_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_129_envp_686_salloc" = call i8* @_salloc(i8* %"$$fundef_129_envp_686_load", i64 8)
  %"$$fundef_129_envp_686" = bitcast i8* %"$$fundef_129_envp_686_salloc" to %"$$fundef_129_env_216"*
  %"$$fundef_129_env_voidp_688" = bitcast %"$$fundef_129_env_216"* %"$$fundef_129_envp_686" to i8*
  %"$$fundef_129_cloval_689" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_129_env_216"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_129" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_129_env_voidp_688", 1
  %"$$fundef_129_env_nat_fold_690" = getelementptr inbounds %"$$fundef_129_env_216", %"$$fundef_129_env_216"* %"$$fundef_129_envp_686", i32 0, i32 0
  %"$nat_fold_691" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_691", { i8*, i8* }** %"$$fundef_129_env_nat_fold_690", align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_129_cloval_689", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128", align 8, !dbg !43
  %"$$retval_128_692" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_128_692"
}

define internal %TName_Nat* @"$fundef_125"(%"$$fundef_125_env_218"* %0, %TName_Nat* %1) !dbg !44 {
entry:
  %"$retval_126" = alloca %TName_Nat*, align 8
  %"$gasrem_669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %entry
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem, align 8
  %"$adtval_674_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_674_salloc" = call i8* @_salloc(i8* %"$adtval_674_load", i64 9)
  %"$adtval_674" = bitcast i8* %"$adtval_674_salloc" to %CName_Succ*
  %"$adtgep_675" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_674", i32 0, i32 0
  store i8 1, i8* %"$adtgep_675", align 1
  %"$adtgep_676" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_674", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_676", align 8
  %"$adtptr_677" = bitcast %CName_Succ* %"$adtval_674" to %TName_Nat*
  store %TName_Nat* %"$adtptr_677", %TName_Nat** %"$retval_126", align 8, !dbg !45
  %"$$retval_126_678" = load %TName_Nat*, %TName_Nat** %"$retval_126", align 8
  ret %TName_Nat* %"$$retval_126_678"
}

define internal %Uint32 @"$fundef_122"(%"$$fundef_122_env_219"* %0, %TName_Nat* %1) !dbg !46 {
entry:
  %"$$fundef_122_env_one_int_661" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %0, i32 0, i32 0
  %"$one_int_envload_662" = load %Uint32, %Uint32* %"$$fundef_122_env_one_int_661", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_662", %Uint32* %one_int, align 4
  %"$$fundef_122_env_z_663" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %0, i32 0, i32 1
  %"$z_envload_664" = load %Uint32, %Uint32* %"$$fundef_122_env_z_663", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_664", %Uint32* %z, align 4
  %"$retval_123" = alloca %Uint32, align 8
  %"$z_665" = load %Uint32, %Uint32* %z, align 4
  %"$one_int_666" = load %Uint32, %Uint32* %one_int, align 4
  %"$add_call_667" = call %Uint32 @_add_Uint32(%Uint32 %"$z_665", %Uint32 %"$one_int_666")
  store %Uint32 %"$add_call_667", %Uint32* %"$retval_123", align 4, !dbg !48
  %"$$retval_123_668" = load %Uint32, %Uint32* %"$retval_123", align 4
  ret %Uint32 %"$$retval_123_668"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_120"(%"$$fundef_120_env_220"* %0, %Uint32 %1) !dbg !49 {
entry:
  %"$$fundef_120_env_one_int_646" = getelementptr inbounds %"$$fundef_120_env_220", %"$$fundef_120_env_220"* %0, i32 0, i32 0
  %"$one_int_envload_647" = load %Uint32, %Uint32* %"$$fundef_120_env_one_int_646", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_647", %Uint32* %one_int, align 4
  %"$retval_121" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_649" = icmp ugt i64 1, %"$gasrem_648"
  br i1 %"$gascmp_649", label %"$out_of_gas_650", label %"$have_gas_651"

"$out_of_gas_650":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_651"

"$have_gas_651":                                  ; preds = %"$out_of_gas_650", %entry
  %"$consume_652" = sub i64 %"$gasrem_648", 1
  store i64 %"$consume_652", i64* @_gasrem, align 8
  %"$$fundef_122_envp_653_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_122_envp_653_salloc" = call i8* @_salloc(i8* %"$$fundef_122_envp_653_load", i64 8)
  %"$$fundef_122_envp_653" = bitcast i8* %"$$fundef_122_envp_653_salloc" to %"$$fundef_122_env_219"*
  %"$$fundef_122_env_voidp_655" = bitcast %"$$fundef_122_env_219"* %"$$fundef_122_envp_653" to i8*
  %"$$fundef_122_cloval_656" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_122_env_219"*, %TName_Nat*)* @"$fundef_122" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_122_env_voidp_655", 1
  %"$$fundef_122_env_one_int_657" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %"$$fundef_122_envp_653", i32 0, i32 0
  %"$one_int_658" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_658", %Uint32* %"$$fundef_122_env_one_int_657", align 4
  %"$$fundef_122_env_z_659" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %"$$fundef_122_envp_653", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_122_env_z_659", align 4
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_122_cloval_656", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_121", align 8, !dbg !50
  %"$$retval_121_660" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_121", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_121_660"
}

define internal %Uint32 @"$fundef_118"(%"$$fundef_118_env_221"* %0, %TName_Nat* %1) !dbg !51 {
entry:
  %"$$fundef_118_env_nat_fold_570" = getelementptr inbounds %"$$fundef_118_env_221", %"$$fundef_118_env_221"* %0, i32 0, i32 0
  %"$nat_fold_envload_571" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_118_env_nat_fold_570", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_571", { i8*, i8* }** %nat_fold, align 8
  %"$retval_119" = alloca %Uint32, align 8
  %"$gasrem_572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_573" = icmp ugt i64 1, %"$gasrem_572"
  br i1 %"$gascmp_573", label %"$out_of_gas_574", label %"$have_gas_575"

"$out_of_gas_574":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_575"

"$have_gas_575":                                  ; preds = %"$out_of_gas_574", %entry
  %"$consume_576" = sub i64 %"$gasrem_572", 1
  store i64 %"$consume_576", i64* @_gasrem, align 8
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_578" = icmp ugt i64 1, %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %"$have_gas_575"
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %"$have_gas_575"
  %"$consume_581" = sub i64 %"$gasrem_577", 1
  store i64 %"$consume_581", i64* @_gasrem, align 8
  %"$nat_fold_582" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_583" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_582", i32 0
  %"$nat_fold_584" = bitcast { i8*, i8* }* %"$nat_fold_583" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_585" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_584", align 8
  %"$nat_fold_fptr_586" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_585", 0
  %"$nat_fold_envptr_587" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_585", 1
  %"$nat_fold_call_588" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_fptr_586"(i8* %"$nat_fold_envptr_587"), !dbg !52
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_call_588", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8, !dbg !53
  %"$gasrem_589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_590" = icmp ugt i64 1, %"$gasrem_589"
  br i1 %"$gascmp_590", label %"$out_of_gas_591", label %"$have_gas_592"

"$out_of_gas_591":                                ; preds = %"$have_gas_580"
  call void @_out_of_gas()
  br label %"$have_gas_592"

"$have_gas_592":                                  ; preds = %"$out_of_gas_591", %"$have_gas_580"
  %"$consume_593" = sub i64 %"$gasrem_589", 1
  store i64 %"$consume_593", i64* @_gasrem, align 8
  %one_int = alloca %Uint32, align 8
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 1, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %"$have_gas_592"
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %"$have_gas_592"
  %"$consume_598" = sub i64 %"$gasrem_594", 1
  store i64 %"$consume_598", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one_int, align 4, !dbg !54
  %"$gasrem_599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %"$have_gas_597"
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %"$have_gas_597"
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem, align 8
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_605" = icmp ugt i64 1, %"$gasrem_604"
  br i1 %"$gascmp_605", label %"$out_of_gas_606", label %"$have_gas_607"

"$out_of_gas_606":                                ; preds = %"$have_gas_602"
  call void @_out_of_gas()
  br label %"$have_gas_607"

"$have_gas_607":                                  ; preds = %"$out_of_gas_606", %"$have_gas_602"
  %"$consume_608" = sub i64 %"$gasrem_604", 1
  store i64 %"$consume_608", i64* @_gasrem, align 8
  %"$$fundef_120_envp_609_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_120_envp_609_salloc" = call i8* @_salloc(i8* %"$$fundef_120_envp_609_load", i64 4)
  %"$$fundef_120_envp_609" = bitcast i8* %"$$fundef_120_envp_609_salloc" to %"$$fundef_120_env_220"*
  %"$$fundef_120_env_voidp_611" = bitcast %"$$fundef_120_env_220"* %"$$fundef_120_envp_609" to i8*
  %"$$fundef_120_cloval_612" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_120_env_220"*, %Uint32)* @"$fundef_120" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_120_env_voidp_611", 1
  %"$$fundef_120_env_one_int_613" = getelementptr inbounds %"$$fundef_120_env_220", %"$$fundef_120_env_220"* %"$$fundef_120_envp_609", i32 0, i32 0
  %"$one_int_614" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_614", %Uint32* %"$$fundef_120_env_one_int_613", align 4
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_120_cloval_612", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8, !dbg !55
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$have_gas_607"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$have_gas_607"
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %zero_int = alloca %Uint32, align 8
  %"$gasrem_620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_621" = icmp ugt i64 1, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %"$have_gas_618"
  %"$consume_624" = sub i64 %"$gasrem_620", 1
  store i64 %"$consume_624", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero_int, align 4, !dbg !56
  %"$gasrem_625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_626" = icmp ugt i64 1, %"$gasrem_625"
  br i1 %"$gascmp_626", label %"$out_of_gas_627", label %"$have_gas_628"

"$out_of_gas_627":                                ; preds = %"$have_gas_623"
  call void @_out_of_gas()
  br label %"$have_gas_628"

"$have_gas_628":                                  ; preds = %"$out_of_gas_627", %"$have_gas_623"
  %"$consume_629" = sub i64 %"$gasrem_625", 1
  store i64 %"$consume_629", i64* @_gasrem, align 8
  %"$fold_22" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$fold_630" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$fold_fptr_631" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_630", 0
  %"$fold_envptr_632" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_630", 1
  %"$f_633" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$fold_call_634" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_631"(i8* %"$fold_envptr_632", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_633"), !dbg !57
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_634", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_22", align 8, !dbg !57
  %"$fold_23" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fold_22_635" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_22", align 8
  %"$$fold_22_fptr_636" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_22_635", 0
  %"$$fold_22_envptr_637" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_22_635", 1
  %"$zero_int_638" = load %Uint32, %Uint32* %zero_int, align 4
  %"$$fold_22_call_639" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_22_fptr_636"(i8* %"$$fold_22_envptr_637", %Uint32 %"$zero_int_638"), !dbg !57
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_22_call_639", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_23", align 8, !dbg !57
  %"$fold_24" = alloca %Uint32, align 8
  %"$$fold_23_640" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_23", align 8
  %"$$fold_23_fptr_641" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_23_640", 0
  %"$$fold_23_envptr_642" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_23_640", 1
  %"$$fold_23_call_643" = call %Uint32 %"$$fold_23_fptr_641"(i8* %"$$fold_23_envptr_642", %TName_Nat* %1), !dbg !57
  store %Uint32 %"$$fold_23_call_643", %Uint32* %"$fold_24", align 4, !dbg !57
  %"$$fold_24_644" = load %Uint32, %Uint32* %"$fold_24", align 4
  store %Uint32 %"$$fold_24_644", %Uint32* %"$retval_119", align 4, !dbg !57
  %"$$retval_119_645" = load %Uint32, %Uint32* %"$retval_119", align 4
  ret %Uint32 %"$$retval_119_645"
}

define internal %TName_Nat* @"$fundef_116"(%"$$fundef_116_env_222"* %0, %TName_Nat* %1) !dbg !58 {
entry:
  %"$$fundef_116_env_f0_505" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %0, i32 0, i32 0
  %"$f0_envload_506" = load %TName_Nat*, %TName_Nat** %"$$fundef_116_env_f0_505", align 8
  %f0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$f0_envload_506", %TName_Nat** %f0, align 8
  %"$$fundef_116_env_fn_507" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %0, i32 0, i32 1
  %"$fn_envload_508" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_fn_507", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_508", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_116_env_g_509" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %0, i32 0, i32 2
  %"$g_envload_510" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_g_509", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_510", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_117" = alloca %TName_Nat*, align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 2, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %entry
  %"$consume_515" = sub i64 %"$gasrem_511", 2
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$n_tag_517" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_518" = load i8, i8* %"$n_tag_517", align 1
  switch i8 %"$n_tag_518", label %"$empty_default_519" [
    i8 1, label %"$Succ_520"
    i8 0, label %"$Zero_561"
  ], !dbg !60

"$Succ_520":                                      ; preds = %"$have_gas_514"
  %"$n_521" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_522" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_521", i32 0, i32 1
  %"$n1_load_523" = load %TName_Nat*, %TName_Nat** %"$n1_gep_522", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_523", %TName_Nat** %n1, align 8
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$Succ_520"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$Succ_520"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %res = alloca %TName_Nat*, align 8
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_527"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$fn_18" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_534" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$fn_fptr_535" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_534", 0
  %"$fn_envptr_536" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_534", 1
  %"$f0_537" = load %TName_Nat*, %TName_Nat** %f0, align 8
  %"$fn_call_538" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_535"(i8* %"$fn_envptr_536", %TName_Nat* %"$f0_537"), !dbg !61
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_538", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8, !dbg !61
  %"$fn_19" = alloca %TName_Nat*, align 8
  %"$$fn_18_539" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8
  %"$$fn_18_fptr_540" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_539", 0
  %"$$fn_18_envptr_541" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_539", 1
  %"$n1_542" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_18_call_543" = call %TName_Nat* %"$$fn_18_fptr_540"(i8* %"$$fn_18_envptr_541", %TName_Nat* %"$n1_542"), !dbg !61
  store %TName_Nat* %"$$fn_18_call_543", %TName_Nat** %"$fn_19", align 8, !dbg !61
  %"$$fn_19_544" = load %TName_Nat*, %TName_Nat** %"$fn_19", align 8
  store %TName_Nat* %"$$fn_19_544", %TName_Nat** %res, align 8, !dbg !61
  %"$gasrem_545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$have_gas_532"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem, align 8
  %"$g_20" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_550" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$g_fptr_551" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_550", 0
  %"$g_envptr_552" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_550", 1
  %"$res_553" = load %TName_Nat*, %TName_Nat** %res, align 8
  %"$g_call_554" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_551"(i8* %"$g_envptr_552", %TName_Nat* %"$res_553"), !dbg !64
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_554", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8, !dbg !64
  %"$g_21" = alloca %TName_Nat*, align 8
  %"$$g_20_555" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8
  %"$$g_20_fptr_556" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_555", 0
  %"$$g_20_envptr_557" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_555", 1
  %"$n1_558" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_20_call_559" = call %TName_Nat* %"$$g_20_fptr_556"(i8* %"$$g_20_envptr_557", %TName_Nat* %"$n1_558"), !dbg !64
  store %TName_Nat* %"$$g_20_call_559", %TName_Nat** %"$g_21", align 8, !dbg !64
  %"$$g_21_560" = load %TName_Nat*, %TName_Nat** %"$g_21", align 8
  store %TName_Nat* %"$$g_21_560", %TName_Nat** %"$retval_117", align 8, !dbg !64
  br label %"$matchsucc_516"

"$Zero_561":                                      ; preds = %"$have_gas_514"
  %"$n_562" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$Zero_561"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$Zero_561"
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem, align 8
  %"$f0_568" = load %TName_Nat*, %TName_Nat** %f0, align 8
  store %TName_Nat* %"$f0_568", %TName_Nat** %"$retval_117", align 8, !dbg !65
  br label %"$matchsucc_516"

"$empty_default_519":                             ; preds = %"$have_gas_514"
  br label %"$matchsucc_516"

"$matchsucc_516":                                 ; preds = %"$have_gas_566", %"$have_gas_548", %"$empty_default_519"
  %"$$retval_117_569" = load %TName_Nat*, %TName_Nat** %"$retval_117", align 8
  ret %TName_Nat* %"$$retval_117_569"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_114"(%"$$fundef_114_env_223"* %0, %TName_Nat* %1) !dbg !67 {
entry:
  %"$$fundef_114_env_fn_486" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %0, i32 0, i32 0
  %"$fn_envload_487" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_fn_486", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_487", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_114_env_g_488" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %0, i32 0, i32 1
  %"$g_envload_489" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_g_488", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_489", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_115" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_491" = icmp ugt i64 1, %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %entry
  %"$consume_494" = sub i64 %"$gasrem_490", 1
  store i64 %"$consume_494", i64* @_gasrem, align 8
  %"$$fundef_116_envp_495_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_116_envp_495_salloc" = call i8* @_salloc(i8* %"$$fundef_116_envp_495_load", i64 40)
  %"$$fundef_116_envp_495" = bitcast i8* %"$$fundef_116_envp_495_salloc" to %"$$fundef_116_env_222"*
  %"$$fundef_116_env_voidp_497" = bitcast %"$$fundef_116_env_222"* %"$$fundef_116_envp_495" to i8*
  %"$$fundef_116_cloval_498" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_116_env_222"*, %TName_Nat*)* @"$fundef_116" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_116_env_voidp_497", 1
  %"$$fundef_116_env_f0_499" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %"$$fundef_116_envp_495", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_116_env_f0_499", align 8
  %"$$fundef_116_env_fn_500" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %"$$fundef_116_envp_495", i32 0, i32 1
  %"$fn_501" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_501", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_fn_500", align 8
  %"$$fundef_116_env_g_502" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %"$$fundef_116_envp_495", i32 0, i32 2
  %"$g_503" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_503", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_g_502", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_116_cloval_498", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_115", align 8, !dbg !68
  %"$$retval_115_504" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_115", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_115_504"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_112"(%"$$fundef_112_env_224"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) !dbg !69 {
entry:
  %"$retval_113" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %entry
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_470"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %"$$fundef_114_envp_477_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_114_envp_477_salloc" = call i8* @_salloc(i8* %"$$fundef_114_envp_477_load", i64 32)
  %"$$fundef_114_envp_477" = bitcast i8* %"$$fundef_114_envp_477_salloc" to %"$$fundef_114_env_223"*
  %"$$fundef_114_env_voidp_479" = bitcast %"$$fundef_114_env_223"* %"$$fundef_114_envp_477" to i8*
  %"$$fundef_114_cloval_480" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_114_env_223"*, %TName_Nat*)* @"$fundef_114" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_114_env_voidp_479", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_114_cloval_480", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8, !dbg !70
  %"$$fundef_114_env_fn_481" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %"$$fundef_114_envp_477", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_fn_481", align 8
  %"$$fundef_114_env_g_482" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %"$$fundef_114_envp_477", i32 0, i32 1
  %"$g_483" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_483", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_g_482", align 8
  %"$g_484" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_484", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_113", align 8, !dbg !70
  %"$$retval_113_485" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_113", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_113_485"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_110"(%"$$fundef_110_env_225"* %0) !dbg !71 {
entry:
  %"$retval_111" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %entry
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_112_env_224"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_112" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_111", align 8, !dbg !72
  %"$$retval_111_466" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_111", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_111_466"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_108"(%"$$fundef_108_env_226"* %0, %TName_Nat* %1) !dbg !73 {
entry:
  %"$$fundef_108_env_f0_393" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %0, i32 0, i32 0
  %"$f0_envload_394" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_108_env_f0_393", align 8
  %f0 = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_envload_394", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$$fundef_108_env_fn_395" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %0, i32 0, i32 1
  %"$fn_envload_396" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_fn_395", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_396", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_108_env_g_397" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %0, i32 0, i32 2
  %"$g_envload_398" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_g_397", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_398", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_109" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 2, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %entry
  %"$consume_403" = sub i64 %"$gasrem_399", 2
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$n_tag_405" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_406" = load i8, i8* %"$n_tag_405", align 1
  switch i8 %"$n_tag_406", label %"$empty_default_407" [
    i8 1, label %"$Succ_408"
    i8 0, label %"$Zero_449"
  ], !dbg !74

"$Succ_408":                                      ; preds = %"$have_gas_402"
  %"$n_409" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_410" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_409", i32 0, i32 1
  %"$n1_load_411" = load %TName_Nat*, %TName_Nat** %"$n1_gep_410", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_411", %TName_Nat** %n1, align 8
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$Succ_408"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$Succ_408"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  %res = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_415"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$fn_18" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_422" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$fn_fptr_423" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_422", 0
  %"$fn_envptr_424" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_422", 1
  %"$f0_425" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$fn_call_426" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_423"(i8* %"$fn_envptr_424", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_425"), !dbg !75
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_426", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8, !dbg !75
  %"$fn_19" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fn_18_427" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8
  %"$$fn_18_fptr_428" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_18_427", 0
  %"$$fn_18_envptr_429" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_18_427", 1
  %"$n1_430" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_18_call_431" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_fptr_428"(i8* %"$$fn_18_envptr_429", %TName_Nat* %"$n1_430"), !dbg !75
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_call_431", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_19", align 8, !dbg !75
  %"$$fn_19_432" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_19", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_19_432", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8, !dbg !75
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_420"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$g_20" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_438" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$g_fptr_439" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_438", 0
  %"$g_envptr_440" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_438", 1
  %"$res_441" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8
  %"$g_call_442" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_439"(i8* %"$g_envptr_440", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_441"), !dbg !78
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_442", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8, !dbg !78
  %"$g_21" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$g_20_443" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8
  %"$$g_20_fptr_444" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_20_443", 0
  %"$$g_20_envptr_445" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_20_443", 1
  %"$n1_446" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_20_call_447" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_fptr_444"(i8* %"$$g_20_envptr_445", %TName_Nat* %"$n1_446"), !dbg !78
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_call_447", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_21", align 8, !dbg !78
  %"$$g_21_448" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_21", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_21_448", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109", align 8, !dbg !78
  br label %"$matchsucc_404"

"$Zero_449":                                      ; preds = %"$have_gas_402"
  %"$n_450" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$Zero_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$Zero_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$f0_456" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_456", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109", align 8, !dbg !79
  br label %"$matchsucc_404"

"$empty_default_407":                             ; preds = %"$have_gas_402"
  br label %"$matchsucc_404"

"$matchsucc_404":                                 ; preds = %"$have_gas_454", %"$have_gas_436", %"$empty_default_407"
  %"$$retval_109_457" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_109_457"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_106"(%"$$fundef_106_env_227"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !81 {
entry:
  %"$$fundef_106_env_fn_374" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %0, i32 0, i32 0
  %"$fn_envload_375" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_fn_374", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_375", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_106_env_g_376" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %0, i32 0, i32 1
  %"$g_envload_377" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_g_376", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_377", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_107" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %entry
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %"$$fundef_108_envp_383_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_108_envp_383_salloc" = call i8* @_salloc(i8* %"$$fundef_108_envp_383_load", i64 48)
  %"$$fundef_108_envp_383" = bitcast i8* %"$$fundef_108_envp_383_salloc" to %"$$fundef_108_env_226"*
  %"$$fundef_108_env_voidp_385" = bitcast %"$$fundef_108_env_226"* %"$$fundef_108_envp_383" to i8*
  %"$$fundef_108_cloval_386" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_108_env_226"*, %TName_Nat*)* @"$fundef_108" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_108_env_voidp_385", 1
  %"$$fundef_108_env_f0_387" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %"$$fundef_108_envp_383", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_108_env_f0_387", align 8
  %"$$fundef_108_env_fn_388" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %"$$fundef_108_envp_383", i32 0, i32 1
  %"$fn_389" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_389", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_fn_388", align 8
  %"$$fundef_108_env_g_390" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %"$$fundef_108_envp_383", i32 0, i32 2
  %"$g_391" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_391", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_g_390", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_108_cloval_386", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_107", align 8, !dbg !82
  %"$$retval_107_392" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_107", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_107_392"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_104"(%"$$fundef_104_env_228"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !83 {
entry:
  %"$retval_105" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %entry
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %"$$fundef_106_envp_365_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_106_envp_365_salloc" = call i8* @_salloc(i8* %"$$fundef_106_envp_365_load", i64 32)
  %"$$fundef_106_envp_365" = bitcast i8* %"$$fundef_106_envp_365_salloc" to %"$$fundef_106_env_227"*
  %"$$fundef_106_env_voidp_367" = bitcast %"$$fundef_106_env_227"* %"$$fundef_106_envp_365" to i8*
  %"$$fundef_106_cloval_368" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_106_env_227"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_106" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_106_env_voidp_367", 1
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_106_cloval_368", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8, !dbg !84
  %"$$fundef_106_env_fn_369" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %"$$fundef_106_envp_365", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_fn_369", align 8
  %"$$fundef_106_env_g_370" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %"$$fundef_106_envp_365", i32 0, i32 1
  %"$g_371" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_371", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_g_370", align 8
  %"$g_372" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_372", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_105", align 8, !dbg !84
  %"$$retval_105_373" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_105", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_105_373"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_102"(%"$$fundef_102_env_229"* %0) !dbg !85 {
entry:
  %"$retval_103" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %entry
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_104_env_228"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_104" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_103", align 8, !dbg !86
  %"$$retval_103_354" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_103", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_103_354"
}

define internal %Uint32 @"$fundef_100"(%"$$fundef_100_env_230"* %0, %TName_Nat* %1) !dbg !87 {
entry:
  %"$$fundef_100_env_f0_281" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %0, i32 0, i32 0
  %"$f0_envload_282" = load %Uint32, %Uint32* %"$$fundef_100_env_f0_281", align 4
  %f0 = alloca %Uint32, align 8
  store %Uint32 %"$f0_envload_282", %Uint32* %f0, align 4
  %"$$fundef_100_env_fn_283" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %0, i32 0, i32 1
  %"$fn_envload_284" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_fn_283", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_284", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_100_env_g_285" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %0, i32 0, i32 2
  %"$g_envload_286" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_g_285", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_286", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_101" = alloca %Uint32, align 8
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 2, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %entry
  %"$consume_291" = sub i64 %"$gasrem_287", 2
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$n_tag_293" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_294" = load i8, i8* %"$n_tag_293", align 1
  switch i8 %"$n_tag_294", label %"$empty_default_295" [
    i8 1, label %"$Succ_296"
    i8 0, label %"$Zero_337"
  ], !dbg !88

"$Succ_296":                                      ; preds = %"$have_gas_290"
  %"$n_297" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_298" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_297", i32 0, i32 1
  %"$n1_load_299" = load %TName_Nat*, %TName_Nat** %"$n1_gep_298", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_299", %TName_Nat** %n1, align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$Succ_296"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$Succ_296"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$fn_18" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_310" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$fn_fptr_311" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_310", 0
  %"$fn_envptr_312" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_310", 1
  %"$f0_313" = load %Uint32, %Uint32* %f0, align 4
  %"$fn_call_314" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_311"(i8* %"$fn_envptr_312", %Uint32 %"$f0_313"), !dbg !89
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_314", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8, !dbg !89
  %"$fn_19" = alloca %Uint32, align 8
  %"$$fn_18_315" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8
  %"$$fn_18_fptr_316" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_18_315", 0
  %"$$fn_18_envptr_317" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_18_315", 1
  %"$n1_318" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_18_call_319" = call %Uint32 %"$$fn_18_fptr_316"(i8* %"$$fn_18_envptr_317", %TName_Nat* %"$n1_318"), !dbg !89
  store %Uint32 %"$$fn_18_call_319", %Uint32* %"$fn_19", align 4, !dbg !89
  %"$$fn_19_320" = load %Uint32, %Uint32* %"$fn_19", align 4
  store %Uint32 %"$$fn_19_320", %Uint32* %res, align 4, !dbg !89
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_308"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %"$g_20" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_326" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_327" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_326", 0
  %"$g_envptr_328" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_326", 1
  %"$res_329" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_330" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_327"(i8* %"$g_envptr_328", %Uint32 %"$res_329"), !dbg !92
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_330", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8, !dbg !92
  %"$g_21" = alloca %Uint32, align 8
  %"$$g_20_331" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8
  %"$$g_20_fptr_332" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_20_331", 0
  %"$$g_20_envptr_333" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_20_331", 1
  %"$n1_334" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_20_call_335" = call %Uint32 %"$$g_20_fptr_332"(i8* %"$$g_20_envptr_333", %TName_Nat* %"$n1_334"), !dbg !92
  store %Uint32 %"$$g_20_call_335", %Uint32* %"$g_21", align 4, !dbg !92
  %"$$g_21_336" = load %Uint32, %Uint32* %"$g_21", align 4
  store %Uint32 %"$$g_21_336", %Uint32* %"$retval_101", align 4, !dbg !92
  br label %"$matchsucc_292"

"$Zero_337":                                      ; preds = %"$have_gas_290"
  %"$n_338" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$Zero_337"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$Zero_337"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %"$f0_344" = load %Uint32, %Uint32* %f0, align 4
  store %Uint32 %"$f0_344", %Uint32* %"$retval_101", align 4, !dbg !93
  br label %"$matchsucc_292"

"$empty_default_295":                             ; preds = %"$have_gas_290"
  br label %"$matchsucc_292"

"$matchsucc_292":                                 ; preds = %"$have_gas_342", %"$have_gas_324", %"$empty_default_295"
  %"$$retval_101_345" = load %Uint32, %Uint32* %"$retval_101", align 4
  ret %Uint32 %"$$retval_101_345"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_98"(%"$$fundef_98_env_231"* %0, %Uint32 %1) !dbg !95 {
entry:
  %"$$fundef_98_env_fn_262" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %0, i32 0, i32 0
  %"$fn_envload_263" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_fn_262", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_263", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_98_env_g_264" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %0, i32 0, i32 1
  %"$g_envload_265" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_g_264", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_265", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_99" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %entry
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$$fundef_100_envp_271_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_100_envp_271_salloc" = call i8* @_salloc(i8* %"$$fundef_100_envp_271_load", i64 40)
  %"$$fundef_100_envp_271" = bitcast i8* %"$$fundef_100_envp_271_salloc" to %"$$fundef_100_env_230"*
  %"$$fundef_100_env_voidp_273" = bitcast %"$$fundef_100_env_230"* %"$$fundef_100_envp_271" to i8*
  %"$$fundef_100_cloval_274" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_100_env_230"*, %TName_Nat*)* @"$fundef_100" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_100_env_voidp_273", 1
  %"$$fundef_100_env_f0_275" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %"$$fundef_100_envp_271", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_100_env_f0_275", align 4
  %"$$fundef_100_env_fn_276" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %"$$fundef_100_envp_271", i32 0, i32 1
  %"$fn_277" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_277", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_fn_276", align 8
  %"$$fundef_100_env_g_278" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %"$$fundef_100_envp_271", i32 0, i32 2
  %"$g_279" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_279", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_g_278", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_100_cloval_274", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_99", align 8, !dbg !96
  %"$$retval_99_280" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_99", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_99_280"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_96"(%"$$fundef_96_env_232"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !97 {
entry:
  %"$retval_97" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %entry
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$$fundef_98_envp_253_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_98_envp_253_salloc" = call i8* @_salloc(i8* %"$$fundef_98_envp_253_load", i64 32)
  %"$$fundef_98_envp_253" = bitcast i8* %"$$fundef_98_envp_253_salloc" to %"$$fundef_98_env_231"*
  %"$$fundef_98_env_voidp_255" = bitcast %"$$fundef_98_env_231"* %"$$fundef_98_envp_253" to i8*
  %"$$fundef_98_cloval_256" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_98_env_231"*, %Uint32)* @"$fundef_98" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_98_env_voidp_255", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_98_cloval_256", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !98
  %"$$fundef_98_env_fn_257" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %"$$fundef_98_envp_253", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_fn_257", align 8
  %"$$fundef_98_env_g_258" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %"$$fundef_98_envp_253", i32 0, i32 1
  %"$g_259" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_259", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_g_258", align 8
  %"$g_260" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_260", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_97", align 8, !dbg !98
  %"$$retval_97_261" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_97", align 8
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_97_261"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_94"(%"$$fundef_94_env_233"* %0) !dbg !99 {
entry:
  %"$retval_95" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %entry
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_96_env_232"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_96" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_95", align 8, !dbg !100
  %"$$retval_95_242" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_95", align 8
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_95_242"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !101 {
entry:
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !103 {
entry:
  %"$gasrem_1045" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1046" = icmp ugt i64 1, %"$gasrem_1045"
  br i1 %"$gascmp_1046", label %"$out_of_gas_1047", label %"$have_gas_1048"

"$out_of_gas_1047":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1048"

"$have_gas_1048":                                 ; preds = %"$out_of_gas_1047", %entry
  %"$consume_1049" = sub i64 %"$gasrem_1045", 1
  store i64 %"$consume_1049", i64* @_gasrem, align 8
  %"$dyndisp_table_1059_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1059_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1059_salloc_load", i64 48)
  %"$dyndisp_table_1059_salloc" = bitcast i8* %"$dyndisp_table_1059_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1059" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1059_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1060" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1059", i32 0
  %"$dyndisp_pcast_1061" = bitcast { i8*, i8* }* %"$dyndisp_gep_1060" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_94_env_233"*)* @"$fundef_94" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1061", align 8
  %"$dyndisp_gep_1062" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1059", i32 1
  %"$dyndisp_pcast_1063" = bitcast { i8*, i8* }* %"$dyndisp_gep_1062" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_102_env_229"*)* @"$fundef_102" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1063", align 8
  %"$dyndisp_gep_1064" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1059", i32 2
  %"$dyndisp_pcast_1065" = bitcast { i8*, i8* }* %"$dyndisp_gep_1064" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_110_env_225"*)* @"$fundef_110" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1065", align 8
  store { i8*, i8* }* %"$dyndisp_table_1059", { i8*, i8* }** @nat_fold, align 8, !dbg !104
  %"$gasrem_1066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1067" = icmp ugt i64 1, %"$gasrem_1066"
  br i1 %"$gascmp_1067", label %"$out_of_gas_1068", label %"$have_gas_1069"

"$out_of_gas_1068":                               ; preds = %"$have_gas_1048"
  call void @_out_of_gas()
  br label %"$have_gas_1069"

"$have_gas_1069":                                 ; preds = %"$out_of_gas_1068", %"$have_gas_1048"
  %"$consume_1070" = sub i64 %"$gasrem_1066", 1
  store i64 %"$consume_1070", i64* @_gasrem, align 8
  %"$$fundef_118_envp_1071_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_118_envp_1071_salloc" = call i8* @_salloc(i8* %"$$fundef_118_envp_1071_load", i64 8)
  %"$$fundef_118_envp_1071" = bitcast i8* %"$$fundef_118_envp_1071_salloc" to %"$$fundef_118_env_221"*
  %"$$fundef_118_env_voidp_1073" = bitcast %"$$fundef_118_env_221"* %"$$fundef_118_envp_1071" to i8*
  %"$$fundef_118_cloval_1074" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_118_env_221"*, %TName_Nat*)* @"$fundef_118" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_118_env_voidp_1073", 1
  %"$$fundef_118_env_nat_fold_1075" = getelementptr inbounds %"$$fundef_118_env_221", %"$$fundef_118_env_221"* %"$$fundef_118_envp_1071", i32 0, i32 0
  %"$nat_fold_1076" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1076", { i8*, i8* }** %"$$fundef_118_env_nat_fold_1075", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_118_cloval_1074", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8, !dbg !105
  %"$expr_124" = alloca %Uint32, align 8
  %"$gasrem_1077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1078" = icmp ugt i64 1, %"$gasrem_1077"
  br i1 %"$gascmp_1078", label %"$out_of_gas_1079", label %"$have_gas_1080"

"$out_of_gas_1079":                               ; preds = %"$have_gas_1069"
  call void @_out_of_gas()
  br label %"$have_gas_1080"

"$have_gas_1080":                                 ; preds = %"$out_of_gas_1079", %"$have_gas_1069"
  %"$consume_1081" = sub i64 %"$gasrem_1077", 1
  store i64 %"$consume_1081", i64* @_gasrem, align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1083" = icmp ugt i64 1, %"$gasrem_1082"
  br i1 %"$gascmp_1083", label %"$out_of_gas_1084", label %"$have_gas_1085"

"$out_of_gas_1084":                               ; preds = %"$have_gas_1080"
  call void @_out_of_gas()
  br label %"$have_gas_1085"

"$have_gas_1085":                                 ; preds = %"$out_of_gas_1084", %"$have_gas_1080"
  %"$consume_1086" = sub i64 %"$gasrem_1082", 1
  store i64 %"$consume_1086", i64* @_gasrem, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_125_env_218"*, %TName_Nat*)* @"$fundef_125" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8, !dbg !106
  %"$gasrem_1090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1091" = icmp ugt i64 1, %"$gasrem_1090"
  br i1 %"$gascmp_1091", label %"$out_of_gas_1092", label %"$have_gas_1093"

"$out_of_gas_1092":                               ; preds = %"$have_gas_1085"
  call void @_out_of_gas()
  br label %"$have_gas_1093"

"$have_gas_1093":                                 ; preds = %"$out_of_gas_1092", %"$have_gas_1085"
  %"$consume_1094" = sub i64 %"$gasrem_1090", 1
  store i64 %"$consume_1094", i64* @_gasrem, align 8
  %nat_iter = alloca { i8*, i8* }*, align 8
  %"$gasrem_1095" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1096" = icmp ugt i64 1, %"$gasrem_1095"
  br i1 %"$gascmp_1096", label %"$out_of_gas_1097", label %"$have_gas_1098"

"$out_of_gas_1097":                               ; preds = %"$have_gas_1093"
  call void @_out_of_gas()
  br label %"$have_gas_1098"

"$have_gas_1098":                                 ; preds = %"$out_of_gas_1097", %"$have_gas_1093"
  %"$consume_1099" = sub i64 %"$gasrem_1095", 1
  store i64 %"$consume_1099", i64* @_gasrem, align 8
  %"$$fundef_127_envp_1100_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_127_envp_1100_salloc" = call i8* @_salloc(i8* %"$$fundef_127_envp_1100_load", i64 8)
  %"$$fundef_127_envp_1100" = bitcast i8* %"$$fundef_127_envp_1100_salloc" to %"$$fundef_127_env_217"*
  %"$$fundef_127_env_voidp_1102" = bitcast %"$$fundef_127_env_217"* %"$$fundef_127_envp_1100" to i8*
  %"$$fundef_127_cloval_1103" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_127_env_217"*)* @"$fundef_127" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_127_env_voidp_1102", 1
  %"$$fundef_127_env_nat_fold_1104" = getelementptr inbounds %"$$fundef_127_env_217", %"$$fundef_127_env_217"* %"$$fundef_127_envp_1100", i32 0, i32 0
  %"$nat_fold_1105" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1105", { i8*, i8* }** %"$$fundef_127_env_nat_fold_1104", align 8
  %"$$fundef_139_env_voidp_1107" = bitcast %"$$fundef_127_env_217"* %"$$fundef_127_envp_1100" to i8*
  %"$$fundef_139_cloval_1108" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_139_env_211"*)* @"$fundef_139" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_139_env_voidp_1107", 1
  %"$dyndisp_table_1109_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1109_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1109_salloc_load", i64 48)
  %"$dyndisp_table_1109_salloc" = bitcast i8* %"$dyndisp_table_1109_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1109" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1109_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1110" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1109", i32 1
  %"$dyndisp_pcast_1111" = bitcast { i8*, i8* }* %"$dyndisp_gep_1110" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_127_cloval_1103", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1111", align 8
  %"$dyndisp_gep_1112" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1109", i32 2
  %"$dyndisp_pcast_1113" = bitcast { i8*, i8* }* %"$dyndisp_gep_1112" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_139_cloval_1108", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1113", align 8
  store { i8*, i8* }* %"$dyndisp_table_1109", { i8*, i8* }** %nat_iter, align 8, !dbg !107
  %"$gasrem_1114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1115" = icmp ugt i64 1, %"$gasrem_1114"
  br i1 %"$gascmp_1115", label %"$out_of_gas_1116", label %"$have_gas_1117"

"$out_of_gas_1116":                               ; preds = %"$have_gas_1098"
  call void @_out_of_gas()
  br label %"$have_gas_1117"

"$have_gas_1117":                                 ; preds = %"$out_of_gas_1116", %"$have_gas_1098"
  %"$consume_1118" = sub i64 %"$gasrem_1114", 1
  store i64 %"$consume_1118", i64* @_gasrem, align 8
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1120" = icmp ugt i64 1, %"$gasrem_1119"
  br i1 %"$gascmp_1120", label %"$out_of_gas_1121", label %"$have_gas_1122"

"$out_of_gas_1121":                               ; preds = %"$have_gas_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1122"

"$have_gas_1122":                                 ; preds = %"$out_of_gas_1121", %"$have_gas_1117"
  %"$consume_1123" = sub i64 %"$gasrem_1119", 1
  store i64 %"$consume_1123", i64* @_gasrem, align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1125" = icmp ugt i64 1, %"$gasrem_1124"
  br i1 %"$gascmp_1125", label %"$out_of_gas_1126", label %"$have_gas_1127"

"$out_of_gas_1126":                               ; preds = %"$have_gas_1122"
  call void @_out_of_gas()
  br label %"$have_gas_1127"

"$have_gas_1127":                                 ; preds = %"$out_of_gas_1126", %"$have_gas_1122"
  %"$consume_1128" = sub i64 %"$gasrem_1124", 1
  store i64 %"$consume_1128", i64* @_gasrem, align 8
  %"$nat_iter_1129" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1130" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1129", i32 2
  %"$nat_iter_1131" = bitcast { i8*, i8* }* %"$nat_iter_1130" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1132" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1131", align 8
  %"$nat_iter_fptr_1133" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1132", 0
  %"$nat_iter_envptr_1134" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1132", 1
  %"$nat_iter_call_1135" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1133"(i8* %"$nat_iter_envptr_1134"), !dbg !108
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1135", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8, !dbg !109
  %"$gasrem_1136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1137" = icmp ugt i64 1, %"$gasrem_1136"
  br i1 %"$gascmp_1137", label %"$out_of_gas_1138", label %"$have_gas_1139"

"$out_of_gas_1138":                               ; preds = %"$have_gas_1127"
  call void @_out_of_gas()
  br label %"$have_gas_1139"

"$have_gas_1139":                                 ; preds = %"$out_of_gas_1138", %"$have_gas_1127"
  %"$consume_1140" = sub i64 %"$gasrem_1136", 1
  store i64 %"$consume_1140", i64* @_gasrem, align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_1141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1142" = icmp ugt i64 1, %"$gasrem_1141"
  br i1 %"$gascmp_1142", label %"$out_of_gas_1143", label %"$have_gas_1144"

"$out_of_gas_1143":                               ; preds = %"$have_gas_1139"
  call void @_out_of_gas()
  br label %"$have_gas_1144"

"$have_gas_1144":                                 ; preds = %"$out_of_gas_1143", %"$have_gas_1139"
  %"$consume_1145" = sub i64 %"$gasrem_1141", 1
  store i64 %"$consume_1145", i64* @_gasrem, align 8
  %"$nat_iter_1146" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1147" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1146", i32 1
  %"$nat_iter_1148" = bitcast { i8*, i8* }* %"$nat_iter_1147" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1149" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1148", align 8
  %"$nat_iter_fptr_1150" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1149", 0
  %"$nat_iter_envptr_1151" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1149", 1
  %"$nat_iter_call_1152" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1150"(i8* %"$nat_iter_envptr_1151"), !dbg !110
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1152", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8, !dbg !111
  %"$gasrem_1153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1154" = icmp ugt i64 1, %"$gasrem_1153"
  br i1 %"$gascmp_1154", label %"$out_of_gas_1155", label %"$have_gas_1156"

"$out_of_gas_1155":                               ; preds = %"$have_gas_1144"
  call void @_out_of_gas()
  br label %"$have_gas_1156"

"$have_gas_1156":                                 ; preds = %"$out_of_gas_1155", %"$have_gas_1144"
  %"$consume_1157" = sub i64 %"$gasrem_1153", 1
  store i64 %"$consume_1157", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_1158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1159" = icmp ugt i64 1, %"$gasrem_1158"
  br i1 %"$gascmp_1159", label %"$out_of_gas_1160", label %"$have_gas_1161"

"$out_of_gas_1160":                               ; preds = %"$have_gas_1156"
  call void @_out_of_gas()
  br label %"$have_gas_1161"

"$have_gas_1161":                                 ; preds = %"$out_of_gas_1160", %"$have_gas_1156"
  %"$consume_1162" = sub i64 %"$gasrem_1158", 1
  store i64 %"$consume_1162", i64* @_gasrem, align 8
  %"$adtval_1163_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1163_salloc" = call i8* @_salloc(i8* %"$adtval_1163_load", i64 1)
  %"$adtval_1163" = bitcast i8* %"$adtval_1163_salloc" to %CName_Zero*
  %"$adtgep_1164" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1163", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1164", align 1
  %"$adtptr_1165" = bitcast %CName_Zero* %"$adtval_1163" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1165", %TName_Nat** %zero, align 8, !dbg !112
  %"$gasrem_1166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1167" = icmp ugt i64 1, %"$gasrem_1166"
  br i1 %"$gascmp_1167", label %"$out_of_gas_1168", label %"$have_gas_1169"

"$out_of_gas_1168":                               ; preds = %"$have_gas_1161"
  call void @_out_of_gas()
  br label %"$have_gas_1169"

"$have_gas_1169":                                 ; preds = %"$out_of_gas_1168", %"$have_gas_1161"
  %"$consume_1170" = sub i64 %"$gasrem_1166", 1
  store i64 %"$consume_1170", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_1171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1172" = icmp ugt i64 1, %"$gasrem_1171"
  br i1 %"$gascmp_1172", label %"$out_of_gas_1173", label %"$have_gas_1174"

"$out_of_gas_1173":                               ; preds = %"$have_gas_1169"
  call void @_out_of_gas()
  br label %"$have_gas_1174"

"$have_gas_1174":                                 ; preds = %"$out_of_gas_1173", %"$have_gas_1169"
  %"$consume_1175" = sub i64 %"$gasrem_1171", 1
  store i64 %"$consume_1175", i64* @_gasrem, align 8
  %"$zero_1176" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_1177_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1177_salloc" = call i8* @_salloc(i8* %"$adtval_1177_load", i64 9)
  %"$adtval_1177" = bitcast i8* %"$adtval_1177_salloc" to %CName_Succ*
  %"$adtgep_1178" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1177", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1178", align 1
  %"$adtgep_1179" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1177", i32 0, i32 1
  store %TName_Nat* %"$zero_1176", %TName_Nat** %"$adtgep_1179", align 8
  %"$adtptr_1180" = bitcast %CName_Succ* %"$adtval_1177" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1180", %TName_Nat** %one, align 8, !dbg !113
  %"$gasrem_1181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1182" = icmp ugt i64 1, %"$gasrem_1181"
  br i1 %"$gascmp_1182", label %"$out_of_gas_1183", label %"$have_gas_1184"

"$out_of_gas_1183":                               ; preds = %"$have_gas_1174"
  call void @_out_of_gas()
  br label %"$have_gas_1184"

"$have_gas_1184":                                 ; preds = %"$out_of_gas_1183", %"$have_gas_1174"
  %"$consume_1185" = sub i64 %"$gasrem_1181", 1
  store i64 %"$consume_1185", i64* @_gasrem, align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1187" = icmp ugt i64 1, %"$gasrem_1186"
  br i1 %"$gascmp_1187", label %"$out_of_gas_1188", label %"$have_gas_1189"

"$out_of_gas_1188":                               ; preds = %"$have_gas_1184"
  call void @_out_of_gas()
  br label %"$have_gas_1189"

"$have_gas_1189":                                 ; preds = %"$out_of_gas_1188", %"$have_gas_1184"
  %"$consume_1190" = sub i64 %"$gasrem_1186", 1
  store i64 %"$consume_1190", i64* @_gasrem, align 8
  %"$$fundef_151_envp_1191_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_151_envp_1191_salloc" = call i8* @_salloc(i8* %"$$fundef_151_envp_1191_load", i64 24)
  %"$$fundef_151_envp_1191" = bitcast i8* %"$$fundef_151_envp_1191_salloc" to %"$$fundef_151_env_205"*
  %"$$fundef_151_env_voidp_1193" = bitcast %"$$fundef_151_env_205"* %"$$fundef_151_envp_1191" to i8*
  %"$$fundef_151_cloval_1194" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_151_env_205"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_151" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_151_env_voidp_1193", 1
  %"$$fundef_151_env_iter_nat_1195" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %"$$fundef_151_envp_1191", i32 0, i32 0
  %"$iter_nat_1196" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1196", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_1195", align 8
  %"$$fundef_151_env_one_1197" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %"$$fundef_151_envp_1191", i32 0, i32 1
  %"$one_1198" = load %TName_Nat*, %TName_Nat** %one, align 8
  store %TName_Nat* %"$one_1198", %TName_Nat** %"$$fundef_151_env_one_1197", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_151_cloval_1194", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8, !dbg !114
  %"$gasrem_1199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1200" = icmp ugt i64 1, %"$gasrem_1199"
  br i1 %"$gascmp_1200", label %"$out_of_gas_1201", label %"$have_gas_1202"

"$out_of_gas_1201":                               ; preds = %"$have_gas_1189"
  call void @_out_of_gas()
  br label %"$have_gas_1202"

"$have_gas_1202":                                 ; preds = %"$out_of_gas_1201", %"$have_gas_1189"
  %"$consume_1203" = sub i64 %"$gasrem_1199", 1
  store i64 %"$consume_1203", i64* @_gasrem, align 8
  %"$$fundef_155_envp_1204_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_155_envp_1204_salloc" = call i8* @_salloc(i8* %"$$fundef_155_envp_1204_load", i64 48)
  %"$$fundef_155_envp_1204" = bitcast i8* %"$$fundef_155_envp_1204_salloc" to %"$$fundef_155_env_203"*
  %"$$fundef_155_env_voidp_1206" = bitcast %"$$fundef_155_env_203"* %"$$fundef_155_envp_1204" to i8*
  %"$$fundef_155_cloval_1207" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_155_env_203"*, %TName_Nat*)* @"$fundef_155" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_155_env_voidp_1206", 1
  %"$$fundef_155_env_f_1208" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %"$$fundef_155_envp_1204", i32 0, i32 0
  %"$f_1209" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1209", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_1208", align 8
  %"$$fundef_155_env_iter_nat_nat_1210" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %"$$fundef_155_envp_1204", i32 0, i32 1
  %"$iter_nat_nat_1211" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1211", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_1210", align 8
  %"$$fundef_155_env_nat_succ_1212" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %"$$fundef_155_envp_1204", i32 0, i32 2
  %"$nat_succ_1213" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1213", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_1212", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_155_cloval_1207", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8, !dbg !115
  %"$gasrem_1214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1215" = icmp ugt i64 1, %"$gasrem_1214"
  br i1 %"$gascmp_1215", label %"$out_of_gas_1216", label %"$have_gas_1217"

"$out_of_gas_1216":                               ; preds = %"$have_gas_1202"
  call void @_out_of_gas()
  br label %"$have_gas_1217"

"$have_gas_1217":                                 ; preds = %"$out_of_gas_1216", %"$have_gas_1202"
  %"$consume_1218" = sub i64 %"$gasrem_1214", 1
  store i64 %"$consume_1218", i64* @_gasrem, align 8
  %uint0 = alloca %Uint32, align 8
  %"$gasrem_1219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1220" = icmp ugt i64 1, %"$gasrem_1219"
  br i1 %"$gascmp_1220", label %"$out_of_gas_1221", label %"$have_gas_1222"

"$out_of_gas_1221":                               ; preds = %"$have_gas_1217"
  call void @_out_of_gas()
  br label %"$have_gas_1222"

"$have_gas_1222":                                 ; preds = %"$out_of_gas_1221", %"$have_gas_1217"
  %"$consume_1223" = sub i64 %"$gasrem_1219", 1
  store i64 %"$consume_1223", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %uint0, align 4, !dbg !116
  %"$gasrem_1224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1225" = icmp ugt i64 1, %"$gasrem_1224"
  br i1 %"$gascmp_1225", label %"$out_of_gas_1226", label %"$have_gas_1227"

"$out_of_gas_1226":                               ; preds = %"$have_gas_1222"
  call void @_out_of_gas()
  br label %"$have_gas_1227"

"$have_gas_1227":                                 ; preds = %"$out_of_gas_1226", %"$have_gas_1222"
  %"$consume_1228" = sub i64 %"$gasrem_1224", 1
  store i64 %"$consume_1228", i64* @_gasrem, align 8
  %uint1 = alloca %Uint32, align 8
  %"$gasrem_1229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1230" = icmp ugt i64 1, %"$gasrem_1229"
  br i1 %"$gascmp_1230", label %"$out_of_gas_1231", label %"$have_gas_1232"

"$out_of_gas_1231":                               ; preds = %"$have_gas_1227"
  call void @_out_of_gas()
  br label %"$have_gas_1232"

"$have_gas_1232":                                 ; preds = %"$out_of_gas_1231", %"$have_gas_1227"
  %"$consume_1233" = sub i64 %"$gasrem_1229", 1
  store i64 %"$consume_1233", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint1, align 4, !dbg !117
  %"$gasrem_1234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1235" = icmp ugt i64 1, %"$gasrem_1234"
  br i1 %"$gascmp_1235", label %"$out_of_gas_1236", label %"$have_gas_1237"

"$out_of_gas_1236":                               ; preds = %"$have_gas_1232"
  call void @_out_of_gas()
  br label %"$have_gas_1237"

"$have_gas_1237":                                 ; preds = %"$out_of_gas_1236", %"$have_gas_1232"
  %"$consume_1238" = sub i64 %"$gasrem_1234", 1
  store i64 %"$consume_1238", i64* @_gasrem, align 8
  %uint2 = alloca %Uint32, align 8
  %"$gasrem_1239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1240" = icmp ugt i64 1, %"$gasrem_1239"
  br i1 %"$gascmp_1240", label %"$out_of_gas_1241", label %"$have_gas_1242"

"$out_of_gas_1241":                               ; preds = %"$have_gas_1237"
  call void @_out_of_gas()
  br label %"$have_gas_1242"

"$have_gas_1242":                                 ; preds = %"$out_of_gas_1241", %"$have_gas_1237"
  %"$consume_1243" = sub i64 %"$gasrem_1239", 1
  store i64 %"$consume_1243", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %uint2, align 4, !dbg !118
  %"$gasrem_1244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1245" = icmp ugt i64 1, %"$gasrem_1244"
  br i1 %"$gascmp_1245", label %"$out_of_gas_1246", label %"$have_gas_1247"

"$out_of_gas_1246":                               ; preds = %"$have_gas_1242"
  call void @_out_of_gas()
  br label %"$have_gas_1247"

"$have_gas_1247":                                 ; preds = %"$out_of_gas_1246", %"$have_gas_1242"
  %"$consume_1248" = sub i64 %"$gasrem_1244", 1
  store i64 %"$consume_1248", i64* @_gasrem, align 8
  %uint3 = alloca %Uint32, align 8
  %"$gasrem_1249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1250" = icmp ugt i64 1, %"$gasrem_1249"
  br i1 %"$gascmp_1250", label %"$out_of_gas_1251", label %"$have_gas_1252"

"$out_of_gas_1251":                               ; preds = %"$have_gas_1247"
  call void @_out_of_gas()
  br label %"$have_gas_1252"

"$have_gas_1252":                                 ; preds = %"$out_of_gas_1251", %"$have_gas_1247"
  %"$consume_1253" = sub i64 %"$gasrem_1249", 1
  store i64 %"$consume_1253", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %uint3, align 4, !dbg !119
  %"$gasrem_1254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1255" = icmp ugt i64 1, %"$gasrem_1254"
  br i1 %"$gascmp_1255", label %"$out_of_gas_1256", label %"$have_gas_1257"

"$out_of_gas_1256":                               ; preds = %"$have_gas_1252"
  call void @_out_of_gas()
  br label %"$have_gas_1257"

"$have_gas_1257":                                 ; preds = %"$out_of_gas_1256", %"$have_gas_1252"
  %"$consume_1258" = sub i64 %"$gasrem_1254", 1
  store i64 %"$consume_1258", i64* @_gasrem, align 8
  %uint4 = alloca %Uint32, align 8
  %"$gasrem_1259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1260" = icmp ugt i64 1, %"$gasrem_1259"
  br i1 %"$gascmp_1260", label %"$out_of_gas_1261", label %"$have_gas_1262"

"$out_of_gas_1261":                               ; preds = %"$have_gas_1257"
  call void @_out_of_gas()
  br label %"$have_gas_1262"

"$have_gas_1262":                                 ; preds = %"$out_of_gas_1261", %"$have_gas_1257"
  %"$consume_1263" = sub i64 %"$gasrem_1259", 1
  store i64 %"$consume_1263", i64* @_gasrem, align 8
  store %Uint32 { i32 4 }, %Uint32* %uint4, align 4, !dbg !120
  %"$gasrem_1264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1265" = icmp ugt i64 1, %"$gasrem_1264"
  br i1 %"$gascmp_1265", label %"$out_of_gas_1266", label %"$have_gas_1267"

"$out_of_gas_1266":                               ; preds = %"$have_gas_1262"
  call void @_out_of_gas()
  br label %"$have_gas_1267"

"$have_gas_1267":                                 ; preds = %"$out_of_gas_1266", %"$have_gas_1262"
  %"$consume_1268" = sub i64 %"$gasrem_1264", 1
  store i64 %"$consume_1268", i64* @_gasrem, align 8
  %n0 = alloca %TName_Nat*, align 8
  %"$execptr_load_1269" = load i8*, i8** @_execptr, align 8
  %"$uint0_1270" = load %Uint32, %Uint32* %uint0, align 4
  %"$to_nat_call_1271" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1269", %Uint32 %"$uint0_1270")
  store %TName_Nat* %"$to_nat_call_1271", %TName_Nat** %n0, align 8, !dbg !121
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 1, %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$have_gas_1267"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$have_gas_1267"
  %"$consume_1276" = sub i64 %"$gasrem_1272", 1
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  %n1 = alloca %TName_Nat*, align 8
  %"$execptr_load_1277" = load i8*, i8** @_execptr, align 8
  %"$uint1_1278" = load %Uint32, %Uint32* %uint1, align 4
  %"$to_nat_call_1279" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1277", %Uint32 %"$uint1_1278")
  store %TName_Nat* %"$to_nat_call_1279", %TName_Nat** %n1, align 8, !dbg !122
  %"$gasrem_1280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1281" = icmp ugt i64 1, %"$gasrem_1280"
  br i1 %"$gascmp_1281", label %"$out_of_gas_1282", label %"$have_gas_1283"

"$out_of_gas_1282":                               ; preds = %"$have_gas_1275"
  call void @_out_of_gas()
  br label %"$have_gas_1283"

"$have_gas_1283":                                 ; preds = %"$out_of_gas_1282", %"$have_gas_1275"
  %"$consume_1284" = sub i64 %"$gasrem_1280", 1
  store i64 %"$consume_1284", i64* @_gasrem, align 8
  %n2 = alloca %TName_Nat*, align 8
  %"$execptr_load_1285" = load i8*, i8** @_execptr, align 8
  %"$uint2_1286" = load %Uint32, %Uint32* %uint2, align 4
  %"$to_nat_call_1287" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1285", %Uint32 %"$uint2_1286")
  store %TName_Nat* %"$to_nat_call_1287", %TName_Nat** %n2, align 8, !dbg !123
  %"$gasrem_1288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1289" = icmp ugt i64 1, %"$gasrem_1288"
  br i1 %"$gascmp_1289", label %"$out_of_gas_1290", label %"$have_gas_1291"

"$out_of_gas_1290":                               ; preds = %"$have_gas_1283"
  call void @_out_of_gas()
  br label %"$have_gas_1291"

"$have_gas_1291":                                 ; preds = %"$out_of_gas_1290", %"$have_gas_1283"
  %"$consume_1292" = sub i64 %"$gasrem_1288", 1
  store i64 %"$consume_1292", i64* @_gasrem, align 8
  %n3 = alloca %TName_Nat*, align 8
  %"$execptr_load_1293" = load i8*, i8** @_execptr, align 8
  %"$uint3_1294" = load %Uint32, %Uint32* %uint3, align 4
  %"$to_nat_call_1295" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1293", %Uint32 %"$uint3_1294")
  store %TName_Nat* %"$to_nat_call_1295", %TName_Nat** %n3, align 8, !dbg !124
  %"$gasrem_1296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1297" = icmp ugt i64 1, %"$gasrem_1296"
  br i1 %"$gascmp_1297", label %"$out_of_gas_1298", label %"$have_gas_1299"

"$out_of_gas_1298":                               ; preds = %"$have_gas_1291"
  call void @_out_of_gas()
  br label %"$have_gas_1299"

"$have_gas_1299":                                 ; preds = %"$out_of_gas_1298", %"$have_gas_1291"
  %"$consume_1300" = sub i64 %"$gasrem_1296", 1
  store i64 %"$consume_1300", i64* @_gasrem, align 8
  %n4 = alloca %TName_Nat*, align 8
  %"$execptr_load_1301" = load i8*, i8** @_execptr, align 8
  %"$uint4_1302" = load %Uint32, %Uint32* %uint4, align 4
  %"$to_nat_call_1303" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1301", %Uint32 %"$uint4_1302")
  store %TName_Nat* %"$to_nat_call_1303", %TName_Nat** %n4, align 8, !dbg !125
  %"$gasrem_1304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1305" = icmp ugt i64 1, %"$gasrem_1304"
  br i1 %"$gascmp_1305", label %"$out_of_gas_1306", label %"$have_gas_1307"

"$out_of_gas_1306":                               ; preds = %"$have_gas_1299"
  call void @_out_of_gas()
  br label %"$have_gas_1307"

"$have_gas_1307":                                 ; preds = %"$out_of_gas_1306", %"$have_gas_1299"
  %"$consume_1308" = sub i64 %"$gasrem_1304", 1
  store i64 %"$consume_1308", i64* @_gasrem, align 8
  %ack00 = alloca %TName_Nat*, align 8
  %"$gasrem_1309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1310" = icmp ugt i64 1, %"$gasrem_1309"
  br i1 %"$gascmp_1310", label %"$out_of_gas_1311", label %"$have_gas_1312"

"$out_of_gas_1311":                               ; preds = %"$have_gas_1307"
  call void @_out_of_gas()
  br label %"$have_gas_1312"

"$have_gas_1312":                                 ; preds = %"$out_of_gas_1311", %"$have_gas_1307"
  %"$consume_1313" = sub i64 %"$gasrem_1309", 1
  store i64 %"$consume_1313", i64* @_gasrem, align 8
  %"$ackermann_36" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1314" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1315" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1314", 0
  %"$ackermann_envptr_1316" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1314", 1
  %"$n0_1317" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1318" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1315"(i8* %"$ackermann_envptr_1316", %TName_Nat* %"$n0_1317"), !dbg !126
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1318", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_36", align 8, !dbg !126
  %"$ackermann_37" = alloca %TName_Nat*, align 8
  %"$$ackermann_36_1319" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_36", align 8
  %"$$ackermann_36_fptr_1320" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_36_1319", 0
  %"$$ackermann_36_envptr_1321" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_36_1319", 1
  %"$n0_1322" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_36_call_1323" = call %TName_Nat* %"$$ackermann_36_fptr_1320"(i8* %"$$ackermann_36_envptr_1321", %TName_Nat* %"$n0_1322"), !dbg !126
  store %TName_Nat* %"$$ackermann_36_call_1323", %TName_Nat** %"$ackermann_37", align 8, !dbg !126
  %"$$ackermann_37_1324" = load %TName_Nat*, %TName_Nat** %"$ackermann_37", align 8
  store %TName_Nat* %"$$ackermann_37_1324", %TName_Nat** %ack00, align 8, !dbg !126
  %"$gasrem_1325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1326" = icmp ugt i64 1, %"$gasrem_1325"
  br i1 %"$gascmp_1326", label %"$out_of_gas_1327", label %"$have_gas_1328"

"$out_of_gas_1327":                               ; preds = %"$have_gas_1312"
  call void @_out_of_gas()
  br label %"$have_gas_1328"

"$have_gas_1328":                                 ; preds = %"$out_of_gas_1327", %"$have_gas_1312"
  %"$consume_1329" = sub i64 %"$gasrem_1325", 1
  store i64 %"$consume_1329", i64* @_gasrem, align 8
  %"$gasrem_1330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1331" = icmp ugt i64 1, %"$gasrem_1330"
  br i1 %"$gascmp_1331", label %"$out_of_gas_1332", label %"$have_gas_1333"

"$out_of_gas_1332":                               ; preds = %"$have_gas_1328"
  call void @_out_of_gas()
  br label %"$have_gas_1333"

"$have_gas_1333":                                 ; preds = %"$out_of_gas_1332", %"$have_gas_1328"
  %"$consume_1334" = sub i64 %"$gasrem_1330", 1
  store i64 %"$consume_1334", i64* @_gasrem, align 8
  %ack02 = alloca %TName_Nat*, align 8
  %"$gasrem_1335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1336" = icmp ugt i64 1, %"$gasrem_1335"
  br i1 %"$gascmp_1336", label %"$out_of_gas_1337", label %"$have_gas_1338"

"$out_of_gas_1337":                               ; preds = %"$have_gas_1333"
  call void @_out_of_gas()
  br label %"$have_gas_1338"

"$have_gas_1338":                                 ; preds = %"$out_of_gas_1337", %"$have_gas_1333"
  %"$consume_1339" = sub i64 %"$gasrem_1335", 1
  store i64 %"$consume_1339", i64* @_gasrem, align 8
  %"$ackermann_38" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1340" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1341" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1340", 0
  %"$ackermann_envptr_1342" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1340", 1
  %"$n0_1343" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1344" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1341"(i8* %"$ackermann_envptr_1342", %TName_Nat* %"$n0_1343"), !dbg !127
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1344", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_38", align 8, !dbg !127
  %"$ackermann_39" = alloca %TName_Nat*, align 8
  %"$$ackermann_38_1345" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_38", align 8
  %"$$ackermann_38_fptr_1346" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_38_1345", 0
  %"$$ackermann_38_envptr_1347" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_38_1345", 1
  %"$n2_1348" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_38_call_1349" = call %TName_Nat* %"$$ackermann_38_fptr_1346"(i8* %"$$ackermann_38_envptr_1347", %TName_Nat* %"$n2_1348"), !dbg !127
  store %TName_Nat* %"$$ackermann_38_call_1349", %TName_Nat** %"$ackermann_39", align 8, !dbg !127
  %"$$ackermann_39_1350" = load %TName_Nat*, %TName_Nat** %"$ackermann_39", align 8
  store %TName_Nat* %"$$ackermann_39_1350", %TName_Nat** %ack02, align 8, !dbg !127
  %"$gasrem_1351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1352" = icmp ugt i64 1, %"$gasrem_1351"
  br i1 %"$gascmp_1352", label %"$out_of_gas_1353", label %"$have_gas_1354"

"$out_of_gas_1353":                               ; preds = %"$have_gas_1338"
  call void @_out_of_gas()
  br label %"$have_gas_1354"

"$have_gas_1354":                                 ; preds = %"$out_of_gas_1353", %"$have_gas_1338"
  %"$consume_1355" = sub i64 %"$gasrem_1351", 1
  store i64 %"$consume_1355", i64* @_gasrem, align 8
  %ack03 = alloca %TName_Nat*, align 8
  %"$gasrem_1356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1357" = icmp ugt i64 1, %"$gasrem_1356"
  br i1 %"$gascmp_1357", label %"$out_of_gas_1358", label %"$have_gas_1359"

"$out_of_gas_1358":                               ; preds = %"$have_gas_1354"
  call void @_out_of_gas()
  br label %"$have_gas_1359"

"$have_gas_1359":                                 ; preds = %"$out_of_gas_1358", %"$have_gas_1354"
  %"$consume_1360" = sub i64 %"$gasrem_1356", 1
  store i64 %"$consume_1360", i64* @_gasrem, align 8
  %"$ackermann_40" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1361" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1362" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1361", 0
  %"$ackermann_envptr_1363" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1361", 1
  %"$n0_1364" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1365" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1362"(i8* %"$ackermann_envptr_1363", %TName_Nat* %"$n0_1364"), !dbg !128
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1365", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_40", align 8, !dbg !128
  %"$ackermann_41" = alloca %TName_Nat*, align 8
  %"$$ackermann_40_1366" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_40", align 8
  %"$$ackermann_40_fptr_1367" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_40_1366", 0
  %"$$ackermann_40_envptr_1368" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_40_1366", 1
  %"$n3_1369" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_40_call_1370" = call %TName_Nat* %"$$ackermann_40_fptr_1367"(i8* %"$$ackermann_40_envptr_1368", %TName_Nat* %"$n3_1369"), !dbg !128
  store %TName_Nat* %"$$ackermann_40_call_1370", %TName_Nat** %"$ackermann_41", align 8, !dbg !128
  %"$$ackermann_41_1371" = load %TName_Nat*, %TName_Nat** %"$ackermann_41", align 8
  store %TName_Nat* %"$$ackermann_41_1371", %TName_Nat** %ack03, align 8, !dbg !128
  %"$gasrem_1372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1373" = icmp ugt i64 1, %"$gasrem_1372"
  br i1 %"$gascmp_1373", label %"$out_of_gas_1374", label %"$have_gas_1375"

"$out_of_gas_1374":                               ; preds = %"$have_gas_1359"
  call void @_out_of_gas()
  br label %"$have_gas_1375"

"$have_gas_1375":                                 ; preds = %"$out_of_gas_1374", %"$have_gas_1359"
  %"$consume_1376" = sub i64 %"$gasrem_1372", 1
  store i64 %"$consume_1376", i64* @_gasrem, align 8
  %ack04 = alloca %TName_Nat*, align 8
  %"$gasrem_1377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1378" = icmp ugt i64 1, %"$gasrem_1377"
  br i1 %"$gascmp_1378", label %"$out_of_gas_1379", label %"$have_gas_1380"

"$out_of_gas_1379":                               ; preds = %"$have_gas_1375"
  call void @_out_of_gas()
  br label %"$have_gas_1380"

"$have_gas_1380":                                 ; preds = %"$out_of_gas_1379", %"$have_gas_1375"
  %"$consume_1381" = sub i64 %"$gasrem_1377", 1
  store i64 %"$consume_1381", i64* @_gasrem, align 8
  %"$ackermann_42" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1382" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1383" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1382", 0
  %"$ackermann_envptr_1384" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1382", 1
  %"$n0_1385" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1386" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1383"(i8* %"$ackermann_envptr_1384", %TName_Nat* %"$n0_1385"), !dbg !129
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1386", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_42", align 8, !dbg !129
  %"$ackermann_43" = alloca %TName_Nat*, align 8
  %"$$ackermann_42_1387" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_42", align 8
  %"$$ackermann_42_fptr_1388" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_42_1387", 0
  %"$$ackermann_42_envptr_1389" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_42_1387", 1
  %"$n4_1390" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_42_call_1391" = call %TName_Nat* %"$$ackermann_42_fptr_1388"(i8* %"$$ackermann_42_envptr_1389", %TName_Nat* %"$n4_1390"), !dbg !129
  store %TName_Nat* %"$$ackermann_42_call_1391", %TName_Nat** %"$ackermann_43", align 8, !dbg !129
  %"$$ackermann_43_1392" = load %TName_Nat*, %TName_Nat** %"$ackermann_43", align 8
  store %TName_Nat* %"$$ackermann_43_1392", %TName_Nat** %ack04, align 8, !dbg !129
  %"$gasrem_1393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1394" = icmp ugt i64 1, %"$gasrem_1393"
  br i1 %"$gascmp_1394", label %"$out_of_gas_1395", label %"$have_gas_1396"

"$out_of_gas_1395":                               ; preds = %"$have_gas_1380"
  call void @_out_of_gas()
  br label %"$have_gas_1396"

"$have_gas_1396":                                 ; preds = %"$out_of_gas_1395", %"$have_gas_1380"
  %"$consume_1397" = sub i64 %"$gasrem_1393", 1
  store i64 %"$consume_1397", i64* @_gasrem, align 8
  %ack10 = alloca %TName_Nat*, align 8
  %"$gasrem_1398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1399" = icmp ugt i64 1, %"$gasrem_1398"
  br i1 %"$gascmp_1399", label %"$out_of_gas_1400", label %"$have_gas_1401"

"$out_of_gas_1400":                               ; preds = %"$have_gas_1396"
  call void @_out_of_gas()
  br label %"$have_gas_1401"

"$have_gas_1401":                                 ; preds = %"$out_of_gas_1400", %"$have_gas_1396"
  %"$consume_1402" = sub i64 %"$gasrem_1398", 1
  store i64 %"$consume_1402", i64* @_gasrem, align 8
  %"$ackermann_44" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1403" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1404" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1403", 0
  %"$ackermann_envptr_1405" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1403", 1
  %"$n1_1406" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1407" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1404"(i8* %"$ackermann_envptr_1405", %TName_Nat* %"$n1_1406"), !dbg !130
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1407", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_44", align 8, !dbg !130
  %"$ackermann_45" = alloca %TName_Nat*, align 8
  %"$$ackermann_44_1408" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_44", align 8
  %"$$ackermann_44_fptr_1409" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_44_1408", 0
  %"$$ackermann_44_envptr_1410" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_44_1408", 1
  %"$n0_1411" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_44_call_1412" = call %TName_Nat* %"$$ackermann_44_fptr_1409"(i8* %"$$ackermann_44_envptr_1410", %TName_Nat* %"$n0_1411"), !dbg !130
  store %TName_Nat* %"$$ackermann_44_call_1412", %TName_Nat** %"$ackermann_45", align 8, !dbg !130
  %"$$ackermann_45_1413" = load %TName_Nat*, %TName_Nat** %"$ackermann_45", align 8
  store %TName_Nat* %"$$ackermann_45_1413", %TName_Nat** %ack10, align 8, !dbg !130
  %"$gasrem_1414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1415" = icmp ugt i64 1, %"$gasrem_1414"
  br i1 %"$gascmp_1415", label %"$out_of_gas_1416", label %"$have_gas_1417"

"$out_of_gas_1416":                               ; preds = %"$have_gas_1401"
  call void @_out_of_gas()
  br label %"$have_gas_1417"

"$have_gas_1417":                                 ; preds = %"$out_of_gas_1416", %"$have_gas_1401"
  %"$consume_1418" = sub i64 %"$gasrem_1414", 1
  store i64 %"$consume_1418", i64* @_gasrem, align 8
  %ack11 = alloca %TName_Nat*, align 8
  %"$gasrem_1419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1420" = icmp ugt i64 1, %"$gasrem_1419"
  br i1 %"$gascmp_1420", label %"$out_of_gas_1421", label %"$have_gas_1422"

"$out_of_gas_1421":                               ; preds = %"$have_gas_1417"
  call void @_out_of_gas()
  br label %"$have_gas_1422"

"$have_gas_1422":                                 ; preds = %"$out_of_gas_1421", %"$have_gas_1417"
  %"$consume_1423" = sub i64 %"$gasrem_1419", 1
  store i64 %"$consume_1423", i64* @_gasrem, align 8
  %"$ackermann_46" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1424" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1425" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1424", 0
  %"$ackermann_envptr_1426" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1424", 1
  %"$n1_1427" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1428" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1425"(i8* %"$ackermann_envptr_1426", %TName_Nat* %"$n1_1427"), !dbg !131
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1428", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_46", align 8, !dbg !131
  %"$ackermann_47" = alloca %TName_Nat*, align 8
  %"$$ackermann_46_1429" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_46", align 8
  %"$$ackermann_46_fptr_1430" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_46_1429", 0
  %"$$ackermann_46_envptr_1431" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_46_1429", 1
  %"$n1_1432" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_46_call_1433" = call %TName_Nat* %"$$ackermann_46_fptr_1430"(i8* %"$$ackermann_46_envptr_1431", %TName_Nat* %"$n1_1432"), !dbg !131
  store %TName_Nat* %"$$ackermann_46_call_1433", %TName_Nat** %"$ackermann_47", align 8, !dbg !131
  %"$$ackermann_47_1434" = load %TName_Nat*, %TName_Nat** %"$ackermann_47", align 8
  store %TName_Nat* %"$$ackermann_47_1434", %TName_Nat** %ack11, align 8, !dbg !131
  %"$gasrem_1435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1436" = icmp ugt i64 1, %"$gasrem_1435"
  br i1 %"$gascmp_1436", label %"$out_of_gas_1437", label %"$have_gas_1438"

"$out_of_gas_1437":                               ; preds = %"$have_gas_1422"
  call void @_out_of_gas()
  br label %"$have_gas_1438"

"$have_gas_1438":                                 ; preds = %"$out_of_gas_1437", %"$have_gas_1422"
  %"$consume_1439" = sub i64 %"$gasrem_1435", 1
  store i64 %"$consume_1439", i64* @_gasrem, align 8
  %ack12 = alloca %TName_Nat*, align 8
  %"$gasrem_1440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1441" = icmp ugt i64 1, %"$gasrem_1440"
  br i1 %"$gascmp_1441", label %"$out_of_gas_1442", label %"$have_gas_1443"

"$out_of_gas_1442":                               ; preds = %"$have_gas_1438"
  call void @_out_of_gas()
  br label %"$have_gas_1443"

"$have_gas_1443":                                 ; preds = %"$out_of_gas_1442", %"$have_gas_1438"
  %"$consume_1444" = sub i64 %"$gasrem_1440", 1
  store i64 %"$consume_1444", i64* @_gasrem, align 8
  %"$ackermann_48" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1445" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1446" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1445", 0
  %"$ackermann_envptr_1447" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1445", 1
  %"$n1_1448" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1449" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1446"(i8* %"$ackermann_envptr_1447", %TName_Nat* %"$n1_1448"), !dbg !132
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1449", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_48", align 8, !dbg !132
  %"$ackermann_49" = alloca %TName_Nat*, align 8
  %"$$ackermann_48_1450" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_48", align 8
  %"$$ackermann_48_fptr_1451" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_48_1450", 0
  %"$$ackermann_48_envptr_1452" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_48_1450", 1
  %"$n2_1453" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_48_call_1454" = call %TName_Nat* %"$$ackermann_48_fptr_1451"(i8* %"$$ackermann_48_envptr_1452", %TName_Nat* %"$n2_1453"), !dbg !132
  store %TName_Nat* %"$$ackermann_48_call_1454", %TName_Nat** %"$ackermann_49", align 8, !dbg !132
  %"$$ackermann_49_1455" = load %TName_Nat*, %TName_Nat** %"$ackermann_49", align 8
  store %TName_Nat* %"$$ackermann_49_1455", %TName_Nat** %ack12, align 8, !dbg !132
  %"$gasrem_1456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1457" = icmp ugt i64 1, %"$gasrem_1456"
  br i1 %"$gascmp_1457", label %"$out_of_gas_1458", label %"$have_gas_1459"

"$out_of_gas_1458":                               ; preds = %"$have_gas_1443"
  call void @_out_of_gas()
  br label %"$have_gas_1459"

"$have_gas_1459":                                 ; preds = %"$out_of_gas_1458", %"$have_gas_1443"
  %"$consume_1460" = sub i64 %"$gasrem_1456", 1
  store i64 %"$consume_1460", i64* @_gasrem, align 8
  %ack13 = alloca %TName_Nat*, align 8
  %"$gasrem_1461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1462" = icmp ugt i64 1, %"$gasrem_1461"
  br i1 %"$gascmp_1462", label %"$out_of_gas_1463", label %"$have_gas_1464"

"$out_of_gas_1463":                               ; preds = %"$have_gas_1459"
  call void @_out_of_gas()
  br label %"$have_gas_1464"

"$have_gas_1464":                                 ; preds = %"$out_of_gas_1463", %"$have_gas_1459"
  %"$consume_1465" = sub i64 %"$gasrem_1461", 1
  store i64 %"$consume_1465", i64* @_gasrem, align 8
  %"$ackermann_50" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1466" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1467" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1466", 0
  %"$ackermann_envptr_1468" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1466", 1
  %"$n1_1469" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1470" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1467"(i8* %"$ackermann_envptr_1468", %TName_Nat* %"$n1_1469"), !dbg !133
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1470", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_50", align 8, !dbg !133
  %"$ackermann_51" = alloca %TName_Nat*, align 8
  %"$$ackermann_50_1471" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_50", align 8
  %"$$ackermann_50_fptr_1472" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_50_1471", 0
  %"$$ackermann_50_envptr_1473" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_50_1471", 1
  %"$n3_1474" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_50_call_1475" = call %TName_Nat* %"$$ackermann_50_fptr_1472"(i8* %"$$ackermann_50_envptr_1473", %TName_Nat* %"$n3_1474"), !dbg !133
  store %TName_Nat* %"$$ackermann_50_call_1475", %TName_Nat** %"$ackermann_51", align 8, !dbg !133
  %"$$ackermann_51_1476" = load %TName_Nat*, %TName_Nat** %"$ackermann_51", align 8
  store %TName_Nat* %"$$ackermann_51_1476", %TName_Nat** %ack13, align 8, !dbg !133
  %"$gasrem_1477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1478" = icmp ugt i64 1, %"$gasrem_1477"
  br i1 %"$gascmp_1478", label %"$out_of_gas_1479", label %"$have_gas_1480"

"$out_of_gas_1479":                               ; preds = %"$have_gas_1464"
  call void @_out_of_gas()
  br label %"$have_gas_1480"

"$have_gas_1480":                                 ; preds = %"$out_of_gas_1479", %"$have_gas_1464"
  %"$consume_1481" = sub i64 %"$gasrem_1477", 1
  store i64 %"$consume_1481", i64* @_gasrem, align 8
  %ack14 = alloca %TName_Nat*, align 8
  %"$gasrem_1482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1483" = icmp ugt i64 1, %"$gasrem_1482"
  br i1 %"$gascmp_1483", label %"$out_of_gas_1484", label %"$have_gas_1485"

"$out_of_gas_1484":                               ; preds = %"$have_gas_1480"
  call void @_out_of_gas()
  br label %"$have_gas_1485"

"$have_gas_1485":                                 ; preds = %"$out_of_gas_1484", %"$have_gas_1480"
  %"$consume_1486" = sub i64 %"$gasrem_1482", 1
  store i64 %"$consume_1486", i64* @_gasrem, align 8
  %"$ackermann_52" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1487" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1488" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1487", 0
  %"$ackermann_envptr_1489" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1487", 1
  %"$n1_1490" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1491" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1488"(i8* %"$ackermann_envptr_1489", %TName_Nat* %"$n1_1490"), !dbg !134
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1491", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_52", align 8, !dbg !134
  %"$ackermann_53" = alloca %TName_Nat*, align 8
  %"$$ackermann_52_1492" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_52", align 8
  %"$$ackermann_52_fptr_1493" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_52_1492", 0
  %"$$ackermann_52_envptr_1494" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_52_1492", 1
  %"$n4_1495" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_52_call_1496" = call %TName_Nat* %"$$ackermann_52_fptr_1493"(i8* %"$$ackermann_52_envptr_1494", %TName_Nat* %"$n4_1495"), !dbg !134
  store %TName_Nat* %"$$ackermann_52_call_1496", %TName_Nat** %"$ackermann_53", align 8, !dbg !134
  %"$$ackermann_53_1497" = load %TName_Nat*, %TName_Nat** %"$ackermann_53", align 8
  store %TName_Nat* %"$$ackermann_53_1497", %TName_Nat** %ack14, align 8, !dbg !134
  %"$gasrem_1498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1499" = icmp ugt i64 1, %"$gasrem_1498"
  br i1 %"$gascmp_1499", label %"$out_of_gas_1500", label %"$have_gas_1501"

"$out_of_gas_1500":                               ; preds = %"$have_gas_1485"
  call void @_out_of_gas()
  br label %"$have_gas_1501"

"$have_gas_1501":                                 ; preds = %"$out_of_gas_1500", %"$have_gas_1485"
  %"$consume_1502" = sub i64 %"$gasrem_1498", 1
  store i64 %"$consume_1502", i64* @_gasrem, align 8
  %ack20 = alloca %TName_Nat*, align 8
  %"$gasrem_1503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1504" = icmp ugt i64 1, %"$gasrem_1503"
  br i1 %"$gascmp_1504", label %"$out_of_gas_1505", label %"$have_gas_1506"

"$out_of_gas_1505":                               ; preds = %"$have_gas_1501"
  call void @_out_of_gas()
  br label %"$have_gas_1506"

"$have_gas_1506":                                 ; preds = %"$out_of_gas_1505", %"$have_gas_1501"
  %"$consume_1507" = sub i64 %"$gasrem_1503", 1
  store i64 %"$consume_1507", i64* @_gasrem, align 8
  %"$ackermann_54" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1508" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1509" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1508", 0
  %"$ackermann_envptr_1510" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1508", 1
  %"$n2_1511" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1512" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1509"(i8* %"$ackermann_envptr_1510", %TName_Nat* %"$n2_1511"), !dbg !135
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1512", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_54", align 8, !dbg !135
  %"$ackermann_55" = alloca %TName_Nat*, align 8
  %"$$ackermann_54_1513" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_54", align 8
  %"$$ackermann_54_fptr_1514" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_54_1513", 0
  %"$$ackermann_54_envptr_1515" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_54_1513", 1
  %"$n0_1516" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_54_call_1517" = call %TName_Nat* %"$$ackermann_54_fptr_1514"(i8* %"$$ackermann_54_envptr_1515", %TName_Nat* %"$n0_1516"), !dbg !135
  store %TName_Nat* %"$$ackermann_54_call_1517", %TName_Nat** %"$ackermann_55", align 8, !dbg !135
  %"$$ackermann_55_1518" = load %TName_Nat*, %TName_Nat** %"$ackermann_55", align 8
  store %TName_Nat* %"$$ackermann_55_1518", %TName_Nat** %ack20, align 8, !dbg !135
  %"$gasrem_1519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1520" = icmp ugt i64 1, %"$gasrem_1519"
  br i1 %"$gascmp_1520", label %"$out_of_gas_1521", label %"$have_gas_1522"

"$out_of_gas_1521":                               ; preds = %"$have_gas_1506"
  call void @_out_of_gas()
  br label %"$have_gas_1522"

"$have_gas_1522":                                 ; preds = %"$out_of_gas_1521", %"$have_gas_1506"
  %"$consume_1523" = sub i64 %"$gasrem_1519", 1
  store i64 %"$consume_1523", i64* @_gasrem, align 8
  %ack21 = alloca %TName_Nat*, align 8
  %"$gasrem_1524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1525" = icmp ugt i64 1, %"$gasrem_1524"
  br i1 %"$gascmp_1525", label %"$out_of_gas_1526", label %"$have_gas_1527"

"$out_of_gas_1526":                               ; preds = %"$have_gas_1522"
  call void @_out_of_gas()
  br label %"$have_gas_1527"

"$have_gas_1527":                                 ; preds = %"$out_of_gas_1526", %"$have_gas_1522"
  %"$consume_1528" = sub i64 %"$gasrem_1524", 1
  store i64 %"$consume_1528", i64* @_gasrem, align 8
  %"$ackermann_56" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1529" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1530" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1529", 0
  %"$ackermann_envptr_1531" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1529", 1
  %"$n2_1532" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1533" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1530"(i8* %"$ackermann_envptr_1531", %TName_Nat* %"$n2_1532"), !dbg !136
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1533", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_56", align 8, !dbg !136
  %"$ackermann_57" = alloca %TName_Nat*, align 8
  %"$$ackermann_56_1534" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_56", align 8
  %"$$ackermann_56_fptr_1535" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_56_1534", 0
  %"$$ackermann_56_envptr_1536" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_56_1534", 1
  %"$n1_1537" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_56_call_1538" = call %TName_Nat* %"$$ackermann_56_fptr_1535"(i8* %"$$ackermann_56_envptr_1536", %TName_Nat* %"$n1_1537"), !dbg !136
  store %TName_Nat* %"$$ackermann_56_call_1538", %TName_Nat** %"$ackermann_57", align 8, !dbg !136
  %"$$ackermann_57_1539" = load %TName_Nat*, %TName_Nat** %"$ackermann_57", align 8
  store %TName_Nat* %"$$ackermann_57_1539", %TName_Nat** %ack21, align 8, !dbg !136
  %"$gasrem_1540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1541" = icmp ugt i64 1, %"$gasrem_1540"
  br i1 %"$gascmp_1541", label %"$out_of_gas_1542", label %"$have_gas_1543"

"$out_of_gas_1542":                               ; preds = %"$have_gas_1527"
  call void @_out_of_gas()
  br label %"$have_gas_1543"

"$have_gas_1543":                                 ; preds = %"$out_of_gas_1542", %"$have_gas_1527"
  %"$consume_1544" = sub i64 %"$gasrem_1540", 1
  store i64 %"$consume_1544", i64* @_gasrem, align 8
  %ack22 = alloca %TName_Nat*, align 8
  %"$gasrem_1545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1546" = icmp ugt i64 1, %"$gasrem_1545"
  br i1 %"$gascmp_1546", label %"$out_of_gas_1547", label %"$have_gas_1548"

"$out_of_gas_1547":                               ; preds = %"$have_gas_1543"
  call void @_out_of_gas()
  br label %"$have_gas_1548"

"$have_gas_1548":                                 ; preds = %"$out_of_gas_1547", %"$have_gas_1543"
  %"$consume_1549" = sub i64 %"$gasrem_1545", 1
  store i64 %"$consume_1549", i64* @_gasrem, align 8
  %"$ackermann_58" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1550" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1551" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1550", 0
  %"$ackermann_envptr_1552" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1550", 1
  %"$n2_1553" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1554" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1551"(i8* %"$ackermann_envptr_1552", %TName_Nat* %"$n2_1553"), !dbg !137
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1554", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_58", align 8, !dbg !137
  %"$ackermann_59" = alloca %TName_Nat*, align 8
  %"$$ackermann_58_1555" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_58", align 8
  %"$$ackermann_58_fptr_1556" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_58_1555", 0
  %"$$ackermann_58_envptr_1557" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_58_1555", 1
  %"$n2_1558" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_58_call_1559" = call %TName_Nat* %"$$ackermann_58_fptr_1556"(i8* %"$$ackermann_58_envptr_1557", %TName_Nat* %"$n2_1558"), !dbg !137
  store %TName_Nat* %"$$ackermann_58_call_1559", %TName_Nat** %"$ackermann_59", align 8, !dbg !137
  %"$$ackermann_59_1560" = load %TName_Nat*, %TName_Nat** %"$ackermann_59", align 8
  store %TName_Nat* %"$$ackermann_59_1560", %TName_Nat** %ack22, align 8, !dbg !137
  %"$gasrem_1561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1562" = icmp ugt i64 1, %"$gasrem_1561"
  br i1 %"$gascmp_1562", label %"$out_of_gas_1563", label %"$have_gas_1564"

"$out_of_gas_1563":                               ; preds = %"$have_gas_1548"
  call void @_out_of_gas()
  br label %"$have_gas_1564"

"$have_gas_1564":                                 ; preds = %"$out_of_gas_1563", %"$have_gas_1548"
  %"$consume_1565" = sub i64 %"$gasrem_1561", 1
  store i64 %"$consume_1565", i64* @_gasrem, align 8
  %ack23 = alloca %TName_Nat*, align 8
  %"$gasrem_1566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1567" = icmp ugt i64 1, %"$gasrem_1566"
  br i1 %"$gascmp_1567", label %"$out_of_gas_1568", label %"$have_gas_1569"

"$out_of_gas_1568":                               ; preds = %"$have_gas_1564"
  call void @_out_of_gas()
  br label %"$have_gas_1569"

"$have_gas_1569":                                 ; preds = %"$out_of_gas_1568", %"$have_gas_1564"
  %"$consume_1570" = sub i64 %"$gasrem_1566", 1
  store i64 %"$consume_1570", i64* @_gasrem, align 8
  %"$ackermann_60" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1571" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1572" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1571", 0
  %"$ackermann_envptr_1573" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1571", 1
  %"$n2_1574" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1575" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1572"(i8* %"$ackermann_envptr_1573", %TName_Nat* %"$n2_1574"), !dbg !138
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1575", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_60", align 8, !dbg !138
  %"$ackermann_61" = alloca %TName_Nat*, align 8
  %"$$ackermann_60_1576" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_60", align 8
  %"$$ackermann_60_fptr_1577" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_60_1576", 0
  %"$$ackermann_60_envptr_1578" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_60_1576", 1
  %"$n3_1579" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_60_call_1580" = call %TName_Nat* %"$$ackermann_60_fptr_1577"(i8* %"$$ackermann_60_envptr_1578", %TName_Nat* %"$n3_1579"), !dbg !138
  store %TName_Nat* %"$$ackermann_60_call_1580", %TName_Nat** %"$ackermann_61", align 8, !dbg !138
  %"$$ackermann_61_1581" = load %TName_Nat*, %TName_Nat** %"$ackermann_61", align 8
  store %TName_Nat* %"$$ackermann_61_1581", %TName_Nat** %ack23, align 8, !dbg !138
  %"$gasrem_1582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1583" = icmp ugt i64 1, %"$gasrem_1582"
  br i1 %"$gascmp_1583", label %"$out_of_gas_1584", label %"$have_gas_1585"

"$out_of_gas_1584":                               ; preds = %"$have_gas_1569"
  call void @_out_of_gas()
  br label %"$have_gas_1585"

"$have_gas_1585":                                 ; preds = %"$out_of_gas_1584", %"$have_gas_1569"
  %"$consume_1586" = sub i64 %"$gasrem_1582", 1
  store i64 %"$consume_1586", i64* @_gasrem, align 8
  %"$gasrem_1587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1588" = icmp ugt i64 1, %"$gasrem_1587"
  br i1 %"$gascmp_1588", label %"$out_of_gas_1589", label %"$have_gas_1590"

"$out_of_gas_1589":                               ; preds = %"$have_gas_1585"
  call void @_out_of_gas()
  br label %"$have_gas_1590"

"$have_gas_1590":                                 ; preds = %"$out_of_gas_1589", %"$have_gas_1585"
  %"$consume_1591" = sub i64 %"$gasrem_1587", 1
  store i64 %"$consume_1591", i64* @_gasrem, align 8
  %ack30 = alloca %TName_Nat*, align 8
  %"$gasrem_1592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1593" = icmp ugt i64 1, %"$gasrem_1592"
  br i1 %"$gascmp_1593", label %"$out_of_gas_1594", label %"$have_gas_1595"

"$out_of_gas_1594":                               ; preds = %"$have_gas_1590"
  call void @_out_of_gas()
  br label %"$have_gas_1595"

"$have_gas_1595":                                 ; preds = %"$out_of_gas_1594", %"$have_gas_1590"
  %"$consume_1596" = sub i64 %"$gasrem_1592", 1
  store i64 %"$consume_1596", i64* @_gasrem, align 8
  %"$ackermann_62" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1597" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1598" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1597", 0
  %"$ackermann_envptr_1599" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1597", 1
  %"$n3_1600" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1601" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1598"(i8* %"$ackermann_envptr_1599", %TName_Nat* %"$n3_1600"), !dbg !139
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1601", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_62", align 8, !dbg !139
  %"$ackermann_63" = alloca %TName_Nat*, align 8
  %"$$ackermann_62_1602" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_62", align 8
  %"$$ackermann_62_fptr_1603" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_62_1602", 0
  %"$$ackermann_62_envptr_1604" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_62_1602", 1
  %"$n0_1605" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_62_call_1606" = call %TName_Nat* %"$$ackermann_62_fptr_1603"(i8* %"$$ackermann_62_envptr_1604", %TName_Nat* %"$n0_1605"), !dbg !139
  store %TName_Nat* %"$$ackermann_62_call_1606", %TName_Nat** %"$ackermann_63", align 8, !dbg !139
  %"$$ackermann_63_1607" = load %TName_Nat*, %TName_Nat** %"$ackermann_63", align 8
  store %TName_Nat* %"$$ackermann_63_1607", %TName_Nat** %ack30, align 8, !dbg !139
  %"$gasrem_1608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1609" = icmp ugt i64 1, %"$gasrem_1608"
  br i1 %"$gascmp_1609", label %"$out_of_gas_1610", label %"$have_gas_1611"

"$out_of_gas_1610":                               ; preds = %"$have_gas_1595"
  call void @_out_of_gas()
  br label %"$have_gas_1611"

"$have_gas_1611":                                 ; preds = %"$out_of_gas_1610", %"$have_gas_1595"
  %"$consume_1612" = sub i64 %"$gasrem_1608", 1
  store i64 %"$consume_1612", i64* @_gasrem, align 8
  %ack31 = alloca %TName_Nat*, align 8
  %"$gasrem_1613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1614" = icmp ugt i64 1, %"$gasrem_1613"
  br i1 %"$gascmp_1614", label %"$out_of_gas_1615", label %"$have_gas_1616"

"$out_of_gas_1615":                               ; preds = %"$have_gas_1611"
  call void @_out_of_gas()
  br label %"$have_gas_1616"

"$have_gas_1616":                                 ; preds = %"$out_of_gas_1615", %"$have_gas_1611"
  %"$consume_1617" = sub i64 %"$gasrem_1613", 1
  store i64 %"$consume_1617", i64* @_gasrem, align 8
  %"$ackermann_64" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1618" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1619" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1618", 0
  %"$ackermann_envptr_1620" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1618", 1
  %"$n3_1621" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1622" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1619"(i8* %"$ackermann_envptr_1620", %TName_Nat* %"$n3_1621"), !dbg !140
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1622", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_64", align 8, !dbg !140
  %"$ackermann_65" = alloca %TName_Nat*, align 8
  %"$$ackermann_64_1623" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_64", align 8
  %"$$ackermann_64_fptr_1624" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_64_1623", 0
  %"$$ackermann_64_envptr_1625" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_64_1623", 1
  %"$n1_1626" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_64_call_1627" = call %TName_Nat* %"$$ackermann_64_fptr_1624"(i8* %"$$ackermann_64_envptr_1625", %TName_Nat* %"$n1_1626"), !dbg !140
  store %TName_Nat* %"$$ackermann_64_call_1627", %TName_Nat** %"$ackermann_65", align 8, !dbg !140
  %"$$ackermann_65_1628" = load %TName_Nat*, %TName_Nat** %"$ackermann_65", align 8
  store %TName_Nat* %"$$ackermann_65_1628", %TName_Nat** %ack31, align 8, !dbg !140
  %"$gasrem_1629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1630" = icmp ugt i64 1, %"$gasrem_1629"
  br i1 %"$gascmp_1630", label %"$out_of_gas_1631", label %"$have_gas_1632"

"$out_of_gas_1631":                               ; preds = %"$have_gas_1616"
  call void @_out_of_gas()
  br label %"$have_gas_1632"

"$have_gas_1632":                                 ; preds = %"$out_of_gas_1631", %"$have_gas_1616"
  %"$consume_1633" = sub i64 %"$gasrem_1629", 1
  store i64 %"$consume_1633", i64* @_gasrem, align 8
  %ack32 = alloca %TName_Nat*, align 8
  %"$gasrem_1634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1635" = icmp ugt i64 1, %"$gasrem_1634"
  br i1 %"$gascmp_1635", label %"$out_of_gas_1636", label %"$have_gas_1637"

"$out_of_gas_1636":                               ; preds = %"$have_gas_1632"
  call void @_out_of_gas()
  br label %"$have_gas_1637"

"$have_gas_1637":                                 ; preds = %"$out_of_gas_1636", %"$have_gas_1632"
  %"$consume_1638" = sub i64 %"$gasrem_1634", 1
  store i64 %"$consume_1638", i64* @_gasrem, align 8
  %"$ackermann_66" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1639" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1640" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1639", 0
  %"$ackermann_envptr_1641" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1639", 1
  %"$n3_1642" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1643" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1640"(i8* %"$ackermann_envptr_1641", %TName_Nat* %"$n3_1642"), !dbg !141
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1643", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_66", align 8, !dbg !141
  %"$ackermann_67" = alloca %TName_Nat*, align 8
  %"$$ackermann_66_1644" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_66", align 8
  %"$$ackermann_66_fptr_1645" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_66_1644", 0
  %"$$ackermann_66_envptr_1646" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_66_1644", 1
  %"$n2_1647" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_66_call_1648" = call %TName_Nat* %"$$ackermann_66_fptr_1645"(i8* %"$$ackermann_66_envptr_1646", %TName_Nat* %"$n2_1647"), !dbg !141
  store %TName_Nat* %"$$ackermann_66_call_1648", %TName_Nat** %"$ackermann_67", align 8, !dbg !141
  %"$$ackermann_67_1649" = load %TName_Nat*, %TName_Nat** %"$ackermann_67", align 8
  store %TName_Nat* %"$$ackermann_67_1649", %TName_Nat** %ack32, align 8, !dbg !141
  %"$gasrem_1650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1651" = icmp ugt i64 1, %"$gasrem_1650"
  br i1 %"$gascmp_1651", label %"$out_of_gas_1652", label %"$have_gas_1653"

"$out_of_gas_1652":                               ; preds = %"$have_gas_1637"
  call void @_out_of_gas()
  br label %"$have_gas_1653"

"$have_gas_1653":                                 ; preds = %"$out_of_gas_1652", %"$have_gas_1637"
  %"$consume_1654" = sub i64 %"$gasrem_1650", 1
  store i64 %"$consume_1654", i64* @_gasrem, align 8
  %ack33 = alloca %TName_Nat*, align 8
  %"$gasrem_1655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1656" = icmp ugt i64 1, %"$gasrem_1655"
  br i1 %"$gascmp_1656", label %"$out_of_gas_1657", label %"$have_gas_1658"

"$out_of_gas_1657":                               ; preds = %"$have_gas_1653"
  call void @_out_of_gas()
  br label %"$have_gas_1658"

"$have_gas_1658":                                 ; preds = %"$out_of_gas_1657", %"$have_gas_1653"
  %"$consume_1659" = sub i64 %"$gasrem_1655", 1
  store i64 %"$consume_1659", i64* @_gasrem, align 8
  %"$ackermann_68" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1660" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1661" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1660", 0
  %"$ackermann_envptr_1662" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1660", 1
  %"$n3_1663" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1664" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1661"(i8* %"$ackermann_envptr_1662", %TName_Nat* %"$n3_1663"), !dbg !142
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1664", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_68", align 8, !dbg !142
  %"$ackermann_69" = alloca %TName_Nat*, align 8
  %"$$ackermann_68_1665" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_68", align 8
  %"$$ackermann_68_fptr_1666" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_68_1665", 0
  %"$$ackermann_68_envptr_1667" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_68_1665", 1
  %"$n3_1668" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_68_call_1669" = call %TName_Nat* %"$$ackermann_68_fptr_1666"(i8* %"$$ackermann_68_envptr_1667", %TName_Nat* %"$n3_1668"), !dbg !142
  store %TName_Nat* %"$$ackermann_68_call_1669", %TName_Nat** %"$ackermann_69", align 8, !dbg !142
  %"$$ackermann_69_1670" = load %TName_Nat*, %TName_Nat** %"$ackermann_69", align 8
  store %TName_Nat* %"$$ackermann_69_1670", %TName_Nat** %ack33, align 8, !dbg !142
  %"$gasrem_1671" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1672" = icmp ugt i64 1, %"$gasrem_1671"
  br i1 %"$gascmp_1672", label %"$out_of_gas_1673", label %"$have_gas_1674"

"$out_of_gas_1673":                               ; preds = %"$have_gas_1658"
  call void @_out_of_gas()
  br label %"$have_gas_1674"

"$have_gas_1674":                                 ; preds = %"$out_of_gas_1673", %"$have_gas_1658"
  %"$consume_1675" = sub i64 %"$gasrem_1671", 1
  store i64 %"$consume_1675", i64* @_gasrem, align 8
  %ack34 = alloca %TName_Nat*, align 8
  %"$gasrem_1676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1677" = icmp ugt i64 1, %"$gasrem_1676"
  br i1 %"$gascmp_1677", label %"$out_of_gas_1678", label %"$have_gas_1679"

"$out_of_gas_1678":                               ; preds = %"$have_gas_1674"
  call void @_out_of_gas()
  br label %"$have_gas_1679"

"$have_gas_1679":                                 ; preds = %"$out_of_gas_1678", %"$have_gas_1674"
  %"$consume_1680" = sub i64 %"$gasrem_1676", 1
  store i64 %"$consume_1680", i64* @_gasrem, align 8
  %"$ackermann_70" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1681" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1682" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1681", 0
  %"$ackermann_envptr_1683" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1681", 1
  %"$n3_1684" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1685" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1682"(i8* %"$ackermann_envptr_1683", %TName_Nat* %"$n3_1684"), !dbg !143
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1685", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_70", align 8, !dbg !143
  %"$ackermann_71" = alloca %TName_Nat*, align 8
  %"$$ackermann_70_1686" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_70", align 8
  %"$$ackermann_70_fptr_1687" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_70_1686", 0
  %"$$ackermann_70_envptr_1688" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_70_1686", 1
  %"$n4_1689" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_70_call_1690" = call %TName_Nat* %"$$ackermann_70_fptr_1687"(i8* %"$$ackermann_70_envptr_1688", %TName_Nat* %"$n4_1689"), !dbg !143
  store %TName_Nat* %"$$ackermann_70_call_1690", %TName_Nat** %"$ackermann_71", align 8, !dbg !143
  %"$$ackermann_71_1691" = load %TName_Nat*, %TName_Nat** %"$ackermann_71", align 8
  store %TName_Nat* %"$$ackermann_71_1691", %TName_Nat** %ack34, align 8, !dbg !143
  %"$gasrem_1692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1693" = icmp ugt i64 1, %"$gasrem_1692"
  br i1 %"$gascmp_1693", label %"$out_of_gas_1694", label %"$have_gas_1695"

"$out_of_gas_1694":                               ; preds = %"$have_gas_1679"
  call void @_out_of_gas()
  br label %"$have_gas_1695"

"$have_gas_1695":                                 ; preds = %"$out_of_gas_1694", %"$have_gas_1679"
  %"$consume_1696" = sub i64 %"$gasrem_1692", 1
  store i64 %"$consume_1696", i64* @_gasrem, align 8
  %ack40 = alloca %TName_Nat*, align 8
  %"$gasrem_1697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1698" = icmp ugt i64 1, %"$gasrem_1697"
  br i1 %"$gascmp_1698", label %"$out_of_gas_1699", label %"$have_gas_1700"

"$out_of_gas_1699":                               ; preds = %"$have_gas_1695"
  call void @_out_of_gas()
  br label %"$have_gas_1700"

"$have_gas_1700":                                 ; preds = %"$out_of_gas_1699", %"$have_gas_1695"
  %"$consume_1701" = sub i64 %"$gasrem_1697", 1
  store i64 %"$consume_1701", i64* @_gasrem, align 8
  %"$ackermann_72" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1702" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1703" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1702", 0
  %"$ackermann_envptr_1704" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1702", 1
  %"$n4_1705" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$ackermann_call_1706" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1703"(i8* %"$ackermann_envptr_1704", %TName_Nat* %"$n4_1705"), !dbg !144
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1706", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_72", align 8, !dbg !144
  %"$ackermann_73" = alloca %TName_Nat*, align 8
  %"$$ackermann_72_1707" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_72", align 8
  %"$$ackermann_72_fptr_1708" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_72_1707", 0
  %"$$ackermann_72_envptr_1709" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_72_1707", 1
  %"$n0_1710" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_72_call_1711" = call %TName_Nat* %"$$ackermann_72_fptr_1708"(i8* %"$$ackermann_72_envptr_1709", %TName_Nat* %"$n0_1710"), !dbg !144
  store %TName_Nat* %"$$ackermann_72_call_1711", %TName_Nat** %"$ackermann_73", align 8, !dbg !144
  %"$$ackermann_73_1712" = load %TName_Nat*, %TName_Nat** %"$ackermann_73", align 8
  store %TName_Nat* %"$$ackermann_73_1712", %TName_Nat** %ack40, align 8, !dbg !144
  %"$gasrem_1713" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1714" = icmp ugt i64 1, %"$gasrem_1713"
  br i1 %"$gascmp_1714", label %"$out_of_gas_1715", label %"$have_gas_1716"

"$out_of_gas_1715":                               ; preds = %"$have_gas_1700"
  call void @_out_of_gas()
  br label %"$have_gas_1716"

"$have_gas_1716":                                 ; preds = %"$out_of_gas_1715", %"$have_gas_1700"
  %"$consume_1717" = sub i64 %"$gasrem_1713", 1
  store i64 %"$consume_1717", i64* @_gasrem, align 8
  %int01 = alloca %Uint32, align 8
  %"$gasrem_1718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1719" = icmp ugt i64 1, %"$gasrem_1718"
  br i1 %"$gascmp_1719", label %"$out_of_gas_1720", label %"$have_gas_1721"

"$out_of_gas_1720":                               ; preds = %"$have_gas_1716"
  call void @_out_of_gas()
  br label %"$have_gas_1721"

"$have_gas_1721":                                 ; preds = %"$out_of_gas_1720", %"$have_gas_1716"
  %"$consume_1722" = sub i64 %"$gasrem_1718", 1
  store i64 %"$consume_1722", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_74" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1723" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1724" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1723", 0
  %"$NatUtils.nat_to_int_envptr_1725" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1723", 1
  %"$ack00_1726" = load %TName_Nat*, %TName_Nat** %ack00, align 8
  %"$NatUtils.nat_to_int_call_1727" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1724"(i8* %"$NatUtils.nat_to_int_envptr_1725", %TName_Nat* %"$ack00_1726"), !dbg !145
  store %Uint32 %"$NatUtils.nat_to_int_call_1727", %Uint32* %"$NatUtils.nat_to_int_74", align 4, !dbg !145
  %"$$NatUtils.nat_to_int_74_1728" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_74", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_74_1728", %Uint32* %int01, align 4, !dbg !145
  %"$gasrem_1729" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1730" = icmp ugt i64 1, %"$gasrem_1729"
  br i1 %"$gascmp_1730", label %"$out_of_gas_1731", label %"$have_gas_1732"

"$out_of_gas_1731":                               ; preds = %"$have_gas_1721"
  call void @_out_of_gas()
  br label %"$have_gas_1732"

"$have_gas_1732":                                 ; preds = %"$out_of_gas_1731", %"$have_gas_1721"
  %"$consume_1733" = sub i64 %"$gasrem_1729", 1
  store i64 %"$consume_1733", i64* @_gasrem, align 8
  %int02 = alloca %Uint32, align 8
  %"$gasrem_1734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1735" = icmp ugt i64 1, %"$gasrem_1734"
  br i1 %"$gascmp_1735", label %"$out_of_gas_1736", label %"$have_gas_1737"

"$out_of_gas_1736":                               ; preds = %"$have_gas_1732"
  call void @_out_of_gas()
  br label %"$have_gas_1737"

"$have_gas_1737":                                 ; preds = %"$out_of_gas_1736", %"$have_gas_1732"
  %"$consume_1738" = sub i64 %"$gasrem_1734", 1
  store i64 %"$consume_1738", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_75" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1739" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1740" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1739", 0
  %"$NatUtils.nat_to_int_envptr_1741" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1739", 1
  %"$ack02_1742" = load %TName_Nat*, %TName_Nat** %ack02, align 8
  %"$NatUtils.nat_to_int_call_1743" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1740"(i8* %"$NatUtils.nat_to_int_envptr_1741", %TName_Nat* %"$ack02_1742"), !dbg !146
  store %Uint32 %"$NatUtils.nat_to_int_call_1743", %Uint32* %"$NatUtils.nat_to_int_75", align 4, !dbg !146
  %"$$NatUtils.nat_to_int_75_1744" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_75", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_75_1744", %Uint32* %int02, align 4, !dbg !146
  %"$gasrem_1745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1746" = icmp ugt i64 1, %"$gasrem_1745"
  br i1 %"$gascmp_1746", label %"$out_of_gas_1747", label %"$have_gas_1748"

"$out_of_gas_1747":                               ; preds = %"$have_gas_1737"
  call void @_out_of_gas()
  br label %"$have_gas_1748"

"$have_gas_1748":                                 ; preds = %"$out_of_gas_1747", %"$have_gas_1737"
  %"$consume_1749" = sub i64 %"$gasrem_1745", 1
  store i64 %"$consume_1749", i64* @_gasrem, align 8
  %int03 = alloca %Uint32, align 8
  %"$gasrem_1750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1751" = icmp ugt i64 1, %"$gasrem_1750"
  br i1 %"$gascmp_1751", label %"$out_of_gas_1752", label %"$have_gas_1753"

"$out_of_gas_1752":                               ; preds = %"$have_gas_1748"
  call void @_out_of_gas()
  br label %"$have_gas_1753"

"$have_gas_1753":                                 ; preds = %"$out_of_gas_1752", %"$have_gas_1748"
  %"$consume_1754" = sub i64 %"$gasrem_1750", 1
  store i64 %"$consume_1754", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_76" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1755" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1756" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1755", 0
  %"$NatUtils.nat_to_int_envptr_1757" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1755", 1
  %"$ack03_1758" = load %TName_Nat*, %TName_Nat** %ack03, align 8
  %"$NatUtils.nat_to_int_call_1759" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1756"(i8* %"$NatUtils.nat_to_int_envptr_1757", %TName_Nat* %"$ack03_1758"), !dbg !147
  store %Uint32 %"$NatUtils.nat_to_int_call_1759", %Uint32* %"$NatUtils.nat_to_int_76", align 4, !dbg !147
  %"$$NatUtils.nat_to_int_76_1760" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_76", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_76_1760", %Uint32* %int03, align 4, !dbg !147
  %"$gasrem_1761" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1762" = icmp ugt i64 1, %"$gasrem_1761"
  br i1 %"$gascmp_1762", label %"$out_of_gas_1763", label %"$have_gas_1764"

"$out_of_gas_1763":                               ; preds = %"$have_gas_1753"
  call void @_out_of_gas()
  br label %"$have_gas_1764"

"$have_gas_1764":                                 ; preds = %"$out_of_gas_1763", %"$have_gas_1753"
  %"$consume_1765" = sub i64 %"$gasrem_1761", 1
  store i64 %"$consume_1765", i64* @_gasrem, align 8
  %int04 = alloca %Uint32, align 8
  %"$gasrem_1766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1767" = icmp ugt i64 1, %"$gasrem_1766"
  br i1 %"$gascmp_1767", label %"$out_of_gas_1768", label %"$have_gas_1769"

"$out_of_gas_1768":                               ; preds = %"$have_gas_1764"
  call void @_out_of_gas()
  br label %"$have_gas_1769"

"$have_gas_1769":                                 ; preds = %"$out_of_gas_1768", %"$have_gas_1764"
  %"$consume_1770" = sub i64 %"$gasrem_1766", 1
  store i64 %"$consume_1770", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_77" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1771" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1772" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1771", 0
  %"$NatUtils.nat_to_int_envptr_1773" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1771", 1
  %"$ack04_1774" = load %TName_Nat*, %TName_Nat** %ack04, align 8
  %"$NatUtils.nat_to_int_call_1775" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1772"(i8* %"$NatUtils.nat_to_int_envptr_1773", %TName_Nat* %"$ack04_1774"), !dbg !148
  store %Uint32 %"$NatUtils.nat_to_int_call_1775", %Uint32* %"$NatUtils.nat_to_int_77", align 4, !dbg !148
  %"$$NatUtils.nat_to_int_77_1776" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_77", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_77_1776", %Uint32* %int04, align 4, !dbg !148
  %"$gasrem_1777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1778" = icmp ugt i64 1, %"$gasrem_1777"
  br i1 %"$gascmp_1778", label %"$out_of_gas_1779", label %"$have_gas_1780"

"$out_of_gas_1779":                               ; preds = %"$have_gas_1769"
  call void @_out_of_gas()
  br label %"$have_gas_1780"

"$have_gas_1780":                                 ; preds = %"$out_of_gas_1779", %"$have_gas_1769"
  %"$consume_1781" = sub i64 %"$gasrem_1777", 1
  store i64 %"$consume_1781", i64* @_gasrem, align 8
  %int10 = alloca %Uint32, align 8
  %"$gasrem_1782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1783" = icmp ugt i64 1, %"$gasrem_1782"
  br i1 %"$gascmp_1783", label %"$out_of_gas_1784", label %"$have_gas_1785"

"$out_of_gas_1784":                               ; preds = %"$have_gas_1780"
  call void @_out_of_gas()
  br label %"$have_gas_1785"

"$have_gas_1785":                                 ; preds = %"$out_of_gas_1784", %"$have_gas_1780"
  %"$consume_1786" = sub i64 %"$gasrem_1782", 1
  store i64 %"$consume_1786", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_78" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1787" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1788" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1787", 0
  %"$NatUtils.nat_to_int_envptr_1789" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1787", 1
  %"$ack10_1790" = load %TName_Nat*, %TName_Nat** %ack10, align 8
  %"$NatUtils.nat_to_int_call_1791" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1788"(i8* %"$NatUtils.nat_to_int_envptr_1789", %TName_Nat* %"$ack10_1790"), !dbg !149
  store %Uint32 %"$NatUtils.nat_to_int_call_1791", %Uint32* %"$NatUtils.nat_to_int_78", align 4, !dbg !149
  %"$$NatUtils.nat_to_int_78_1792" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_78", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_78_1792", %Uint32* %int10, align 4, !dbg !149
  %"$gasrem_1793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1794" = icmp ugt i64 1, %"$gasrem_1793"
  br i1 %"$gascmp_1794", label %"$out_of_gas_1795", label %"$have_gas_1796"

"$out_of_gas_1795":                               ; preds = %"$have_gas_1785"
  call void @_out_of_gas()
  br label %"$have_gas_1796"

"$have_gas_1796":                                 ; preds = %"$out_of_gas_1795", %"$have_gas_1785"
  %"$consume_1797" = sub i64 %"$gasrem_1793", 1
  store i64 %"$consume_1797", i64* @_gasrem, align 8
  %int11 = alloca %Uint32, align 8
  %"$gasrem_1798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1799" = icmp ugt i64 1, %"$gasrem_1798"
  br i1 %"$gascmp_1799", label %"$out_of_gas_1800", label %"$have_gas_1801"

"$out_of_gas_1800":                               ; preds = %"$have_gas_1796"
  call void @_out_of_gas()
  br label %"$have_gas_1801"

"$have_gas_1801":                                 ; preds = %"$out_of_gas_1800", %"$have_gas_1796"
  %"$consume_1802" = sub i64 %"$gasrem_1798", 1
  store i64 %"$consume_1802", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_79" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1803" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1804" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1803", 0
  %"$NatUtils.nat_to_int_envptr_1805" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1803", 1
  %"$ack11_1806" = load %TName_Nat*, %TName_Nat** %ack11, align 8
  %"$NatUtils.nat_to_int_call_1807" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1804"(i8* %"$NatUtils.nat_to_int_envptr_1805", %TName_Nat* %"$ack11_1806"), !dbg !150
  store %Uint32 %"$NatUtils.nat_to_int_call_1807", %Uint32* %"$NatUtils.nat_to_int_79", align 4, !dbg !150
  %"$$NatUtils.nat_to_int_79_1808" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_79", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_79_1808", %Uint32* %int11, align 4, !dbg !150
  %"$gasrem_1809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1810" = icmp ugt i64 1, %"$gasrem_1809"
  br i1 %"$gascmp_1810", label %"$out_of_gas_1811", label %"$have_gas_1812"

"$out_of_gas_1811":                               ; preds = %"$have_gas_1801"
  call void @_out_of_gas()
  br label %"$have_gas_1812"

"$have_gas_1812":                                 ; preds = %"$out_of_gas_1811", %"$have_gas_1801"
  %"$consume_1813" = sub i64 %"$gasrem_1809", 1
  store i64 %"$consume_1813", i64* @_gasrem, align 8
  %int12 = alloca %Uint32, align 8
  %"$gasrem_1814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1815" = icmp ugt i64 1, %"$gasrem_1814"
  br i1 %"$gascmp_1815", label %"$out_of_gas_1816", label %"$have_gas_1817"

"$out_of_gas_1816":                               ; preds = %"$have_gas_1812"
  call void @_out_of_gas()
  br label %"$have_gas_1817"

"$have_gas_1817":                                 ; preds = %"$out_of_gas_1816", %"$have_gas_1812"
  %"$consume_1818" = sub i64 %"$gasrem_1814", 1
  store i64 %"$consume_1818", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_80" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1819" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1820" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1819", 0
  %"$NatUtils.nat_to_int_envptr_1821" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1819", 1
  %"$ack12_1822" = load %TName_Nat*, %TName_Nat** %ack12, align 8
  %"$NatUtils.nat_to_int_call_1823" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1820"(i8* %"$NatUtils.nat_to_int_envptr_1821", %TName_Nat* %"$ack12_1822"), !dbg !151
  store %Uint32 %"$NatUtils.nat_to_int_call_1823", %Uint32* %"$NatUtils.nat_to_int_80", align 4, !dbg !151
  %"$$NatUtils.nat_to_int_80_1824" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_80", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_80_1824", %Uint32* %int12, align 4, !dbg !151
  %"$gasrem_1825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1826" = icmp ugt i64 1, %"$gasrem_1825"
  br i1 %"$gascmp_1826", label %"$out_of_gas_1827", label %"$have_gas_1828"

"$out_of_gas_1827":                               ; preds = %"$have_gas_1817"
  call void @_out_of_gas()
  br label %"$have_gas_1828"

"$have_gas_1828":                                 ; preds = %"$out_of_gas_1827", %"$have_gas_1817"
  %"$consume_1829" = sub i64 %"$gasrem_1825", 1
  store i64 %"$consume_1829", i64* @_gasrem, align 8
  %int13 = alloca %Uint32, align 8
  %"$gasrem_1830" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1831" = icmp ugt i64 1, %"$gasrem_1830"
  br i1 %"$gascmp_1831", label %"$out_of_gas_1832", label %"$have_gas_1833"

"$out_of_gas_1832":                               ; preds = %"$have_gas_1828"
  call void @_out_of_gas()
  br label %"$have_gas_1833"

"$have_gas_1833":                                 ; preds = %"$out_of_gas_1832", %"$have_gas_1828"
  %"$consume_1834" = sub i64 %"$gasrem_1830", 1
  store i64 %"$consume_1834", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_81" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1835" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1836" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1835", 0
  %"$NatUtils.nat_to_int_envptr_1837" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1835", 1
  %"$ack13_1838" = load %TName_Nat*, %TName_Nat** %ack13, align 8
  %"$NatUtils.nat_to_int_call_1839" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1836"(i8* %"$NatUtils.nat_to_int_envptr_1837", %TName_Nat* %"$ack13_1838"), !dbg !152
  store %Uint32 %"$NatUtils.nat_to_int_call_1839", %Uint32* %"$NatUtils.nat_to_int_81", align 4, !dbg !152
  %"$$NatUtils.nat_to_int_81_1840" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_81", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_81_1840", %Uint32* %int13, align 4, !dbg !152
  %"$gasrem_1841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1842" = icmp ugt i64 1, %"$gasrem_1841"
  br i1 %"$gascmp_1842", label %"$out_of_gas_1843", label %"$have_gas_1844"

"$out_of_gas_1843":                               ; preds = %"$have_gas_1833"
  call void @_out_of_gas()
  br label %"$have_gas_1844"

"$have_gas_1844":                                 ; preds = %"$out_of_gas_1843", %"$have_gas_1833"
  %"$consume_1845" = sub i64 %"$gasrem_1841", 1
  store i64 %"$consume_1845", i64* @_gasrem, align 8
  %int14 = alloca %Uint32, align 8
  %"$gasrem_1846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1847" = icmp ugt i64 1, %"$gasrem_1846"
  br i1 %"$gascmp_1847", label %"$out_of_gas_1848", label %"$have_gas_1849"

"$out_of_gas_1848":                               ; preds = %"$have_gas_1844"
  call void @_out_of_gas()
  br label %"$have_gas_1849"

"$have_gas_1849":                                 ; preds = %"$out_of_gas_1848", %"$have_gas_1844"
  %"$consume_1850" = sub i64 %"$gasrem_1846", 1
  store i64 %"$consume_1850", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_82" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1851" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1852" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1851", 0
  %"$NatUtils.nat_to_int_envptr_1853" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1851", 1
  %"$ack14_1854" = load %TName_Nat*, %TName_Nat** %ack14, align 8
  %"$NatUtils.nat_to_int_call_1855" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1852"(i8* %"$NatUtils.nat_to_int_envptr_1853", %TName_Nat* %"$ack14_1854"), !dbg !153
  store %Uint32 %"$NatUtils.nat_to_int_call_1855", %Uint32* %"$NatUtils.nat_to_int_82", align 4, !dbg !153
  %"$$NatUtils.nat_to_int_82_1856" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_82", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_82_1856", %Uint32* %int14, align 4, !dbg !153
  %"$gasrem_1857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1858" = icmp ugt i64 1, %"$gasrem_1857"
  br i1 %"$gascmp_1858", label %"$out_of_gas_1859", label %"$have_gas_1860"

"$out_of_gas_1859":                               ; preds = %"$have_gas_1849"
  call void @_out_of_gas()
  br label %"$have_gas_1860"

"$have_gas_1860":                                 ; preds = %"$out_of_gas_1859", %"$have_gas_1849"
  %"$consume_1861" = sub i64 %"$gasrem_1857", 1
  store i64 %"$consume_1861", i64* @_gasrem, align 8
  %int20 = alloca %Uint32, align 8
  %"$gasrem_1862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1863" = icmp ugt i64 1, %"$gasrem_1862"
  br i1 %"$gascmp_1863", label %"$out_of_gas_1864", label %"$have_gas_1865"

"$out_of_gas_1864":                               ; preds = %"$have_gas_1860"
  call void @_out_of_gas()
  br label %"$have_gas_1865"

"$have_gas_1865":                                 ; preds = %"$out_of_gas_1864", %"$have_gas_1860"
  %"$consume_1866" = sub i64 %"$gasrem_1862", 1
  store i64 %"$consume_1866", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_83" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1867" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1868" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1867", 0
  %"$NatUtils.nat_to_int_envptr_1869" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1867", 1
  %"$ack20_1870" = load %TName_Nat*, %TName_Nat** %ack20, align 8
  %"$NatUtils.nat_to_int_call_1871" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1868"(i8* %"$NatUtils.nat_to_int_envptr_1869", %TName_Nat* %"$ack20_1870"), !dbg !154
  store %Uint32 %"$NatUtils.nat_to_int_call_1871", %Uint32* %"$NatUtils.nat_to_int_83", align 4, !dbg !154
  %"$$NatUtils.nat_to_int_83_1872" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_83", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_83_1872", %Uint32* %int20, align 4, !dbg !154
  %"$gasrem_1873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1874" = icmp ugt i64 1, %"$gasrem_1873"
  br i1 %"$gascmp_1874", label %"$out_of_gas_1875", label %"$have_gas_1876"

"$out_of_gas_1875":                               ; preds = %"$have_gas_1865"
  call void @_out_of_gas()
  br label %"$have_gas_1876"

"$have_gas_1876":                                 ; preds = %"$out_of_gas_1875", %"$have_gas_1865"
  %"$consume_1877" = sub i64 %"$gasrem_1873", 1
  store i64 %"$consume_1877", i64* @_gasrem, align 8
  %int21 = alloca %Uint32, align 8
  %"$gasrem_1878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1879" = icmp ugt i64 1, %"$gasrem_1878"
  br i1 %"$gascmp_1879", label %"$out_of_gas_1880", label %"$have_gas_1881"

"$out_of_gas_1880":                               ; preds = %"$have_gas_1876"
  call void @_out_of_gas()
  br label %"$have_gas_1881"

"$have_gas_1881":                                 ; preds = %"$out_of_gas_1880", %"$have_gas_1876"
  %"$consume_1882" = sub i64 %"$gasrem_1878", 1
  store i64 %"$consume_1882", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_84" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1883" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1884" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1883", 0
  %"$NatUtils.nat_to_int_envptr_1885" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1883", 1
  %"$ack21_1886" = load %TName_Nat*, %TName_Nat** %ack21, align 8
  %"$NatUtils.nat_to_int_call_1887" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1884"(i8* %"$NatUtils.nat_to_int_envptr_1885", %TName_Nat* %"$ack21_1886"), !dbg !155
  store %Uint32 %"$NatUtils.nat_to_int_call_1887", %Uint32* %"$NatUtils.nat_to_int_84", align 4, !dbg !155
  %"$$NatUtils.nat_to_int_84_1888" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_84", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_84_1888", %Uint32* %int21, align 4, !dbg !155
  %"$gasrem_1889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1890" = icmp ugt i64 1, %"$gasrem_1889"
  br i1 %"$gascmp_1890", label %"$out_of_gas_1891", label %"$have_gas_1892"

"$out_of_gas_1891":                               ; preds = %"$have_gas_1881"
  call void @_out_of_gas()
  br label %"$have_gas_1892"

"$have_gas_1892":                                 ; preds = %"$out_of_gas_1891", %"$have_gas_1881"
  %"$consume_1893" = sub i64 %"$gasrem_1889", 1
  store i64 %"$consume_1893", i64* @_gasrem, align 8
  %int22 = alloca %Uint32, align 8
  %"$gasrem_1894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1895" = icmp ugt i64 1, %"$gasrem_1894"
  br i1 %"$gascmp_1895", label %"$out_of_gas_1896", label %"$have_gas_1897"

"$out_of_gas_1896":                               ; preds = %"$have_gas_1892"
  call void @_out_of_gas()
  br label %"$have_gas_1897"

"$have_gas_1897":                                 ; preds = %"$out_of_gas_1896", %"$have_gas_1892"
  %"$consume_1898" = sub i64 %"$gasrem_1894", 1
  store i64 %"$consume_1898", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_85" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1899" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1900" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1899", 0
  %"$NatUtils.nat_to_int_envptr_1901" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1899", 1
  %"$ack22_1902" = load %TName_Nat*, %TName_Nat** %ack22, align 8
  %"$NatUtils.nat_to_int_call_1903" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1900"(i8* %"$NatUtils.nat_to_int_envptr_1901", %TName_Nat* %"$ack22_1902"), !dbg !156
  store %Uint32 %"$NatUtils.nat_to_int_call_1903", %Uint32* %"$NatUtils.nat_to_int_85", align 4, !dbg !156
  %"$$NatUtils.nat_to_int_85_1904" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_85", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_85_1904", %Uint32* %int22, align 4, !dbg !156
  %"$gasrem_1905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1906" = icmp ugt i64 1, %"$gasrem_1905"
  br i1 %"$gascmp_1906", label %"$out_of_gas_1907", label %"$have_gas_1908"

"$out_of_gas_1907":                               ; preds = %"$have_gas_1897"
  call void @_out_of_gas()
  br label %"$have_gas_1908"

"$have_gas_1908":                                 ; preds = %"$out_of_gas_1907", %"$have_gas_1897"
  %"$consume_1909" = sub i64 %"$gasrem_1905", 1
  store i64 %"$consume_1909", i64* @_gasrem, align 8
  %int23 = alloca %Uint32, align 8
  %"$gasrem_1910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1911" = icmp ugt i64 1, %"$gasrem_1910"
  br i1 %"$gascmp_1911", label %"$out_of_gas_1912", label %"$have_gas_1913"

"$out_of_gas_1912":                               ; preds = %"$have_gas_1908"
  call void @_out_of_gas()
  br label %"$have_gas_1913"

"$have_gas_1913":                                 ; preds = %"$out_of_gas_1912", %"$have_gas_1908"
  %"$consume_1914" = sub i64 %"$gasrem_1910", 1
  store i64 %"$consume_1914", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_86" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1915" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1916" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1915", 0
  %"$NatUtils.nat_to_int_envptr_1917" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1915", 1
  %"$ack23_1918" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_1919" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1916"(i8* %"$NatUtils.nat_to_int_envptr_1917", %TName_Nat* %"$ack23_1918"), !dbg !157
  store %Uint32 %"$NatUtils.nat_to_int_call_1919", %Uint32* %"$NatUtils.nat_to_int_86", align 4, !dbg !157
  %"$$NatUtils.nat_to_int_86_1920" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_86", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_86_1920", %Uint32* %int23, align 4, !dbg !157
  %"$gasrem_1921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1922" = icmp ugt i64 1, %"$gasrem_1921"
  br i1 %"$gascmp_1922", label %"$out_of_gas_1923", label %"$have_gas_1924"

"$out_of_gas_1923":                               ; preds = %"$have_gas_1913"
  call void @_out_of_gas()
  br label %"$have_gas_1924"

"$have_gas_1924":                                 ; preds = %"$out_of_gas_1923", %"$have_gas_1913"
  %"$consume_1925" = sub i64 %"$gasrem_1921", 1
  store i64 %"$consume_1925", i64* @_gasrem, align 8
  %int24 = alloca %Uint32, align 8
  %"$gasrem_1926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1927" = icmp ugt i64 1, %"$gasrem_1926"
  br i1 %"$gascmp_1927", label %"$out_of_gas_1928", label %"$have_gas_1929"

"$out_of_gas_1928":                               ; preds = %"$have_gas_1924"
  call void @_out_of_gas()
  br label %"$have_gas_1929"

"$have_gas_1929":                                 ; preds = %"$out_of_gas_1928", %"$have_gas_1924"
  %"$consume_1930" = sub i64 %"$gasrem_1926", 1
  store i64 %"$consume_1930", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_87" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1931" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1932" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1931", 0
  %"$NatUtils.nat_to_int_envptr_1933" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1931", 1
  %"$ack23_1934" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_1935" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1932"(i8* %"$NatUtils.nat_to_int_envptr_1933", %TName_Nat* %"$ack23_1934"), !dbg !158
  store %Uint32 %"$NatUtils.nat_to_int_call_1935", %Uint32* %"$NatUtils.nat_to_int_87", align 4, !dbg !158
  %"$$NatUtils.nat_to_int_87_1936" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_87", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_87_1936", %Uint32* %int24, align 4, !dbg !158
  %"$gasrem_1937" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1938" = icmp ugt i64 1, %"$gasrem_1937"
  br i1 %"$gascmp_1938", label %"$out_of_gas_1939", label %"$have_gas_1940"

"$out_of_gas_1939":                               ; preds = %"$have_gas_1929"
  call void @_out_of_gas()
  br label %"$have_gas_1940"

"$have_gas_1940":                                 ; preds = %"$out_of_gas_1939", %"$have_gas_1929"
  %"$consume_1941" = sub i64 %"$gasrem_1937", 1
  store i64 %"$consume_1941", i64* @_gasrem, align 8
  %int30 = alloca %Uint32, align 8
  %"$gasrem_1942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1943" = icmp ugt i64 1, %"$gasrem_1942"
  br i1 %"$gascmp_1943", label %"$out_of_gas_1944", label %"$have_gas_1945"

"$out_of_gas_1944":                               ; preds = %"$have_gas_1940"
  call void @_out_of_gas()
  br label %"$have_gas_1945"

"$have_gas_1945":                                 ; preds = %"$out_of_gas_1944", %"$have_gas_1940"
  %"$consume_1946" = sub i64 %"$gasrem_1942", 1
  store i64 %"$consume_1946", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_88" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1947" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1948" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1947", 0
  %"$NatUtils.nat_to_int_envptr_1949" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1947", 1
  %"$ack30_1950" = load %TName_Nat*, %TName_Nat** %ack30, align 8
  %"$NatUtils.nat_to_int_call_1951" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1948"(i8* %"$NatUtils.nat_to_int_envptr_1949", %TName_Nat* %"$ack30_1950"), !dbg !159
  store %Uint32 %"$NatUtils.nat_to_int_call_1951", %Uint32* %"$NatUtils.nat_to_int_88", align 4, !dbg !159
  %"$$NatUtils.nat_to_int_88_1952" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_88", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_88_1952", %Uint32* %int30, align 4, !dbg !159
  %"$gasrem_1953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1954" = icmp ugt i64 1, %"$gasrem_1953"
  br i1 %"$gascmp_1954", label %"$out_of_gas_1955", label %"$have_gas_1956"

"$out_of_gas_1955":                               ; preds = %"$have_gas_1945"
  call void @_out_of_gas()
  br label %"$have_gas_1956"

"$have_gas_1956":                                 ; preds = %"$out_of_gas_1955", %"$have_gas_1945"
  %"$consume_1957" = sub i64 %"$gasrem_1953", 1
  store i64 %"$consume_1957", i64* @_gasrem, align 8
  %int31 = alloca %Uint32, align 8
  %"$gasrem_1958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1959" = icmp ugt i64 1, %"$gasrem_1958"
  br i1 %"$gascmp_1959", label %"$out_of_gas_1960", label %"$have_gas_1961"

"$out_of_gas_1960":                               ; preds = %"$have_gas_1956"
  call void @_out_of_gas()
  br label %"$have_gas_1961"

"$have_gas_1961":                                 ; preds = %"$out_of_gas_1960", %"$have_gas_1956"
  %"$consume_1962" = sub i64 %"$gasrem_1958", 1
  store i64 %"$consume_1962", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_89" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1963" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1964" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1963", 0
  %"$NatUtils.nat_to_int_envptr_1965" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1963", 1
  %"$ack31_1966" = load %TName_Nat*, %TName_Nat** %ack31, align 8
  %"$NatUtils.nat_to_int_call_1967" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1964"(i8* %"$NatUtils.nat_to_int_envptr_1965", %TName_Nat* %"$ack31_1966"), !dbg !160
  store %Uint32 %"$NatUtils.nat_to_int_call_1967", %Uint32* %"$NatUtils.nat_to_int_89", align 4, !dbg !160
  %"$$NatUtils.nat_to_int_89_1968" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_89", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_89_1968", %Uint32* %int31, align 4, !dbg !160
  %"$gasrem_1969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1970" = icmp ugt i64 1, %"$gasrem_1969"
  br i1 %"$gascmp_1970", label %"$out_of_gas_1971", label %"$have_gas_1972"

"$out_of_gas_1971":                               ; preds = %"$have_gas_1961"
  call void @_out_of_gas()
  br label %"$have_gas_1972"

"$have_gas_1972":                                 ; preds = %"$out_of_gas_1971", %"$have_gas_1961"
  %"$consume_1973" = sub i64 %"$gasrem_1969", 1
  store i64 %"$consume_1973", i64* @_gasrem, align 8
  %int32 = alloca %Uint32, align 8
  %"$gasrem_1974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1975" = icmp ugt i64 1, %"$gasrem_1974"
  br i1 %"$gascmp_1975", label %"$out_of_gas_1976", label %"$have_gas_1977"

"$out_of_gas_1976":                               ; preds = %"$have_gas_1972"
  call void @_out_of_gas()
  br label %"$have_gas_1977"

"$have_gas_1977":                                 ; preds = %"$out_of_gas_1976", %"$have_gas_1972"
  %"$consume_1978" = sub i64 %"$gasrem_1974", 1
  store i64 %"$consume_1978", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_90" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1979" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1980" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1979", 0
  %"$NatUtils.nat_to_int_envptr_1981" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1979", 1
  %"$ack32_1982" = load %TName_Nat*, %TName_Nat** %ack32, align 8
  %"$NatUtils.nat_to_int_call_1983" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1980"(i8* %"$NatUtils.nat_to_int_envptr_1981", %TName_Nat* %"$ack32_1982"), !dbg !161
  store %Uint32 %"$NatUtils.nat_to_int_call_1983", %Uint32* %"$NatUtils.nat_to_int_90", align 4, !dbg !161
  %"$$NatUtils.nat_to_int_90_1984" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_90", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_90_1984", %Uint32* %int32, align 4, !dbg !161
  %"$gasrem_1985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1986" = icmp ugt i64 1, %"$gasrem_1985"
  br i1 %"$gascmp_1986", label %"$out_of_gas_1987", label %"$have_gas_1988"

"$out_of_gas_1987":                               ; preds = %"$have_gas_1977"
  call void @_out_of_gas()
  br label %"$have_gas_1988"

"$have_gas_1988":                                 ; preds = %"$out_of_gas_1987", %"$have_gas_1977"
  %"$consume_1989" = sub i64 %"$gasrem_1985", 1
  store i64 %"$consume_1989", i64* @_gasrem, align 8
  %int33 = alloca %Uint32, align 8
  %"$gasrem_1990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1991" = icmp ugt i64 1, %"$gasrem_1990"
  br i1 %"$gascmp_1991", label %"$out_of_gas_1992", label %"$have_gas_1993"

"$out_of_gas_1992":                               ; preds = %"$have_gas_1988"
  call void @_out_of_gas()
  br label %"$have_gas_1993"

"$have_gas_1993":                                 ; preds = %"$out_of_gas_1992", %"$have_gas_1988"
  %"$consume_1994" = sub i64 %"$gasrem_1990", 1
  store i64 %"$consume_1994", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_91" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1995" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1996" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1995", 0
  %"$NatUtils.nat_to_int_envptr_1997" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1995", 1
  %"$ack33_1998" = load %TName_Nat*, %TName_Nat** %ack33, align 8
  %"$NatUtils.nat_to_int_call_1999" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1996"(i8* %"$NatUtils.nat_to_int_envptr_1997", %TName_Nat* %"$ack33_1998"), !dbg !162
  store %Uint32 %"$NatUtils.nat_to_int_call_1999", %Uint32* %"$NatUtils.nat_to_int_91", align 4, !dbg !162
  %"$$NatUtils.nat_to_int_91_2000" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_91", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_91_2000", %Uint32* %int33, align 4, !dbg !162
  %"$gasrem_2001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2002" = icmp ugt i64 1, %"$gasrem_2001"
  br i1 %"$gascmp_2002", label %"$out_of_gas_2003", label %"$have_gas_2004"

"$out_of_gas_2003":                               ; preds = %"$have_gas_1993"
  call void @_out_of_gas()
  br label %"$have_gas_2004"

"$have_gas_2004":                                 ; preds = %"$out_of_gas_2003", %"$have_gas_1993"
  %"$consume_2005" = sub i64 %"$gasrem_2001", 1
  store i64 %"$consume_2005", i64* @_gasrem, align 8
  %int34 = alloca %Uint32, align 8
  %"$gasrem_2006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2007" = icmp ugt i64 1, %"$gasrem_2006"
  br i1 %"$gascmp_2007", label %"$out_of_gas_2008", label %"$have_gas_2009"

"$out_of_gas_2008":                               ; preds = %"$have_gas_2004"
  call void @_out_of_gas()
  br label %"$have_gas_2009"

"$have_gas_2009":                                 ; preds = %"$out_of_gas_2008", %"$have_gas_2004"
  %"$consume_2010" = sub i64 %"$gasrem_2006", 1
  store i64 %"$consume_2010", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_92" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2011" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2012" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2011", 0
  %"$NatUtils.nat_to_int_envptr_2013" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2011", 1
  %"$ack34_2014" = load %TName_Nat*, %TName_Nat** %ack34, align 8
  %"$NatUtils.nat_to_int_call_2015" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2012"(i8* %"$NatUtils.nat_to_int_envptr_2013", %TName_Nat* %"$ack34_2014"), !dbg !163
  store %Uint32 %"$NatUtils.nat_to_int_call_2015", %Uint32* %"$NatUtils.nat_to_int_92", align 4, !dbg !163
  %"$$NatUtils.nat_to_int_92_2016" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_92", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_92_2016", %Uint32* %int34, align 4, !dbg !163
  %"$gasrem_2017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2018" = icmp ugt i64 1, %"$gasrem_2017"
  br i1 %"$gascmp_2018", label %"$out_of_gas_2019", label %"$have_gas_2020"

"$out_of_gas_2019":                               ; preds = %"$have_gas_2009"
  call void @_out_of_gas()
  br label %"$have_gas_2020"

"$have_gas_2020":                                 ; preds = %"$out_of_gas_2019", %"$have_gas_2009"
  %"$consume_2021" = sub i64 %"$gasrem_2017", 1
  store i64 %"$consume_2021", i64* @_gasrem, align 8
  %int40 = alloca %Uint32, align 8
  %"$gasrem_2022" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2023" = icmp ugt i64 1, %"$gasrem_2022"
  br i1 %"$gascmp_2023", label %"$out_of_gas_2024", label %"$have_gas_2025"

"$out_of_gas_2024":                               ; preds = %"$have_gas_2020"
  call void @_out_of_gas()
  br label %"$have_gas_2025"

"$have_gas_2025":                                 ; preds = %"$out_of_gas_2024", %"$have_gas_2020"
  %"$consume_2026" = sub i64 %"$gasrem_2022", 1
  store i64 %"$consume_2026", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_93" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2027" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2028" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2027", 0
  %"$NatUtils.nat_to_int_envptr_2029" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2027", 1
  %"$ack40_2030" = load %TName_Nat*, %TName_Nat** %ack40, align 8
  %"$NatUtils.nat_to_int_call_2031" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2028"(i8* %"$NatUtils.nat_to_int_envptr_2029", %TName_Nat* %"$ack40_2030"), !dbg !164
  store %Uint32 %"$NatUtils.nat_to_int_call_2031", %Uint32* %"$NatUtils.nat_to_int_93", align 4, !dbg !164
  %"$$NatUtils.nat_to_int_93_2032" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_93", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_93_2032", %Uint32* %int40, align 4, !dbg !164
  %"$gasrem_2033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2034" = icmp ugt i64 1, %"$gasrem_2033"
  br i1 %"$gascmp_2034", label %"$out_of_gas_2035", label %"$have_gas_2036"

"$out_of_gas_2035":                               ; preds = %"$have_gas_2025"
  call void @_out_of_gas()
  br label %"$have_gas_2036"

"$have_gas_2036":                                 ; preds = %"$out_of_gas_2035", %"$have_gas_2025"
  %"$consume_2037" = sub i64 %"$gasrem_2033", 1
  store i64 %"$consume_2037", i64* @_gasrem, align 8
  %sum = alloca %Uint32, align 8
  %"$int01_2038" = load %Uint32, %Uint32* %int01, align 4
  %"$int02_2039" = load %Uint32, %Uint32* %int02, align 4
  %"$add_call_2040" = call %Uint32 @_add_Uint32(%Uint32 %"$int01_2038", %Uint32 %"$int02_2039")
  store %Uint32 %"$add_call_2040", %Uint32* %sum, align 4, !dbg !165
  %"$gasrem_2041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2042" = icmp ugt i64 1, %"$gasrem_2041"
  br i1 %"$gascmp_2042", label %"$out_of_gas_2043", label %"$have_gas_2044"

"$out_of_gas_2043":                               ; preds = %"$have_gas_2036"
  call void @_out_of_gas()
  br label %"$have_gas_2044"

"$have_gas_2044":                                 ; preds = %"$out_of_gas_2043", %"$have_gas_2036"
  %"$consume_2045" = sub i64 %"$gasrem_2041", 1
  store i64 %"$consume_2045", i64* @_gasrem, align 8
  %"$sum_0" = alloca %Uint32, align 8
  %"$sum_2046" = load %Uint32, %Uint32* %sum, align 4
  %"$int03_2047" = load %Uint32, %Uint32* %int03, align 4
  %"$add_call_2048" = call %Uint32 @_add_Uint32(%Uint32 %"$sum_2046", %Uint32 %"$int03_2047")
  store %Uint32 %"$add_call_2048", %Uint32* %"$sum_0", align 4, !dbg !166
  %"$gasrem_2049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2050" = icmp ugt i64 1, %"$gasrem_2049"
  br i1 %"$gascmp_2050", label %"$out_of_gas_2051", label %"$have_gas_2052"

"$out_of_gas_2051":                               ; preds = %"$have_gas_2044"
  call void @_out_of_gas()
  br label %"$have_gas_2052"

"$have_gas_2052":                                 ; preds = %"$out_of_gas_2051", %"$have_gas_2044"
  %"$consume_2053" = sub i64 %"$gasrem_2049", 1
  store i64 %"$consume_2053", i64* @_gasrem, align 8
  %"$sum_1" = alloca %Uint32, align 8
  %"$$sum_0_2054" = load %Uint32, %Uint32* %"$sum_0", align 4
  %"$int04_2055" = load %Uint32, %Uint32* %int04, align 4
  %"$add_call_2056" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_0_2054", %Uint32 %"$int04_2055")
  store %Uint32 %"$add_call_2056", %Uint32* %"$sum_1", align 4, !dbg !167
  %"$gasrem_2057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2058" = icmp ugt i64 1, %"$gasrem_2057"
  br i1 %"$gascmp_2058", label %"$out_of_gas_2059", label %"$have_gas_2060"

"$out_of_gas_2059":                               ; preds = %"$have_gas_2052"
  call void @_out_of_gas()
  br label %"$have_gas_2060"

"$have_gas_2060":                                 ; preds = %"$out_of_gas_2059", %"$have_gas_2052"
  %"$consume_2061" = sub i64 %"$gasrem_2057", 1
  store i64 %"$consume_2061", i64* @_gasrem, align 8
  %"$sum_2" = alloca %Uint32, align 8
  %"$$sum_1_2062" = load %Uint32, %Uint32* %"$sum_1", align 4
  %"$int10_2063" = load %Uint32, %Uint32* %int10, align 4
  %"$add_call_2064" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_1_2062", %Uint32 %"$int10_2063")
  store %Uint32 %"$add_call_2064", %Uint32* %"$sum_2", align 4, !dbg !168
  %"$gasrem_2065" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2066" = icmp ugt i64 1, %"$gasrem_2065"
  br i1 %"$gascmp_2066", label %"$out_of_gas_2067", label %"$have_gas_2068"

"$out_of_gas_2067":                               ; preds = %"$have_gas_2060"
  call void @_out_of_gas()
  br label %"$have_gas_2068"

"$have_gas_2068":                                 ; preds = %"$out_of_gas_2067", %"$have_gas_2060"
  %"$consume_2069" = sub i64 %"$gasrem_2065", 1
  store i64 %"$consume_2069", i64* @_gasrem, align 8
  %"$sum_3" = alloca %Uint32, align 8
  %"$$sum_2_2070" = load %Uint32, %Uint32* %"$sum_2", align 4
  %"$int11_2071" = load %Uint32, %Uint32* %int11, align 4
  %"$add_call_2072" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_2_2070", %Uint32 %"$int11_2071")
  store %Uint32 %"$add_call_2072", %Uint32* %"$sum_3", align 4, !dbg !169
  %"$gasrem_2073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2074" = icmp ugt i64 1, %"$gasrem_2073"
  br i1 %"$gascmp_2074", label %"$out_of_gas_2075", label %"$have_gas_2076"

"$out_of_gas_2075":                               ; preds = %"$have_gas_2068"
  call void @_out_of_gas()
  br label %"$have_gas_2076"

"$have_gas_2076":                                 ; preds = %"$out_of_gas_2075", %"$have_gas_2068"
  %"$consume_2077" = sub i64 %"$gasrem_2073", 1
  store i64 %"$consume_2077", i64* @_gasrem, align 8
  %"$sum_4" = alloca %Uint32, align 8
  %"$$sum_3_2078" = load %Uint32, %Uint32* %"$sum_3", align 4
  %"$int12_2079" = load %Uint32, %Uint32* %int12, align 4
  %"$add_call_2080" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_3_2078", %Uint32 %"$int12_2079")
  store %Uint32 %"$add_call_2080", %Uint32* %"$sum_4", align 4, !dbg !170
  %"$gasrem_2081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2082" = icmp ugt i64 1, %"$gasrem_2081"
  br i1 %"$gascmp_2082", label %"$out_of_gas_2083", label %"$have_gas_2084"

"$out_of_gas_2083":                               ; preds = %"$have_gas_2076"
  call void @_out_of_gas()
  br label %"$have_gas_2084"

"$have_gas_2084":                                 ; preds = %"$out_of_gas_2083", %"$have_gas_2076"
  %"$consume_2085" = sub i64 %"$gasrem_2081", 1
  store i64 %"$consume_2085", i64* @_gasrem, align 8
  %"$sum_5" = alloca %Uint32, align 8
  %"$$sum_4_2086" = load %Uint32, %Uint32* %"$sum_4", align 4
  %"$int13_2087" = load %Uint32, %Uint32* %int13, align 4
  %"$add_call_2088" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_4_2086", %Uint32 %"$int13_2087")
  store %Uint32 %"$add_call_2088", %Uint32* %"$sum_5", align 4, !dbg !171
  %"$gasrem_2089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2090" = icmp ugt i64 1, %"$gasrem_2089"
  br i1 %"$gascmp_2090", label %"$out_of_gas_2091", label %"$have_gas_2092"

"$out_of_gas_2091":                               ; preds = %"$have_gas_2084"
  call void @_out_of_gas()
  br label %"$have_gas_2092"

"$have_gas_2092":                                 ; preds = %"$out_of_gas_2091", %"$have_gas_2084"
  %"$consume_2093" = sub i64 %"$gasrem_2089", 1
  store i64 %"$consume_2093", i64* @_gasrem, align 8
  %"$sum_6" = alloca %Uint32, align 8
  %"$$sum_5_2094" = load %Uint32, %Uint32* %"$sum_5", align 4
  %"$int14_2095" = load %Uint32, %Uint32* %int14, align 4
  %"$add_call_2096" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_5_2094", %Uint32 %"$int14_2095")
  store %Uint32 %"$add_call_2096", %Uint32* %"$sum_6", align 4, !dbg !172
  %"$gasrem_2097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2098" = icmp ugt i64 1, %"$gasrem_2097"
  br i1 %"$gascmp_2098", label %"$out_of_gas_2099", label %"$have_gas_2100"

"$out_of_gas_2099":                               ; preds = %"$have_gas_2092"
  call void @_out_of_gas()
  br label %"$have_gas_2100"

"$have_gas_2100":                                 ; preds = %"$out_of_gas_2099", %"$have_gas_2092"
  %"$consume_2101" = sub i64 %"$gasrem_2097", 1
  store i64 %"$consume_2101", i64* @_gasrem, align 8
  %"$sum_7" = alloca %Uint32, align 8
  %"$$sum_6_2102" = load %Uint32, %Uint32* %"$sum_6", align 4
  %"$int20_2103" = load %Uint32, %Uint32* %int20, align 4
  %"$add_call_2104" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_6_2102", %Uint32 %"$int20_2103")
  store %Uint32 %"$add_call_2104", %Uint32* %"$sum_7", align 4, !dbg !173
  %"$gasrem_2105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2106" = icmp ugt i64 1, %"$gasrem_2105"
  br i1 %"$gascmp_2106", label %"$out_of_gas_2107", label %"$have_gas_2108"

"$out_of_gas_2107":                               ; preds = %"$have_gas_2100"
  call void @_out_of_gas()
  br label %"$have_gas_2108"

"$have_gas_2108":                                 ; preds = %"$out_of_gas_2107", %"$have_gas_2100"
  %"$consume_2109" = sub i64 %"$gasrem_2105", 1
  store i64 %"$consume_2109", i64* @_gasrem, align 8
  %"$sum_8" = alloca %Uint32, align 8
  %"$$sum_7_2110" = load %Uint32, %Uint32* %"$sum_7", align 4
  %"$int21_2111" = load %Uint32, %Uint32* %int21, align 4
  %"$add_call_2112" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_7_2110", %Uint32 %"$int21_2111")
  store %Uint32 %"$add_call_2112", %Uint32* %"$sum_8", align 4, !dbg !174
  %"$gasrem_2113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2114" = icmp ugt i64 1, %"$gasrem_2113"
  br i1 %"$gascmp_2114", label %"$out_of_gas_2115", label %"$have_gas_2116"

"$out_of_gas_2115":                               ; preds = %"$have_gas_2108"
  call void @_out_of_gas()
  br label %"$have_gas_2116"

"$have_gas_2116":                                 ; preds = %"$out_of_gas_2115", %"$have_gas_2108"
  %"$consume_2117" = sub i64 %"$gasrem_2113", 1
  store i64 %"$consume_2117", i64* @_gasrem, align 8
  %"$sum_9" = alloca %Uint32, align 8
  %"$$sum_8_2118" = load %Uint32, %Uint32* %"$sum_8", align 4
  %"$int22_2119" = load %Uint32, %Uint32* %int22, align 4
  %"$add_call_2120" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_8_2118", %Uint32 %"$int22_2119")
  store %Uint32 %"$add_call_2120", %Uint32* %"$sum_9", align 4, !dbg !175
  %"$gasrem_2121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2122" = icmp ugt i64 1, %"$gasrem_2121"
  br i1 %"$gascmp_2122", label %"$out_of_gas_2123", label %"$have_gas_2124"

"$out_of_gas_2123":                               ; preds = %"$have_gas_2116"
  call void @_out_of_gas()
  br label %"$have_gas_2124"

"$have_gas_2124":                                 ; preds = %"$out_of_gas_2123", %"$have_gas_2116"
  %"$consume_2125" = sub i64 %"$gasrem_2121", 1
  store i64 %"$consume_2125", i64* @_gasrem, align 8
  %"$sum_10" = alloca %Uint32, align 8
  %"$$sum_9_2126" = load %Uint32, %Uint32* %"$sum_9", align 4
  %"$int23_2127" = load %Uint32, %Uint32* %int23, align 4
  %"$add_call_2128" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_9_2126", %Uint32 %"$int23_2127")
  store %Uint32 %"$add_call_2128", %Uint32* %"$sum_10", align 4, !dbg !176
  %"$gasrem_2129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2130" = icmp ugt i64 1, %"$gasrem_2129"
  br i1 %"$gascmp_2130", label %"$out_of_gas_2131", label %"$have_gas_2132"

"$out_of_gas_2131":                               ; preds = %"$have_gas_2124"
  call void @_out_of_gas()
  br label %"$have_gas_2132"

"$have_gas_2132":                                 ; preds = %"$out_of_gas_2131", %"$have_gas_2124"
  %"$consume_2133" = sub i64 %"$gasrem_2129", 1
  store i64 %"$consume_2133", i64* @_gasrem, align 8
  %"$sum_11" = alloca %Uint32, align 8
  %"$$sum_10_2134" = load %Uint32, %Uint32* %"$sum_10", align 4
  %"$int24_2135" = load %Uint32, %Uint32* %int24, align 4
  %"$add_call_2136" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_10_2134", %Uint32 %"$int24_2135")
  store %Uint32 %"$add_call_2136", %Uint32* %"$sum_11", align 4, !dbg !177
  %"$gasrem_2137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2138" = icmp ugt i64 1, %"$gasrem_2137"
  br i1 %"$gascmp_2138", label %"$out_of_gas_2139", label %"$have_gas_2140"

"$out_of_gas_2139":                               ; preds = %"$have_gas_2132"
  call void @_out_of_gas()
  br label %"$have_gas_2140"

"$have_gas_2140":                                 ; preds = %"$out_of_gas_2139", %"$have_gas_2132"
  %"$consume_2141" = sub i64 %"$gasrem_2137", 1
  store i64 %"$consume_2141", i64* @_gasrem, align 8
  %"$sum_12" = alloca %Uint32, align 8
  %"$$sum_11_2142" = load %Uint32, %Uint32* %"$sum_11", align 4
  %"$int30_2143" = load %Uint32, %Uint32* %int30, align 4
  %"$add_call_2144" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_11_2142", %Uint32 %"$int30_2143")
  store %Uint32 %"$add_call_2144", %Uint32* %"$sum_12", align 4, !dbg !178
  %"$gasrem_2145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2146" = icmp ugt i64 1, %"$gasrem_2145"
  br i1 %"$gascmp_2146", label %"$out_of_gas_2147", label %"$have_gas_2148"

"$out_of_gas_2147":                               ; preds = %"$have_gas_2140"
  call void @_out_of_gas()
  br label %"$have_gas_2148"

"$have_gas_2148":                                 ; preds = %"$out_of_gas_2147", %"$have_gas_2140"
  %"$consume_2149" = sub i64 %"$gasrem_2145", 1
  store i64 %"$consume_2149", i64* @_gasrem, align 8
  %"$sum_13" = alloca %Uint32, align 8
  %"$$sum_12_2150" = load %Uint32, %Uint32* %"$sum_12", align 4
  %"$int31_2151" = load %Uint32, %Uint32* %int31, align 4
  %"$add_call_2152" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_12_2150", %Uint32 %"$int31_2151")
  store %Uint32 %"$add_call_2152", %Uint32* %"$sum_13", align 4, !dbg !179
  %"$gasrem_2153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2154" = icmp ugt i64 1, %"$gasrem_2153"
  br i1 %"$gascmp_2154", label %"$out_of_gas_2155", label %"$have_gas_2156"

"$out_of_gas_2155":                               ; preds = %"$have_gas_2148"
  call void @_out_of_gas()
  br label %"$have_gas_2156"

"$have_gas_2156":                                 ; preds = %"$out_of_gas_2155", %"$have_gas_2148"
  %"$consume_2157" = sub i64 %"$gasrem_2153", 1
  store i64 %"$consume_2157", i64* @_gasrem, align 8
  %"$sum_14" = alloca %Uint32, align 8
  %"$$sum_13_2158" = load %Uint32, %Uint32* %"$sum_13", align 4
  %"$int32_2159" = load %Uint32, %Uint32* %int32, align 4
  %"$add_call_2160" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_13_2158", %Uint32 %"$int32_2159")
  store %Uint32 %"$add_call_2160", %Uint32* %"$sum_14", align 4, !dbg !180
  %"$gasrem_2161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2162" = icmp ugt i64 1, %"$gasrem_2161"
  br i1 %"$gascmp_2162", label %"$out_of_gas_2163", label %"$have_gas_2164"

"$out_of_gas_2163":                               ; preds = %"$have_gas_2156"
  call void @_out_of_gas()
  br label %"$have_gas_2164"

"$have_gas_2164":                                 ; preds = %"$out_of_gas_2163", %"$have_gas_2156"
  %"$consume_2165" = sub i64 %"$gasrem_2161", 1
  store i64 %"$consume_2165", i64* @_gasrem, align 8
  %"$sum_15" = alloca %Uint32, align 8
  %"$$sum_14_2166" = load %Uint32, %Uint32* %"$sum_14", align 4
  %"$int33_2167" = load %Uint32, %Uint32* %int33, align 4
  %"$add_call_2168" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_14_2166", %Uint32 %"$int33_2167")
  store %Uint32 %"$add_call_2168", %Uint32* %"$sum_15", align 4, !dbg !181
  %"$gasrem_2169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2170" = icmp ugt i64 1, %"$gasrem_2169"
  br i1 %"$gascmp_2170", label %"$out_of_gas_2171", label %"$have_gas_2172"

"$out_of_gas_2171":                               ; preds = %"$have_gas_2164"
  call void @_out_of_gas()
  br label %"$have_gas_2172"

"$have_gas_2172":                                 ; preds = %"$out_of_gas_2171", %"$have_gas_2164"
  %"$consume_2173" = sub i64 %"$gasrem_2169", 1
  store i64 %"$consume_2173", i64* @_gasrem, align 8
  %"$sum_16" = alloca %Uint32, align 8
  %"$$sum_15_2174" = load %Uint32, %Uint32* %"$sum_15", align 4
  %"$int34_2175" = load %Uint32, %Uint32* %int34, align 4
  %"$add_call_2176" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_15_2174", %Uint32 %"$int34_2175")
  store %Uint32 %"$add_call_2176", %Uint32* %"$sum_16", align 4, !dbg !182
  %"$gasrem_2177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2178" = icmp ugt i64 1, %"$gasrem_2177"
  br i1 %"$gascmp_2178", label %"$out_of_gas_2179", label %"$have_gas_2180"

"$out_of_gas_2179":                               ; preds = %"$have_gas_2172"
  call void @_out_of_gas()
  br label %"$have_gas_2180"

"$have_gas_2180":                                 ; preds = %"$out_of_gas_2179", %"$have_gas_2172"
  %"$consume_2181" = sub i64 %"$gasrem_2177", 1
  store i64 %"$consume_2181", i64* @_gasrem, align 8
  %"$sum_17" = alloca %Uint32, align 8
  %"$$sum_16_2182" = load %Uint32, %Uint32* %"$sum_16", align 4
  %"$int40_2183" = load %Uint32, %Uint32* %int40, align 4
  %"$add_call_2184" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_16_2182", %Uint32 %"$int40_2183")
  store %Uint32 %"$add_call_2184", %Uint32* %"$sum_17", align 4, !dbg !183
  %"$gasrem_2185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2186" = icmp ugt i64 1, %"$gasrem_2185"
  br i1 %"$gascmp_2186", label %"$out_of_gas_2187", label %"$have_gas_2188"

"$out_of_gas_2187":                               ; preds = %"$have_gas_2180"
  call void @_out_of_gas()
  br label %"$have_gas_2188"

"$have_gas_2188":                                 ; preds = %"$out_of_gas_2187", %"$have_gas_2180"
  %"$consume_2189" = sub i64 %"$gasrem_2185", 1
  store i64 %"$consume_2189", i64* @_gasrem, align 8
  %"$$sum_17_2190" = load %Uint32, %Uint32* %"$sum_17", align 4
  store %Uint32 %"$$sum_17_2190", %Uint32* %"$expr_124", align 4, !dbg !184
  %"$$expr_124_2191" = load %Uint32, %Uint32* %"$expr_124", align 4
  ret %Uint32 %"$$expr_124_2191"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_2192" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_2193" = alloca %Uint32, align 8
  %"$memvoidcast_2194" = bitcast %Uint32* %"$pval_2193" to i8*
  store %Uint32 %"$exprval_2192", %Uint32* %"$pval_2193", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_161", i8* %"$memvoidcast_2194")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "ackermann.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_155", linkageName: "$fundef_155", scope: !2, file: !2, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 25, column: 23, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_153", linkageName: "$fundef_153", scope: !2, file: !2, line: 24, type: !5, scopeLine: 24, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 24, column: 22, scope: !9)
!11 = distinct !DISubprogram(name: "$fundef_151", linkageName: "$fundef_151", scope: !2, file: !2, line: 23, type: !5, scopeLine: 23, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 23, column: 14, scope: !11)
!13 = !DILocation(line: 24, column: 22, scope: !11)
!14 = distinct !DISubprogram(name: "$fundef_149", linkageName: "$fundef_149", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 13, column: 52, scope: !14)
!16 = distinct !DISubprogram(name: "$fundef_147", linkageName: "$fundef_147", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 13, column: 52, scope: !16)
!18 = distinct !DISubprogram(name: "$fundef_145", linkageName: "$fundef_145", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DILocation(line: 12, column: 17, scope: !18)
!20 = !DILocation(line: 12, column: 16, scope: !18)
!21 = !DILocation(line: 13, column: 30, scope: !18)
!22 = !DILocation(line: 14, column: 3, scope: !18)
!23 = distinct !DISubprogram(name: "$fundef_143", linkageName: "$fundef_143", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 12, column: 3, scope: !23)
!25 = distinct !DISubprogram(name: "$fundef_141", linkageName: "$fundef_141", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 11, column: 3, scope: !25)
!27 = distinct !DISubprogram(name: "$fundef_139", linkageName: "$fundef_139", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 10, column: 3, scope: !27)
!29 = distinct !DISubprogram(name: "$fundef_137", linkageName: "$fundef_137", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 13, column: 52, scope: !29)
!31 = distinct !DISubprogram(name: "$fundef_135", linkageName: "$fundef_135", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 13, column: 52, scope: !31)
!33 = distinct !DISubprogram(name: "$fundef_133", linkageName: "$fundef_133", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DILocation(line: 12, column: 17, scope: !33)
!35 = !DILocation(line: 12, column: 16, scope: !33)
!36 = !DILocation(line: 13, column: 30, scope: !33)
!37 = !DILocation(line: 14, column: 3, scope: !33)
!38 = distinct !DISubprogram(name: "$fundef_131", linkageName: "$fundef_131", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!39 = !DILocation(line: 12, column: 3, scope: !38)
!40 = distinct !DISubprogram(name: "$fundef_129", linkageName: "$fundef_129", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!41 = !DILocation(line: 11, column: 3, scope: !40)
!42 = distinct !DISubprogram(name: "$fundef_127", linkageName: "$fundef_127", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!43 = !DILocation(line: 10, column: 3, scope: !42)
!44 = distinct !DISubprogram(name: "$fundef_125", linkageName: "$fundef_125", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!45 = !DILocation(line: 3, column: 20, scope: !44)
!46 = distinct !DISubprogram(name: "$fundef_122", linkageName: "$fundef_122", scope: !47, file: !47, line: 55, type: !5, scopeLine: 55, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!47 = !DIFile(filename: "NatUtils.scillib", directory: "../src/stdlib")
!48 = !DILocation(line: 55, column: 7, scope: !46)
!49 = distinct !DISubprogram(name: "$fundef_120", linkageName: "$fundef_120", scope: !47, file: !47, line: 54, type: !5, scopeLine: 54, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!50 = !DILocation(line: 55, column: 7, scope: !49)
!51 = distinct !DISubprogram(name: "$fundef_118", linkageName: "$fundef_118", scope: !47, file: !47, line: 52, type: !5, scopeLine: 52, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!52 = !DILocation(line: 52, column: 17, scope: !51)
!53 = !DILocation(line: 52, column: 16, scope: !51)
!54 = !DILocation(line: 53, column: 19, scope: !51)
!55 = !DILocation(line: 54, column: 33, scope: !51)
!56 = !DILocation(line: 56, column: 20, scope: !51)
!57 = !DILocation(line: 57, column: 5, scope: !51)
!58 = distinct !DISubprogram(name: "$fundef_116", linkageName: "$fundef_116", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!59 = !DIFile(filename: "Prelude", directory: ".")
!60 = !DILocation(line: 1, column: 34, scope: !58)
!61 = !DILocation(line: 1, column: 71, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !59, line: 1, column: 50)
!63 = distinct !DILexicalBlock(scope: !58, file: !59, line: 1, column: 34)
!64 = !DILocation(line: 1, column: 86, scope: !62)
!65 = !DILocation(line: 1, column: 106, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !59, line: 1, column: 98)
!67 = distinct !DISubprogram(name: "$fundef_114", linkageName: "$fundef_114", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 1, column: 34, scope: !67)
!69 = distinct !DISubprogram(name: "$fundef_112", linkageName: "$fundef_112", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 1, column: 18, scope: !69)
!71 = distinct !DISubprogram(name: "$fundef_110", linkageName: "$fundef_110", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = !DILocation(line: 1, column: 18, scope: !71)
!73 = distinct !DISubprogram(name: "$fundef_108", linkageName: "$fundef_108", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!74 = !DILocation(line: 1, column: 34, scope: !73)
!75 = !DILocation(line: 1, column: 71, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !59, line: 1, column: 50)
!77 = distinct !DILexicalBlock(scope: !73, file: !59, line: 1, column: 34)
!78 = !DILocation(line: 1, column: 86, scope: !76)
!79 = !DILocation(line: 1, column: 106, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !59, line: 1, column: 98)
!81 = distinct !DISubprogram(name: "$fundef_106", linkageName: "$fundef_106", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!82 = !DILocation(line: 1, column: 34, scope: !81)
!83 = distinct !DISubprogram(name: "$fundef_104", linkageName: "$fundef_104", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!84 = !DILocation(line: 1, column: 18, scope: !83)
!85 = distinct !DISubprogram(name: "$fundef_102", linkageName: "$fundef_102", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!86 = !DILocation(line: 1, column: 18, scope: !85)
!87 = distinct !DISubprogram(name: "$fundef_100", linkageName: "$fundef_100", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!88 = !DILocation(line: 1, column: 34, scope: !87)
!89 = !DILocation(line: 1, column: 71, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !59, line: 1, column: 50)
!91 = distinct !DILexicalBlock(scope: !87, file: !59, line: 1, column: 34)
!92 = !DILocation(line: 1, column: 86, scope: !90)
!93 = !DILocation(line: 1, column: 106, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !59, line: 1, column: 98)
!95 = distinct !DISubprogram(name: "$fundef_98", linkageName: "$fundef_98", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!96 = !DILocation(line: 1, column: 34, scope: !95)
!97 = distinct !DISubprogram(name: "$fundef_96", linkageName: "$fundef_96", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!98 = !DILocation(line: 1, column: 18, scope: !97)
!99 = distinct !DISubprogram(name: "$fundef_94", linkageName: "$fundef_94", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!100 = !DILocation(line: 1, column: 18, scope: !99)
!101 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !102, file: !102, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!102 = !DIFile(filename: ".", directory: ".")
!103 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!104 = !DILocation(line: 1, column: 18, scope: !103)
!105 = !DILocation(line: 52, column: 5, scope: !103)
!106 = !DILocation(line: 3, column: 20, scope: !103)
!107 = !DILocation(line: 8, column: 3, scope: !103)
!108 = !DILocation(line: 18, column: 19, scope: !103)
!109 = !DILocation(line: 18, column: 18, scope: !103)
!110 = !DILocation(line: 19, column: 23, scope: !103)
!111 = !DILocation(line: 19, column: 22, scope: !103)
!112 = !DILocation(line: 20, column: 14, scope: !103)
!113 = !DILocation(line: 21, column: 13, scope: !103)
!114 = !DILocation(line: 23, column: 5, scope: !103)
!115 = !DILocation(line: 25, column: 23, scope: !103)
!116 = !DILocation(line: 29, column: 13, scope: !103)
!117 = !DILocation(line: 30, column: 13, scope: !103)
!118 = !DILocation(line: 31, column: 13, scope: !103)
!119 = !DILocation(line: 32, column: 13, scope: !103)
!120 = !DILocation(line: 33, column: 13, scope: !103)
!121 = !DILocation(line: 35, column: 10, scope: !103)
!122 = !DILocation(line: 36, column: 10, scope: !103)
!123 = !DILocation(line: 37, column: 10, scope: !103)
!124 = !DILocation(line: 38, column: 10, scope: !103)
!125 = !DILocation(line: 39, column: 10, scope: !103)
!126 = !DILocation(line: 41, column: 13, scope: !103)
!127 = !DILocation(line: 43, column: 13, scope: !103)
!128 = !DILocation(line: 44, column: 13, scope: !103)
!129 = !DILocation(line: 45, column: 13, scope: !103)
!130 = !DILocation(line: 46, column: 13, scope: !103)
!131 = !DILocation(line: 47, column: 13, scope: !103)
!132 = !DILocation(line: 48, column: 13, scope: !103)
!133 = !DILocation(line: 49, column: 13, scope: !103)
!134 = !DILocation(line: 50, column: 13, scope: !103)
!135 = !DILocation(line: 51, column: 13, scope: !103)
!136 = !DILocation(line: 52, column: 13, scope: !103)
!137 = !DILocation(line: 53, column: 13, scope: !103)
!138 = !DILocation(line: 54, column: 13, scope: !103)
!139 = !DILocation(line: 56, column: 13, scope: !103)
!140 = !DILocation(line: 57, column: 13, scope: !103)
!141 = !DILocation(line: 58, column: 13, scope: !103)
!142 = !DILocation(line: 59, column: 13, scope: !103)
!143 = !DILocation(line: 60, column: 13, scope: !103)
!144 = !DILocation(line: 61, column: 13, scope: !103)
!145 = !DILocation(line: 63, column: 13, scope: !103)
!146 = !DILocation(line: 64, column: 13, scope: !103)
!147 = !DILocation(line: 65, column: 13, scope: !103)
!148 = !DILocation(line: 66, column: 13, scope: !103)
!149 = !DILocation(line: 67, column: 13, scope: !103)
!150 = !DILocation(line: 68, column: 13, scope: !103)
!151 = !DILocation(line: 69, column: 13, scope: !103)
!152 = !DILocation(line: 70, column: 13, scope: !103)
!153 = !DILocation(line: 71, column: 13, scope: !103)
!154 = !DILocation(line: 72, column: 13, scope: !103)
!155 = !DILocation(line: 73, column: 13, scope: !103)
!156 = !DILocation(line: 74, column: 13, scope: !103)
!157 = !DILocation(line: 75, column: 13, scope: !103)
!158 = !DILocation(line: 76, column: 13, scope: !103)
!159 = !DILocation(line: 77, column: 13, scope: !103)
!160 = !DILocation(line: 78, column: 13, scope: !103)
!161 = !DILocation(line: 79, column: 13, scope: !103)
!162 = !DILocation(line: 80, column: 13, scope: !103)
!163 = !DILocation(line: 81, column: 13, scope: !103)
!164 = !DILocation(line: 82, column: 13, scope: !103)
!165 = !DILocation(line: 84, column: 11, scope: !103)
!166 = !DILocation(line: 85, column: 11, scope: !103)
!167 = !DILocation(line: 86, column: 11, scope: !103)
!168 = !DILocation(line: 87, column: 11, scope: !103)
!169 = !DILocation(line: 88, column: 11, scope: !103)
!170 = !DILocation(line: 89, column: 11, scope: !103)
!171 = !DILocation(line: 90, column: 11, scope: !103)
!172 = !DILocation(line: 91, column: 11, scope: !103)
!173 = !DILocation(line: 92, column: 11, scope: !103)
!174 = !DILocation(line: 93, column: 11, scope: !103)
!175 = !DILocation(line: 94, column: 11, scope: !103)
!176 = !DILocation(line: 95, column: 11, scope: !103)
!177 = !DILocation(line: 96, column: 11, scope: !103)
!178 = !DILocation(line: 97, column: 11, scope: !103)
!179 = !DILocation(line: 98, column: 11, scope: !103)
!180 = !DILocation(line: 99, column: 11, scope: !103)
!181 = !DILocation(line: 100, column: 11, scope: !103)
!182 = !DILocation(line: 101, column: 11, scope: !103)
!183 = !DILocation(line: 102, column: 11, scope: !103)
!184 = !DILocation(line: 104, column: 1, scope: !103)
