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
%"$ParamDescr_2203" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2204" = type { %ParamDescrString, i32, %"$ParamDescr_2203"* }
%"$$fundef_155_env_205" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_153_env_206" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_151_env_207" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_149_env_208" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat* }
%"$$fundef_147_env_209" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_145_env_210" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_143_env_211" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { i8*, i8* }* }
%"$$fundef_141_env_212" = type { { i8*, i8* }* }
%"$$fundef_139_env_213" = type { { i8*, i8* }* }
%"$$fundef_137_env_214" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_135_env_215" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_133_env_216" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_131_env_217" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { i8*, i8* }* }
%"$$fundef_129_env_218" = type { { i8*, i8* }* }
%"$$fundef_127_env_219" = type { { i8*, i8* }* }
%"$$fundef_125_env_220" = type {}
%"$$fundef_122_env_221" = type { %Uint32, %Uint32 }
%"$$fundef_120_env_222" = type { %Uint32 }
%"$$fundef_118_env_223" = type { { i8*, i8* }* }
%"$$fundef_116_env_224" = type { %TName_Nat*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_114_env_225" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_112_env_226" = type {}
%"$$fundef_110_env_227" = type {}
%"$$fundef_108_env_228" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_106_env_229" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_104_env_230" = type {}
%"$$fundef_102_env_231" = type {}
%"$$fundef_100_env_232" = type { %Uint32, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_98_env_233" = type { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_96_env_234" = type {}
%"$$fundef_94_env_235" = type {}

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
@"$TyDescr_ADT_Nat_189" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_186"* @"$TyDescr_Nat_ADTTyp_Specl_202" to i8*) }
@"$TyDescr_Nat_ADTTyp_193" = unnamed_addr constant %"$TyDescrTy_ADTTyp_187" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_204", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_186"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_186"*], [1 x %"$TyDescrTy_ADTTyp_Specl_186"*]* @"$TyDescr_Nat_ADTTyp_m_specls_203", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_194" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_195" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_196" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_188" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_195", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_194", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_197" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_189"]
@"$TyDescr_ADT_Succ_198" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_199" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_188" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_198", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_197", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_200" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_188"*] [%"$TyDescrTy_ADTTyp_Constr_188"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_196", %"$TyDescrTy_ADTTyp_Constr_188"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_199"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_201" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_202" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_186" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_201", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_188"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_188"*], [2 x %"$TyDescrTy_ADTTyp_Constr_188"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_200", i32 0, i32 0), %"$TyDescrTy_ADTTyp_187"* @"$TyDescr_Nat_ADTTyp_193" }
@"$TyDescr_Nat_ADTTyp_m_specls_203" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_186"*] [%"$TyDescrTy_ADTTyp_Specl_186"* @"$TyDescr_Nat_ADTTyp_Specl_202"]
@"$TyDescr_ADT_Nat_204" = unnamed_addr constant [3 x i8] c"Nat"
@nat_fold = global { i8*, i8* }* null
@NatUtils.nat_to_int = global { %Uint32 (i8*, %TName_Nat*)*, i8* } zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_181", %_TyDescrTy_Typ* @"$TyDescr_Int64_163", %_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_189", %_TyDescrTy_Typ* @"$TyDescr_Uint256_173", %_TyDescrTy_Typ* @"$TyDescr_Uint32_161", %_TyDescrTy_Typ* @"$TyDescr_Uint64_165", %_TyDescrTy_Typ* @"$TyDescr_Bnum_177", %_TyDescrTy_Typ* @"$TyDescr_Uint128_169", %_TyDescrTy_Typ* @"$TyDescr_Exception_183", %_TyDescrTy_Typ* @"$TyDescr_String_175", %_TyDescrTy_Typ* @"$TyDescr_Int256_171", %_TyDescrTy_Typ* @"$TyDescr_Int128_167", %_TyDescrTy_Typ* @"$TyDescr_Bystr_185", %_TyDescrTy_Typ* @"$TyDescr_Message_179", %_TyDescrTy_Typ* @"$TyDescr_Int32_159"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_2203"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2204"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_155"(%"$$fundef_155_env_205"* %0, %TName_Nat* %1) !dbg !4 {
entry:
  %"$$fundef_155_env_f_1020" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %0, i32 0, i32 0
  %"$f_envload_1021" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_1020", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_1021", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_155_env_iter_nat_nat_1022" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_1023" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_1022", align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_1023", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$$fundef_155_env_nat_succ_1024" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %0, i32 0, i32 2
  %"$nat_succ_envload_1025" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_1024", align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_1025", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$retval_156" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1027" = icmp ugt i64 1, %"$gasrem_1026"
  br i1 %"$gascmp_1027", label %"$out_of_gas_1028", label %"$have_gas_1029"

"$out_of_gas_1028":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1029"

"$have_gas_1029":                                 ; preds = %"$out_of_gas_1028", %entry
  %"$consume_1030" = sub i64 %"$gasrem_1026", 1
  store i64 %"$consume_1030", i64* @_gasrem, align 8
  %"$iter_nat_nat_33" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_nat_1031" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$iter_nat_nat_fptr_1032" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1031", 0
  %"$iter_nat_nat_envptr_1033" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1031", 1
  %"$f_1034" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$iter_nat_nat_call_1035" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_1032"(i8* %"$iter_nat_nat_envptr_1033", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1034"), !dbg !8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_1035", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_33", align 8, !dbg !8
  %"$iter_nat_nat_34" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$$iter_nat_nat_33_1036" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_33", align 8
  %"$$iter_nat_nat_33_fptr_1037" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_33_1036", 0
  %"$$iter_nat_nat_33_envptr_1038" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_33_1036", 1
  %"$$iter_nat_nat_33_call_1039" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_fptr_1037"(i8* %"$$iter_nat_nat_33_envptr_1038", %TName_Nat* %1), !dbg !8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_call_1039", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34", align 8, !dbg !8
  %"$iter_nat_nat_35" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_nat_34_1040" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34", align 8
  %"$$iter_nat_nat_34_fptr_1041" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_1040", 0
  %"$$iter_nat_nat_34_envptr_1042" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_1040", 1
  %"$nat_succ_1043" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$$iter_nat_nat_34_call_1044" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_34_fptr_1041"(i8* %"$$iter_nat_nat_34_envptr_1042", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1043"), !dbg !8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_34_call_1044", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_35", align 8, !dbg !8
  %"$$iter_nat_nat_35_1045" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_35", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_35_1045", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_156", align 8, !dbg !8
  %"$$retval_156_1046" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_156", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_156_1046"
}

define internal %TName_Nat* @"$fundef_153"(%"$$fundef_153_env_206"* %0, %TName_Nat* %1) !dbg !9 {
entry:
  %"$$fundef_153_env_ack_993" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %0, i32 0, i32 0
  %"$ack_envload_994" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_153_env_ack_993", align 8
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_994", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$$fundef_153_env_iter_nat_995" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %0, i32 0, i32 1
  %"$iter_nat_envload_996" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_995", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_996", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_153_env_x0_997" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %0, i32 0, i32 2
  %"$x0_envload_998" = load %TName_Nat*, %TName_Nat** %"$$fundef_153_env_x0_997", align 8
  %x0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x0_envload_998", %TName_Nat** %x0, align 8
  %"$retval_154" = alloca %TName_Nat*, align 8
  %"$gasrem_999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1000" = icmp ugt i64 1, %"$gasrem_999"
  br i1 %"$gascmp_1000", label %"$out_of_gas_1001", label %"$have_gas_1002"

"$out_of_gas_1001":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1002"

"$have_gas_1002":                                 ; preds = %"$out_of_gas_1001", %entry
  %"$consume_1003" = sub i64 %"$gasrem_999", 1
  store i64 %"$consume_1003", i64* @_gasrem, align 8
  %"$iter_nat_30" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_1004" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$iter_nat_fptr_1005" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1004", 0
  %"$iter_nat_envptr_1006" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1004", 1
  %"$ack_1007" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$iter_nat_call_1008" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_1005"(i8* %"$iter_nat_envptr_1006", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_1007"), !dbg !10
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_1008", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_30", align 8, !dbg !10
  %"$iter_nat_31" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_30_1009" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_30", align 8
  %"$$iter_nat_30_fptr_1010" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_1009", 0
  %"$$iter_nat_30_envptr_1011" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_1009", 1
  %"$$iter_nat_30_call_1012" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_fptr_1010"(i8* %"$$iter_nat_30_envptr_1011", %TName_Nat* %1), !dbg !10
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_call_1012", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_31", align 8, !dbg !10
  %"$iter_nat_32" = alloca %TName_Nat*, align 8
  %"$$iter_nat_31_1013" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_31", align 8
  %"$$iter_nat_31_fptr_1014" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_31_1013", 0
  %"$$iter_nat_31_envptr_1015" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_31_1013", 1
  %"$x0_1016" = load %TName_Nat*, %TName_Nat** %x0, align 8
  %"$$iter_nat_31_call_1017" = call %TName_Nat* %"$$iter_nat_31_fptr_1014"(i8* %"$$iter_nat_31_envptr_1015", %TName_Nat* %"$x0_1016"), !dbg !10
  store %TName_Nat* %"$$iter_nat_31_call_1017", %TName_Nat** %"$iter_nat_32", align 8, !dbg !10
  %"$$iter_nat_32_1018" = load %TName_Nat*, %TName_Nat** %"$iter_nat_32", align 8
  store %TName_Nat* %"$$iter_nat_32_1018", %TName_Nat** %"$retval_154", align 8, !dbg !10
  %"$$retval_154_1019" = load %TName_Nat*, %TName_Nat** %"$retval_154", align 8
  ret %TName_Nat* %"$$retval_154_1019"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_151"(%"$$fundef_151_env_207"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !11 {
entry:
  %"$$fundef_151_env_iter_nat_959" = getelementptr inbounds %"$$fundef_151_env_207", %"$$fundef_151_env_207"* %0, i32 0, i32 0
  %"$iter_nat_envload_960" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_959", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_960", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_151_env_one_961" = getelementptr inbounds %"$$fundef_151_env_207", %"$$fundef_151_env_207"* %0, i32 0, i32 1
  %"$one_envload_962" = load %TName_Nat*, %TName_Nat** %"$$fundef_151_env_one_961", align 8
  %one = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$one_envload_962", %TName_Nat** %one, align 8
  %"$retval_152" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_964" = icmp ugt i64 1, %"$gasrem_963"
  br i1 %"$gascmp_964", label %"$out_of_gas_965", label %"$have_gas_966"

"$out_of_gas_965":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_966"

"$have_gas_966":                                  ; preds = %"$out_of_gas_965", %entry
  %"$consume_967" = sub i64 %"$gasrem_963", 1
  store i64 %"$consume_967", i64* @_gasrem, align 8
  %x0 = alloca %TName_Nat*, align 8
  %"$gasrem_968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_969" = icmp ugt i64 1, %"$gasrem_968"
  br i1 %"$gascmp_969", label %"$out_of_gas_970", label %"$have_gas_971"

"$out_of_gas_970":                                ; preds = %"$have_gas_966"
  call void @_out_of_gas()
  br label %"$have_gas_971"

"$have_gas_971":                                  ; preds = %"$out_of_gas_970", %"$have_gas_966"
  %"$consume_972" = sub i64 %"$gasrem_968", 1
  store i64 %"$consume_972", i64* @_gasrem, align 8
  %"$ack_29" = alloca %TName_Nat*, align 8
  %"$ack_fptr_973" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_974" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_975" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$ack_call_976" = call %TName_Nat* %"$ack_fptr_973"(i8* %"$ack_envptr_974", %TName_Nat* %"$one_975"), !dbg !12
  store %TName_Nat* %"$ack_call_976", %TName_Nat** %"$ack_29", align 8, !dbg !12
  %"$$ack_29_977" = load %TName_Nat*, %TName_Nat** %"$ack_29", align 8
  store %TName_Nat* %"$$ack_29_977", %TName_Nat** %x0, align 8, !dbg !12
  %"$gasrem_978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_979" = icmp ugt i64 1, %"$gasrem_978"
  br i1 %"$gascmp_979", label %"$out_of_gas_980", label %"$have_gas_981"

"$out_of_gas_980":                                ; preds = %"$have_gas_971"
  call void @_out_of_gas()
  br label %"$have_gas_981"

"$have_gas_981":                                  ; preds = %"$out_of_gas_980", %"$have_gas_971"
  %"$consume_982" = sub i64 %"$gasrem_978", 1
  store i64 %"$consume_982", i64* @_gasrem, align 8
  %"$$fundef_153_envp_983_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_153_envp_983_salloc" = call i8* @_salloc(i8* %"$$fundef_153_envp_983_load", i64 40)
  %"$$fundef_153_envp_983" = bitcast i8* %"$$fundef_153_envp_983_salloc" to %"$$fundef_153_env_206"*
  %"$$fundef_153_env_voidp_985" = bitcast %"$$fundef_153_env_206"* %"$$fundef_153_envp_983" to i8*
  %"$$fundef_153_cloval_986" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_153_env_206"*, %TName_Nat*)* @"$fundef_153" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_153_env_voidp_985", 1
  %"$$fundef_153_env_ack_987" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %"$$fundef_153_envp_983", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_153_env_ack_987", align 8
  %"$$fundef_153_env_iter_nat_988" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %"$$fundef_153_envp_983", i32 0, i32 1
  %"$iter_nat_989" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_989", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_988", align 8
  %"$$fundef_153_env_x0_990" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %"$$fundef_153_envp_983", i32 0, i32 2
  %"$x0_991" = load %TName_Nat*, %TName_Nat** %x0, align 8
  store %TName_Nat* %"$x0_991", %TName_Nat** %"$$fundef_153_env_x0_990", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_153_cloval_986", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_152", align 8, !dbg !13
  %"$$retval_152_992" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_152", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_152_992"
}

define internal %TName_Nat* @"$fundef_149"(%"$$fundef_149_env_208"* %0, %TName_Nat* %1) !dbg !14 {
entry:
  %"$$fundef_149_env_f_943" = getelementptr inbounds %"$$fundef_149_env_208", %"$$fundef_149_env_208"* %0, i32 0, i32 0
  %"$f_envload_944" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_149_env_f_943", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_944", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_149_env_x_945" = getelementptr inbounds %"$$fundef_149_env_208", %"$$fundef_149_env_208"* %0, i32 0, i32 1
  %"$x_envload_946" = load %TName_Nat*, %TName_Nat** %"$$fundef_149_env_x_945", align 8
  %x = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x_envload_946", %TName_Nat** %x, align 8
  %"$retval_150" = alloca %TName_Nat*, align 8
  %"$gasrem_947" = load i64, i64* @_gasrem, align 8
  %"$gascmp_948" = icmp ugt i64 1, %"$gasrem_947"
  br i1 %"$gascmp_948", label %"$out_of_gas_949", label %"$have_gas_950"

"$out_of_gas_949":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_950"

"$have_gas_950":                                  ; preds = %"$out_of_gas_949", %entry
  %"$consume_951" = sub i64 %"$gasrem_947", 1
  store i64 %"$consume_951", i64* @_gasrem, align 8
  %"$f_25" = alloca %TName_Nat*, align 8
  %"$f_952" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$f_fptr_953" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_952", 0
  %"$f_envptr_954" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_952", 1
  %"$x_955" = load %TName_Nat*, %TName_Nat** %x, align 8
  %"$f_call_956" = call %TName_Nat* %"$f_fptr_953"(i8* %"$f_envptr_954", %TName_Nat* %"$x_955"), !dbg !15
  store %TName_Nat* %"$f_call_956", %TName_Nat** %"$f_25", align 8, !dbg !15
  %"$$f_25_957" = load %TName_Nat*, %TName_Nat** %"$f_25", align 8
  store %TName_Nat* %"$$f_25_957", %TName_Nat** %"$retval_150", align 8, !dbg !15
  %"$$retval_150_958" = load %TName_Nat*, %TName_Nat** %"$retval_150", align 8
  ret %TName_Nat* %"$$retval_150_958"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_147"(%"$$fundef_147_env_209"* %0, %TName_Nat* %1) !dbg !16 {
entry:
  %"$$fundef_147_env_f_928" = getelementptr inbounds %"$$fundef_147_env_209", %"$$fundef_147_env_209"* %0, i32 0, i32 0
  %"$f_envload_929" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_147_env_f_928", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_929", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$retval_148" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 1, %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %entry
  %"$consume_934" = sub i64 %"$gasrem_930", 1
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %"$$fundef_149_envp_935_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_149_envp_935_salloc" = call i8* @_salloc(i8* %"$$fundef_149_envp_935_load", i64 24)
  %"$$fundef_149_envp_935" = bitcast i8* %"$$fundef_149_envp_935_salloc" to %"$$fundef_149_env_208"*
  %"$$fundef_149_env_voidp_937" = bitcast %"$$fundef_149_env_208"* %"$$fundef_149_envp_935" to i8*
  %"$$fundef_149_cloval_938" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_149_env_208"*, %TName_Nat*)* @"$fundef_149" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_149_env_voidp_937", 1
  %"$$fundef_149_env_f_939" = getelementptr inbounds %"$$fundef_149_env_208", %"$$fundef_149_env_208"* %"$$fundef_149_envp_935", i32 0, i32 0
  %"$f_940" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_940", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_149_env_f_939", align 8
  %"$$fundef_149_env_x_941" = getelementptr inbounds %"$$fundef_149_env_208", %"$$fundef_149_env_208"* %"$$fundef_149_envp_935", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_149_env_x_941", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_149_cloval_938", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_148", align 8, !dbg !17
  %"$$retval_148_942" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_148", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_148_942"
}

define internal %TName_Nat* @"$fundef_145"(%"$$fundef_145_env_210"* %0, %TName_Nat* %1) !dbg !18 {
entry:
  %"$$fundef_145_env_f_868" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %0, i32 0, i32 0
  %"$f_envload_869" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_145_env_f_868", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_869", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_145_env_n_870" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %0, i32 0, i32 1
  %"$n_envload_871" = load %TName_Nat*, %TName_Nat** %"$$fundef_145_env_n_870", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_871", %TName_Nat** %n, align 8
  %"$$fundef_145_env_nat_fold_872" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %0, i32 0, i32 2
  %"$nat_fold_envload_873" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_145_env_nat_fold_872", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_873", { i8*, i8* }** %nat_fold, align 8
  %"$retval_146" = alloca %TName_Nat*, align 8
  %"$gasrem_874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_875" = icmp ugt i64 1, %"$gasrem_874"
  br i1 %"$gascmp_875", label %"$out_of_gas_876", label %"$have_gas_877"

"$out_of_gas_876":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_877"

"$have_gas_877":                                  ; preds = %"$out_of_gas_876", %entry
  %"$consume_878" = sub i64 %"$gasrem_874", 1
  store i64 %"$consume_878", i64* @_gasrem, align 8
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_880" = icmp ugt i64 1, %"$gasrem_879"
  br i1 %"$gascmp_880", label %"$out_of_gas_881", label %"$have_gas_882"

"$out_of_gas_881":                                ; preds = %"$have_gas_877"
  call void @_out_of_gas()
  br label %"$have_gas_882"

"$have_gas_882":                                  ; preds = %"$out_of_gas_881", %"$have_gas_877"
  %"$consume_883" = sub i64 %"$gasrem_879", 1
  store i64 %"$consume_883", i64* @_gasrem, align 8
  %"$nat_fold_884" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_885" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_884", i32 2
  %"$nat_fold_886" = bitcast { i8*, i8* }* %"$nat_fold_885" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_887" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_886", align 8
  %"$nat_fold_fptr_888" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_887", 0
  %"$nat_fold_envptr_889" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_887", 1
  %"$nat_fold_call_890" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_888"(i8* %"$nat_fold_envptr_889"), !dbg !19
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_890", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8, !dbg !20
  %"$gasrem_891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_892" = icmp ugt i64 1, %"$gasrem_891"
  br i1 %"$gascmp_892", label %"$out_of_gas_893", label %"$have_gas_894"

"$out_of_gas_893":                                ; preds = %"$have_gas_882"
  call void @_out_of_gas()
  br label %"$have_gas_894"

"$have_gas_894":                                  ; preds = %"$out_of_gas_893", %"$have_gas_882"
  %"$consume_895" = sub i64 %"$gasrem_891", 1
  store i64 %"$consume_895", i64* @_gasrem, align 8
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_897" = icmp ugt i64 1, %"$gasrem_896"
  br i1 %"$gascmp_897", label %"$out_of_gas_898", label %"$have_gas_899"

"$out_of_gas_898":                                ; preds = %"$have_gas_894"
  call void @_out_of_gas()
  br label %"$have_gas_899"

"$have_gas_899":                                  ; preds = %"$out_of_gas_898", %"$have_gas_894"
  %"$consume_900" = sub i64 %"$gasrem_896", 1
  store i64 %"$consume_900", i64* @_gasrem, align 8
  %"$$fundef_147_envp_901_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_147_envp_901_salloc" = call i8* @_salloc(i8* %"$$fundef_147_envp_901_load", i64 16)
  %"$$fundef_147_envp_901" = bitcast i8* %"$$fundef_147_envp_901_salloc" to %"$$fundef_147_env_209"*
  %"$$fundef_147_env_voidp_903" = bitcast %"$$fundef_147_env_209"* %"$$fundef_147_envp_901" to i8*
  %"$$fundef_147_cloval_904" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_147_env_209"*, %TName_Nat*)* @"$fundef_147" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_147_env_voidp_903", 1
  %"$$fundef_147_env_f_905" = getelementptr inbounds %"$$fundef_147_env_209", %"$$fundef_147_env_209"* %"$$fundef_147_envp_901", i32 0, i32 0
  %"$f_906" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_906", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_147_env_f_905", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_147_cloval_904", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8, !dbg !21
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_899"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_899"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  %"$folder_26" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$folder_912" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_913" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_912", 0
  %"$folder_envptr_914" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_912", 1
  %"$step_915" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$folder_call_916" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_913"(i8* %"$folder_envptr_914", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_915"), !dbg !22
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_916", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_26", align 8, !dbg !22
  %"$folder_27" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_26_917" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_26", align 8
  %"$$folder_26_fptr_918" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_917", 0
  %"$$folder_26_envptr_919" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_917", 1
  %"$$folder_26_call_920" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_26_fptr_918"(i8* %"$$folder_26_envptr_919", %TName_Nat* %1), !dbg !22
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_26_call_920", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8, !dbg !22
  %"$folder_28" = alloca %TName_Nat*, align 8
  %"$$folder_27_921" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8
  %"$$folder_27_fptr_922" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_921", 0
  %"$$folder_27_envptr_923" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_921", 1
  %"$n_924" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_27_call_925" = call %TName_Nat* %"$$folder_27_fptr_922"(i8* %"$$folder_27_envptr_923", %TName_Nat* %"$n_924"), !dbg !22
  store %TName_Nat* %"$$folder_27_call_925", %TName_Nat** %"$folder_28", align 8, !dbg !22
  %"$$folder_28_926" = load %TName_Nat*, %TName_Nat** %"$folder_28", align 8
  store %TName_Nat* %"$$folder_28_926", %TName_Nat** %"$retval_146", align 8, !dbg !22
  %"$$retval_146_927" = load %TName_Nat*, %TName_Nat** %"$retval_146", align 8
  ret %TName_Nat* %"$$retval_146_927"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_143"(%"$$fundef_143_env_211"* %0, %TName_Nat* %1) !dbg !23 {
entry:
  %"$$fundef_143_env_f_849" = getelementptr inbounds %"$$fundef_143_env_211", %"$$fundef_143_env_211"* %0, i32 0, i32 0
  %"$f_envload_850" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_143_env_f_849", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_850", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_143_env_nat_fold_851" = getelementptr inbounds %"$$fundef_143_env_211", %"$$fundef_143_env_211"* %0, i32 0, i32 1
  %"$nat_fold_envload_852" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_143_env_nat_fold_851", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_852", { i8*, i8* }** %nat_fold, align 8
  %"$retval_144" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 1, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %entry
  %"$consume_857" = sub i64 %"$gasrem_853", 1
  store i64 %"$consume_857", i64* @_gasrem, align 8
  %"$$fundef_145_envp_858_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_145_envp_858_salloc" = call i8* @_salloc(i8* %"$$fundef_145_envp_858_load", i64 32)
  %"$$fundef_145_envp_858" = bitcast i8* %"$$fundef_145_envp_858_salloc" to %"$$fundef_145_env_210"*
  %"$$fundef_145_env_voidp_860" = bitcast %"$$fundef_145_env_210"* %"$$fundef_145_envp_858" to i8*
  %"$$fundef_145_cloval_861" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_145_env_210"*, %TName_Nat*)* @"$fundef_145" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_145_env_voidp_860", 1
  %"$$fundef_145_env_f_862" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %"$$fundef_145_envp_858", i32 0, i32 0
  %"$f_863" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_863", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_145_env_f_862", align 8
  %"$$fundef_145_env_n_864" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %"$$fundef_145_envp_858", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_145_env_n_864", align 8
  %"$$fundef_145_env_nat_fold_865" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %"$$fundef_145_envp_858", i32 0, i32 2
  %"$nat_fold_866" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_866", { i8*, i8* }** %"$$fundef_145_env_nat_fold_865", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_145_cloval_861", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_144", align 8, !dbg !24
  %"$$retval_144_867" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_144", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_144_867"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_141"(%"$$fundef_141_env_212"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !25 {
entry:
  %"$$fundef_141_env_nat_fold_834" = getelementptr inbounds %"$$fundef_141_env_212", %"$$fundef_141_env_212"* %0, i32 0, i32 0
  %"$nat_fold_envload_835" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_141_env_nat_fold_834", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_835", { i8*, i8* }** %nat_fold, align 8
  %"$retval_142" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 1, %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %entry
  %"$consume_840" = sub i64 %"$gasrem_836", 1
  store i64 %"$consume_840", i64* @_gasrem, align 8
  %"$$fundef_143_envp_841_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_143_envp_841_salloc" = call i8* @_salloc(i8* %"$$fundef_143_envp_841_load", i64 24)
  %"$$fundef_143_envp_841" = bitcast i8* %"$$fundef_143_envp_841_salloc" to %"$$fundef_143_env_211"*
  %"$$fundef_143_env_voidp_843" = bitcast %"$$fundef_143_env_211"* %"$$fundef_143_envp_841" to i8*
  %"$$fundef_143_cloval_844" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_143_env_211"*, %TName_Nat*)* @"$fundef_143" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_143_env_voidp_843", 1
  %"$$fundef_143_env_f_845" = getelementptr inbounds %"$$fundef_143_env_211", %"$$fundef_143_env_211"* %"$$fundef_143_envp_841", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_143_env_f_845", align 8
  %"$$fundef_143_env_nat_fold_846" = getelementptr inbounds %"$$fundef_143_env_211", %"$$fundef_143_env_211"* %"$$fundef_143_envp_841", i32 0, i32 1
  %"$nat_fold_847" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_847", { i8*, i8* }** %"$$fundef_143_env_nat_fold_846", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_143_cloval_844", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_142", align 8, !dbg !26
  %"$$retval_142_848" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_142", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_142_848"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_139"(%"$$fundef_139_env_213"* %0) !dbg !27 {
entry:
  %"$$fundef_139_env_nat_fold_820" = getelementptr inbounds %"$$fundef_139_env_213", %"$$fundef_139_env_213"* %0, i32 0, i32 0
  %"$nat_fold_envload_821" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_139_env_nat_fold_820", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_821", { i8*, i8* }** %nat_fold, align 8
  %"$retval_140" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_823" = icmp ugt i64 1, %"$gasrem_822"
  br i1 %"$gascmp_823", label %"$out_of_gas_824", label %"$have_gas_825"

"$out_of_gas_824":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_825"

"$have_gas_825":                                  ; preds = %"$out_of_gas_824", %entry
  %"$consume_826" = sub i64 %"$gasrem_822", 1
  store i64 %"$consume_826", i64* @_gasrem, align 8
  %"$$fundef_141_envp_827_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_141_envp_827_salloc" = call i8* @_salloc(i8* %"$$fundef_141_envp_827_load", i64 8)
  %"$$fundef_141_envp_827" = bitcast i8* %"$$fundef_141_envp_827_salloc" to %"$$fundef_141_env_212"*
  %"$$fundef_141_env_voidp_829" = bitcast %"$$fundef_141_env_212"* %"$$fundef_141_envp_827" to i8*
  %"$$fundef_141_cloval_830" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_141_env_212"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_141" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_141_env_voidp_829", 1
  %"$$fundef_141_env_nat_fold_831" = getelementptr inbounds %"$$fundef_141_env_212", %"$$fundef_141_env_212"* %"$$fundef_141_envp_827", i32 0, i32 0
  %"$nat_fold_832" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_832", { i8*, i8* }** %"$$fundef_141_env_nat_fold_831", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_141_cloval_830", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_140", align 8, !dbg !28
  %"$$retval_140_833" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_140", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_140_833"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_137"(%"$$fundef_137_env_214"* %0, %TName_Nat* %1) !dbg !29 {
entry:
  %"$$fundef_137_env_f_804" = getelementptr inbounds %"$$fundef_137_env_214", %"$$fundef_137_env_214"* %0, i32 0, i32 0
  %"$f_envload_805" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_804", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_805", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_137_env_x_806" = getelementptr inbounds %"$$fundef_137_env_214", %"$$fundef_137_env_214"* %0, i32 0, i32 1
  %"$x_envload_807" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_137_env_x_806", align 8
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_807", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$retval_138" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_809" = icmp ugt i64 1, %"$gasrem_808"
  br i1 %"$gascmp_809", label %"$out_of_gas_810", label %"$have_gas_811"

"$out_of_gas_810":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_811"

"$have_gas_811":                                  ; preds = %"$out_of_gas_810", %entry
  %"$consume_812" = sub i64 %"$gasrem_808", 1
  store i64 %"$consume_812", i64* @_gasrem, align 8
  %"$f_25" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$f_813" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$f_fptr_814" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_813", 0
  %"$f_envptr_815" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_813", 1
  %"$x_816" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$f_call_817" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_814"(i8* %"$f_envptr_815", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_816"), !dbg !30
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_817", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_25", align 8, !dbg !30
  %"$$f_25_818" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_25", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_25_818", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_138", align 8, !dbg !30
  %"$$retval_138_819" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_138", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_138_819"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_135"(%"$$fundef_135_env_215"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !31 {
entry:
  %"$$fundef_135_env_f_789" = getelementptr inbounds %"$$fundef_135_env_215", %"$$fundef_135_env_215"* %0, i32 0, i32 0
  %"$f_envload_790" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_789", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_790", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$retval_136" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_792" = icmp ugt i64 1, %"$gasrem_791"
  br i1 %"$gascmp_792", label %"$out_of_gas_793", label %"$have_gas_794"

"$out_of_gas_793":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_794"

"$have_gas_794":                                  ; preds = %"$out_of_gas_793", %entry
  %"$consume_795" = sub i64 %"$gasrem_791", 1
  store i64 %"$consume_795", i64* @_gasrem, align 8
  %"$$fundef_137_envp_796_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_137_envp_796_salloc" = call i8* @_salloc(i8* %"$$fundef_137_envp_796_load", i64 32)
  %"$$fundef_137_envp_796" = bitcast i8* %"$$fundef_137_envp_796_salloc" to %"$$fundef_137_env_214"*
  %"$$fundef_137_env_voidp_798" = bitcast %"$$fundef_137_env_214"* %"$$fundef_137_envp_796" to i8*
  %"$$fundef_137_cloval_799" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_137_env_214"*, %TName_Nat*)* @"$fundef_137" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_137_env_voidp_798", 1
  %"$$fundef_137_env_f_800" = getelementptr inbounds %"$$fundef_137_env_214", %"$$fundef_137_env_214"* %"$$fundef_137_envp_796", i32 0, i32 0
  %"$f_801" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_801", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_800", align 8
  %"$$fundef_137_env_x_802" = getelementptr inbounds %"$$fundef_137_env_214", %"$$fundef_137_env_214"* %"$$fundef_137_envp_796", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_137_env_x_802", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_137_cloval_799", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8, !dbg !32
  %"$$retval_136_803" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_136_803"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_133"(%"$$fundef_133_env_216"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !33 {
entry:
  %"$$fundef_133_env_f_729" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %0, i32 0, i32 0
  %"$f_envload_730" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_729", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_730", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_133_env_n_731" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %0, i32 0, i32 1
  %"$n_envload_732" = load %TName_Nat*, %TName_Nat** %"$$fundef_133_env_n_731", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_732", %TName_Nat** %n, align 8
  %"$$fundef_133_env_nat_fold_733" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %0, i32 0, i32 2
  %"$nat_fold_envload_734" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_133_env_nat_fold_733", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_734", { i8*, i8* }** %nat_fold, align 8
  %"$retval_134" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %entry
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_738"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %"$nat_fold_745" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_746" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_745", i32 1
  %"$nat_fold_747" = bitcast { i8*, i8* }* %"$nat_fold_746" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_748" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_747", align 8
  %"$nat_fold_fptr_749" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_748", 0
  %"$nat_fold_envptr_750" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_748", 1
  %"$nat_fold_call_751" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_749"(i8* %"$nat_fold_envptr_750"), !dbg !34
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_751", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8, !dbg !35
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 1, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_743"
  %"$consume_756" = sub i64 %"$gasrem_752", 1
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_758" = icmp ugt i64 1, %"$gasrem_757"
  br i1 %"$gascmp_758", label %"$out_of_gas_759", label %"$have_gas_760"

"$out_of_gas_759":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_760"

"$have_gas_760":                                  ; preds = %"$out_of_gas_759", %"$have_gas_755"
  %"$consume_761" = sub i64 %"$gasrem_757", 1
  store i64 %"$consume_761", i64* @_gasrem, align 8
  %"$$fundef_135_envp_762_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_135_envp_762_salloc" = call i8* @_salloc(i8* %"$$fundef_135_envp_762_load", i64 16)
  %"$$fundef_135_envp_762" = bitcast i8* %"$$fundef_135_envp_762_salloc" to %"$$fundef_135_env_215"*
  %"$$fundef_135_env_voidp_764" = bitcast %"$$fundef_135_env_215"* %"$$fundef_135_envp_762" to i8*
  %"$$fundef_135_cloval_765" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_135_env_215"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_135" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_135_env_voidp_764", 1
  %"$$fundef_135_env_f_766" = getelementptr inbounds %"$$fundef_135_env_215", %"$$fundef_135_env_215"* %"$$fundef_135_envp_762", i32 0, i32 0
  %"$f_767" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_767", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_766", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_135_cloval_765", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8, !dbg !36
  %"$gasrem_768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_769" = icmp ugt i64 1, %"$gasrem_768"
  br i1 %"$gascmp_769", label %"$out_of_gas_770", label %"$have_gas_771"

"$out_of_gas_770":                                ; preds = %"$have_gas_760"
  call void @_out_of_gas()
  br label %"$have_gas_771"

"$have_gas_771":                                  ; preds = %"$out_of_gas_770", %"$have_gas_760"
  %"$consume_772" = sub i64 %"$gasrem_768", 1
  store i64 %"$consume_772", i64* @_gasrem, align 8
  %"$folder_26" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$folder_773" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_774" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_773", 0
  %"$folder_envptr_775" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_773", 1
  %"$step_776" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$folder_call_777" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_774"(i8* %"$folder_envptr_775", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_776"), !dbg !37
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_777", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_26", align 8, !dbg !37
  %"$folder_27" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_26_778" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_26", align 8
  %"$$folder_26_fptr_779" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_26_778", 0
  %"$$folder_26_envptr_780" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_26_778", 1
  %"$$folder_26_call_781" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_fptr_779"(i8* %"$$folder_26_envptr_780", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1), !dbg !37
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_call_781", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8, !dbg !37
  %"$folder_28" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_27_782" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8
  %"$$folder_27_fptr_783" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_27_782", 0
  %"$$folder_27_envptr_784" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_27_782", 1
  %"$n_785" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_27_call_786" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_fptr_783"(i8* %"$$folder_27_envptr_784", %TName_Nat* %"$n_785"), !dbg !37
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_call_786", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_28", align 8, !dbg !37
  %"$$folder_28_787" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_28", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_28_787", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_134", align 8, !dbg !37
  %"$$retval_134_788" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_134", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_134_788"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_131"(%"$$fundef_131_env_217"* %0, %TName_Nat* %1) !dbg !38 {
entry:
  %"$$fundef_131_env_f_710" = getelementptr inbounds %"$$fundef_131_env_217", %"$$fundef_131_env_217"* %0, i32 0, i32 0
  %"$f_envload_711" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_710", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_711", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_131_env_nat_fold_712" = getelementptr inbounds %"$$fundef_131_env_217", %"$$fundef_131_env_217"* %0, i32 0, i32 1
  %"$nat_fold_envload_713" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_131_env_nat_fold_712", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_713", { i8*, i8* }** %nat_fold, align 8
  %"$retval_132" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %entry
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %"$$fundef_133_envp_719_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_133_envp_719_salloc" = call i8* @_salloc(i8* %"$$fundef_133_envp_719_load", i64 32)
  %"$$fundef_133_envp_719" = bitcast i8* %"$$fundef_133_envp_719_salloc" to %"$$fundef_133_env_216"*
  %"$$fundef_133_env_voidp_721" = bitcast %"$$fundef_133_env_216"* %"$$fundef_133_envp_719" to i8*
  %"$$fundef_133_cloval_722" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_133_env_216"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_133" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_133_env_voidp_721", 1
  %"$$fundef_133_env_f_723" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %"$$fundef_133_envp_719", i32 0, i32 0
  %"$f_724" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_724", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_723", align 8
  %"$$fundef_133_env_n_725" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %"$$fundef_133_envp_719", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_133_env_n_725", align 8
  %"$$fundef_133_env_nat_fold_726" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %"$$fundef_133_envp_719", i32 0, i32 2
  %"$nat_fold_727" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_727", { i8*, i8* }** %"$$fundef_133_env_nat_fold_726", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_133_cloval_722", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_132", align 8, !dbg !39
  %"$$retval_132_728" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_132", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_132_728"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_129"(%"$$fundef_129_env_218"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !40 {
entry:
  %"$$fundef_129_env_nat_fold_695" = getelementptr inbounds %"$$fundef_129_env_218", %"$$fundef_129_env_218"* %0, i32 0, i32 0
  %"$nat_fold_envload_696" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_129_env_nat_fold_695", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_696", { i8*, i8* }** %nat_fold, align 8
  %"$retval_130" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 1, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %entry
  %"$consume_701" = sub i64 %"$gasrem_697", 1
  store i64 %"$consume_701", i64* @_gasrem, align 8
  %"$$fundef_131_envp_702_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_131_envp_702_salloc" = call i8* @_salloc(i8* %"$$fundef_131_envp_702_load", i64 24)
  %"$$fundef_131_envp_702" = bitcast i8* %"$$fundef_131_envp_702_salloc" to %"$$fundef_131_env_217"*
  %"$$fundef_131_env_voidp_704" = bitcast %"$$fundef_131_env_217"* %"$$fundef_131_envp_702" to i8*
  %"$$fundef_131_cloval_705" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_131_env_217"*, %TName_Nat*)* @"$fundef_131" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_131_env_voidp_704", 1
  %"$$fundef_131_env_f_706" = getelementptr inbounds %"$$fundef_131_env_217", %"$$fundef_131_env_217"* %"$$fundef_131_envp_702", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_706", align 8
  %"$$fundef_131_env_nat_fold_707" = getelementptr inbounds %"$$fundef_131_env_217", %"$$fundef_131_env_217"* %"$$fundef_131_envp_702", i32 0, i32 1
  %"$nat_fold_708" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_708", { i8*, i8* }** %"$$fundef_131_env_nat_fold_707", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_131_cloval_705", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8, !dbg !41
  %"$$retval_130_709" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_130_709"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_127"(%"$$fundef_127_env_219"* %0) !dbg !42 {
entry:
  %"$$fundef_127_env_nat_fold_681" = getelementptr inbounds %"$$fundef_127_env_219", %"$$fundef_127_env_219"* %0, i32 0, i32 0
  %"$nat_fold_envload_682" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_127_env_nat_fold_681", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_682", { i8*, i8* }** %nat_fold, align 8
  %"$retval_128" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_684" = icmp ugt i64 1, %"$gasrem_683"
  br i1 %"$gascmp_684", label %"$out_of_gas_685", label %"$have_gas_686"

"$out_of_gas_685":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_686"

"$have_gas_686":                                  ; preds = %"$out_of_gas_685", %entry
  %"$consume_687" = sub i64 %"$gasrem_683", 1
  store i64 %"$consume_687", i64* @_gasrem, align 8
  %"$$fundef_129_envp_688_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_129_envp_688_salloc" = call i8* @_salloc(i8* %"$$fundef_129_envp_688_load", i64 8)
  %"$$fundef_129_envp_688" = bitcast i8* %"$$fundef_129_envp_688_salloc" to %"$$fundef_129_env_218"*
  %"$$fundef_129_env_voidp_690" = bitcast %"$$fundef_129_env_218"* %"$$fundef_129_envp_688" to i8*
  %"$$fundef_129_cloval_691" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_129_env_218"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_129" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_129_env_voidp_690", 1
  %"$$fundef_129_env_nat_fold_692" = getelementptr inbounds %"$$fundef_129_env_218", %"$$fundef_129_env_218"* %"$$fundef_129_envp_688", i32 0, i32 0
  %"$nat_fold_693" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_693", { i8*, i8* }** %"$$fundef_129_env_nat_fold_692", align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_129_cloval_691", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128", align 8, !dbg !43
  %"$$retval_128_694" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_128_694"
}

define internal %TName_Nat* @"$fundef_125"(%"$$fundef_125_env_220"* %0, %TName_Nat* %1) !dbg !44 {
entry:
  %"$retval_126" = alloca %TName_Nat*, align 8
  %"$gasrem_671" = load i64, i64* @_gasrem, align 8
  %"$gascmp_672" = icmp ugt i64 1, %"$gasrem_671"
  br i1 %"$gascmp_672", label %"$out_of_gas_673", label %"$have_gas_674"

"$out_of_gas_673":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_674"

"$have_gas_674":                                  ; preds = %"$out_of_gas_673", %entry
  %"$consume_675" = sub i64 %"$gasrem_671", 1
  store i64 %"$consume_675", i64* @_gasrem, align 8
  %"$adtval_676_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_676_salloc" = call i8* @_salloc(i8* %"$adtval_676_load", i64 9)
  %"$adtval_676" = bitcast i8* %"$adtval_676_salloc" to %CName_Succ*
  %"$adtgep_677" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_676", i32 0, i32 0
  store i8 1, i8* %"$adtgep_677", align 1
  %"$adtgep_678" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_676", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_678", align 8
  %"$adtptr_679" = bitcast %CName_Succ* %"$adtval_676" to %TName_Nat*
  store %TName_Nat* %"$adtptr_679", %TName_Nat** %"$retval_126", align 8, !dbg !45
  %"$$retval_126_680" = load %TName_Nat*, %TName_Nat** %"$retval_126", align 8
  ret %TName_Nat* %"$$retval_126_680"
}

define internal %Uint32 @"$fundef_122"(%"$$fundef_122_env_221"* %0, %TName_Nat* %1) !dbg !46 {
entry:
  %"$$fundef_122_env_one_int_663" = getelementptr inbounds %"$$fundef_122_env_221", %"$$fundef_122_env_221"* %0, i32 0, i32 0
  %"$one_int_envload_664" = load %Uint32, %Uint32* %"$$fundef_122_env_one_int_663", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_664", %Uint32* %one_int, align 4
  %"$$fundef_122_env_z_665" = getelementptr inbounds %"$$fundef_122_env_221", %"$$fundef_122_env_221"* %0, i32 0, i32 1
  %"$z_envload_666" = load %Uint32, %Uint32* %"$$fundef_122_env_z_665", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_666", %Uint32* %z, align 4
  %"$retval_123" = alloca %Uint32, align 8
  %"$z_667" = load %Uint32, %Uint32* %z, align 4
  %"$one_int_668" = load %Uint32, %Uint32* %one_int, align 4
  %"$add_call_669" = call %Uint32 @_add_Uint32(%Uint32 %"$z_667", %Uint32 %"$one_int_668"), !dbg !48
  store %Uint32 %"$add_call_669", %Uint32* %"$retval_123", align 4, !dbg !48
  %"$$retval_123_670" = load %Uint32, %Uint32* %"$retval_123", align 4
  ret %Uint32 %"$$retval_123_670"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_120"(%"$$fundef_120_env_222"* %0, %Uint32 %1) !dbg !49 {
entry:
  %"$$fundef_120_env_one_int_648" = getelementptr inbounds %"$$fundef_120_env_222", %"$$fundef_120_env_222"* %0, i32 0, i32 0
  %"$one_int_envload_649" = load %Uint32, %Uint32* %"$$fundef_120_env_one_int_648", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_649", %Uint32* %one_int, align 4
  %"$retval_121" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 1, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %entry
  %"$consume_654" = sub i64 %"$gasrem_650", 1
  store i64 %"$consume_654", i64* @_gasrem, align 8
  %"$$fundef_122_envp_655_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_122_envp_655_salloc" = call i8* @_salloc(i8* %"$$fundef_122_envp_655_load", i64 8)
  %"$$fundef_122_envp_655" = bitcast i8* %"$$fundef_122_envp_655_salloc" to %"$$fundef_122_env_221"*
  %"$$fundef_122_env_voidp_657" = bitcast %"$$fundef_122_env_221"* %"$$fundef_122_envp_655" to i8*
  %"$$fundef_122_cloval_658" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_122_env_221"*, %TName_Nat*)* @"$fundef_122" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_122_env_voidp_657", 1
  %"$$fundef_122_env_one_int_659" = getelementptr inbounds %"$$fundef_122_env_221", %"$$fundef_122_env_221"* %"$$fundef_122_envp_655", i32 0, i32 0
  %"$one_int_660" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_660", %Uint32* %"$$fundef_122_env_one_int_659", align 4
  %"$$fundef_122_env_z_661" = getelementptr inbounds %"$$fundef_122_env_221", %"$$fundef_122_env_221"* %"$$fundef_122_envp_655", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_122_env_z_661", align 4
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_122_cloval_658", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_121", align 8, !dbg !50
  %"$$retval_121_662" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_121", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_121_662"
}

define internal %Uint32 @"$fundef_118"(%"$$fundef_118_env_223"* %0, %TName_Nat* %1) !dbg !51 {
entry:
  %"$$fundef_118_env_nat_fold_572" = getelementptr inbounds %"$$fundef_118_env_223", %"$$fundef_118_env_223"* %0, i32 0, i32 0
  %"$nat_fold_envload_573" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_118_env_nat_fold_572", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_573", { i8*, i8* }** %nat_fold, align 8
  %"$retval_119" = alloca %Uint32, align 8
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 1, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %entry
  %"$consume_578" = sub i64 %"$gasrem_574", 1
  store i64 %"$consume_578", i64* @_gasrem, align 8
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_580" = icmp ugt i64 1, %"$gasrem_579"
  br i1 %"$gascmp_580", label %"$out_of_gas_581", label %"$have_gas_582"

"$out_of_gas_581":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_582"

"$have_gas_582":                                  ; preds = %"$out_of_gas_581", %"$have_gas_577"
  %"$consume_583" = sub i64 %"$gasrem_579", 1
  store i64 %"$consume_583", i64* @_gasrem, align 8
  %"$nat_fold_584" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_585" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_584", i32 0
  %"$nat_fold_586" = bitcast { i8*, i8* }* %"$nat_fold_585" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_587" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_586", align 8
  %"$nat_fold_fptr_588" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_587", 0
  %"$nat_fold_envptr_589" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_587", 1
  %"$nat_fold_call_590" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_fptr_588"(i8* %"$nat_fold_envptr_589"), !dbg !52
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_call_590", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8, !dbg !53
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_582"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_582"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %one_int = alloca %Uint32, align 8
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 1, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_594"
  %"$consume_600" = sub i64 %"$gasrem_596", 1
  store i64 %"$consume_600", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one_int, align 4, !dbg !54
  %"$gasrem_601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_602" = icmp ugt i64 1, %"$gasrem_601"
  br i1 %"$gascmp_602", label %"$out_of_gas_603", label %"$have_gas_604"

"$out_of_gas_603":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_604"

"$have_gas_604":                                  ; preds = %"$out_of_gas_603", %"$have_gas_599"
  %"$consume_605" = sub i64 %"$gasrem_601", 1
  store i64 %"$consume_605", i64* @_gasrem, align 8
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 1, %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %"$have_gas_604"
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %"$have_gas_604"
  %"$consume_610" = sub i64 %"$gasrem_606", 1
  store i64 %"$consume_610", i64* @_gasrem, align 8
  %"$$fundef_120_envp_611_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_120_envp_611_salloc" = call i8* @_salloc(i8* %"$$fundef_120_envp_611_load", i64 4)
  %"$$fundef_120_envp_611" = bitcast i8* %"$$fundef_120_envp_611_salloc" to %"$$fundef_120_env_222"*
  %"$$fundef_120_env_voidp_613" = bitcast %"$$fundef_120_env_222"* %"$$fundef_120_envp_611" to i8*
  %"$$fundef_120_cloval_614" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_120_env_222"*, %Uint32)* @"$fundef_120" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_120_env_voidp_613", 1
  %"$$fundef_120_env_one_int_615" = getelementptr inbounds %"$$fundef_120_env_222", %"$$fundef_120_env_222"* %"$$fundef_120_envp_611", i32 0, i32 0
  %"$one_int_616" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_616", %Uint32* %"$$fundef_120_env_one_int_615", align 4
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_120_cloval_614", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8, !dbg !55
  %"$gasrem_617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_618" = icmp ugt i64 1, %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %"$have_gas_609"
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %"$have_gas_609"
  %"$consume_621" = sub i64 %"$gasrem_617", 1
  store i64 %"$consume_621", i64* @_gasrem, align 8
  %zero_int = alloca %Uint32, align 8
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %"$have_gas_620"
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %"$have_gas_620"
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero_int, align 4, !dbg !56
  %"$gasrem_627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_628" = icmp ugt i64 1, %"$gasrem_627"
  br i1 %"$gascmp_628", label %"$out_of_gas_629", label %"$have_gas_630"

"$out_of_gas_629":                                ; preds = %"$have_gas_625"
  call void @_out_of_gas()
  br label %"$have_gas_630"

"$have_gas_630":                                  ; preds = %"$out_of_gas_629", %"$have_gas_625"
  %"$consume_631" = sub i64 %"$gasrem_627", 1
  store i64 %"$consume_631", i64* @_gasrem, align 8
  %"$fold_22" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$fold_632" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$fold_fptr_633" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_632", 0
  %"$fold_envptr_634" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_632", 1
  %"$f_635" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$fold_call_636" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_633"(i8* %"$fold_envptr_634", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_635"), !dbg !57
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_636", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_22", align 8, !dbg !57
  %"$fold_23" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fold_22_637" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_22", align 8
  %"$$fold_22_fptr_638" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_22_637", 0
  %"$$fold_22_envptr_639" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_22_637", 1
  %"$zero_int_640" = load %Uint32, %Uint32* %zero_int, align 4
  %"$$fold_22_call_641" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_22_fptr_638"(i8* %"$$fold_22_envptr_639", %Uint32 %"$zero_int_640"), !dbg !57
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_22_call_641", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_23", align 8, !dbg !57
  %"$fold_24" = alloca %Uint32, align 8
  %"$$fold_23_642" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_23", align 8
  %"$$fold_23_fptr_643" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_23_642", 0
  %"$$fold_23_envptr_644" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_23_642", 1
  %"$$fold_23_call_645" = call %Uint32 %"$$fold_23_fptr_643"(i8* %"$$fold_23_envptr_644", %TName_Nat* %1), !dbg !57
  store %Uint32 %"$$fold_23_call_645", %Uint32* %"$fold_24", align 4, !dbg !57
  %"$$fold_24_646" = load %Uint32, %Uint32* %"$fold_24", align 4
  store %Uint32 %"$$fold_24_646", %Uint32* %"$retval_119", align 4, !dbg !57
  %"$$retval_119_647" = load %Uint32, %Uint32* %"$retval_119", align 4
  ret %Uint32 %"$$retval_119_647"
}

define internal %TName_Nat* @"$fundef_116"(%"$$fundef_116_env_224"* %0, %TName_Nat* %1) !dbg !58 {
entry:
  %"$$fundef_116_env_f0_507" = getelementptr inbounds %"$$fundef_116_env_224", %"$$fundef_116_env_224"* %0, i32 0, i32 0
  %"$f0_envload_508" = load %TName_Nat*, %TName_Nat** %"$$fundef_116_env_f0_507", align 8
  %f0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$f0_envload_508", %TName_Nat** %f0, align 8
  %"$$fundef_116_env_fn_509" = getelementptr inbounds %"$$fundef_116_env_224", %"$$fundef_116_env_224"* %0, i32 0, i32 1
  %"$fn_envload_510" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_fn_509", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_510", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_116_env_g_511" = getelementptr inbounds %"$$fundef_116_env_224", %"$$fundef_116_env_224"* %0, i32 0, i32 2
  %"$g_envload_512" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_g_511", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_512", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_117" = alloca %TName_Nat*, align 8
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 2, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %entry
  %"$consume_517" = sub i64 %"$gasrem_513", 2
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$n_tag_519" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_520" = load i8, i8* %"$n_tag_519", align 1
  switch i8 %"$n_tag_520", label %"$empty_default_521" [
    i8 1, label %"$Succ_522"
    i8 0, label %"$Zero_563"
  ], !dbg !60

"$Succ_522":                                      ; preds = %"$have_gas_516"
  %"$n_523" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_524" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_523", i32 0, i32 1
  %"$n1_load_525" = load %TName_Nat*, %TName_Nat** %"$n1_gep_524", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_525", %TName_Nat** %n1, align 8
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$Succ_522"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$Succ_522"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %res = alloca %TName_Nat*, align 8
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_529"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$fn_18" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_536" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$fn_fptr_537" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_536", 0
  %"$fn_envptr_538" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_536", 1
  %"$f0_539" = load %TName_Nat*, %TName_Nat** %f0, align 8
  %"$fn_call_540" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_537"(i8* %"$fn_envptr_538", %TName_Nat* %"$f0_539"), !dbg !61
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_540", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8, !dbg !61
  %"$fn_19" = alloca %TName_Nat*, align 8
  %"$$fn_18_541" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8
  %"$$fn_18_fptr_542" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_541", 0
  %"$$fn_18_envptr_543" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_541", 1
  %"$n1_544" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_18_call_545" = call %TName_Nat* %"$$fn_18_fptr_542"(i8* %"$$fn_18_envptr_543", %TName_Nat* %"$n1_544"), !dbg !61
  store %TName_Nat* %"$$fn_18_call_545", %TName_Nat** %"$fn_19", align 8, !dbg !61
  %"$$fn_19_546" = load %TName_Nat*, %TName_Nat** %"$fn_19", align 8
  store %TName_Nat* %"$$fn_19_546", %TName_Nat** %res, align 8, !dbg !61
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_534"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$g_20" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_552" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$g_fptr_553" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_552", 0
  %"$g_envptr_554" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_552", 1
  %"$res_555" = load %TName_Nat*, %TName_Nat** %res, align 8
  %"$g_call_556" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_553"(i8* %"$g_envptr_554", %TName_Nat* %"$res_555"), !dbg !64
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_556", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8, !dbg !64
  %"$g_21" = alloca %TName_Nat*, align 8
  %"$$g_20_557" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8
  %"$$g_20_fptr_558" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_557", 0
  %"$$g_20_envptr_559" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_557", 1
  %"$n1_560" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_20_call_561" = call %TName_Nat* %"$$g_20_fptr_558"(i8* %"$$g_20_envptr_559", %TName_Nat* %"$n1_560"), !dbg !64
  store %TName_Nat* %"$$g_20_call_561", %TName_Nat** %"$g_21", align 8, !dbg !64
  %"$$g_21_562" = load %TName_Nat*, %TName_Nat** %"$g_21", align 8
  store %TName_Nat* %"$$g_21_562", %TName_Nat** %"$retval_117", align 8, !dbg !64
  br label %"$matchsucc_518"

"$Zero_563":                                      ; preds = %"$have_gas_516"
  %"$n_564" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 1, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %"$Zero_563"
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %"$Zero_563"
  %"$consume_569" = sub i64 %"$gasrem_565", 1
  store i64 %"$consume_569", i64* @_gasrem, align 8
  %"$f0_570" = load %TName_Nat*, %TName_Nat** %f0, align 8
  store %TName_Nat* %"$f0_570", %TName_Nat** %"$retval_117", align 8, !dbg !65
  br label %"$matchsucc_518"

"$empty_default_521":                             ; preds = %"$have_gas_516"
  br label %"$matchsucc_518"

"$matchsucc_518":                                 ; preds = %"$have_gas_568", %"$have_gas_550", %"$empty_default_521"
  %"$$retval_117_571" = load %TName_Nat*, %TName_Nat** %"$retval_117", align 8
  ret %TName_Nat* %"$$retval_117_571"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_114"(%"$$fundef_114_env_225"* %0, %TName_Nat* %1) !dbg !67 {
entry:
  %"$$fundef_114_env_fn_488" = getelementptr inbounds %"$$fundef_114_env_225", %"$$fundef_114_env_225"* %0, i32 0, i32 0
  %"$fn_envload_489" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_fn_488", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_489", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_114_env_g_490" = getelementptr inbounds %"$$fundef_114_env_225", %"$$fundef_114_env_225"* %0, i32 0, i32 1
  %"$g_envload_491" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_g_490", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_491", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_115" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 1, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %entry
  %"$consume_496" = sub i64 %"$gasrem_492", 1
  store i64 %"$consume_496", i64* @_gasrem, align 8
  %"$$fundef_116_envp_497_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_116_envp_497_salloc" = call i8* @_salloc(i8* %"$$fundef_116_envp_497_load", i64 40)
  %"$$fundef_116_envp_497" = bitcast i8* %"$$fundef_116_envp_497_salloc" to %"$$fundef_116_env_224"*
  %"$$fundef_116_env_voidp_499" = bitcast %"$$fundef_116_env_224"* %"$$fundef_116_envp_497" to i8*
  %"$$fundef_116_cloval_500" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_116_env_224"*, %TName_Nat*)* @"$fundef_116" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_116_env_voidp_499", 1
  %"$$fundef_116_env_f0_501" = getelementptr inbounds %"$$fundef_116_env_224", %"$$fundef_116_env_224"* %"$$fundef_116_envp_497", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_116_env_f0_501", align 8
  %"$$fundef_116_env_fn_502" = getelementptr inbounds %"$$fundef_116_env_224", %"$$fundef_116_env_224"* %"$$fundef_116_envp_497", i32 0, i32 1
  %"$fn_503" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_503", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_fn_502", align 8
  %"$$fundef_116_env_g_504" = getelementptr inbounds %"$$fundef_116_env_224", %"$$fundef_116_env_224"* %"$$fundef_116_envp_497", i32 0, i32 2
  %"$g_505" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_505", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_g_504", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_116_cloval_500", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_115", align 8, !dbg !68
  %"$$retval_115_506" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_115", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_115_506"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_112"(%"$$fundef_112_env_226"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) !dbg !69 {
entry:
  %"$retval_113" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %entry
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$gasrem_474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_475" = icmp ugt i64 1, %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %"$have_gas_472"
  %"$consume_478" = sub i64 %"$gasrem_474", 1
  store i64 %"$consume_478", i64* @_gasrem, align 8
  %"$$fundef_114_envp_479_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_114_envp_479_salloc" = call i8* @_salloc(i8* %"$$fundef_114_envp_479_load", i64 32)
  %"$$fundef_114_envp_479" = bitcast i8* %"$$fundef_114_envp_479_salloc" to %"$$fundef_114_env_225"*
  %"$$fundef_114_env_voidp_481" = bitcast %"$$fundef_114_env_225"* %"$$fundef_114_envp_479" to i8*
  %"$$fundef_114_cloval_482" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_114_env_225"*, %TName_Nat*)* @"$fundef_114" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_114_env_voidp_481", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_114_cloval_482", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8, !dbg !70
  %"$$fundef_114_env_fn_483" = getelementptr inbounds %"$$fundef_114_env_225", %"$$fundef_114_env_225"* %"$$fundef_114_envp_479", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_fn_483", align 8
  %"$$fundef_114_env_g_484" = getelementptr inbounds %"$$fundef_114_env_225", %"$$fundef_114_env_225"* %"$$fundef_114_envp_479", i32 0, i32 1
  %"$g_485" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_485", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_g_484", align 8
  %"$g_486" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_486", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_113", align 8, !dbg !70
  %"$$retval_113_487" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_113", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_113_487"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_110"(%"$$fundef_110_env_227"* %0) !dbg !71 {
entry:
  %"$retval_111" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %entry
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_112_env_226"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_112" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_111", align 8, !dbg !72
  %"$$retval_111_468" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_111", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_111_468"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_108"(%"$$fundef_108_env_228"* %0, %TName_Nat* %1) !dbg !73 {
entry:
  %"$$fundef_108_env_f0_395" = getelementptr inbounds %"$$fundef_108_env_228", %"$$fundef_108_env_228"* %0, i32 0, i32 0
  %"$f0_envload_396" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_108_env_f0_395", align 8
  %f0 = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_envload_396", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$$fundef_108_env_fn_397" = getelementptr inbounds %"$$fundef_108_env_228", %"$$fundef_108_env_228"* %0, i32 0, i32 1
  %"$fn_envload_398" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_fn_397", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_398", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_108_env_g_399" = getelementptr inbounds %"$$fundef_108_env_228", %"$$fundef_108_env_228"* %0, i32 0, i32 2
  %"$g_envload_400" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_g_399", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_400", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_109" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 2, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %entry
  %"$consume_405" = sub i64 %"$gasrem_401", 2
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %"$n_tag_407" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_408" = load i8, i8* %"$n_tag_407", align 1
  switch i8 %"$n_tag_408", label %"$empty_default_409" [
    i8 1, label %"$Succ_410"
    i8 0, label %"$Zero_451"
  ], !dbg !74

"$Succ_410":                                      ; preds = %"$have_gas_404"
  %"$n_411" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_412" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_411", i32 0, i32 1
  %"$n1_load_413" = load %TName_Nat*, %TName_Nat** %"$n1_gep_412", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_413", %TName_Nat** %n1, align 8
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$Succ_410"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$Succ_410"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %res = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$fn_18" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_424" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$fn_fptr_425" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_424", 0
  %"$fn_envptr_426" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_424", 1
  %"$f0_427" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$fn_call_428" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_425"(i8* %"$fn_envptr_426", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_427"), !dbg !75
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_428", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8, !dbg !75
  %"$fn_19" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fn_18_429" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8
  %"$$fn_18_fptr_430" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_18_429", 0
  %"$$fn_18_envptr_431" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_18_429", 1
  %"$n1_432" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_18_call_433" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_fptr_430"(i8* %"$$fn_18_envptr_431", %TName_Nat* %"$n1_432"), !dbg !75
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_call_433", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_19", align 8, !dbg !75
  %"$$fn_19_434" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_19", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_19_434", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8, !dbg !75
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_422"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %"$g_20" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_440" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$g_fptr_441" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_440", 0
  %"$g_envptr_442" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_440", 1
  %"$res_443" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8
  %"$g_call_444" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_441"(i8* %"$g_envptr_442", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_443"), !dbg !78
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_444", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8, !dbg !78
  %"$g_21" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$g_20_445" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8
  %"$$g_20_fptr_446" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_20_445", 0
  %"$$g_20_envptr_447" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_20_445", 1
  %"$n1_448" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_20_call_449" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_fptr_446"(i8* %"$$g_20_envptr_447", %TName_Nat* %"$n1_448"), !dbg !78
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_call_449", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_21", align 8, !dbg !78
  %"$$g_21_450" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_21", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_21_450", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109", align 8, !dbg !78
  br label %"$matchsucc_406"

"$Zero_451":                                      ; preds = %"$have_gas_404"
  %"$n_452" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$Zero_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$Zero_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$f0_458" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_458", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109", align 8, !dbg !79
  br label %"$matchsucc_406"

"$empty_default_409":                             ; preds = %"$have_gas_404"
  br label %"$matchsucc_406"

"$matchsucc_406":                                 ; preds = %"$have_gas_456", %"$have_gas_438", %"$empty_default_409"
  %"$$retval_109_459" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_109_459"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_106"(%"$$fundef_106_env_229"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !81 {
entry:
  %"$$fundef_106_env_fn_376" = getelementptr inbounds %"$$fundef_106_env_229", %"$$fundef_106_env_229"* %0, i32 0, i32 0
  %"$fn_envload_377" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_fn_376", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_377", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_106_env_g_378" = getelementptr inbounds %"$$fundef_106_env_229", %"$$fundef_106_env_229"* %0, i32 0, i32 1
  %"$g_envload_379" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_g_378", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_379", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_107" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %entry
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$$fundef_108_envp_385_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_108_envp_385_salloc" = call i8* @_salloc(i8* %"$$fundef_108_envp_385_load", i64 48)
  %"$$fundef_108_envp_385" = bitcast i8* %"$$fundef_108_envp_385_salloc" to %"$$fundef_108_env_228"*
  %"$$fundef_108_env_voidp_387" = bitcast %"$$fundef_108_env_228"* %"$$fundef_108_envp_385" to i8*
  %"$$fundef_108_cloval_388" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_108_env_228"*, %TName_Nat*)* @"$fundef_108" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_108_env_voidp_387", 1
  %"$$fundef_108_env_f0_389" = getelementptr inbounds %"$$fundef_108_env_228", %"$$fundef_108_env_228"* %"$$fundef_108_envp_385", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_108_env_f0_389", align 8
  %"$$fundef_108_env_fn_390" = getelementptr inbounds %"$$fundef_108_env_228", %"$$fundef_108_env_228"* %"$$fundef_108_envp_385", i32 0, i32 1
  %"$fn_391" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_391", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_fn_390", align 8
  %"$$fundef_108_env_g_392" = getelementptr inbounds %"$$fundef_108_env_228", %"$$fundef_108_env_228"* %"$$fundef_108_envp_385", i32 0, i32 2
  %"$g_393" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_393", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_g_392", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_108_cloval_388", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_107", align 8, !dbg !82
  %"$$retval_107_394" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_107", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_107_394"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_104"(%"$$fundef_104_env_230"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !83 {
entry:
  %"$retval_105" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_358" = icmp ugt i64 1, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %entry
  %"$consume_361" = sub i64 %"$gasrem_357", 1
  store i64 %"$consume_361", i64* @_gasrem, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_360"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_360"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$$fundef_106_envp_367_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_106_envp_367_salloc" = call i8* @_salloc(i8* %"$$fundef_106_envp_367_load", i64 32)
  %"$$fundef_106_envp_367" = bitcast i8* %"$$fundef_106_envp_367_salloc" to %"$$fundef_106_env_229"*
  %"$$fundef_106_env_voidp_369" = bitcast %"$$fundef_106_env_229"* %"$$fundef_106_envp_367" to i8*
  %"$$fundef_106_cloval_370" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_106_env_229"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_106" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_106_env_voidp_369", 1
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_106_cloval_370", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8, !dbg !84
  %"$$fundef_106_env_fn_371" = getelementptr inbounds %"$$fundef_106_env_229", %"$$fundef_106_env_229"* %"$$fundef_106_envp_367", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_fn_371", align 8
  %"$$fundef_106_env_g_372" = getelementptr inbounds %"$$fundef_106_env_229", %"$$fundef_106_env_229"* %"$$fundef_106_envp_367", i32 0, i32 1
  %"$g_373" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_373", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_g_372", align 8
  %"$g_374" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_374", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_105", align 8, !dbg !84
  %"$$retval_105_375" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_105", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_105_375"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_102"(%"$$fundef_102_env_231"* %0) !dbg !85 {
entry:
  %"$retval_103" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %entry
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_104_env_230"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_104" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_103", align 8, !dbg !86
  %"$$retval_103_356" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_103", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_103_356"
}

define internal %Uint32 @"$fundef_100"(%"$$fundef_100_env_232"* %0, %TName_Nat* %1) !dbg !87 {
entry:
  %"$$fundef_100_env_f0_283" = getelementptr inbounds %"$$fundef_100_env_232", %"$$fundef_100_env_232"* %0, i32 0, i32 0
  %"$f0_envload_284" = load %Uint32, %Uint32* %"$$fundef_100_env_f0_283", align 4
  %f0 = alloca %Uint32, align 8
  store %Uint32 %"$f0_envload_284", %Uint32* %f0, align 4
  %"$$fundef_100_env_fn_285" = getelementptr inbounds %"$$fundef_100_env_232", %"$$fundef_100_env_232"* %0, i32 0, i32 1
  %"$fn_envload_286" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_fn_285", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_286", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_100_env_g_287" = getelementptr inbounds %"$$fundef_100_env_232", %"$$fundef_100_env_232"* %0, i32 0, i32 2
  %"$g_envload_288" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_g_287", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_288", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_101" = alloca %Uint32, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 2, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %entry
  %"$consume_293" = sub i64 %"$gasrem_289", 2
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$n_tag_295" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_296" = load i8, i8* %"$n_tag_295", align 1
  switch i8 %"$n_tag_296", label %"$empty_default_297" [
    i8 1, label %"$Succ_298"
    i8 0, label %"$Zero_339"
  ], !dbg !88

"$Succ_298":                                      ; preds = %"$have_gas_292"
  %"$n_299" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_300" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_299", i32 0, i32 1
  %"$n1_load_301" = load %TName_Nat*, %TName_Nat** %"$n1_gep_300", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_301", %TName_Nat** %n1, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$Succ_298"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$Succ_298"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$fn_18" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_312" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$fn_fptr_313" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_312", 0
  %"$fn_envptr_314" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_312", 1
  %"$f0_315" = load %Uint32, %Uint32* %f0, align 4
  %"$fn_call_316" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_313"(i8* %"$fn_envptr_314", %Uint32 %"$f0_315"), !dbg !89
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_316", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8, !dbg !89
  %"$fn_19" = alloca %Uint32, align 8
  %"$$fn_18_317" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_18", align 8
  %"$$fn_18_fptr_318" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_18_317", 0
  %"$$fn_18_envptr_319" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_18_317", 1
  %"$n1_320" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_18_call_321" = call %Uint32 %"$$fn_18_fptr_318"(i8* %"$$fn_18_envptr_319", %TName_Nat* %"$n1_320"), !dbg !89
  store %Uint32 %"$$fn_18_call_321", %Uint32* %"$fn_19", align 4, !dbg !89
  %"$$fn_19_322" = load %Uint32, %Uint32* %"$fn_19", align 4
  store %Uint32 %"$$fn_19_322", %Uint32* %res, align 4, !dbg !89
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_310"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %"$g_20" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_328" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_329" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_328", 0
  %"$g_envptr_330" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_328", 1
  %"$res_331" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_332" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_329"(i8* %"$g_envptr_330", %Uint32 %"$res_331"), !dbg !92
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_332", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8, !dbg !92
  %"$g_21" = alloca %Uint32, align 8
  %"$$g_20_333" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_20", align 8
  %"$$g_20_fptr_334" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_20_333", 0
  %"$$g_20_envptr_335" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_20_333", 1
  %"$n1_336" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_20_call_337" = call %Uint32 %"$$g_20_fptr_334"(i8* %"$$g_20_envptr_335", %TName_Nat* %"$n1_336"), !dbg !92
  store %Uint32 %"$$g_20_call_337", %Uint32* %"$g_21", align 4, !dbg !92
  %"$$g_21_338" = load %Uint32, %Uint32* %"$g_21", align 4
  store %Uint32 %"$$g_21_338", %Uint32* %"$retval_101", align 4, !dbg !92
  br label %"$matchsucc_294"

"$Zero_339":                                      ; preds = %"$have_gas_292"
  %"$n_340" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$Zero_339"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$Zero_339"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %"$f0_346" = load %Uint32, %Uint32* %f0, align 4
  store %Uint32 %"$f0_346", %Uint32* %"$retval_101", align 4, !dbg !93
  br label %"$matchsucc_294"

"$empty_default_297":                             ; preds = %"$have_gas_292"
  br label %"$matchsucc_294"

"$matchsucc_294":                                 ; preds = %"$have_gas_344", %"$have_gas_326", %"$empty_default_297"
  %"$$retval_101_347" = load %Uint32, %Uint32* %"$retval_101", align 4
  ret %Uint32 %"$$retval_101_347"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_98"(%"$$fundef_98_env_233"* %0, %Uint32 %1) !dbg !95 {
entry:
  %"$$fundef_98_env_fn_264" = getelementptr inbounds %"$$fundef_98_env_233", %"$$fundef_98_env_233"* %0, i32 0, i32 0
  %"$fn_envload_265" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_fn_264", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_265", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_98_env_g_266" = getelementptr inbounds %"$$fundef_98_env_233", %"$$fundef_98_env_233"* %0, i32 0, i32 1
  %"$g_envload_267" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_g_266", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_267", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_99" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_269" = icmp ugt i64 1, %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %entry
  %"$consume_272" = sub i64 %"$gasrem_268", 1
  store i64 %"$consume_272", i64* @_gasrem, align 8
  %"$$fundef_100_envp_273_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_100_envp_273_salloc" = call i8* @_salloc(i8* %"$$fundef_100_envp_273_load", i64 40)
  %"$$fundef_100_envp_273" = bitcast i8* %"$$fundef_100_envp_273_salloc" to %"$$fundef_100_env_232"*
  %"$$fundef_100_env_voidp_275" = bitcast %"$$fundef_100_env_232"* %"$$fundef_100_envp_273" to i8*
  %"$$fundef_100_cloval_276" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_100_env_232"*, %TName_Nat*)* @"$fundef_100" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_100_env_voidp_275", 1
  %"$$fundef_100_env_f0_277" = getelementptr inbounds %"$$fundef_100_env_232", %"$$fundef_100_env_232"* %"$$fundef_100_envp_273", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_100_env_f0_277", align 4
  %"$$fundef_100_env_fn_278" = getelementptr inbounds %"$$fundef_100_env_232", %"$$fundef_100_env_232"* %"$$fundef_100_envp_273", i32 0, i32 1
  %"$fn_279" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_279", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_fn_278", align 8
  %"$$fundef_100_env_g_280" = getelementptr inbounds %"$$fundef_100_env_232", %"$$fundef_100_env_232"* %"$$fundef_100_envp_273", i32 0, i32 2
  %"$g_281" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_281", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_g_280", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_100_cloval_276", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_99", align 8, !dbg !96
  %"$$retval_99_282" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_99", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_99_282"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_96"(%"$$fundef_96_env_234"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !97 {
entry:
  %"$retval_97" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %entry
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_248"
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %"$$fundef_98_envp_255_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_98_envp_255_salloc" = call i8* @_salloc(i8* %"$$fundef_98_envp_255_load", i64 32)
  %"$$fundef_98_envp_255" = bitcast i8* %"$$fundef_98_envp_255_salloc" to %"$$fundef_98_env_233"*
  %"$$fundef_98_env_voidp_257" = bitcast %"$$fundef_98_env_233"* %"$$fundef_98_envp_255" to i8*
  %"$$fundef_98_cloval_258" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_98_env_233"*, %Uint32)* @"$fundef_98" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_98_env_voidp_257", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_98_cloval_258", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !98
  %"$$fundef_98_env_fn_259" = getelementptr inbounds %"$$fundef_98_env_233", %"$$fundef_98_env_233"* %"$$fundef_98_envp_255", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_fn_259", align 8
  %"$$fundef_98_env_g_260" = getelementptr inbounds %"$$fundef_98_env_233", %"$$fundef_98_env_233"* %"$$fundef_98_envp_255", i32 0, i32 1
  %"$g_261" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_261", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_g_260", align 8
  %"$g_262" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_262", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_97", align 8, !dbg !98
  %"$$retval_97_263" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_97", align 8
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_97_263"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_94"(%"$$fundef_94_env_235"* %0) !dbg !99 {
entry:
  %"$retval_95" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %entry
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_96_env_234"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_96" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_95", align 8, !dbg !100
  %"$$retval_95_244" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_95", align 8
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_95_244"
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
  %"$gasrem_1047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1048" = icmp ugt i64 1, %"$gasrem_1047"
  br i1 %"$gascmp_1048", label %"$out_of_gas_1049", label %"$have_gas_1050"

"$out_of_gas_1049":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1050"

"$have_gas_1050":                                 ; preds = %"$out_of_gas_1049", %entry
  %"$consume_1051" = sub i64 %"$gasrem_1047", 1
  store i64 %"$consume_1051", i64* @_gasrem, align 8
  %"$dyndisp_table_1061_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1061_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1061_salloc_load", i64 48)
  %"$dyndisp_table_1061_salloc" = bitcast i8* %"$dyndisp_table_1061_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1061" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1061_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1062" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1061", i32 0
  %"$dyndisp_pcast_1063" = bitcast { i8*, i8* }* %"$dyndisp_gep_1062" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_94_env_235"*)* @"$fundef_94" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1063", align 8
  %"$dyndisp_gep_1064" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1061", i32 1
  %"$dyndisp_pcast_1065" = bitcast { i8*, i8* }* %"$dyndisp_gep_1064" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_102_env_231"*)* @"$fundef_102" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1065", align 8
  %"$dyndisp_gep_1066" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1061", i32 2
  %"$dyndisp_pcast_1067" = bitcast { i8*, i8* }* %"$dyndisp_gep_1066" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_110_env_227"*)* @"$fundef_110" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1067", align 8
  store { i8*, i8* }* %"$dyndisp_table_1061", { i8*, i8* }** @nat_fold, align 8, !dbg !104
  %"$gasrem_1068" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1069" = icmp ugt i64 1, %"$gasrem_1068"
  br i1 %"$gascmp_1069", label %"$out_of_gas_1070", label %"$have_gas_1071"

"$out_of_gas_1070":                               ; preds = %"$have_gas_1050"
  call void @_out_of_gas()
  br label %"$have_gas_1071"

"$have_gas_1071":                                 ; preds = %"$out_of_gas_1070", %"$have_gas_1050"
  %"$consume_1072" = sub i64 %"$gasrem_1068", 1
  store i64 %"$consume_1072", i64* @_gasrem, align 8
  %"$$fundef_118_envp_1073_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_118_envp_1073_salloc" = call i8* @_salloc(i8* %"$$fundef_118_envp_1073_load", i64 8)
  %"$$fundef_118_envp_1073" = bitcast i8* %"$$fundef_118_envp_1073_salloc" to %"$$fundef_118_env_223"*
  %"$$fundef_118_env_voidp_1075" = bitcast %"$$fundef_118_env_223"* %"$$fundef_118_envp_1073" to i8*
  %"$$fundef_118_cloval_1076" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_118_env_223"*, %TName_Nat*)* @"$fundef_118" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_118_env_voidp_1075", 1
  %"$$fundef_118_env_nat_fold_1077" = getelementptr inbounds %"$$fundef_118_env_223", %"$$fundef_118_env_223"* %"$$fundef_118_envp_1073", i32 0, i32 0
  %"$nat_fold_1078" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1078", { i8*, i8* }** %"$$fundef_118_env_nat_fold_1077", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_118_cloval_1076", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8, !dbg !105
  %"$expr_124" = alloca %Uint32, align 8
  %"$gasrem_1079" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1080" = icmp ugt i64 1, %"$gasrem_1079"
  br i1 %"$gascmp_1080", label %"$out_of_gas_1081", label %"$have_gas_1082"

"$out_of_gas_1081":                               ; preds = %"$have_gas_1071"
  call void @_out_of_gas()
  br label %"$have_gas_1082"

"$have_gas_1082":                                 ; preds = %"$out_of_gas_1081", %"$have_gas_1071"
  %"$consume_1083" = sub i64 %"$gasrem_1079", 1
  store i64 %"$consume_1083", i64* @_gasrem, align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1084" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1085" = icmp ugt i64 1, %"$gasrem_1084"
  br i1 %"$gascmp_1085", label %"$out_of_gas_1086", label %"$have_gas_1087"

"$out_of_gas_1086":                               ; preds = %"$have_gas_1082"
  call void @_out_of_gas()
  br label %"$have_gas_1087"

"$have_gas_1087":                                 ; preds = %"$out_of_gas_1086", %"$have_gas_1082"
  %"$consume_1088" = sub i64 %"$gasrem_1084", 1
  store i64 %"$consume_1088", i64* @_gasrem, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_125_env_220"*, %TName_Nat*)* @"$fundef_125" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8, !dbg !106
  %"$gasrem_1092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1093" = icmp ugt i64 1, %"$gasrem_1092"
  br i1 %"$gascmp_1093", label %"$out_of_gas_1094", label %"$have_gas_1095"

"$out_of_gas_1094":                               ; preds = %"$have_gas_1087"
  call void @_out_of_gas()
  br label %"$have_gas_1095"

"$have_gas_1095":                                 ; preds = %"$out_of_gas_1094", %"$have_gas_1087"
  %"$consume_1096" = sub i64 %"$gasrem_1092", 1
  store i64 %"$consume_1096", i64* @_gasrem, align 8
  %nat_iter = alloca { i8*, i8* }*, align 8
  %"$gasrem_1097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1098" = icmp ugt i64 1, %"$gasrem_1097"
  br i1 %"$gascmp_1098", label %"$out_of_gas_1099", label %"$have_gas_1100"

"$out_of_gas_1099":                               ; preds = %"$have_gas_1095"
  call void @_out_of_gas()
  br label %"$have_gas_1100"

"$have_gas_1100":                                 ; preds = %"$out_of_gas_1099", %"$have_gas_1095"
  %"$consume_1101" = sub i64 %"$gasrem_1097", 1
  store i64 %"$consume_1101", i64* @_gasrem, align 8
  %"$$fundef_127_envp_1102_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_127_envp_1102_salloc" = call i8* @_salloc(i8* %"$$fundef_127_envp_1102_load", i64 8)
  %"$$fundef_127_envp_1102" = bitcast i8* %"$$fundef_127_envp_1102_salloc" to %"$$fundef_127_env_219"*
  %"$$fundef_127_env_voidp_1104" = bitcast %"$$fundef_127_env_219"* %"$$fundef_127_envp_1102" to i8*
  %"$$fundef_127_cloval_1105" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_127_env_219"*)* @"$fundef_127" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_127_env_voidp_1104", 1
  %"$$fundef_127_env_nat_fold_1106" = getelementptr inbounds %"$$fundef_127_env_219", %"$$fundef_127_env_219"* %"$$fundef_127_envp_1102", i32 0, i32 0
  %"$nat_fold_1107" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1107", { i8*, i8* }** %"$$fundef_127_env_nat_fold_1106", align 8
  %"$$fundef_139_env_voidp_1109" = bitcast %"$$fundef_127_env_219"* %"$$fundef_127_envp_1102" to i8*
  %"$$fundef_139_cloval_1110" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_139_env_213"*)* @"$fundef_139" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_139_env_voidp_1109", 1
  %"$dyndisp_table_1111_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1111_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1111_salloc_load", i64 48)
  %"$dyndisp_table_1111_salloc" = bitcast i8* %"$dyndisp_table_1111_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1111" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1111_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1112" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1111", i32 1
  %"$dyndisp_pcast_1113" = bitcast { i8*, i8* }* %"$dyndisp_gep_1112" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_127_cloval_1105", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1113", align 8
  %"$dyndisp_gep_1114" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1111", i32 2
  %"$dyndisp_pcast_1115" = bitcast { i8*, i8* }* %"$dyndisp_gep_1114" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_139_cloval_1110", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1115", align 8
  store { i8*, i8* }* %"$dyndisp_table_1111", { i8*, i8* }** %nat_iter, align 8, !dbg !107
  %"$gasrem_1116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1117" = icmp ugt i64 1, %"$gasrem_1116"
  br i1 %"$gascmp_1117", label %"$out_of_gas_1118", label %"$have_gas_1119"

"$out_of_gas_1118":                               ; preds = %"$have_gas_1100"
  call void @_out_of_gas()
  br label %"$have_gas_1119"

"$have_gas_1119":                                 ; preds = %"$out_of_gas_1118", %"$have_gas_1100"
  %"$consume_1120" = sub i64 %"$gasrem_1116", 1
  store i64 %"$consume_1120", i64* @_gasrem, align 8
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1122" = icmp ugt i64 1, %"$gasrem_1121"
  br i1 %"$gascmp_1122", label %"$out_of_gas_1123", label %"$have_gas_1124"

"$out_of_gas_1123":                               ; preds = %"$have_gas_1119"
  call void @_out_of_gas()
  br label %"$have_gas_1124"

"$have_gas_1124":                                 ; preds = %"$out_of_gas_1123", %"$have_gas_1119"
  %"$consume_1125" = sub i64 %"$gasrem_1121", 1
  store i64 %"$consume_1125", i64* @_gasrem, align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1127" = icmp ugt i64 1, %"$gasrem_1126"
  br i1 %"$gascmp_1127", label %"$out_of_gas_1128", label %"$have_gas_1129"

"$out_of_gas_1128":                               ; preds = %"$have_gas_1124"
  call void @_out_of_gas()
  br label %"$have_gas_1129"

"$have_gas_1129":                                 ; preds = %"$out_of_gas_1128", %"$have_gas_1124"
  %"$consume_1130" = sub i64 %"$gasrem_1126", 1
  store i64 %"$consume_1130", i64* @_gasrem, align 8
  %"$nat_iter_1131" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1132" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1131", i32 2
  %"$nat_iter_1133" = bitcast { i8*, i8* }* %"$nat_iter_1132" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1134" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1133", align 8
  %"$nat_iter_fptr_1135" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1134", 0
  %"$nat_iter_envptr_1136" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1134", 1
  %"$nat_iter_call_1137" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1135"(i8* %"$nat_iter_envptr_1136"), !dbg !108
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1137", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8, !dbg !109
  %"$gasrem_1138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1139" = icmp ugt i64 1, %"$gasrem_1138"
  br i1 %"$gascmp_1139", label %"$out_of_gas_1140", label %"$have_gas_1141"

"$out_of_gas_1140":                               ; preds = %"$have_gas_1129"
  call void @_out_of_gas()
  br label %"$have_gas_1141"

"$have_gas_1141":                                 ; preds = %"$out_of_gas_1140", %"$have_gas_1129"
  %"$consume_1142" = sub i64 %"$gasrem_1138", 1
  store i64 %"$consume_1142", i64* @_gasrem, align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_1143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1144" = icmp ugt i64 1, %"$gasrem_1143"
  br i1 %"$gascmp_1144", label %"$out_of_gas_1145", label %"$have_gas_1146"

"$out_of_gas_1145":                               ; preds = %"$have_gas_1141"
  call void @_out_of_gas()
  br label %"$have_gas_1146"

"$have_gas_1146":                                 ; preds = %"$out_of_gas_1145", %"$have_gas_1141"
  %"$consume_1147" = sub i64 %"$gasrem_1143", 1
  store i64 %"$consume_1147", i64* @_gasrem, align 8
  %"$nat_iter_1148" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1149" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1148", i32 1
  %"$nat_iter_1150" = bitcast { i8*, i8* }* %"$nat_iter_1149" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1151" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1150", align 8
  %"$nat_iter_fptr_1152" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1151", 0
  %"$nat_iter_envptr_1153" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1151", 1
  %"$nat_iter_call_1154" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1152"(i8* %"$nat_iter_envptr_1153"), !dbg !110
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1154", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8, !dbg !111
  %"$gasrem_1155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1156" = icmp ugt i64 1, %"$gasrem_1155"
  br i1 %"$gascmp_1156", label %"$out_of_gas_1157", label %"$have_gas_1158"

"$out_of_gas_1157":                               ; preds = %"$have_gas_1146"
  call void @_out_of_gas()
  br label %"$have_gas_1158"

"$have_gas_1158":                                 ; preds = %"$out_of_gas_1157", %"$have_gas_1146"
  %"$consume_1159" = sub i64 %"$gasrem_1155", 1
  store i64 %"$consume_1159", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_1160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1161" = icmp ugt i64 1, %"$gasrem_1160"
  br i1 %"$gascmp_1161", label %"$out_of_gas_1162", label %"$have_gas_1163"

"$out_of_gas_1162":                               ; preds = %"$have_gas_1158"
  call void @_out_of_gas()
  br label %"$have_gas_1163"

"$have_gas_1163":                                 ; preds = %"$out_of_gas_1162", %"$have_gas_1158"
  %"$consume_1164" = sub i64 %"$gasrem_1160", 1
  store i64 %"$consume_1164", i64* @_gasrem, align 8
  %"$adtval_1165_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1165_salloc" = call i8* @_salloc(i8* %"$adtval_1165_load", i64 1)
  %"$adtval_1165" = bitcast i8* %"$adtval_1165_salloc" to %CName_Zero*
  %"$adtgep_1166" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1165", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1166", align 1
  %"$adtptr_1167" = bitcast %CName_Zero* %"$adtval_1165" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1167", %TName_Nat** %zero, align 8, !dbg !112
  %"$gasrem_1168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1169" = icmp ugt i64 1, %"$gasrem_1168"
  br i1 %"$gascmp_1169", label %"$out_of_gas_1170", label %"$have_gas_1171"

"$out_of_gas_1170":                               ; preds = %"$have_gas_1163"
  call void @_out_of_gas()
  br label %"$have_gas_1171"

"$have_gas_1171":                                 ; preds = %"$out_of_gas_1170", %"$have_gas_1163"
  %"$consume_1172" = sub i64 %"$gasrem_1168", 1
  store i64 %"$consume_1172", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_1173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1174" = icmp ugt i64 1, %"$gasrem_1173"
  br i1 %"$gascmp_1174", label %"$out_of_gas_1175", label %"$have_gas_1176"

"$out_of_gas_1175":                               ; preds = %"$have_gas_1171"
  call void @_out_of_gas()
  br label %"$have_gas_1176"

"$have_gas_1176":                                 ; preds = %"$out_of_gas_1175", %"$have_gas_1171"
  %"$consume_1177" = sub i64 %"$gasrem_1173", 1
  store i64 %"$consume_1177", i64* @_gasrem, align 8
  %"$zero_1178" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_1179_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1179_salloc" = call i8* @_salloc(i8* %"$adtval_1179_load", i64 9)
  %"$adtval_1179" = bitcast i8* %"$adtval_1179_salloc" to %CName_Succ*
  %"$adtgep_1180" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1179", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1180", align 1
  %"$adtgep_1181" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1179", i32 0, i32 1
  store %TName_Nat* %"$zero_1178", %TName_Nat** %"$adtgep_1181", align 8
  %"$adtptr_1182" = bitcast %CName_Succ* %"$adtval_1179" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1182", %TName_Nat** %one, align 8, !dbg !113
  %"$gasrem_1183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1184" = icmp ugt i64 1, %"$gasrem_1183"
  br i1 %"$gascmp_1184", label %"$out_of_gas_1185", label %"$have_gas_1186"

"$out_of_gas_1185":                               ; preds = %"$have_gas_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1186"

"$have_gas_1186":                                 ; preds = %"$out_of_gas_1185", %"$have_gas_1176"
  %"$consume_1187" = sub i64 %"$gasrem_1183", 1
  store i64 %"$consume_1187", i64* @_gasrem, align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1189" = icmp ugt i64 1, %"$gasrem_1188"
  br i1 %"$gascmp_1189", label %"$out_of_gas_1190", label %"$have_gas_1191"

"$out_of_gas_1190":                               ; preds = %"$have_gas_1186"
  call void @_out_of_gas()
  br label %"$have_gas_1191"

"$have_gas_1191":                                 ; preds = %"$out_of_gas_1190", %"$have_gas_1186"
  %"$consume_1192" = sub i64 %"$gasrem_1188", 1
  store i64 %"$consume_1192", i64* @_gasrem, align 8
  %"$$fundef_151_envp_1193_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_151_envp_1193_salloc" = call i8* @_salloc(i8* %"$$fundef_151_envp_1193_load", i64 24)
  %"$$fundef_151_envp_1193" = bitcast i8* %"$$fundef_151_envp_1193_salloc" to %"$$fundef_151_env_207"*
  %"$$fundef_151_env_voidp_1195" = bitcast %"$$fundef_151_env_207"* %"$$fundef_151_envp_1193" to i8*
  %"$$fundef_151_cloval_1196" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_151_env_207"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_151" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_151_env_voidp_1195", 1
  %"$$fundef_151_env_iter_nat_1197" = getelementptr inbounds %"$$fundef_151_env_207", %"$$fundef_151_env_207"* %"$$fundef_151_envp_1193", i32 0, i32 0
  %"$iter_nat_1198" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1198", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_1197", align 8
  %"$$fundef_151_env_one_1199" = getelementptr inbounds %"$$fundef_151_env_207", %"$$fundef_151_env_207"* %"$$fundef_151_envp_1193", i32 0, i32 1
  %"$one_1200" = load %TName_Nat*, %TName_Nat** %one, align 8
  store %TName_Nat* %"$one_1200", %TName_Nat** %"$$fundef_151_env_one_1199", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_151_cloval_1196", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8, !dbg !114
  %"$gasrem_1201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1202" = icmp ugt i64 1, %"$gasrem_1201"
  br i1 %"$gascmp_1202", label %"$out_of_gas_1203", label %"$have_gas_1204"

"$out_of_gas_1203":                               ; preds = %"$have_gas_1191"
  call void @_out_of_gas()
  br label %"$have_gas_1204"

"$have_gas_1204":                                 ; preds = %"$out_of_gas_1203", %"$have_gas_1191"
  %"$consume_1205" = sub i64 %"$gasrem_1201", 1
  store i64 %"$consume_1205", i64* @_gasrem, align 8
  %"$$fundef_155_envp_1206_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_155_envp_1206_salloc" = call i8* @_salloc(i8* %"$$fundef_155_envp_1206_load", i64 48)
  %"$$fundef_155_envp_1206" = bitcast i8* %"$$fundef_155_envp_1206_salloc" to %"$$fundef_155_env_205"*
  %"$$fundef_155_env_voidp_1208" = bitcast %"$$fundef_155_env_205"* %"$$fundef_155_envp_1206" to i8*
  %"$$fundef_155_cloval_1209" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_155_env_205"*, %TName_Nat*)* @"$fundef_155" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_155_env_voidp_1208", 1
  %"$$fundef_155_env_f_1210" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %"$$fundef_155_envp_1206", i32 0, i32 0
  %"$f_1211" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1211", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_1210", align 8
  %"$$fundef_155_env_iter_nat_nat_1212" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %"$$fundef_155_envp_1206", i32 0, i32 1
  %"$iter_nat_nat_1213" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1213", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_1212", align 8
  %"$$fundef_155_env_nat_succ_1214" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %"$$fundef_155_envp_1206", i32 0, i32 2
  %"$nat_succ_1215" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1215", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_1214", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_155_cloval_1209", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8, !dbg !115
  %"$gasrem_1216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1217" = icmp ugt i64 1, %"$gasrem_1216"
  br i1 %"$gascmp_1217", label %"$out_of_gas_1218", label %"$have_gas_1219"

"$out_of_gas_1218":                               ; preds = %"$have_gas_1204"
  call void @_out_of_gas()
  br label %"$have_gas_1219"

"$have_gas_1219":                                 ; preds = %"$out_of_gas_1218", %"$have_gas_1204"
  %"$consume_1220" = sub i64 %"$gasrem_1216", 1
  store i64 %"$consume_1220", i64* @_gasrem, align 8
  %uint0 = alloca %Uint32, align 8
  %"$gasrem_1221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1222" = icmp ugt i64 1, %"$gasrem_1221"
  br i1 %"$gascmp_1222", label %"$out_of_gas_1223", label %"$have_gas_1224"

"$out_of_gas_1223":                               ; preds = %"$have_gas_1219"
  call void @_out_of_gas()
  br label %"$have_gas_1224"

"$have_gas_1224":                                 ; preds = %"$out_of_gas_1223", %"$have_gas_1219"
  %"$consume_1225" = sub i64 %"$gasrem_1221", 1
  store i64 %"$consume_1225", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %uint0, align 4, !dbg !116
  %"$gasrem_1226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1227" = icmp ugt i64 1, %"$gasrem_1226"
  br i1 %"$gascmp_1227", label %"$out_of_gas_1228", label %"$have_gas_1229"

"$out_of_gas_1228":                               ; preds = %"$have_gas_1224"
  call void @_out_of_gas()
  br label %"$have_gas_1229"

"$have_gas_1229":                                 ; preds = %"$out_of_gas_1228", %"$have_gas_1224"
  %"$consume_1230" = sub i64 %"$gasrem_1226", 1
  store i64 %"$consume_1230", i64* @_gasrem, align 8
  %uint1 = alloca %Uint32, align 8
  %"$gasrem_1231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1232" = icmp ugt i64 1, %"$gasrem_1231"
  br i1 %"$gascmp_1232", label %"$out_of_gas_1233", label %"$have_gas_1234"

"$out_of_gas_1233":                               ; preds = %"$have_gas_1229"
  call void @_out_of_gas()
  br label %"$have_gas_1234"

"$have_gas_1234":                                 ; preds = %"$out_of_gas_1233", %"$have_gas_1229"
  %"$consume_1235" = sub i64 %"$gasrem_1231", 1
  store i64 %"$consume_1235", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint1, align 4, !dbg !117
  %"$gasrem_1236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1237" = icmp ugt i64 1, %"$gasrem_1236"
  br i1 %"$gascmp_1237", label %"$out_of_gas_1238", label %"$have_gas_1239"

"$out_of_gas_1238":                               ; preds = %"$have_gas_1234"
  call void @_out_of_gas()
  br label %"$have_gas_1239"

"$have_gas_1239":                                 ; preds = %"$out_of_gas_1238", %"$have_gas_1234"
  %"$consume_1240" = sub i64 %"$gasrem_1236", 1
  store i64 %"$consume_1240", i64* @_gasrem, align 8
  %uint2 = alloca %Uint32, align 8
  %"$gasrem_1241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1242" = icmp ugt i64 1, %"$gasrem_1241"
  br i1 %"$gascmp_1242", label %"$out_of_gas_1243", label %"$have_gas_1244"

"$out_of_gas_1243":                               ; preds = %"$have_gas_1239"
  call void @_out_of_gas()
  br label %"$have_gas_1244"

"$have_gas_1244":                                 ; preds = %"$out_of_gas_1243", %"$have_gas_1239"
  %"$consume_1245" = sub i64 %"$gasrem_1241", 1
  store i64 %"$consume_1245", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %uint2, align 4, !dbg !118
  %"$gasrem_1246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1247" = icmp ugt i64 1, %"$gasrem_1246"
  br i1 %"$gascmp_1247", label %"$out_of_gas_1248", label %"$have_gas_1249"

"$out_of_gas_1248":                               ; preds = %"$have_gas_1244"
  call void @_out_of_gas()
  br label %"$have_gas_1249"

"$have_gas_1249":                                 ; preds = %"$out_of_gas_1248", %"$have_gas_1244"
  %"$consume_1250" = sub i64 %"$gasrem_1246", 1
  store i64 %"$consume_1250", i64* @_gasrem, align 8
  %uint3 = alloca %Uint32, align 8
  %"$gasrem_1251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1252" = icmp ugt i64 1, %"$gasrem_1251"
  br i1 %"$gascmp_1252", label %"$out_of_gas_1253", label %"$have_gas_1254"

"$out_of_gas_1253":                               ; preds = %"$have_gas_1249"
  call void @_out_of_gas()
  br label %"$have_gas_1254"

"$have_gas_1254":                                 ; preds = %"$out_of_gas_1253", %"$have_gas_1249"
  %"$consume_1255" = sub i64 %"$gasrem_1251", 1
  store i64 %"$consume_1255", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %uint3, align 4, !dbg !119
  %"$gasrem_1256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1257" = icmp ugt i64 1, %"$gasrem_1256"
  br i1 %"$gascmp_1257", label %"$out_of_gas_1258", label %"$have_gas_1259"

"$out_of_gas_1258":                               ; preds = %"$have_gas_1254"
  call void @_out_of_gas()
  br label %"$have_gas_1259"

"$have_gas_1259":                                 ; preds = %"$out_of_gas_1258", %"$have_gas_1254"
  %"$consume_1260" = sub i64 %"$gasrem_1256", 1
  store i64 %"$consume_1260", i64* @_gasrem, align 8
  %uint4 = alloca %Uint32, align 8
  %"$gasrem_1261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1262" = icmp ugt i64 1, %"$gasrem_1261"
  br i1 %"$gascmp_1262", label %"$out_of_gas_1263", label %"$have_gas_1264"

"$out_of_gas_1263":                               ; preds = %"$have_gas_1259"
  call void @_out_of_gas()
  br label %"$have_gas_1264"

"$have_gas_1264":                                 ; preds = %"$out_of_gas_1263", %"$have_gas_1259"
  %"$consume_1265" = sub i64 %"$gasrem_1261", 1
  store i64 %"$consume_1265", i64* @_gasrem, align 8
  store %Uint32 { i32 4 }, %Uint32* %uint4, align 4, !dbg !120
  %"$gasrem_1266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1267" = icmp ugt i64 1, %"$gasrem_1266"
  br i1 %"$gascmp_1267", label %"$out_of_gas_1268", label %"$have_gas_1269"

"$out_of_gas_1268":                               ; preds = %"$have_gas_1264"
  call void @_out_of_gas()
  br label %"$have_gas_1269"

"$have_gas_1269":                                 ; preds = %"$out_of_gas_1268", %"$have_gas_1264"
  %"$consume_1270" = sub i64 %"$gasrem_1266", 1
  store i64 %"$consume_1270", i64* @_gasrem, align 8
  %n0 = alloca %TName_Nat*, align 8
  %"$execptr_load_1271" = load i8*, i8** @_execptr, align 8
  %"$uint0_1272" = load %Uint32, %Uint32* %uint0, align 4
  %"$to_nat_call_1273" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1271", %Uint32 %"$uint0_1272"), !dbg !121
  store %TName_Nat* %"$to_nat_call_1273", %TName_Nat** %n0, align 8, !dbg !121
  %"$gasrem_1275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1276" = icmp ugt i64 1, %"$gasrem_1275"
  br i1 %"$gascmp_1276", label %"$out_of_gas_1277", label %"$have_gas_1278"

"$out_of_gas_1277":                               ; preds = %"$have_gas_1269"
  call void @_out_of_gas()
  br label %"$have_gas_1278"

"$have_gas_1278":                                 ; preds = %"$out_of_gas_1277", %"$have_gas_1269"
  %"$consume_1279" = sub i64 %"$gasrem_1275", 1
  store i64 %"$consume_1279", i64* @_gasrem, align 8
  %n1 = alloca %TName_Nat*, align 8
  %"$execptr_load_1280" = load i8*, i8** @_execptr, align 8
  %"$uint1_1281" = load %Uint32, %Uint32* %uint1, align 4
  %"$to_nat_call_1282" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1280", %Uint32 %"$uint1_1281"), !dbg !122
  store %TName_Nat* %"$to_nat_call_1282", %TName_Nat** %n1, align 8, !dbg !122
  %"$gasrem_1284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1285" = icmp ugt i64 1, %"$gasrem_1284"
  br i1 %"$gascmp_1285", label %"$out_of_gas_1286", label %"$have_gas_1287"

"$out_of_gas_1286":                               ; preds = %"$have_gas_1278"
  call void @_out_of_gas()
  br label %"$have_gas_1287"

"$have_gas_1287":                                 ; preds = %"$out_of_gas_1286", %"$have_gas_1278"
  %"$consume_1288" = sub i64 %"$gasrem_1284", 1
  store i64 %"$consume_1288", i64* @_gasrem, align 8
  %n2 = alloca %TName_Nat*, align 8
  %"$execptr_load_1289" = load i8*, i8** @_execptr, align 8
  %"$uint2_1290" = load %Uint32, %Uint32* %uint2, align 4
  %"$to_nat_call_1291" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1289", %Uint32 %"$uint2_1290"), !dbg !123
  store %TName_Nat* %"$to_nat_call_1291", %TName_Nat** %n2, align 8, !dbg !123
  %"$gasrem_1293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1294" = icmp ugt i64 1, %"$gasrem_1293"
  br i1 %"$gascmp_1294", label %"$out_of_gas_1295", label %"$have_gas_1296"

"$out_of_gas_1295":                               ; preds = %"$have_gas_1287"
  call void @_out_of_gas()
  br label %"$have_gas_1296"

"$have_gas_1296":                                 ; preds = %"$out_of_gas_1295", %"$have_gas_1287"
  %"$consume_1297" = sub i64 %"$gasrem_1293", 1
  store i64 %"$consume_1297", i64* @_gasrem, align 8
  %n3 = alloca %TName_Nat*, align 8
  %"$execptr_load_1298" = load i8*, i8** @_execptr, align 8
  %"$uint3_1299" = load %Uint32, %Uint32* %uint3, align 4
  %"$to_nat_call_1300" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1298", %Uint32 %"$uint3_1299"), !dbg !124
  store %TName_Nat* %"$to_nat_call_1300", %TName_Nat** %n3, align 8, !dbg !124
  %"$gasrem_1302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1303" = icmp ugt i64 1, %"$gasrem_1302"
  br i1 %"$gascmp_1303", label %"$out_of_gas_1304", label %"$have_gas_1305"

"$out_of_gas_1304":                               ; preds = %"$have_gas_1296"
  call void @_out_of_gas()
  br label %"$have_gas_1305"

"$have_gas_1305":                                 ; preds = %"$out_of_gas_1304", %"$have_gas_1296"
  %"$consume_1306" = sub i64 %"$gasrem_1302", 1
  store i64 %"$consume_1306", i64* @_gasrem, align 8
  %n4 = alloca %TName_Nat*, align 8
  %"$execptr_load_1307" = load i8*, i8** @_execptr, align 8
  %"$uint4_1308" = load %Uint32, %Uint32* %uint4, align 4
  %"$to_nat_call_1309" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1307", %Uint32 %"$uint4_1308"), !dbg !125
  store %TName_Nat* %"$to_nat_call_1309", %TName_Nat** %n4, align 8, !dbg !125
  %"$gasrem_1311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1312" = icmp ugt i64 1, %"$gasrem_1311"
  br i1 %"$gascmp_1312", label %"$out_of_gas_1313", label %"$have_gas_1314"

"$out_of_gas_1313":                               ; preds = %"$have_gas_1305"
  call void @_out_of_gas()
  br label %"$have_gas_1314"

"$have_gas_1314":                                 ; preds = %"$out_of_gas_1313", %"$have_gas_1305"
  %"$consume_1315" = sub i64 %"$gasrem_1311", 1
  store i64 %"$consume_1315", i64* @_gasrem, align 8
  %ack00 = alloca %TName_Nat*, align 8
  %"$gasrem_1316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1317" = icmp ugt i64 1, %"$gasrem_1316"
  br i1 %"$gascmp_1317", label %"$out_of_gas_1318", label %"$have_gas_1319"

"$out_of_gas_1318":                               ; preds = %"$have_gas_1314"
  call void @_out_of_gas()
  br label %"$have_gas_1319"

"$have_gas_1319":                                 ; preds = %"$out_of_gas_1318", %"$have_gas_1314"
  %"$consume_1320" = sub i64 %"$gasrem_1316", 1
  store i64 %"$consume_1320", i64* @_gasrem, align 8
  %"$ackermann_36" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1321" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1322" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1321", 0
  %"$ackermann_envptr_1323" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1321", 1
  %"$n0_1324" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1325" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1322"(i8* %"$ackermann_envptr_1323", %TName_Nat* %"$n0_1324"), !dbg !126
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1325", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_36", align 8, !dbg !126
  %"$ackermann_37" = alloca %TName_Nat*, align 8
  %"$$ackermann_36_1326" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_36", align 8
  %"$$ackermann_36_fptr_1327" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_36_1326", 0
  %"$$ackermann_36_envptr_1328" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_36_1326", 1
  %"$n0_1329" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_36_call_1330" = call %TName_Nat* %"$$ackermann_36_fptr_1327"(i8* %"$$ackermann_36_envptr_1328", %TName_Nat* %"$n0_1329"), !dbg !126
  store %TName_Nat* %"$$ackermann_36_call_1330", %TName_Nat** %"$ackermann_37", align 8, !dbg !126
  %"$$ackermann_37_1331" = load %TName_Nat*, %TName_Nat** %"$ackermann_37", align 8
  store %TName_Nat* %"$$ackermann_37_1331", %TName_Nat** %ack00, align 8, !dbg !126
  %"$gasrem_1332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1333" = icmp ugt i64 1, %"$gasrem_1332"
  br i1 %"$gascmp_1333", label %"$out_of_gas_1334", label %"$have_gas_1335"

"$out_of_gas_1334":                               ; preds = %"$have_gas_1319"
  call void @_out_of_gas()
  br label %"$have_gas_1335"

"$have_gas_1335":                                 ; preds = %"$out_of_gas_1334", %"$have_gas_1319"
  %"$consume_1336" = sub i64 %"$gasrem_1332", 1
  store i64 %"$consume_1336", i64* @_gasrem, align 8
  %"$gasrem_1337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1338" = icmp ugt i64 1, %"$gasrem_1337"
  br i1 %"$gascmp_1338", label %"$out_of_gas_1339", label %"$have_gas_1340"

"$out_of_gas_1339":                               ; preds = %"$have_gas_1335"
  call void @_out_of_gas()
  br label %"$have_gas_1340"

"$have_gas_1340":                                 ; preds = %"$out_of_gas_1339", %"$have_gas_1335"
  %"$consume_1341" = sub i64 %"$gasrem_1337", 1
  store i64 %"$consume_1341", i64* @_gasrem, align 8
  %ack02 = alloca %TName_Nat*, align 8
  %"$gasrem_1342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1343" = icmp ugt i64 1, %"$gasrem_1342"
  br i1 %"$gascmp_1343", label %"$out_of_gas_1344", label %"$have_gas_1345"

"$out_of_gas_1344":                               ; preds = %"$have_gas_1340"
  call void @_out_of_gas()
  br label %"$have_gas_1345"

"$have_gas_1345":                                 ; preds = %"$out_of_gas_1344", %"$have_gas_1340"
  %"$consume_1346" = sub i64 %"$gasrem_1342", 1
  store i64 %"$consume_1346", i64* @_gasrem, align 8
  %"$ackermann_38" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1347" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1348" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1347", 0
  %"$ackermann_envptr_1349" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1347", 1
  %"$n0_1350" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1351" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1348"(i8* %"$ackermann_envptr_1349", %TName_Nat* %"$n0_1350"), !dbg !127
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1351", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_38", align 8, !dbg !127
  %"$ackermann_39" = alloca %TName_Nat*, align 8
  %"$$ackermann_38_1352" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_38", align 8
  %"$$ackermann_38_fptr_1353" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_38_1352", 0
  %"$$ackermann_38_envptr_1354" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_38_1352", 1
  %"$n2_1355" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_38_call_1356" = call %TName_Nat* %"$$ackermann_38_fptr_1353"(i8* %"$$ackermann_38_envptr_1354", %TName_Nat* %"$n2_1355"), !dbg !127
  store %TName_Nat* %"$$ackermann_38_call_1356", %TName_Nat** %"$ackermann_39", align 8, !dbg !127
  %"$$ackermann_39_1357" = load %TName_Nat*, %TName_Nat** %"$ackermann_39", align 8
  store %TName_Nat* %"$$ackermann_39_1357", %TName_Nat** %ack02, align 8, !dbg !127
  %"$gasrem_1358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1359" = icmp ugt i64 1, %"$gasrem_1358"
  br i1 %"$gascmp_1359", label %"$out_of_gas_1360", label %"$have_gas_1361"

"$out_of_gas_1360":                               ; preds = %"$have_gas_1345"
  call void @_out_of_gas()
  br label %"$have_gas_1361"

"$have_gas_1361":                                 ; preds = %"$out_of_gas_1360", %"$have_gas_1345"
  %"$consume_1362" = sub i64 %"$gasrem_1358", 1
  store i64 %"$consume_1362", i64* @_gasrem, align 8
  %ack03 = alloca %TName_Nat*, align 8
  %"$gasrem_1363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1364" = icmp ugt i64 1, %"$gasrem_1363"
  br i1 %"$gascmp_1364", label %"$out_of_gas_1365", label %"$have_gas_1366"

"$out_of_gas_1365":                               ; preds = %"$have_gas_1361"
  call void @_out_of_gas()
  br label %"$have_gas_1366"

"$have_gas_1366":                                 ; preds = %"$out_of_gas_1365", %"$have_gas_1361"
  %"$consume_1367" = sub i64 %"$gasrem_1363", 1
  store i64 %"$consume_1367", i64* @_gasrem, align 8
  %"$ackermann_40" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1368" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1369" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1368", 0
  %"$ackermann_envptr_1370" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1368", 1
  %"$n0_1371" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1372" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1369"(i8* %"$ackermann_envptr_1370", %TName_Nat* %"$n0_1371"), !dbg !128
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1372", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_40", align 8, !dbg !128
  %"$ackermann_41" = alloca %TName_Nat*, align 8
  %"$$ackermann_40_1373" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_40", align 8
  %"$$ackermann_40_fptr_1374" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_40_1373", 0
  %"$$ackermann_40_envptr_1375" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_40_1373", 1
  %"$n3_1376" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_40_call_1377" = call %TName_Nat* %"$$ackermann_40_fptr_1374"(i8* %"$$ackermann_40_envptr_1375", %TName_Nat* %"$n3_1376"), !dbg !128
  store %TName_Nat* %"$$ackermann_40_call_1377", %TName_Nat** %"$ackermann_41", align 8, !dbg !128
  %"$$ackermann_41_1378" = load %TName_Nat*, %TName_Nat** %"$ackermann_41", align 8
  store %TName_Nat* %"$$ackermann_41_1378", %TName_Nat** %ack03, align 8, !dbg !128
  %"$gasrem_1379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1380" = icmp ugt i64 1, %"$gasrem_1379"
  br i1 %"$gascmp_1380", label %"$out_of_gas_1381", label %"$have_gas_1382"

"$out_of_gas_1381":                               ; preds = %"$have_gas_1366"
  call void @_out_of_gas()
  br label %"$have_gas_1382"

"$have_gas_1382":                                 ; preds = %"$out_of_gas_1381", %"$have_gas_1366"
  %"$consume_1383" = sub i64 %"$gasrem_1379", 1
  store i64 %"$consume_1383", i64* @_gasrem, align 8
  %ack04 = alloca %TName_Nat*, align 8
  %"$gasrem_1384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1385" = icmp ugt i64 1, %"$gasrem_1384"
  br i1 %"$gascmp_1385", label %"$out_of_gas_1386", label %"$have_gas_1387"

"$out_of_gas_1386":                               ; preds = %"$have_gas_1382"
  call void @_out_of_gas()
  br label %"$have_gas_1387"

"$have_gas_1387":                                 ; preds = %"$out_of_gas_1386", %"$have_gas_1382"
  %"$consume_1388" = sub i64 %"$gasrem_1384", 1
  store i64 %"$consume_1388", i64* @_gasrem, align 8
  %"$ackermann_42" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1389" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1390" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1389", 0
  %"$ackermann_envptr_1391" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1389", 1
  %"$n0_1392" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1393" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1390"(i8* %"$ackermann_envptr_1391", %TName_Nat* %"$n0_1392"), !dbg !129
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1393", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_42", align 8, !dbg !129
  %"$ackermann_43" = alloca %TName_Nat*, align 8
  %"$$ackermann_42_1394" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_42", align 8
  %"$$ackermann_42_fptr_1395" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_42_1394", 0
  %"$$ackermann_42_envptr_1396" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_42_1394", 1
  %"$n4_1397" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_42_call_1398" = call %TName_Nat* %"$$ackermann_42_fptr_1395"(i8* %"$$ackermann_42_envptr_1396", %TName_Nat* %"$n4_1397"), !dbg !129
  store %TName_Nat* %"$$ackermann_42_call_1398", %TName_Nat** %"$ackermann_43", align 8, !dbg !129
  %"$$ackermann_43_1399" = load %TName_Nat*, %TName_Nat** %"$ackermann_43", align 8
  store %TName_Nat* %"$$ackermann_43_1399", %TName_Nat** %ack04, align 8, !dbg !129
  %"$gasrem_1400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1401" = icmp ugt i64 1, %"$gasrem_1400"
  br i1 %"$gascmp_1401", label %"$out_of_gas_1402", label %"$have_gas_1403"

"$out_of_gas_1402":                               ; preds = %"$have_gas_1387"
  call void @_out_of_gas()
  br label %"$have_gas_1403"

"$have_gas_1403":                                 ; preds = %"$out_of_gas_1402", %"$have_gas_1387"
  %"$consume_1404" = sub i64 %"$gasrem_1400", 1
  store i64 %"$consume_1404", i64* @_gasrem, align 8
  %ack10 = alloca %TName_Nat*, align 8
  %"$gasrem_1405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1406" = icmp ugt i64 1, %"$gasrem_1405"
  br i1 %"$gascmp_1406", label %"$out_of_gas_1407", label %"$have_gas_1408"

"$out_of_gas_1407":                               ; preds = %"$have_gas_1403"
  call void @_out_of_gas()
  br label %"$have_gas_1408"

"$have_gas_1408":                                 ; preds = %"$out_of_gas_1407", %"$have_gas_1403"
  %"$consume_1409" = sub i64 %"$gasrem_1405", 1
  store i64 %"$consume_1409", i64* @_gasrem, align 8
  %"$ackermann_44" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1410" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1411" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1410", 0
  %"$ackermann_envptr_1412" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1410", 1
  %"$n1_1413" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1414" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1411"(i8* %"$ackermann_envptr_1412", %TName_Nat* %"$n1_1413"), !dbg !130
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1414", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_44", align 8, !dbg !130
  %"$ackermann_45" = alloca %TName_Nat*, align 8
  %"$$ackermann_44_1415" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_44", align 8
  %"$$ackermann_44_fptr_1416" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_44_1415", 0
  %"$$ackermann_44_envptr_1417" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_44_1415", 1
  %"$n0_1418" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_44_call_1419" = call %TName_Nat* %"$$ackermann_44_fptr_1416"(i8* %"$$ackermann_44_envptr_1417", %TName_Nat* %"$n0_1418"), !dbg !130
  store %TName_Nat* %"$$ackermann_44_call_1419", %TName_Nat** %"$ackermann_45", align 8, !dbg !130
  %"$$ackermann_45_1420" = load %TName_Nat*, %TName_Nat** %"$ackermann_45", align 8
  store %TName_Nat* %"$$ackermann_45_1420", %TName_Nat** %ack10, align 8, !dbg !130
  %"$gasrem_1421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1422" = icmp ugt i64 1, %"$gasrem_1421"
  br i1 %"$gascmp_1422", label %"$out_of_gas_1423", label %"$have_gas_1424"

"$out_of_gas_1423":                               ; preds = %"$have_gas_1408"
  call void @_out_of_gas()
  br label %"$have_gas_1424"

"$have_gas_1424":                                 ; preds = %"$out_of_gas_1423", %"$have_gas_1408"
  %"$consume_1425" = sub i64 %"$gasrem_1421", 1
  store i64 %"$consume_1425", i64* @_gasrem, align 8
  %ack11 = alloca %TName_Nat*, align 8
  %"$gasrem_1426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1427" = icmp ugt i64 1, %"$gasrem_1426"
  br i1 %"$gascmp_1427", label %"$out_of_gas_1428", label %"$have_gas_1429"

"$out_of_gas_1428":                               ; preds = %"$have_gas_1424"
  call void @_out_of_gas()
  br label %"$have_gas_1429"

"$have_gas_1429":                                 ; preds = %"$out_of_gas_1428", %"$have_gas_1424"
  %"$consume_1430" = sub i64 %"$gasrem_1426", 1
  store i64 %"$consume_1430", i64* @_gasrem, align 8
  %"$ackermann_46" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1431" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1432" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1431", 0
  %"$ackermann_envptr_1433" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1431", 1
  %"$n1_1434" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1435" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1432"(i8* %"$ackermann_envptr_1433", %TName_Nat* %"$n1_1434"), !dbg !131
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1435", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_46", align 8, !dbg !131
  %"$ackermann_47" = alloca %TName_Nat*, align 8
  %"$$ackermann_46_1436" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_46", align 8
  %"$$ackermann_46_fptr_1437" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_46_1436", 0
  %"$$ackermann_46_envptr_1438" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_46_1436", 1
  %"$n1_1439" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_46_call_1440" = call %TName_Nat* %"$$ackermann_46_fptr_1437"(i8* %"$$ackermann_46_envptr_1438", %TName_Nat* %"$n1_1439"), !dbg !131
  store %TName_Nat* %"$$ackermann_46_call_1440", %TName_Nat** %"$ackermann_47", align 8, !dbg !131
  %"$$ackermann_47_1441" = load %TName_Nat*, %TName_Nat** %"$ackermann_47", align 8
  store %TName_Nat* %"$$ackermann_47_1441", %TName_Nat** %ack11, align 8, !dbg !131
  %"$gasrem_1442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1443" = icmp ugt i64 1, %"$gasrem_1442"
  br i1 %"$gascmp_1443", label %"$out_of_gas_1444", label %"$have_gas_1445"

"$out_of_gas_1444":                               ; preds = %"$have_gas_1429"
  call void @_out_of_gas()
  br label %"$have_gas_1445"

"$have_gas_1445":                                 ; preds = %"$out_of_gas_1444", %"$have_gas_1429"
  %"$consume_1446" = sub i64 %"$gasrem_1442", 1
  store i64 %"$consume_1446", i64* @_gasrem, align 8
  %ack12 = alloca %TName_Nat*, align 8
  %"$gasrem_1447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1448" = icmp ugt i64 1, %"$gasrem_1447"
  br i1 %"$gascmp_1448", label %"$out_of_gas_1449", label %"$have_gas_1450"

"$out_of_gas_1449":                               ; preds = %"$have_gas_1445"
  call void @_out_of_gas()
  br label %"$have_gas_1450"

"$have_gas_1450":                                 ; preds = %"$out_of_gas_1449", %"$have_gas_1445"
  %"$consume_1451" = sub i64 %"$gasrem_1447", 1
  store i64 %"$consume_1451", i64* @_gasrem, align 8
  %"$ackermann_48" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1452" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1453" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1452", 0
  %"$ackermann_envptr_1454" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1452", 1
  %"$n1_1455" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1456" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1453"(i8* %"$ackermann_envptr_1454", %TName_Nat* %"$n1_1455"), !dbg !132
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1456", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_48", align 8, !dbg !132
  %"$ackermann_49" = alloca %TName_Nat*, align 8
  %"$$ackermann_48_1457" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_48", align 8
  %"$$ackermann_48_fptr_1458" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_48_1457", 0
  %"$$ackermann_48_envptr_1459" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_48_1457", 1
  %"$n2_1460" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_48_call_1461" = call %TName_Nat* %"$$ackermann_48_fptr_1458"(i8* %"$$ackermann_48_envptr_1459", %TName_Nat* %"$n2_1460"), !dbg !132
  store %TName_Nat* %"$$ackermann_48_call_1461", %TName_Nat** %"$ackermann_49", align 8, !dbg !132
  %"$$ackermann_49_1462" = load %TName_Nat*, %TName_Nat** %"$ackermann_49", align 8
  store %TName_Nat* %"$$ackermann_49_1462", %TName_Nat** %ack12, align 8, !dbg !132
  %"$gasrem_1463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1464" = icmp ugt i64 1, %"$gasrem_1463"
  br i1 %"$gascmp_1464", label %"$out_of_gas_1465", label %"$have_gas_1466"

"$out_of_gas_1465":                               ; preds = %"$have_gas_1450"
  call void @_out_of_gas()
  br label %"$have_gas_1466"

"$have_gas_1466":                                 ; preds = %"$out_of_gas_1465", %"$have_gas_1450"
  %"$consume_1467" = sub i64 %"$gasrem_1463", 1
  store i64 %"$consume_1467", i64* @_gasrem, align 8
  %ack13 = alloca %TName_Nat*, align 8
  %"$gasrem_1468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1469" = icmp ugt i64 1, %"$gasrem_1468"
  br i1 %"$gascmp_1469", label %"$out_of_gas_1470", label %"$have_gas_1471"

"$out_of_gas_1470":                               ; preds = %"$have_gas_1466"
  call void @_out_of_gas()
  br label %"$have_gas_1471"

"$have_gas_1471":                                 ; preds = %"$out_of_gas_1470", %"$have_gas_1466"
  %"$consume_1472" = sub i64 %"$gasrem_1468", 1
  store i64 %"$consume_1472", i64* @_gasrem, align 8
  %"$ackermann_50" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1473" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1474" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1473", 0
  %"$ackermann_envptr_1475" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1473", 1
  %"$n1_1476" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1477" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1474"(i8* %"$ackermann_envptr_1475", %TName_Nat* %"$n1_1476"), !dbg !133
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1477", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_50", align 8, !dbg !133
  %"$ackermann_51" = alloca %TName_Nat*, align 8
  %"$$ackermann_50_1478" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_50", align 8
  %"$$ackermann_50_fptr_1479" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_50_1478", 0
  %"$$ackermann_50_envptr_1480" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_50_1478", 1
  %"$n3_1481" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_50_call_1482" = call %TName_Nat* %"$$ackermann_50_fptr_1479"(i8* %"$$ackermann_50_envptr_1480", %TName_Nat* %"$n3_1481"), !dbg !133
  store %TName_Nat* %"$$ackermann_50_call_1482", %TName_Nat** %"$ackermann_51", align 8, !dbg !133
  %"$$ackermann_51_1483" = load %TName_Nat*, %TName_Nat** %"$ackermann_51", align 8
  store %TName_Nat* %"$$ackermann_51_1483", %TName_Nat** %ack13, align 8, !dbg !133
  %"$gasrem_1484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1485" = icmp ugt i64 1, %"$gasrem_1484"
  br i1 %"$gascmp_1485", label %"$out_of_gas_1486", label %"$have_gas_1487"

"$out_of_gas_1486":                               ; preds = %"$have_gas_1471"
  call void @_out_of_gas()
  br label %"$have_gas_1487"

"$have_gas_1487":                                 ; preds = %"$out_of_gas_1486", %"$have_gas_1471"
  %"$consume_1488" = sub i64 %"$gasrem_1484", 1
  store i64 %"$consume_1488", i64* @_gasrem, align 8
  %ack14 = alloca %TName_Nat*, align 8
  %"$gasrem_1489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1490" = icmp ugt i64 1, %"$gasrem_1489"
  br i1 %"$gascmp_1490", label %"$out_of_gas_1491", label %"$have_gas_1492"

"$out_of_gas_1491":                               ; preds = %"$have_gas_1487"
  call void @_out_of_gas()
  br label %"$have_gas_1492"

"$have_gas_1492":                                 ; preds = %"$out_of_gas_1491", %"$have_gas_1487"
  %"$consume_1493" = sub i64 %"$gasrem_1489", 1
  store i64 %"$consume_1493", i64* @_gasrem, align 8
  %"$ackermann_52" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1494" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1495" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1494", 0
  %"$ackermann_envptr_1496" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1494", 1
  %"$n1_1497" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1498" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1495"(i8* %"$ackermann_envptr_1496", %TName_Nat* %"$n1_1497"), !dbg !134
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1498", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_52", align 8, !dbg !134
  %"$ackermann_53" = alloca %TName_Nat*, align 8
  %"$$ackermann_52_1499" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_52", align 8
  %"$$ackermann_52_fptr_1500" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_52_1499", 0
  %"$$ackermann_52_envptr_1501" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_52_1499", 1
  %"$n4_1502" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_52_call_1503" = call %TName_Nat* %"$$ackermann_52_fptr_1500"(i8* %"$$ackermann_52_envptr_1501", %TName_Nat* %"$n4_1502"), !dbg !134
  store %TName_Nat* %"$$ackermann_52_call_1503", %TName_Nat** %"$ackermann_53", align 8, !dbg !134
  %"$$ackermann_53_1504" = load %TName_Nat*, %TName_Nat** %"$ackermann_53", align 8
  store %TName_Nat* %"$$ackermann_53_1504", %TName_Nat** %ack14, align 8, !dbg !134
  %"$gasrem_1505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1506" = icmp ugt i64 1, %"$gasrem_1505"
  br i1 %"$gascmp_1506", label %"$out_of_gas_1507", label %"$have_gas_1508"

"$out_of_gas_1507":                               ; preds = %"$have_gas_1492"
  call void @_out_of_gas()
  br label %"$have_gas_1508"

"$have_gas_1508":                                 ; preds = %"$out_of_gas_1507", %"$have_gas_1492"
  %"$consume_1509" = sub i64 %"$gasrem_1505", 1
  store i64 %"$consume_1509", i64* @_gasrem, align 8
  %ack20 = alloca %TName_Nat*, align 8
  %"$gasrem_1510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1511" = icmp ugt i64 1, %"$gasrem_1510"
  br i1 %"$gascmp_1511", label %"$out_of_gas_1512", label %"$have_gas_1513"

"$out_of_gas_1512":                               ; preds = %"$have_gas_1508"
  call void @_out_of_gas()
  br label %"$have_gas_1513"

"$have_gas_1513":                                 ; preds = %"$out_of_gas_1512", %"$have_gas_1508"
  %"$consume_1514" = sub i64 %"$gasrem_1510", 1
  store i64 %"$consume_1514", i64* @_gasrem, align 8
  %"$ackermann_54" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1515" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1516" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1515", 0
  %"$ackermann_envptr_1517" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1515", 1
  %"$n2_1518" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1519" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1516"(i8* %"$ackermann_envptr_1517", %TName_Nat* %"$n2_1518"), !dbg !135
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1519", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_54", align 8, !dbg !135
  %"$ackermann_55" = alloca %TName_Nat*, align 8
  %"$$ackermann_54_1520" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_54", align 8
  %"$$ackermann_54_fptr_1521" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_54_1520", 0
  %"$$ackermann_54_envptr_1522" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_54_1520", 1
  %"$n0_1523" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_54_call_1524" = call %TName_Nat* %"$$ackermann_54_fptr_1521"(i8* %"$$ackermann_54_envptr_1522", %TName_Nat* %"$n0_1523"), !dbg !135
  store %TName_Nat* %"$$ackermann_54_call_1524", %TName_Nat** %"$ackermann_55", align 8, !dbg !135
  %"$$ackermann_55_1525" = load %TName_Nat*, %TName_Nat** %"$ackermann_55", align 8
  store %TName_Nat* %"$$ackermann_55_1525", %TName_Nat** %ack20, align 8, !dbg !135
  %"$gasrem_1526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1527" = icmp ugt i64 1, %"$gasrem_1526"
  br i1 %"$gascmp_1527", label %"$out_of_gas_1528", label %"$have_gas_1529"

"$out_of_gas_1528":                               ; preds = %"$have_gas_1513"
  call void @_out_of_gas()
  br label %"$have_gas_1529"

"$have_gas_1529":                                 ; preds = %"$out_of_gas_1528", %"$have_gas_1513"
  %"$consume_1530" = sub i64 %"$gasrem_1526", 1
  store i64 %"$consume_1530", i64* @_gasrem, align 8
  %ack21 = alloca %TName_Nat*, align 8
  %"$gasrem_1531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1532" = icmp ugt i64 1, %"$gasrem_1531"
  br i1 %"$gascmp_1532", label %"$out_of_gas_1533", label %"$have_gas_1534"

"$out_of_gas_1533":                               ; preds = %"$have_gas_1529"
  call void @_out_of_gas()
  br label %"$have_gas_1534"

"$have_gas_1534":                                 ; preds = %"$out_of_gas_1533", %"$have_gas_1529"
  %"$consume_1535" = sub i64 %"$gasrem_1531", 1
  store i64 %"$consume_1535", i64* @_gasrem, align 8
  %"$ackermann_56" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1536" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1537" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1536", 0
  %"$ackermann_envptr_1538" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1536", 1
  %"$n2_1539" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1540" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1537"(i8* %"$ackermann_envptr_1538", %TName_Nat* %"$n2_1539"), !dbg !136
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1540", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_56", align 8, !dbg !136
  %"$ackermann_57" = alloca %TName_Nat*, align 8
  %"$$ackermann_56_1541" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_56", align 8
  %"$$ackermann_56_fptr_1542" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_56_1541", 0
  %"$$ackermann_56_envptr_1543" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_56_1541", 1
  %"$n1_1544" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_56_call_1545" = call %TName_Nat* %"$$ackermann_56_fptr_1542"(i8* %"$$ackermann_56_envptr_1543", %TName_Nat* %"$n1_1544"), !dbg !136
  store %TName_Nat* %"$$ackermann_56_call_1545", %TName_Nat** %"$ackermann_57", align 8, !dbg !136
  %"$$ackermann_57_1546" = load %TName_Nat*, %TName_Nat** %"$ackermann_57", align 8
  store %TName_Nat* %"$$ackermann_57_1546", %TName_Nat** %ack21, align 8, !dbg !136
  %"$gasrem_1547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1548" = icmp ugt i64 1, %"$gasrem_1547"
  br i1 %"$gascmp_1548", label %"$out_of_gas_1549", label %"$have_gas_1550"

"$out_of_gas_1549":                               ; preds = %"$have_gas_1534"
  call void @_out_of_gas()
  br label %"$have_gas_1550"

"$have_gas_1550":                                 ; preds = %"$out_of_gas_1549", %"$have_gas_1534"
  %"$consume_1551" = sub i64 %"$gasrem_1547", 1
  store i64 %"$consume_1551", i64* @_gasrem, align 8
  %ack22 = alloca %TName_Nat*, align 8
  %"$gasrem_1552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1553" = icmp ugt i64 1, %"$gasrem_1552"
  br i1 %"$gascmp_1553", label %"$out_of_gas_1554", label %"$have_gas_1555"

"$out_of_gas_1554":                               ; preds = %"$have_gas_1550"
  call void @_out_of_gas()
  br label %"$have_gas_1555"

"$have_gas_1555":                                 ; preds = %"$out_of_gas_1554", %"$have_gas_1550"
  %"$consume_1556" = sub i64 %"$gasrem_1552", 1
  store i64 %"$consume_1556", i64* @_gasrem, align 8
  %"$ackermann_58" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1557" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1558" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1557", 0
  %"$ackermann_envptr_1559" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1557", 1
  %"$n2_1560" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1561" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1558"(i8* %"$ackermann_envptr_1559", %TName_Nat* %"$n2_1560"), !dbg !137
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1561", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_58", align 8, !dbg !137
  %"$ackermann_59" = alloca %TName_Nat*, align 8
  %"$$ackermann_58_1562" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_58", align 8
  %"$$ackermann_58_fptr_1563" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_58_1562", 0
  %"$$ackermann_58_envptr_1564" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_58_1562", 1
  %"$n2_1565" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_58_call_1566" = call %TName_Nat* %"$$ackermann_58_fptr_1563"(i8* %"$$ackermann_58_envptr_1564", %TName_Nat* %"$n2_1565"), !dbg !137
  store %TName_Nat* %"$$ackermann_58_call_1566", %TName_Nat** %"$ackermann_59", align 8, !dbg !137
  %"$$ackermann_59_1567" = load %TName_Nat*, %TName_Nat** %"$ackermann_59", align 8
  store %TName_Nat* %"$$ackermann_59_1567", %TName_Nat** %ack22, align 8, !dbg !137
  %"$gasrem_1568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1569" = icmp ugt i64 1, %"$gasrem_1568"
  br i1 %"$gascmp_1569", label %"$out_of_gas_1570", label %"$have_gas_1571"

"$out_of_gas_1570":                               ; preds = %"$have_gas_1555"
  call void @_out_of_gas()
  br label %"$have_gas_1571"

"$have_gas_1571":                                 ; preds = %"$out_of_gas_1570", %"$have_gas_1555"
  %"$consume_1572" = sub i64 %"$gasrem_1568", 1
  store i64 %"$consume_1572", i64* @_gasrem, align 8
  %ack23 = alloca %TName_Nat*, align 8
  %"$gasrem_1573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1574" = icmp ugt i64 1, %"$gasrem_1573"
  br i1 %"$gascmp_1574", label %"$out_of_gas_1575", label %"$have_gas_1576"

"$out_of_gas_1575":                               ; preds = %"$have_gas_1571"
  call void @_out_of_gas()
  br label %"$have_gas_1576"

"$have_gas_1576":                                 ; preds = %"$out_of_gas_1575", %"$have_gas_1571"
  %"$consume_1577" = sub i64 %"$gasrem_1573", 1
  store i64 %"$consume_1577", i64* @_gasrem, align 8
  %"$ackermann_60" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1578" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1579" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1578", 0
  %"$ackermann_envptr_1580" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1578", 1
  %"$n2_1581" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1582" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1579"(i8* %"$ackermann_envptr_1580", %TName_Nat* %"$n2_1581"), !dbg !138
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1582", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_60", align 8, !dbg !138
  %"$ackermann_61" = alloca %TName_Nat*, align 8
  %"$$ackermann_60_1583" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_60", align 8
  %"$$ackermann_60_fptr_1584" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_60_1583", 0
  %"$$ackermann_60_envptr_1585" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_60_1583", 1
  %"$n3_1586" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_60_call_1587" = call %TName_Nat* %"$$ackermann_60_fptr_1584"(i8* %"$$ackermann_60_envptr_1585", %TName_Nat* %"$n3_1586"), !dbg !138
  store %TName_Nat* %"$$ackermann_60_call_1587", %TName_Nat** %"$ackermann_61", align 8, !dbg !138
  %"$$ackermann_61_1588" = load %TName_Nat*, %TName_Nat** %"$ackermann_61", align 8
  store %TName_Nat* %"$$ackermann_61_1588", %TName_Nat** %ack23, align 8, !dbg !138
  %"$gasrem_1589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1590" = icmp ugt i64 1, %"$gasrem_1589"
  br i1 %"$gascmp_1590", label %"$out_of_gas_1591", label %"$have_gas_1592"

"$out_of_gas_1591":                               ; preds = %"$have_gas_1576"
  call void @_out_of_gas()
  br label %"$have_gas_1592"

"$have_gas_1592":                                 ; preds = %"$out_of_gas_1591", %"$have_gas_1576"
  %"$consume_1593" = sub i64 %"$gasrem_1589", 1
  store i64 %"$consume_1593", i64* @_gasrem, align 8
  %"$gasrem_1594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1595" = icmp ugt i64 1, %"$gasrem_1594"
  br i1 %"$gascmp_1595", label %"$out_of_gas_1596", label %"$have_gas_1597"

"$out_of_gas_1596":                               ; preds = %"$have_gas_1592"
  call void @_out_of_gas()
  br label %"$have_gas_1597"

"$have_gas_1597":                                 ; preds = %"$out_of_gas_1596", %"$have_gas_1592"
  %"$consume_1598" = sub i64 %"$gasrem_1594", 1
  store i64 %"$consume_1598", i64* @_gasrem, align 8
  %ack30 = alloca %TName_Nat*, align 8
  %"$gasrem_1599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1600" = icmp ugt i64 1, %"$gasrem_1599"
  br i1 %"$gascmp_1600", label %"$out_of_gas_1601", label %"$have_gas_1602"

"$out_of_gas_1601":                               ; preds = %"$have_gas_1597"
  call void @_out_of_gas()
  br label %"$have_gas_1602"

"$have_gas_1602":                                 ; preds = %"$out_of_gas_1601", %"$have_gas_1597"
  %"$consume_1603" = sub i64 %"$gasrem_1599", 1
  store i64 %"$consume_1603", i64* @_gasrem, align 8
  %"$ackermann_62" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1604" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1605" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1604", 0
  %"$ackermann_envptr_1606" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1604", 1
  %"$n3_1607" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1608" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1605"(i8* %"$ackermann_envptr_1606", %TName_Nat* %"$n3_1607"), !dbg !139
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1608", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_62", align 8, !dbg !139
  %"$ackermann_63" = alloca %TName_Nat*, align 8
  %"$$ackermann_62_1609" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_62", align 8
  %"$$ackermann_62_fptr_1610" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_62_1609", 0
  %"$$ackermann_62_envptr_1611" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_62_1609", 1
  %"$n0_1612" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_62_call_1613" = call %TName_Nat* %"$$ackermann_62_fptr_1610"(i8* %"$$ackermann_62_envptr_1611", %TName_Nat* %"$n0_1612"), !dbg !139
  store %TName_Nat* %"$$ackermann_62_call_1613", %TName_Nat** %"$ackermann_63", align 8, !dbg !139
  %"$$ackermann_63_1614" = load %TName_Nat*, %TName_Nat** %"$ackermann_63", align 8
  store %TName_Nat* %"$$ackermann_63_1614", %TName_Nat** %ack30, align 8, !dbg !139
  %"$gasrem_1615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1616" = icmp ugt i64 1, %"$gasrem_1615"
  br i1 %"$gascmp_1616", label %"$out_of_gas_1617", label %"$have_gas_1618"

"$out_of_gas_1617":                               ; preds = %"$have_gas_1602"
  call void @_out_of_gas()
  br label %"$have_gas_1618"

"$have_gas_1618":                                 ; preds = %"$out_of_gas_1617", %"$have_gas_1602"
  %"$consume_1619" = sub i64 %"$gasrem_1615", 1
  store i64 %"$consume_1619", i64* @_gasrem, align 8
  %ack31 = alloca %TName_Nat*, align 8
  %"$gasrem_1620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1621" = icmp ugt i64 1, %"$gasrem_1620"
  br i1 %"$gascmp_1621", label %"$out_of_gas_1622", label %"$have_gas_1623"

"$out_of_gas_1622":                               ; preds = %"$have_gas_1618"
  call void @_out_of_gas()
  br label %"$have_gas_1623"

"$have_gas_1623":                                 ; preds = %"$out_of_gas_1622", %"$have_gas_1618"
  %"$consume_1624" = sub i64 %"$gasrem_1620", 1
  store i64 %"$consume_1624", i64* @_gasrem, align 8
  %"$ackermann_64" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1625" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1626" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1625", 0
  %"$ackermann_envptr_1627" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1625", 1
  %"$n3_1628" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1629" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1626"(i8* %"$ackermann_envptr_1627", %TName_Nat* %"$n3_1628"), !dbg !140
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1629", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_64", align 8, !dbg !140
  %"$ackermann_65" = alloca %TName_Nat*, align 8
  %"$$ackermann_64_1630" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_64", align 8
  %"$$ackermann_64_fptr_1631" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_64_1630", 0
  %"$$ackermann_64_envptr_1632" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_64_1630", 1
  %"$n1_1633" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_64_call_1634" = call %TName_Nat* %"$$ackermann_64_fptr_1631"(i8* %"$$ackermann_64_envptr_1632", %TName_Nat* %"$n1_1633"), !dbg !140
  store %TName_Nat* %"$$ackermann_64_call_1634", %TName_Nat** %"$ackermann_65", align 8, !dbg !140
  %"$$ackermann_65_1635" = load %TName_Nat*, %TName_Nat** %"$ackermann_65", align 8
  store %TName_Nat* %"$$ackermann_65_1635", %TName_Nat** %ack31, align 8, !dbg !140
  %"$gasrem_1636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1637" = icmp ugt i64 1, %"$gasrem_1636"
  br i1 %"$gascmp_1637", label %"$out_of_gas_1638", label %"$have_gas_1639"

"$out_of_gas_1638":                               ; preds = %"$have_gas_1623"
  call void @_out_of_gas()
  br label %"$have_gas_1639"

"$have_gas_1639":                                 ; preds = %"$out_of_gas_1638", %"$have_gas_1623"
  %"$consume_1640" = sub i64 %"$gasrem_1636", 1
  store i64 %"$consume_1640", i64* @_gasrem, align 8
  %ack32 = alloca %TName_Nat*, align 8
  %"$gasrem_1641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1642" = icmp ugt i64 1, %"$gasrem_1641"
  br i1 %"$gascmp_1642", label %"$out_of_gas_1643", label %"$have_gas_1644"

"$out_of_gas_1643":                               ; preds = %"$have_gas_1639"
  call void @_out_of_gas()
  br label %"$have_gas_1644"

"$have_gas_1644":                                 ; preds = %"$out_of_gas_1643", %"$have_gas_1639"
  %"$consume_1645" = sub i64 %"$gasrem_1641", 1
  store i64 %"$consume_1645", i64* @_gasrem, align 8
  %"$ackermann_66" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1646" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1647" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1646", 0
  %"$ackermann_envptr_1648" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1646", 1
  %"$n3_1649" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1650" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1647"(i8* %"$ackermann_envptr_1648", %TName_Nat* %"$n3_1649"), !dbg !141
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1650", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_66", align 8, !dbg !141
  %"$ackermann_67" = alloca %TName_Nat*, align 8
  %"$$ackermann_66_1651" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_66", align 8
  %"$$ackermann_66_fptr_1652" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_66_1651", 0
  %"$$ackermann_66_envptr_1653" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_66_1651", 1
  %"$n2_1654" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_66_call_1655" = call %TName_Nat* %"$$ackermann_66_fptr_1652"(i8* %"$$ackermann_66_envptr_1653", %TName_Nat* %"$n2_1654"), !dbg !141
  store %TName_Nat* %"$$ackermann_66_call_1655", %TName_Nat** %"$ackermann_67", align 8, !dbg !141
  %"$$ackermann_67_1656" = load %TName_Nat*, %TName_Nat** %"$ackermann_67", align 8
  store %TName_Nat* %"$$ackermann_67_1656", %TName_Nat** %ack32, align 8, !dbg !141
  %"$gasrem_1657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1658" = icmp ugt i64 1, %"$gasrem_1657"
  br i1 %"$gascmp_1658", label %"$out_of_gas_1659", label %"$have_gas_1660"

"$out_of_gas_1659":                               ; preds = %"$have_gas_1644"
  call void @_out_of_gas()
  br label %"$have_gas_1660"

"$have_gas_1660":                                 ; preds = %"$out_of_gas_1659", %"$have_gas_1644"
  %"$consume_1661" = sub i64 %"$gasrem_1657", 1
  store i64 %"$consume_1661", i64* @_gasrem, align 8
  %ack33 = alloca %TName_Nat*, align 8
  %"$gasrem_1662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1663" = icmp ugt i64 1, %"$gasrem_1662"
  br i1 %"$gascmp_1663", label %"$out_of_gas_1664", label %"$have_gas_1665"

"$out_of_gas_1664":                               ; preds = %"$have_gas_1660"
  call void @_out_of_gas()
  br label %"$have_gas_1665"

"$have_gas_1665":                                 ; preds = %"$out_of_gas_1664", %"$have_gas_1660"
  %"$consume_1666" = sub i64 %"$gasrem_1662", 1
  store i64 %"$consume_1666", i64* @_gasrem, align 8
  %"$ackermann_68" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1667" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1668" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1667", 0
  %"$ackermann_envptr_1669" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1667", 1
  %"$n3_1670" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1671" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1668"(i8* %"$ackermann_envptr_1669", %TName_Nat* %"$n3_1670"), !dbg !142
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1671", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_68", align 8, !dbg !142
  %"$ackermann_69" = alloca %TName_Nat*, align 8
  %"$$ackermann_68_1672" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_68", align 8
  %"$$ackermann_68_fptr_1673" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_68_1672", 0
  %"$$ackermann_68_envptr_1674" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_68_1672", 1
  %"$n3_1675" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_68_call_1676" = call %TName_Nat* %"$$ackermann_68_fptr_1673"(i8* %"$$ackermann_68_envptr_1674", %TName_Nat* %"$n3_1675"), !dbg !142
  store %TName_Nat* %"$$ackermann_68_call_1676", %TName_Nat** %"$ackermann_69", align 8, !dbg !142
  %"$$ackermann_69_1677" = load %TName_Nat*, %TName_Nat** %"$ackermann_69", align 8
  store %TName_Nat* %"$$ackermann_69_1677", %TName_Nat** %ack33, align 8, !dbg !142
  %"$gasrem_1678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1679" = icmp ugt i64 1, %"$gasrem_1678"
  br i1 %"$gascmp_1679", label %"$out_of_gas_1680", label %"$have_gas_1681"

"$out_of_gas_1680":                               ; preds = %"$have_gas_1665"
  call void @_out_of_gas()
  br label %"$have_gas_1681"

"$have_gas_1681":                                 ; preds = %"$out_of_gas_1680", %"$have_gas_1665"
  %"$consume_1682" = sub i64 %"$gasrem_1678", 1
  store i64 %"$consume_1682", i64* @_gasrem, align 8
  %ack34 = alloca %TName_Nat*, align 8
  %"$gasrem_1683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1684" = icmp ugt i64 1, %"$gasrem_1683"
  br i1 %"$gascmp_1684", label %"$out_of_gas_1685", label %"$have_gas_1686"

"$out_of_gas_1685":                               ; preds = %"$have_gas_1681"
  call void @_out_of_gas()
  br label %"$have_gas_1686"

"$have_gas_1686":                                 ; preds = %"$out_of_gas_1685", %"$have_gas_1681"
  %"$consume_1687" = sub i64 %"$gasrem_1683", 1
  store i64 %"$consume_1687", i64* @_gasrem, align 8
  %"$ackermann_70" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1688" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1689" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1688", 0
  %"$ackermann_envptr_1690" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1688", 1
  %"$n3_1691" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1692" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1689"(i8* %"$ackermann_envptr_1690", %TName_Nat* %"$n3_1691"), !dbg !143
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1692", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_70", align 8, !dbg !143
  %"$ackermann_71" = alloca %TName_Nat*, align 8
  %"$$ackermann_70_1693" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_70", align 8
  %"$$ackermann_70_fptr_1694" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_70_1693", 0
  %"$$ackermann_70_envptr_1695" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_70_1693", 1
  %"$n4_1696" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_70_call_1697" = call %TName_Nat* %"$$ackermann_70_fptr_1694"(i8* %"$$ackermann_70_envptr_1695", %TName_Nat* %"$n4_1696"), !dbg !143
  store %TName_Nat* %"$$ackermann_70_call_1697", %TName_Nat** %"$ackermann_71", align 8, !dbg !143
  %"$$ackermann_71_1698" = load %TName_Nat*, %TName_Nat** %"$ackermann_71", align 8
  store %TName_Nat* %"$$ackermann_71_1698", %TName_Nat** %ack34, align 8, !dbg !143
  %"$gasrem_1699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1700" = icmp ugt i64 1, %"$gasrem_1699"
  br i1 %"$gascmp_1700", label %"$out_of_gas_1701", label %"$have_gas_1702"

"$out_of_gas_1701":                               ; preds = %"$have_gas_1686"
  call void @_out_of_gas()
  br label %"$have_gas_1702"

"$have_gas_1702":                                 ; preds = %"$out_of_gas_1701", %"$have_gas_1686"
  %"$consume_1703" = sub i64 %"$gasrem_1699", 1
  store i64 %"$consume_1703", i64* @_gasrem, align 8
  %ack40 = alloca %TName_Nat*, align 8
  %"$gasrem_1704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1705" = icmp ugt i64 1, %"$gasrem_1704"
  br i1 %"$gascmp_1705", label %"$out_of_gas_1706", label %"$have_gas_1707"

"$out_of_gas_1706":                               ; preds = %"$have_gas_1702"
  call void @_out_of_gas()
  br label %"$have_gas_1707"

"$have_gas_1707":                                 ; preds = %"$out_of_gas_1706", %"$have_gas_1702"
  %"$consume_1708" = sub i64 %"$gasrem_1704", 1
  store i64 %"$consume_1708", i64* @_gasrem, align 8
  %"$ackermann_72" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1709" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1710" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1709", 0
  %"$ackermann_envptr_1711" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1709", 1
  %"$n4_1712" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$ackermann_call_1713" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1710"(i8* %"$ackermann_envptr_1711", %TName_Nat* %"$n4_1712"), !dbg !144
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1713", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_72", align 8, !dbg !144
  %"$ackermann_73" = alloca %TName_Nat*, align 8
  %"$$ackermann_72_1714" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_72", align 8
  %"$$ackermann_72_fptr_1715" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_72_1714", 0
  %"$$ackermann_72_envptr_1716" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_72_1714", 1
  %"$n0_1717" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_72_call_1718" = call %TName_Nat* %"$$ackermann_72_fptr_1715"(i8* %"$$ackermann_72_envptr_1716", %TName_Nat* %"$n0_1717"), !dbg !144
  store %TName_Nat* %"$$ackermann_72_call_1718", %TName_Nat** %"$ackermann_73", align 8, !dbg !144
  %"$$ackermann_73_1719" = load %TName_Nat*, %TName_Nat** %"$ackermann_73", align 8
  store %TName_Nat* %"$$ackermann_73_1719", %TName_Nat** %ack40, align 8, !dbg !144
  %"$gasrem_1720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1721" = icmp ugt i64 1, %"$gasrem_1720"
  br i1 %"$gascmp_1721", label %"$out_of_gas_1722", label %"$have_gas_1723"

"$out_of_gas_1722":                               ; preds = %"$have_gas_1707"
  call void @_out_of_gas()
  br label %"$have_gas_1723"

"$have_gas_1723":                                 ; preds = %"$out_of_gas_1722", %"$have_gas_1707"
  %"$consume_1724" = sub i64 %"$gasrem_1720", 1
  store i64 %"$consume_1724", i64* @_gasrem, align 8
  %int01 = alloca %Uint32, align 8
  %"$gasrem_1725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1726" = icmp ugt i64 1, %"$gasrem_1725"
  br i1 %"$gascmp_1726", label %"$out_of_gas_1727", label %"$have_gas_1728"

"$out_of_gas_1727":                               ; preds = %"$have_gas_1723"
  call void @_out_of_gas()
  br label %"$have_gas_1728"

"$have_gas_1728":                                 ; preds = %"$out_of_gas_1727", %"$have_gas_1723"
  %"$consume_1729" = sub i64 %"$gasrem_1725", 1
  store i64 %"$consume_1729", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_74" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1730" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1731" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1730", 0
  %"$NatUtils.nat_to_int_envptr_1732" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1730", 1
  %"$ack00_1733" = load %TName_Nat*, %TName_Nat** %ack00, align 8
  %"$NatUtils.nat_to_int_call_1734" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1731"(i8* %"$NatUtils.nat_to_int_envptr_1732", %TName_Nat* %"$ack00_1733"), !dbg !145
  store %Uint32 %"$NatUtils.nat_to_int_call_1734", %Uint32* %"$NatUtils.nat_to_int_74", align 4, !dbg !145
  %"$$NatUtils.nat_to_int_74_1735" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_74", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_74_1735", %Uint32* %int01, align 4, !dbg !145
  %"$gasrem_1736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1737" = icmp ugt i64 1, %"$gasrem_1736"
  br i1 %"$gascmp_1737", label %"$out_of_gas_1738", label %"$have_gas_1739"

"$out_of_gas_1738":                               ; preds = %"$have_gas_1728"
  call void @_out_of_gas()
  br label %"$have_gas_1739"

"$have_gas_1739":                                 ; preds = %"$out_of_gas_1738", %"$have_gas_1728"
  %"$consume_1740" = sub i64 %"$gasrem_1736", 1
  store i64 %"$consume_1740", i64* @_gasrem, align 8
  %int02 = alloca %Uint32, align 8
  %"$gasrem_1741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1742" = icmp ugt i64 1, %"$gasrem_1741"
  br i1 %"$gascmp_1742", label %"$out_of_gas_1743", label %"$have_gas_1744"

"$out_of_gas_1743":                               ; preds = %"$have_gas_1739"
  call void @_out_of_gas()
  br label %"$have_gas_1744"

"$have_gas_1744":                                 ; preds = %"$out_of_gas_1743", %"$have_gas_1739"
  %"$consume_1745" = sub i64 %"$gasrem_1741", 1
  store i64 %"$consume_1745", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_75" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1746" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1747" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1746", 0
  %"$NatUtils.nat_to_int_envptr_1748" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1746", 1
  %"$ack02_1749" = load %TName_Nat*, %TName_Nat** %ack02, align 8
  %"$NatUtils.nat_to_int_call_1750" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1747"(i8* %"$NatUtils.nat_to_int_envptr_1748", %TName_Nat* %"$ack02_1749"), !dbg !146
  store %Uint32 %"$NatUtils.nat_to_int_call_1750", %Uint32* %"$NatUtils.nat_to_int_75", align 4, !dbg !146
  %"$$NatUtils.nat_to_int_75_1751" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_75", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_75_1751", %Uint32* %int02, align 4, !dbg !146
  %"$gasrem_1752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1753" = icmp ugt i64 1, %"$gasrem_1752"
  br i1 %"$gascmp_1753", label %"$out_of_gas_1754", label %"$have_gas_1755"

"$out_of_gas_1754":                               ; preds = %"$have_gas_1744"
  call void @_out_of_gas()
  br label %"$have_gas_1755"

"$have_gas_1755":                                 ; preds = %"$out_of_gas_1754", %"$have_gas_1744"
  %"$consume_1756" = sub i64 %"$gasrem_1752", 1
  store i64 %"$consume_1756", i64* @_gasrem, align 8
  %int03 = alloca %Uint32, align 8
  %"$gasrem_1757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1758" = icmp ugt i64 1, %"$gasrem_1757"
  br i1 %"$gascmp_1758", label %"$out_of_gas_1759", label %"$have_gas_1760"

"$out_of_gas_1759":                               ; preds = %"$have_gas_1755"
  call void @_out_of_gas()
  br label %"$have_gas_1760"

"$have_gas_1760":                                 ; preds = %"$out_of_gas_1759", %"$have_gas_1755"
  %"$consume_1761" = sub i64 %"$gasrem_1757", 1
  store i64 %"$consume_1761", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_76" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1762" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1763" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1762", 0
  %"$NatUtils.nat_to_int_envptr_1764" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1762", 1
  %"$ack03_1765" = load %TName_Nat*, %TName_Nat** %ack03, align 8
  %"$NatUtils.nat_to_int_call_1766" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1763"(i8* %"$NatUtils.nat_to_int_envptr_1764", %TName_Nat* %"$ack03_1765"), !dbg !147
  store %Uint32 %"$NatUtils.nat_to_int_call_1766", %Uint32* %"$NatUtils.nat_to_int_76", align 4, !dbg !147
  %"$$NatUtils.nat_to_int_76_1767" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_76", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_76_1767", %Uint32* %int03, align 4, !dbg !147
  %"$gasrem_1768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1769" = icmp ugt i64 1, %"$gasrem_1768"
  br i1 %"$gascmp_1769", label %"$out_of_gas_1770", label %"$have_gas_1771"

"$out_of_gas_1770":                               ; preds = %"$have_gas_1760"
  call void @_out_of_gas()
  br label %"$have_gas_1771"

"$have_gas_1771":                                 ; preds = %"$out_of_gas_1770", %"$have_gas_1760"
  %"$consume_1772" = sub i64 %"$gasrem_1768", 1
  store i64 %"$consume_1772", i64* @_gasrem, align 8
  %int04 = alloca %Uint32, align 8
  %"$gasrem_1773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1774" = icmp ugt i64 1, %"$gasrem_1773"
  br i1 %"$gascmp_1774", label %"$out_of_gas_1775", label %"$have_gas_1776"

"$out_of_gas_1775":                               ; preds = %"$have_gas_1771"
  call void @_out_of_gas()
  br label %"$have_gas_1776"

"$have_gas_1776":                                 ; preds = %"$out_of_gas_1775", %"$have_gas_1771"
  %"$consume_1777" = sub i64 %"$gasrem_1773", 1
  store i64 %"$consume_1777", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_77" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1778" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1779" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1778", 0
  %"$NatUtils.nat_to_int_envptr_1780" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1778", 1
  %"$ack04_1781" = load %TName_Nat*, %TName_Nat** %ack04, align 8
  %"$NatUtils.nat_to_int_call_1782" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1779"(i8* %"$NatUtils.nat_to_int_envptr_1780", %TName_Nat* %"$ack04_1781"), !dbg !148
  store %Uint32 %"$NatUtils.nat_to_int_call_1782", %Uint32* %"$NatUtils.nat_to_int_77", align 4, !dbg !148
  %"$$NatUtils.nat_to_int_77_1783" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_77", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_77_1783", %Uint32* %int04, align 4, !dbg !148
  %"$gasrem_1784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1785" = icmp ugt i64 1, %"$gasrem_1784"
  br i1 %"$gascmp_1785", label %"$out_of_gas_1786", label %"$have_gas_1787"

"$out_of_gas_1786":                               ; preds = %"$have_gas_1776"
  call void @_out_of_gas()
  br label %"$have_gas_1787"

"$have_gas_1787":                                 ; preds = %"$out_of_gas_1786", %"$have_gas_1776"
  %"$consume_1788" = sub i64 %"$gasrem_1784", 1
  store i64 %"$consume_1788", i64* @_gasrem, align 8
  %int10 = alloca %Uint32, align 8
  %"$gasrem_1789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1790" = icmp ugt i64 1, %"$gasrem_1789"
  br i1 %"$gascmp_1790", label %"$out_of_gas_1791", label %"$have_gas_1792"

"$out_of_gas_1791":                               ; preds = %"$have_gas_1787"
  call void @_out_of_gas()
  br label %"$have_gas_1792"

"$have_gas_1792":                                 ; preds = %"$out_of_gas_1791", %"$have_gas_1787"
  %"$consume_1793" = sub i64 %"$gasrem_1789", 1
  store i64 %"$consume_1793", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_78" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1794" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1795" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1794", 0
  %"$NatUtils.nat_to_int_envptr_1796" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1794", 1
  %"$ack10_1797" = load %TName_Nat*, %TName_Nat** %ack10, align 8
  %"$NatUtils.nat_to_int_call_1798" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1795"(i8* %"$NatUtils.nat_to_int_envptr_1796", %TName_Nat* %"$ack10_1797"), !dbg !149
  store %Uint32 %"$NatUtils.nat_to_int_call_1798", %Uint32* %"$NatUtils.nat_to_int_78", align 4, !dbg !149
  %"$$NatUtils.nat_to_int_78_1799" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_78", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_78_1799", %Uint32* %int10, align 4, !dbg !149
  %"$gasrem_1800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1801" = icmp ugt i64 1, %"$gasrem_1800"
  br i1 %"$gascmp_1801", label %"$out_of_gas_1802", label %"$have_gas_1803"

"$out_of_gas_1802":                               ; preds = %"$have_gas_1792"
  call void @_out_of_gas()
  br label %"$have_gas_1803"

"$have_gas_1803":                                 ; preds = %"$out_of_gas_1802", %"$have_gas_1792"
  %"$consume_1804" = sub i64 %"$gasrem_1800", 1
  store i64 %"$consume_1804", i64* @_gasrem, align 8
  %int11 = alloca %Uint32, align 8
  %"$gasrem_1805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1806" = icmp ugt i64 1, %"$gasrem_1805"
  br i1 %"$gascmp_1806", label %"$out_of_gas_1807", label %"$have_gas_1808"

"$out_of_gas_1807":                               ; preds = %"$have_gas_1803"
  call void @_out_of_gas()
  br label %"$have_gas_1808"

"$have_gas_1808":                                 ; preds = %"$out_of_gas_1807", %"$have_gas_1803"
  %"$consume_1809" = sub i64 %"$gasrem_1805", 1
  store i64 %"$consume_1809", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_79" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1810" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1811" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1810", 0
  %"$NatUtils.nat_to_int_envptr_1812" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1810", 1
  %"$ack11_1813" = load %TName_Nat*, %TName_Nat** %ack11, align 8
  %"$NatUtils.nat_to_int_call_1814" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1811"(i8* %"$NatUtils.nat_to_int_envptr_1812", %TName_Nat* %"$ack11_1813"), !dbg !150
  store %Uint32 %"$NatUtils.nat_to_int_call_1814", %Uint32* %"$NatUtils.nat_to_int_79", align 4, !dbg !150
  %"$$NatUtils.nat_to_int_79_1815" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_79", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_79_1815", %Uint32* %int11, align 4, !dbg !150
  %"$gasrem_1816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1817" = icmp ugt i64 1, %"$gasrem_1816"
  br i1 %"$gascmp_1817", label %"$out_of_gas_1818", label %"$have_gas_1819"

"$out_of_gas_1818":                               ; preds = %"$have_gas_1808"
  call void @_out_of_gas()
  br label %"$have_gas_1819"

"$have_gas_1819":                                 ; preds = %"$out_of_gas_1818", %"$have_gas_1808"
  %"$consume_1820" = sub i64 %"$gasrem_1816", 1
  store i64 %"$consume_1820", i64* @_gasrem, align 8
  %int12 = alloca %Uint32, align 8
  %"$gasrem_1821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1822" = icmp ugt i64 1, %"$gasrem_1821"
  br i1 %"$gascmp_1822", label %"$out_of_gas_1823", label %"$have_gas_1824"

"$out_of_gas_1823":                               ; preds = %"$have_gas_1819"
  call void @_out_of_gas()
  br label %"$have_gas_1824"

"$have_gas_1824":                                 ; preds = %"$out_of_gas_1823", %"$have_gas_1819"
  %"$consume_1825" = sub i64 %"$gasrem_1821", 1
  store i64 %"$consume_1825", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_80" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1826" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1827" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1826", 0
  %"$NatUtils.nat_to_int_envptr_1828" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1826", 1
  %"$ack12_1829" = load %TName_Nat*, %TName_Nat** %ack12, align 8
  %"$NatUtils.nat_to_int_call_1830" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1827"(i8* %"$NatUtils.nat_to_int_envptr_1828", %TName_Nat* %"$ack12_1829"), !dbg !151
  store %Uint32 %"$NatUtils.nat_to_int_call_1830", %Uint32* %"$NatUtils.nat_to_int_80", align 4, !dbg !151
  %"$$NatUtils.nat_to_int_80_1831" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_80", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_80_1831", %Uint32* %int12, align 4, !dbg !151
  %"$gasrem_1832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1833" = icmp ugt i64 1, %"$gasrem_1832"
  br i1 %"$gascmp_1833", label %"$out_of_gas_1834", label %"$have_gas_1835"

"$out_of_gas_1834":                               ; preds = %"$have_gas_1824"
  call void @_out_of_gas()
  br label %"$have_gas_1835"

"$have_gas_1835":                                 ; preds = %"$out_of_gas_1834", %"$have_gas_1824"
  %"$consume_1836" = sub i64 %"$gasrem_1832", 1
  store i64 %"$consume_1836", i64* @_gasrem, align 8
  %int13 = alloca %Uint32, align 8
  %"$gasrem_1837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1838" = icmp ugt i64 1, %"$gasrem_1837"
  br i1 %"$gascmp_1838", label %"$out_of_gas_1839", label %"$have_gas_1840"

"$out_of_gas_1839":                               ; preds = %"$have_gas_1835"
  call void @_out_of_gas()
  br label %"$have_gas_1840"

"$have_gas_1840":                                 ; preds = %"$out_of_gas_1839", %"$have_gas_1835"
  %"$consume_1841" = sub i64 %"$gasrem_1837", 1
  store i64 %"$consume_1841", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_81" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1842" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1843" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1842", 0
  %"$NatUtils.nat_to_int_envptr_1844" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1842", 1
  %"$ack13_1845" = load %TName_Nat*, %TName_Nat** %ack13, align 8
  %"$NatUtils.nat_to_int_call_1846" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1843"(i8* %"$NatUtils.nat_to_int_envptr_1844", %TName_Nat* %"$ack13_1845"), !dbg !152
  store %Uint32 %"$NatUtils.nat_to_int_call_1846", %Uint32* %"$NatUtils.nat_to_int_81", align 4, !dbg !152
  %"$$NatUtils.nat_to_int_81_1847" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_81", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_81_1847", %Uint32* %int13, align 4, !dbg !152
  %"$gasrem_1848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1849" = icmp ugt i64 1, %"$gasrem_1848"
  br i1 %"$gascmp_1849", label %"$out_of_gas_1850", label %"$have_gas_1851"

"$out_of_gas_1850":                               ; preds = %"$have_gas_1840"
  call void @_out_of_gas()
  br label %"$have_gas_1851"

"$have_gas_1851":                                 ; preds = %"$out_of_gas_1850", %"$have_gas_1840"
  %"$consume_1852" = sub i64 %"$gasrem_1848", 1
  store i64 %"$consume_1852", i64* @_gasrem, align 8
  %int14 = alloca %Uint32, align 8
  %"$gasrem_1853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1854" = icmp ugt i64 1, %"$gasrem_1853"
  br i1 %"$gascmp_1854", label %"$out_of_gas_1855", label %"$have_gas_1856"

"$out_of_gas_1855":                               ; preds = %"$have_gas_1851"
  call void @_out_of_gas()
  br label %"$have_gas_1856"

"$have_gas_1856":                                 ; preds = %"$out_of_gas_1855", %"$have_gas_1851"
  %"$consume_1857" = sub i64 %"$gasrem_1853", 1
  store i64 %"$consume_1857", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_82" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1858" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1859" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1858", 0
  %"$NatUtils.nat_to_int_envptr_1860" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1858", 1
  %"$ack14_1861" = load %TName_Nat*, %TName_Nat** %ack14, align 8
  %"$NatUtils.nat_to_int_call_1862" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1859"(i8* %"$NatUtils.nat_to_int_envptr_1860", %TName_Nat* %"$ack14_1861"), !dbg !153
  store %Uint32 %"$NatUtils.nat_to_int_call_1862", %Uint32* %"$NatUtils.nat_to_int_82", align 4, !dbg !153
  %"$$NatUtils.nat_to_int_82_1863" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_82", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_82_1863", %Uint32* %int14, align 4, !dbg !153
  %"$gasrem_1864" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1865" = icmp ugt i64 1, %"$gasrem_1864"
  br i1 %"$gascmp_1865", label %"$out_of_gas_1866", label %"$have_gas_1867"

"$out_of_gas_1866":                               ; preds = %"$have_gas_1856"
  call void @_out_of_gas()
  br label %"$have_gas_1867"

"$have_gas_1867":                                 ; preds = %"$out_of_gas_1866", %"$have_gas_1856"
  %"$consume_1868" = sub i64 %"$gasrem_1864", 1
  store i64 %"$consume_1868", i64* @_gasrem, align 8
  %int20 = alloca %Uint32, align 8
  %"$gasrem_1869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1870" = icmp ugt i64 1, %"$gasrem_1869"
  br i1 %"$gascmp_1870", label %"$out_of_gas_1871", label %"$have_gas_1872"

"$out_of_gas_1871":                               ; preds = %"$have_gas_1867"
  call void @_out_of_gas()
  br label %"$have_gas_1872"

"$have_gas_1872":                                 ; preds = %"$out_of_gas_1871", %"$have_gas_1867"
  %"$consume_1873" = sub i64 %"$gasrem_1869", 1
  store i64 %"$consume_1873", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_83" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1874" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1875" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1874", 0
  %"$NatUtils.nat_to_int_envptr_1876" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1874", 1
  %"$ack20_1877" = load %TName_Nat*, %TName_Nat** %ack20, align 8
  %"$NatUtils.nat_to_int_call_1878" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1875"(i8* %"$NatUtils.nat_to_int_envptr_1876", %TName_Nat* %"$ack20_1877"), !dbg !154
  store %Uint32 %"$NatUtils.nat_to_int_call_1878", %Uint32* %"$NatUtils.nat_to_int_83", align 4, !dbg !154
  %"$$NatUtils.nat_to_int_83_1879" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_83", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_83_1879", %Uint32* %int20, align 4, !dbg !154
  %"$gasrem_1880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1881" = icmp ugt i64 1, %"$gasrem_1880"
  br i1 %"$gascmp_1881", label %"$out_of_gas_1882", label %"$have_gas_1883"

"$out_of_gas_1882":                               ; preds = %"$have_gas_1872"
  call void @_out_of_gas()
  br label %"$have_gas_1883"

"$have_gas_1883":                                 ; preds = %"$out_of_gas_1882", %"$have_gas_1872"
  %"$consume_1884" = sub i64 %"$gasrem_1880", 1
  store i64 %"$consume_1884", i64* @_gasrem, align 8
  %int21 = alloca %Uint32, align 8
  %"$gasrem_1885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1886" = icmp ugt i64 1, %"$gasrem_1885"
  br i1 %"$gascmp_1886", label %"$out_of_gas_1887", label %"$have_gas_1888"

"$out_of_gas_1887":                               ; preds = %"$have_gas_1883"
  call void @_out_of_gas()
  br label %"$have_gas_1888"

"$have_gas_1888":                                 ; preds = %"$out_of_gas_1887", %"$have_gas_1883"
  %"$consume_1889" = sub i64 %"$gasrem_1885", 1
  store i64 %"$consume_1889", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_84" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1890" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1891" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1890", 0
  %"$NatUtils.nat_to_int_envptr_1892" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1890", 1
  %"$ack21_1893" = load %TName_Nat*, %TName_Nat** %ack21, align 8
  %"$NatUtils.nat_to_int_call_1894" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1891"(i8* %"$NatUtils.nat_to_int_envptr_1892", %TName_Nat* %"$ack21_1893"), !dbg !155
  store %Uint32 %"$NatUtils.nat_to_int_call_1894", %Uint32* %"$NatUtils.nat_to_int_84", align 4, !dbg !155
  %"$$NatUtils.nat_to_int_84_1895" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_84", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_84_1895", %Uint32* %int21, align 4, !dbg !155
  %"$gasrem_1896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1897" = icmp ugt i64 1, %"$gasrem_1896"
  br i1 %"$gascmp_1897", label %"$out_of_gas_1898", label %"$have_gas_1899"

"$out_of_gas_1898":                               ; preds = %"$have_gas_1888"
  call void @_out_of_gas()
  br label %"$have_gas_1899"

"$have_gas_1899":                                 ; preds = %"$out_of_gas_1898", %"$have_gas_1888"
  %"$consume_1900" = sub i64 %"$gasrem_1896", 1
  store i64 %"$consume_1900", i64* @_gasrem, align 8
  %int22 = alloca %Uint32, align 8
  %"$gasrem_1901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1902" = icmp ugt i64 1, %"$gasrem_1901"
  br i1 %"$gascmp_1902", label %"$out_of_gas_1903", label %"$have_gas_1904"

"$out_of_gas_1903":                               ; preds = %"$have_gas_1899"
  call void @_out_of_gas()
  br label %"$have_gas_1904"

"$have_gas_1904":                                 ; preds = %"$out_of_gas_1903", %"$have_gas_1899"
  %"$consume_1905" = sub i64 %"$gasrem_1901", 1
  store i64 %"$consume_1905", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_85" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1906" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1907" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1906", 0
  %"$NatUtils.nat_to_int_envptr_1908" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1906", 1
  %"$ack22_1909" = load %TName_Nat*, %TName_Nat** %ack22, align 8
  %"$NatUtils.nat_to_int_call_1910" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1907"(i8* %"$NatUtils.nat_to_int_envptr_1908", %TName_Nat* %"$ack22_1909"), !dbg !156
  store %Uint32 %"$NatUtils.nat_to_int_call_1910", %Uint32* %"$NatUtils.nat_to_int_85", align 4, !dbg !156
  %"$$NatUtils.nat_to_int_85_1911" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_85", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_85_1911", %Uint32* %int22, align 4, !dbg !156
  %"$gasrem_1912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1913" = icmp ugt i64 1, %"$gasrem_1912"
  br i1 %"$gascmp_1913", label %"$out_of_gas_1914", label %"$have_gas_1915"

"$out_of_gas_1914":                               ; preds = %"$have_gas_1904"
  call void @_out_of_gas()
  br label %"$have_gas_1915"

"$have_gas_1915":                                 ; preds = %"$out_of_gas_1914", %"$have_gas_1904"
  %"$consume_1916" = sub i64 %"$gasrem_1912", 1
  store i64 %"$consume_1916", i64* @_gasrem, align 8
  %int23 = alloca %Uint32, align 8
  %"$gasrem_1917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1918" = icmp ugt i64 1, %"$gasrem_1917"
  br i1 %"$gascmp_1918", label %"$out_of_gas_1919", label %"$have_gas_1920"

"$out_of_gas_1919":                               ; preds = %"$have_gas_1915"
  call void @_out_of_gas()
  br label %"$have_gas_1920"

"$have_gas_1920":                                 ; preds = %"$out_of_gas_1919", %"$have_gas_1915"
  %"$consume_1921" = sub i64 %"$gasrem_1917", 1
  store i64 %"$consume_1921", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_86" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1922" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1923" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1922", 0
  %"$NatUtils.nat_to_int_envptr_1924" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1922", 1
  %"$ack23_1925" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_1926" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1923"(i8* %"$NatUtils.nat_to_int_envptr_1924", %TName_Nat* %"$ack23_1925"), !dbg !157
  store %Uint32 %"$NatUtils.nat_to_int_call_1926", %Uint32* %"$NatUtils.nat_to_int_86", align 4, !dbg !157
  %"$$NatUtils.nat_to_int_86_1927" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_86", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_86_1927", %Uint32* %int23, align 4, !dbg !157
  %"$gasrem_1928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1929" = icmp ugt i64 1, %"$gasrem_1928"
  br i1 %"$gascmp_1929", label %"$out_of_gas_1930", label %"$have_gas_1931"

"$out_of_gas_1930":                               ; preds = %"$have_gas_1920"
  call void @_out_of_gas()
  br label %"$have_gas_1931"

"$have_gas_1931":                                 ; preds = %"$out_of_gas_1930", %"$have_gas_1920"
  %"$consume_1932" = sub i64 %"$gasrem_1928", 1
  store i64 %"$consume_1932", i64* @_gasrem, align 8
  %int24 = alloca %Uint32, align 8
  %"$gasrem_1933" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1934" = icmp ugt i64 1, %"$gasrem_1933"
  br i1 %"$gascmp_1934", label %"$out_of_gas_1935", label %"$have_gas_1936"

"$out_of_gas_1935":                               ; preds = %"$have_gas_1931"
  call void @_out_of_gas()
  br label %"$have_gas_1936"

"$have_gas_1936":                                 ; preds = %"$out_of_gas_1935", %"$have_gas_1931"
  %"$consume_1937" = sub i64 %"$gasrem_1933", 1
  store i64 %"$consume_1937", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_87" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1938" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1939" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1938", 0
  %"$NatUtils.nat_to_int_envptr_1940" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1938", 1
  %"$ack23_1941" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_1942" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1939"(i8* %"$NatUtils.nat_to_int_envptr_1940", %TName_Nat* %"$ack23_1941"), !dbg !158
  store %Uint32 %"$NatUtils.nat_to_int_call_1942", %Uint32* %"$NatUtils.nat_to_int_87", align 4, !dbg !158
  %"$$NatUtils.nat_to_int_87_1943" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_87", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_87_1943", %Uint32* %int24, align 4, !dbg !158
  %"$gasrem_1944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1945" = icmp ugt i64 1, %"$gasrem_1944"
  br i1 %"$gascmp_1945", label %"$out_of_gas_1946", label %"$have_gas_1947"

"$out_of_gas_1946":                               ; preds = %"$have_gas_1936"
  call void @_out_of_gas()
  br label %"$have_gas_1947"

"$have_gas_1947":                                 ; preds = %"$out_of_gas_1946", %"$have_gas_1936"
  %"$consume_1948" = sub i64 %"$gasrem_1944", 1
  store i64 %"$consume_1948", i64* @_gasrem, align 8
  %int30 = alloca %Uint32, align 8
  %"$gasrem_1949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1950" = icmp ugt i64 1, %"$gasrem_1949"
  br i1 %"$gascmp_1950", label %"$out_of_gas_1951", label %"$have_gas_1952"

"$out_of_gas_1951":                               ; preds = %"$have_gas_1947"
  call void @_out_of_gas()
  br label %"$have_gas_1952"

"$have_gas_1952":                                 ; preds = %"$out_of_gas_1951", %"$have_gas_1947"
  %"$consume_1953" = sub i64 %"$gasrem_1949", 1
  store i64 %"$consume_1953", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_88" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1954" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1955" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1954", 0
  %"$NatUtils.nat_to_int_envptr_1956" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1954", 1
  %"$ack30_1957" = load %TName_Nat*, %TName_Nat** %ack30, align 8
  %"$NatUtils.nat_to_int_call_1958" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1955"(i8* %"$NatUtils.nat_to_int_envptr_1956", %TName_Nat* %"$ack30_1957"), !dbg !159
  store %Uint32 %"$NatUtils.nat_to_int_call_1958", %Uint32* %"$NatUtils.nat_to_int_88", align 4, !dbg !159
  %"$$NatUtils.nat_to_int_88_1959" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_88", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_88_1959", %Uint32* %int30, align 4, !dbg !159
  %"$gasrem_1960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1961" = icmp ugt i64 1, %"$gasrem_1960"
  br i1 %"$gascmp_1961", label %"$out_of_gas_1962", label %"$have_gas_1963"

"$out_of_gas_1962":                               ; preds = %"$have_gas_1952"
  call void @_out_of_gas()
  br label %"$have_gas_1963"

"$have_gas_1963":                                 ; preds = %"$out_of_gas_1962", %"$have_gas_1952"
  %"$consume_1964" = sub i64 %"$gasrem_1960", 1
  store i64 %"$consume_1964", i64* @_gasrem, align 8
  %int31 = alloca %Uint32, align 8
  %"$gasrem_1965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1966" = icmp ugt i64 1, %"$gasrem_1965"
  br i1 %"$gascmp_1966", label %"$out_of_gas_1967", label %"$have_gas_1968"

"$out_of_gas_1967":                               ; preds = %"$have_gas_1963"
  call void @_out_of_gas()
  br label %"$have_gas_1968"

"$have_gas_1968":                                 ; preds = %"$out_of_gas_1967", %"$have_gas_1963"
  %"$consume_1969" = sub i64 %"$gasrem_1965", 1
  store i64 %"$consume_1969", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_89" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1970" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1971" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1970", 0
  %"$NatUtils.nat_to_int_envptr_1972" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1970", 1
  %"$ack31_1973" = load %TName_Nat*, %TName_Nat** %ack31, align 8
  %"$NatUtils.nat_to_int_call_1974" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1971"(i8* %"$NatUtils.nat_to_int_envptr_1972", %TName_Nat* %"$ack31_1973"), !dbg !160
  store %Uint32 %"$NatUtils.nat_to_int_call_1974", %Uint32* %"$NatUtils.nat_to_int_89", align 4, !dbg !160
  %"$$NatUtils.nat_to_int_89_1975" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_89", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_89_1975", %Uint32* %int31, align 4, !dbg !160
  %"$gasrem_1976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1977" = icmp ugt i64 1, %"$gasrem_1976"
  br i1 %"$gascmp_1977", label %"$out_of_gas_1978", label %"$have_gas_1979"

"$out_of_gas_1978":                               ; preds = %"$have_gas_1968"
  call void @_out_of_gas()
  br label %"$have_gas_1979"

"$have_gas_1979":                                 ; preds = %"$out_of_gas_1978", %"$have_gas_1968"
  %"$consume_1980" = sub i64 %"$gasrem_1976", 1
  store i64 %"$consume_1980", i64* @_gasrem, align 8
  %int32 = alloca %Uint32, align 8
  %"$gasrem_1981" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1982" = icmp ugt i64 1, %"$gasrem_1981"
  br i1 %"$gascmp_1982", label %"$out_of_gas_1983", label %"$have_gas_1984"

"$out_of_gas_1983":                               ; preds = %"$have_gas_1979"
  call void @_out_of_gas()
  br label %"$have_gas_1984"

"$have_gas_1984":                                 ; preds = %"$out_of_gas_1983", %"$have_gas_1979"
  %"$consume_1985" = sub i64 %"$gasrem_1981", 1
  store i64 %"$consume_1985", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_90" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1986" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1987" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1986", 0
  %"$NatUtils.nat_to_int_envptr_1988" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1986", 1
  %"$ack32_1989" = load %TName_Nat*, %TName_Nat** %ack32, align 8
  %"$NatUtils.nat_to_int_call_1990" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1987"(i8* %"$NatUtils.nat_to_int_envptr_1988", %TName_Nat* %"$ack32_1989"), !dbg !161
  store %Uint32 %"$NatUtils.nat_to_int_call_1990", %Uint32* %"$NatUtils.nat_to_int_90", align 4, !dbg !161
  %"$$NatUtils.nat_to_int_90_1991" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_90", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_90_1991", %Uint32* %int32, align 4, !dbg !161
  %"$gasrem_1992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1993" = icmp ugt i64 1, %"$gasrem_1992"
  br i1 %"$gascmp_1993", label %"$out_of_gas_1994", label %"$have_gas_1995"

"$out_of_gas_1994":                               ; preds = %"$have_gas_1984"
  call void @_out_of_gas()
  br label %"$have_gas_1995"

"$have_gas_1995":                                 ; preds = %"$out_of_gas_1994", %"$have_gas_1984"
  %"$consume_1996" = sub i64 %"$gasrem_1992", 1
  store i64 %"$consume_1996", i64* @_gasrem, align 8
  %int33 = alloca %Uint32, align 8
  %"$gasrem_1997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1998" = icmp ugt i64 1, %"$gasrem_1997"
  br i1 %"$gascmp_1998", label %"$out_of_gas_1999", label %"$have_gas_2000"

"$out_of_gas_1999":                               ; preds = %"$have_gas_1995"
  call void @_out_of_gas()
  br label %"$have_gas_2000"

"$have_gas_2000":                                 ; preds = %"$out_of_gas_1999", %"$have_gas_1995"
  %"$consume_2001" = sub i64 %"$gasrem_1997", 1
  store i64 %"$consume_2001", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_91" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2002" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2003" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2002", 0
  %"$NatUtils.nat_to_int_envptr_2004" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2002", 1
  %"$ack33_2005" = load %TName_Nat*, %TName_Nat** %ack33, align 8
  %"$NatUtils.nat_to_int_call_2006" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2003"(i8* %"$NatUtils.nat_to_int_envptr_2004", %TName_Nat* %"$ack33_2005"), !dbg !162
  store %Uint32 %"$NatUtils.nat_to_int_call_2006", %Uint32* %"$NatUtils.nat_to_int_91", align 4, !dbg !162
  %"$$NatUtils.nat_to_int_91_2007" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_91", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_91_2007", %Uint32* %int33, align 4, !dbg !162
  %"$gasrem_2008" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2009" = icmp ugt i64 1, %"$gasrem_2008"
  br i1 %"$gascmp_2009", label %"$out_of_gas_2010", label %"$have_gas_2011"

"$out_of_gas_2010":                               ; preds = %"$have_gas_2000"
  call void @_out_of_gas()
  br label %"$have_gas_2011"

"$have_gas_2011":                                 ; preds = %"$out_of_gas_2010", %"$have_gas_2000"
  %"$consume_2012" = sub i64 %"$gasrem_2008", 1
  store i64 %"$consume_2012", i64* @_gasrem, align 8
  %int34 = alloca %Uint32, align 8
  %"$gasrem_2013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2014" = icmp ugt i64 1, %"$gasrem_2013"
  br i1 %"$gascmp_2014", label %"$out_of_gas_2015", label %"$have_gas_2016"

"$out_of_gas_2015":                               ; preds = %"$have_gas_2011"
  call void @_out_of_gas()
  br label %"$have_gas_2016"

"$have_gas_2016":                                 ; preds = %"$out_of_gas_2015", %"$have_gas_2011"
  %"$consume_2017" = sub i64 %"$gasrem_2013", 1
  store i64 %"$consume_2017", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_92" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2018" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2019" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2018", 0
  %"$NatUtils.nat_to_int_envptr_2020" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2018", 1
  %"$ack34_2021" = load %TName_Nat*, %TName_Nat** %ack34, align 8
  %"$NatUtils.nat_to_int_call_2022" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2019"(i8* %"$NatUtils.nat_to_int_envptr_2020", %TName_Nat* %"$ack34_2021"), !dbg !163
  store %Uint32 %"$NatUtils.nat_to_int_call_2022", %Uint32* %"$NatUtils.nat_to_int_92", align 4, !dbg !163
  %"$$NatUtils.nat_to_int_92_2023" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_92", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_92_2023", %Uint32* %int34, align 4, !dbg !163
  %"$gasrem_2024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2025" = icmp ugt i64 1, %"$gasrem_2024"
  br i1 %"$gascmp_2025", label %"$out_of_gas_2026", label %"$have_gas_2027"

"$out_of_gas_2026":                               ; preds = %"$have_gas_2016"
  call void @_out_of_gas()
  br label %"$have_gas_2027"

"$have_gas_2027":                                 ; preds = %"$out_of_gas_2026", %"$have_gas_2016"
  %"$consume_2028" = sub i64 %"$gasrem_2024", 1
  store i64 %"$consume_2028", i64* @_gasrem, align 8
  %int40 = alloca %Uint32, align 8
  %"$gasrem_2029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2030" = icmp ugt i64 1, %"$gasrem_2029"
  br i1 %"$gascmp_2030", label %"$out_of_gas_2031", label %"$have_gas_2032"

"$out_of_gas_2031":                               ; preds = %"$have_gas_2027"
  call void @_out_of_gas()
  br label %"$have_gas_2032"

"$have_gas_2032":                                 ; preds = %"$out_of_gas_2031", %"$have_gas_2027"
  %"$consume_2033" = sub i64 %"$gasrem_2029", 1
  store i64 %"$consume_2033", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_93" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2034" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2035" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2034", 0
  %"$NatUtils.nat_to_int_envptr_2036" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2034", 1
  %"$ack40_2037" = load %TName_Nat*, %TName_Nat** %ack40, align 8
  %"$NatUtils.nat_to_int_call_2038" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2035"(i8* %"$NatUtils.nat_to_int_envptr_2036", %TName_Nat* %"$ack40_2037"), !dbg !164
  store %Uint32 %"$NatUtils.nat_to_int_call_2038", %Uint32* %"$NatUtils.nat_to_int_93", align 4, !dbg !164
  %"$$NatUtils.nat_to_int_93_2039" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_93", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_93_2039", %Uint32* %int40, align 4, !dbg !164
  %"$gasrem_2040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2041" = icmp ugt i64 1, %"$gasrem_2040"
  br i1 %"$gascmp_2041", label %"$out_of_gas_2042", label %"$have_gas_2043"

"$out_of_gas_2042":                               ; preds = %"$have_gas_2032"
  call void @_out_of_gas()
  br label %"$have_gas_2043"

"$have_gas_2043":                                 ; preds = %"$out_of_gas_2042", %"$have_gas_2032"
  %"$consume_2044" = sub i64 %"$gasrem_2040", 1
  store i64 %"$consume_2044", i64* @_gasrem, align 8
  %sum = alloca %Uint32, align 8
  %"$int01_2045" = load %Uint32, %Uint32* %int01, align 4
  %"$int02_2046" = load %Uint32, %Uint32* %int02, align 4
  %"$add_call_2047" = call %Uint32 @_add_Uint32(%Uint32 %"$int01_2045", %Uint32 %"$int02_2046"), !dbg !165
  store %Uint32 %"$add_call_2047", %Uint32* %sum, align 4, !dbg !165
  %"$gasrem_2048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2049" = icmp ugt i64 1, %"$gasrem_2048"
  br i1 %"$gascmp_2049", label %"$out_of_gas_2050", label %"$have_gas_2051"

"$out_of_gas_2050":                               ; preds = %"$have_gas_2043"
  call void @_out_of_gas()
  br label %"$have_gas_2051"

"$have_gas_2051":                                 ; preds = %"$out_of_gas_2050", %"$have_gas_2043"
  %"$consume_2052" = sub i64 %"$gasrem_2048", 1
  store i64 %"$consume_2052", i64* @_gasrem, align 8
  %"$sum_0" = alloca %Uint32, align 8
  %"$sum_2053" = load %Uint32, %Uint32* %sum, align 4
  %"$int03_2054" = load %Uint32, %Uint32* %int03, align 4
  %"$add_call_2055" = call %Uint32 @_add_Uint32(%Uint32 %"$sum_2053", %Uint32 %"$int03_2054"), !dbg !166
  store %Uint32 %"$add_call_2055", %Uint32* %"$sum_0", align 4, !dbg !166
  %"$gasrem_2056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2057" = icmp ugt i64 1, %"$gasrem_2056"
  br i1 %"$gascmp_2057", label %"$out_of_gas_2058", label %"$have_gas_2059"

"$out_of_gas_2058":                               ; preds = %"$have_gas_2051"
  call void @_out_of_gas()
  br label %"$have_gas_2059"

"$have_gas_2059":                                 ; preds = %"$out_of_gas_2058", %"$have_gas_2051"
  %"$consume_2060" = sub i64 %"$gasrem_2056", 1
  store i64 %"$consume_2060", i64* @_gasrem, align 8
  %"$sum_1" = alloca %Uint32, align 8
  %"$$sum_0_2061" = load %Uint32, %Uint32* %"$sum_0", align 4
  %"$int04_2062" = load %Uint32, %Uint32* %int04, align 4
  %"$add_call_2063" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_0_2061", %Uint32 %"$int04_2062"), !dbg !167
  store %Uint32 %"$add_call_2063", %Uint32* %"$sum_1", align 4, !dbg !167
  %"$gasrem_2064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2065" = icmp ugt i64 1, %"$gasrem_2064"
  br i1 %"$gascmp_2065", label %"$out_of_gas_2066", label %"$have_gas_2067"

"$out_of_gas_2066":                               ; preds = %"$have_gas_2059"
  call void @_out_of_gas()
  br label %"$have_gas_2067"

"$have_gas_2067":                                 ; preds = %"$out_of_gas_2066", %"$have_gas_2059"
  %"$consume_2068" = sub i64 %"$gasrem_2064", 1
  store i64 %"$consume_2068", i64* @_gasrem, align 8
  %"$sum_2" = alloca %Uint32, align 8
  %"$$sum_1_2069" = load %Uint32, %Uint32* %"$sum_1", align 4
  %"$int10_2070" = load %Uint32, %Uint32* %int10, align 4
  %"$add_call_2071" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_1_2069", %Uint32 %"$int10_2070"), !dbg !168
  store %Uint32 %"$add_call_2071", %Uint32* %"$sum_2", align 4, !dbg !168
  %"$gasrem_2072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2073" = icmp ugt i64 1, %"$gasrem_2072"
  br i1 %"$gascmp_2073", label %"$out_of_gas_2074", label %"$have_gas_2075"

"$out_of_gas_2074":                               ; preds = %"$have_gas_2067"
  call void @_out_of_gas()
  br label %"$have_gas_2075"

"$have_gas_2075":                                 ; preds = %"$out_of_gas_2074", %"$have_gas_2067"
  %"$consume_2076" = sub i64 %"$gasrem_2072", 1
  store i64 %"$consume_2076", i64* @_gasrem, align 8
  %"$sum_3" = alloca %Uint32, align 8
  %"$$sum_2_2077" = load %Uint32, %Uint32* %"$sum_2", align 4
  %"$int11_2078" = load %Uint32, %Uint32* %int11, align 4
  %"$add_call_2079" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_2_2077", %Uint32 %"$int11_2078"), !dbg !169
  store %Uint32 %"$add_call_2079", %Uint32* %"$sum_3", align 4, !dbg !169
  %"$gasrem_2080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2081" = icmp ugt i64 1, %"$gasrem_2080"
  br i1 %"$gascmp_2081", label %"$out_of_gas_2082", label %"$have_gas_2083"

"$out_of_gas_2082":                               ; preds = %"$have_gas_2075"
  call void @_out_of_gas()
  br label %"$have_gas_2083"

"$have_gas_2083":                                 ; preds = %"$out_of_gas_2082", %"$have_gas_2075"
  %"$consume_2084" = sub i64 %"$gasrem_2080", 1
  store i64 %"$consume_2084", i64* @_gasrem, align 8
  %"$sum_4" = alloca %Uint32, align 8
  %"$$sum_3_2085" = load %Uint32, %Uint32* %"$sum_3", align 4
  %"$int12_2086" = load %Uint32, %Uint32* %int12, align 4
  %"$add_call_2087" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_3_2085", %Uint32 %"$int12_2086"), !dbg !170
  store %Uint32 %"$add_call_2087", %Uint32* %"$sum_4", align 4, !dbg !170
  %"$gasrem_2088" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2089" = icmp ugt i64 1, %"$gasrem_2088"
  br i1 %"$gascmp_2089", label %"$out_of_gas_2090", label %"$have_gas_2091"

"$out_of_gas_2090":                               ; preds = %"$have_gas_2083"
  call void @_out_of_gas()
  br label %"$have_gas_2091"

"$have_gas_2091":                                 ; preds = %"$out_of_gas_2090", %"$have_gas_2083"
  %"$consume_2092" = sub i64 %"$gasrem_2088", 1
  store i64 %"$consume_2092", i64* @_gasrem, align 8
  %"$sum_5" = alloca %Uint32, align 8
  %"$$sum_4_2093" = load %Uint32, %Uint32* %"$sum_4", align 4
  %"$int13_2094" = load %Uint32, %Uint32* %int13, align 4
  %"$add_call_2095" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_4_2093", %Uint32 %"$int13_2094"), !dbg !171
  store %Uint32 %"$add_call_2095", %Uint32* %"$sum_5", align 4, !dbg !171
  %"$gasrem_2096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2097" = icmp ugt i64 1, %"$gasrem_2096"
  br i1 %"$gascmp_2097", label %"$out_of_gas_2098", label %"$have_gas_2099"

"$out_of_gas_2098":                               ; preds = %"$have_gas_2091"
  call void @_out_of_gas()
  br label %"$have_gas_2099"

"$have_gas_2099":                                 ; preds = %"$out_of_gas_2098", %"$have_gas_2091"
  %"$consume_2100" = sub i64 %"$gasrem_2096", 1
  store i64 %"$consume_2100", i64* @_gasrem, align 8
  %"$sum_6" = alloca %Uint32, align 8
  %"$$sum_5_2101" = load %Uint32, %Uint32* %"$sum_5", align 4
  %"$int14_2102" = load %Uint32, %Uint32* %int14, align 4
  %"$add_call_2103" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_5_2101", %Uint32 %"$int14_2102"), !dbg !172
  store %Uint32 %"$add_call_2103", %Uint32* %"$sum_6", align 4, !dbg !172
  %"$gasrem_2104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2105" = icmp ugt i64 1, %"$gasrem_2104"
  br i1 %"$gascmp_2105", label %"$out_of_gas_2106", label %"$have_gas_2107"

"$out_of_gas_2106":                               ; preds = %"$have_gas_2099"
  call void @_out_of_gas()
  br label %"$have_gas_2107"

"$have_gas_2107":                                 ; preds = %"$out_of_gas_2106", %"$have_gas_2099"
  %"$consume_2108" = sub i64 %"$gasrem_2104", 1
  store i64 %"$consume_2108", i64* @_gasrem, align 8
  %"$sum_7" = alloca %Uint32, align 8
  %"$$sum_6_2109" = load %Uint32, %Uint32* %"$sum_6", align 4
  %"$int20_2110" = load %Uint32, %Uint32* %int20, align 4
  %"$add_call_2111" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_6_2109", %Uint32 %"$int20_2110"), !dbg !173
  store %Uint32 %"$add_call_2111", %Uint32* %"$sum_7", align 4, !dbg !173
  %"$gasrem_2112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2113" = icmp ugt i64 1, %"$gasrem_2112"
  br i1 %"$gascmp_2113", label %"$out_of_gas_2114", label %"$have_gas_2115"

"$out_of_gas_2114":                               ; preds = %"$have_gas_2107"
  call void @_out_of_gas()
  br label %"$have_gas_2115"

"$have_gas_2115":                                 ; preds = %"$out_of_gas_2114", %"$have_gas_2107"
  %"$consume_2116" = sub i64 %"$gasrem_2112", 1
  store i64 %"$consume_2116", i64* @_gasrem, align 8
  %"$sum_8" = alloca %Uint32, align 8
  %"$$sum_7_2117" = load %Uint32, %Uint32* %"$sum_7", align 4
  %"$int21_2118" = load %Uint32, %Uint32* %int21, align 4
  %"$add_call_2119" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_7_2117", %Uint32 %"$int21_2118"), !dbg !174
  store %Uint32 %"$add_call_2119", %Uint32* %"$sum_8", align 4, !dbg !174
  %"$gasrem_2120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2121" = icmp ugt i64 1, %"$gasrem_2120"
  br i1 %"$gascmp_2121", label %"$out_of_gas_2122", label %"$have_gas_2123"

"$out_of_gas_2122":                               ; preds = %"$have_gas_2115"
  call void @_out_of_gas()
  br label %"$have_gas_2123"

"$have_gas_2123":                                 ; preds = %"$out_of_gas_2122", %"$have_gas_2115"
  %"$consume_2124" = sub i64 %"$gasrem_2120", 1
  store i64 %"$consume_2124", i64* @_gasrem, align 8
  %"$sum_9" = alloca %Uint32, align 8
  %"$$sum_8_2125" = load %Uint32, %Uint32* %"$sum_8", align 4
  %"$int22_2126" = load %Uint32, %Uint32* %int22, align 4
  %"$add_call_2127" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_8_2125", %Uint32 %"$int22_2126"), !dbg !175
  store %Uint32 %"$add_call_2127", %Uint32* %"$sum_9", align 4, !dbg !175
  %"$gasrem_2128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2129" = icmp ugt i64 1, %"$gasrem_2128"
  br i1 %"$gascmp_2129", label %"$out_of_gas_2130", label %"$have_gas_2131"

"$out_of_gas_2130":                               ; preds = %"$have_gas_2123"
  call void @_out_of_gas()
  br label %"$have_gas_2131"

"$have_gas_2131":                                 ; preds = %"$out_of_gas_2130", %"$have_gas_2123"
  %"$consume_2132" = sub i64 %"$gasrem_2128", 1
  store i64 %"$consume_2132", i64* @_gasrem, align 8
  %"$sum_10" = alloca %Uint32, align 8
  %"$$sum_9_2133" = load %Uint32, %Uint32* %"$sum_9", align 4
  %"$int23_2134" = load %Uint32, %Uint32* %int23, align 4
  %"$add_call_2135" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_9_2133", %Uint32 %"$int23_2134"), !dbg !176
  store %Uint32 %"$add_call_2135", %Uint32* %"$sum_10", align 4, !dbg !176
  %"$gasrem_2136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2137" = icmp ugt i64 1, %"$gasrem_2136"
  br i1 %"$gascmp_2137", label %"$out_of_gas_2138", label %"$have_gas_2139"

"$out_of_gas_2138":                               ; preds = %"$have_gas_2131"
  call void @_out_of_gas()
  br label %"$have_gas_2139"

"$have_gas_2139":                                 ; preds = %"$out_of_gas_2138", %"$have_gas_2131"
  %"$consume_2140" = sub i64 %"$gasrem_2136", 1
  store i64 %"$consume_2140", i64* @_gasrem, align 8
  %"$sum_11" = alloca %Uint32, align 8
  %"$$sum_10_2141" = load %Uint32, %Uint32* %"$sum_10", align 4
  %"$int24_2142" = load %Uint32, %Uint32* %int24, align 4
  %"$add_call_2143" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_10_2141", %Uint32 %"$int24_2142"), !dbg !177
  store %Uint32 %"$add_call_2143", %Uint32* %"$sum_11", align 4, !dbg !177
  %"$gasrem_2144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2145" = icmp ugt i64 1, %"$gasrem_2144"
  br i1 %"$gascmp_2145", label %"$out_of_gas_2146", label %"$have_gas_2147"

"$out_of_gas_2146":                               ; preds = %"$have_gas_2139"
  call void @_out_of_gas()
  br label %"$have_gas_2147"

"$have_gas_2147":                                 ; preds = %"$out_of_gas_2146", %"$have_gas_2139"
  %"$consume_2148" = sub i64 %"$gasrem_2144", 1
  store i64 %"$consume_2148", i64* @_gasrem, align 8
  %"$sum_12" = alloca %Uint32, align 8
  %"$$sum_11_2149" = load %Uint32, %Uint32* %"$sum_11", align 4
  %"$int30_2150" = load %Uint32, %Uint32* %int30, align 4
  %"$add_call_2151" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_11_2149", %Uint32 %"$int30_2150"), !dbg !178
  store %Uint32 %"$add_call_2151", %Uint32* %"$sum_12", align 4, !dbg !178
  %"$gasrem_2152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2153" = icmp ugt i64 1, %"$gasrem_2152"
  br i1 %"$gascmp_2153", label %"$out_of_gas_2154", label %"$have_gas_2155"

"$out_of_gas_2154":                               ; preds = %"$have_gas_2147"
  call void @_out_of_gas()
  br label %"$have_gas_2155"

"$have_gas_2155":                                 ; preds = %"$out_of_gas_2154", %"$have_gas_2147"
  %"$consume_2156" = sub i64 %"$gasrem_2152", 1
  store i64 %"$consume_2156", i64* @_gasrem, align 8
  %"$sum_13" = alloca %Uint32, align 8
  %"$$sum_12_2157" = load %Uint32, %Uint32* %"$sum_12", align 4
  %"$int31_2158" = load %Uint32, %Uint32* %int31, align 4
  %"$add_call_2159" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_12_2157", %Uint32 %"$int31_2158"), !dbg !179
  store %Uint32 %"$add_call_2159", %Uint32* %"$sum_13", align 4, !dbg !179
  %"$gasrem_2160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2161" = icmp ugt i64 1, %"$gasrem_2160"
  br i1 %"$gascmp_2161", label %"$out_of_gas_2162", label %"$have_gas_2163"

"$out_of_gas_2162":                               ; preds = %"$have_gas_2155"
  call void @_out_of_gas()
  br label %"$have_gas_2163"

"$have_gas_2163":                                 ; preds = %"$out_of_gas_2162", %"$have_gas_2155"
  %"$consume_2164" = sub i64 %"$gasrem_2160", 1
  store i64 %"$consume_2164", i64* @_gasrem, align 8
  %"$sum_14" = alloca %Uint32, align 8
  %"$$sum_13_2165" = load %Uint32, %Uint32* %"$sum_13", align 4
  %"$int32_2166" = load %Uint32, %Uint32* %int32, align 4
  %"$add_call_2167" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_13_2165", %Uint32 %"$int32_2166"), !dbg !180
  store %Uint32 %"$add_call_2167", %Uint32* %"$sum_14", align 4, !dbg !180
  %"$gasrem_2168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2169" = icmp ugt i64 1, %"$gasrem_2168"
  br i1 %"$gascmp_2169", label %"$out_of_gas_2170", label %"$have_gas_2171"

"$out_of_gas_2170":                               ; preds = %"$have_gas_2163"
  call void @_out_of_gas()
  br label %"$have_gas_2171"

"$have_gas_2171":                                 ; preds = %"$out_of_gas_2170", %"$have_gas_2163"
  %"$consume_2172" = sub i64 %"$gasrem_2168", 1
  store i64 %"$consume_2172", i64* @_gasrem, align 8
  %"$sum_15" = alloca %Uint32, align 8
  %"$$sum_14_2173" = load %Uint32, %Uint32* %"$sum_14", align 4
  %"$int33_2174" = load %Uint32, %Uint32* %int33, align 4
  %"$add_call_2175" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_14_2173", %Uint32 %"$int33_2174"), !dbg !181
  store %Uint32 %"$add_call_2175", %Uint32* %"$sum_15", align 4, !dbg !181
  %"$gasrem_2176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2177" = icmp ugt i64 1, %"$gasrem_2176"
  br i1 %"$gascmp_2177", label %"$out_of_gas_2178", label %"$have_gas_2179"

"$out_of_gas_2178":                               ; preds = %"$have_gas_2171"
  call void @_out_of_gas()
  br label %"$have_gas_2179"

"$have_gas_2179":                                 ; preds = %"$out_of_gas_2178", %"$have_gas_2171"
  %"$consume_2180" = sub i64 %"$gasrem_2176", 1
  store i64 %"$consume_2180", i64* @_gasrem, align 8
  %"$sum_16" = alloca %Uint32, align 8
  %"$$sum_15_2181" = load %Uint32, %Uint32* %"$sum_15", align 4
  %"$int34_2182" = load %Uint32, %Uint32* %int34, align 4
  %"$add_call_2183" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_15_2181", %Uint32 %"$int34_2182"), !dbg !182
  store %Uint32 %"$add_call_2183", %Uint32* %"$sum_16", align 4, !dbg !182
  %"$gasrem_2184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2185" = icmp ugt i64 1, %"$gasrem_2184"
  br i1 %"$gascmp_2185", label %"$out_of_gas_2186", label %"$have_gas_2187"

"$out_of_gas_2186":                               ; preds = %"$have_gas_2179"
  call void @_out_of_gas()
  br label %"$have_gas_2187"

"$have_gas_2187":                                 ; preds = %"$out_of_gas_2186", %"$have_gas_2179"
  %"$consume_2188" = sub i64 %"$gasrem_2184", 1
  store i64 %"$consume_2188", i64* @_gasrem, align 8
  %"$sum_17" = alloca %Uint32, align 8
  %"$$sum_16_2189" = load %Uint32, %Uint32* %"$sum_16", align 4
  %"$int40_2190" = load %Uint32, %Uint32* %int40, align 4
  %"$add_call_2191" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_16_2189", %Uint32 %"$int40_2190"), !dbg !183
  store %Uint32 %"$add_call_2191", %Uint32* %"$sum_17", align 4, !dbg !183
  %"$gasrem_2192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2193" = icmp ugt i64 1, %"$gasrem_2192"
  br i1 %"$gascmp_2193", label %"$out_of_gas_2194", label %"$have_gas_2195"

"$out_of_gas_2194":                               ; preds = %"$have_gas_2187"
  call void @_out_of_gas()
  br label %"$have_gas_2195"

"$have_gas_2195":                                 ; preds = %"$out_of_gas_2194", %"$have_gas_2187"
  %"$consume_2196" = sub i64 %"$gasrem_2192", 1
  store i64 %"$consume_2196", i64* @_gasrem, align 8
  %"$$sum_17_2197" = load %Uint32, %Uint32* %"$sum_17", align 4
  store %Uint32 %"$$sum_17_2197", %Uint32* %"$expr_124", align 4, !dbg !184
  %"$$expr_124_2198" = load %Uint32, %Uint32* %"$expr_124", align 4
  ret %Uint32 %"$$expr_124_2198"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_2199" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_2200" = alloca %Uint32, align 8
  %"$memvoidcast_2201" = bitcast %Uint32* %"$pval_2200" to i8*
  store %Uint32 %"$exprval_2199", %Uint32* %"$pval_2200", align 4
  %"$execptr_load_2202" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2202", %_TyDescrTy_Typ* @"$TyDescr_Uint32_161", i8* %"$memvoidcast_2201")
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
