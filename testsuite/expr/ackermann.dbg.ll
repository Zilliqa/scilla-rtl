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
%"$ParamDescr_2343" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2344" = type { %ParamDescrString, i32, %"$ParamDescr_2343"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_2343"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2344"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_155"(%"$$fundef_155_env_205"* %0, %TName_Nat* %1) !dbg !4 {
entry:
  %"$$fundef_155_env_f_1025" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %0, i32 0, i32 0
  %"$f_envload_1026" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_1025", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_1026", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_155_env_iter_nat_nat_1027" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_1028" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_1027", align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_1028", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$$fundef_155_env_nat_succ_1029" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %0, i32 0, i32 2
  %"$nat_succ_envload_1030" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_1029", align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_1030", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$retval_156" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1032" = icmp ugt i64 1, %"$gasrem_1031"
  br i1 %"$gascmp_1032", label %"$out_of_gas_1033", label %"$have_gas_1034"

"$out_of_gas_1033":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1034"

"$have_gas_1034":                                 ; preds = %"$out_of_gas_1033", %entry
  %"$consume_1035" = sub i64 %"$gasrem_1031", 1
  store i64 %"$consume_1035", i64* @_gasrem, align 8
  %"$iter_nat_nat_33" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_nat_1036" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$iter_nat_nat_fptr_1037" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1036", 0
  %"$iter_nat_nat_envptr_1038" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1036", 1
  %"$f_1039" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$iter_nat_nat_call_1040" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_1037"(i8* %"$iter_nat_nat_envptr_1038", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1039"), !dbg !8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_1040", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_33", align 8, !dbg !8
  %"$iter_nat_nat_34" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$$iter_nat_nat_33_1041" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_33", align 8
  %"$$iter_nat_nat_33_fptr_1042" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_33_1041", 0
  %"$$iter_nat_nat_33_envptr_1043" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_33_1041", 1
  %"$$iter_nat_nat_33_call_1044" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_fptr_1042"(i8* %"$$iter_nat_nat_33_envptr_1043", %TName_Nat* %1), !dbg !8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_call_1044", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34", align 8, !dbg !8
  %"$iter_nat_nat_35" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_nat_34_1045" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34", align 8
  %"$$iter_nat_nat_34_fptr_1046" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_1045", 0
  %"$$iter_nat_nat_34_envptr_1047" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_1045", 1
  %"$nat_succ_1048" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$$iter_nat_nat_34_call_1049" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_34_fptr_1046"(i8* %"$$iter_nat_nat_34_envptr_1047", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1048"), !dbg !8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_34_call_1049", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_35", align 8, !dbg !8
  %"$$iter_nat_nat_35_1050" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_35", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_35_1050", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_156", align 8, !dbg !8
  %"$$retval_156_1051" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_156", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_156_1051"
}

define internal %TName_Nat* @"$fundef_153"(%"$$fundef_153_env_206"* %0, %TName_Nat* %1) !dbg !9 {
entry:
  %"$$fundef_153_env_ack_998" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %0, i32 0, i32 0
  %"$ack_envload_999" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_153_env_ack_998", align 8
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_999", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$$fundef_153_env_iter_nat_1000" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %0, i32 0, i32 1
  %"$iter_nat_envload_1001" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_1000", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_1001", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_153_env_x0_1002" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %0, i32 0, i32 2
  %"$x0_envload_1003" = load %TName_Nat*, %TName_Nat** %"$$fundef_153_env_x0_1002", align 8
  %x0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x0_envload_1003", %TName_Nat** %x0, align 8
  %"$retval_154" = alloca %TName_Nat*, align 8
  %"$gasrem_1004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1005" = icmp ugt i64 1, %"$gasrem_1004"
  br i1 %"$gascmp_1005", label %"$out_of_gas_1006", label %"$have_gas_1007"

"$out_of_gas_1006":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1007"

"$have_gas_1007":                                 ; preds = %"$out_of_gas_1006", %entry
  %"$consume_1008" = sub i64 %"$gasrem_1004", 1
  store i64 %"$consume_1008", i64* @_gasrem, align 8
  %"$iter_nat_30" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_1009" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$iter_nat_fptr_1010" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1009", 0
  %"$iter_nat_envptr_1011" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1009", 1
  %"$ack_1012" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$iter_nat_call_1013" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_1010"(i8* %"$iter_nat_envptr_1011", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_1012"), !dbg !10
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_1013", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_30", align 8, !dbg !10
  %"$iter_nat_31" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_30_1014" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_30", align 8
  %"$$iter_nat_30_fptr_1015" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_1014", 0
  %"$$iter_nat_30_envptr_1016" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_1014", 1
  %"$$iter_nat_30_call_1017" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_fptr_1015"(i8* %"$$iter_nat_30_envptr_1016", %TName_Nat* %1), !dbg !10
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_call_1017", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_31", align 8, !dbg !10
  %"$iter_nat_32" = alloca %TName_Nat*, align 8
  %"$$iter_nat_31_1018" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_31", align 8
  %"$$iter_nat_31_fptr_1019" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_31_1018", 0
  %"$$iter_nat_31_envptr_1020" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_31_1018", 1
  %"$x0_1021" = load %TName_Nat*, %TName_Nat** %x0, align 8
  %"$$iter_nat_31_call_1022" = call %TName_Nat* %"$$iter_nat_31_fptr_1019"(i8* %"$$iter_nat_31_envptr_1020", %TName_Nat* %"$x0_1021"), !dbg !10
  store %TName_Nat* %"$$iter_nat_31_call_1022", %TName_Nat** %"$iter_nat_32", align 8, !dbg !10
  %"$$iter_nat_32_1023" = load %TName_Nat*, %TName_Nat** %"$iter_nat_32", align 8
  store %TName_Nat* %"$$iter_nat_32_1023", %TName_Nat** %"$retval_154", align 8, !dbg !10
  %"$$retval_154_1024" = load %TName_Nat*, %TName_Nat** %"$retval_154", align 8
  ret %TName_Nat* %"$$retval_154_1024"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_151"(%"$$fundef_151_env_207"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !11 {
entry:
  %"$$fundef_151_env_iter_nat_964" = getelementptr inbounds %"$$fundef_151_env_207", %"$$fundef_151_env_207"* %0, i32 0, i32 0
  %"$iter_nat_envload_965" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_964", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_965", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_151_env_one_966" = getelementptr inbounds %"$$fundef_151_env_207", %"$$fundef_151_env_207"* %0, i32 0, i32 1
  %"$one_envload_967" = load %TName_Nat*, %TName_Nat** %"$$fundef_151_env_one_966", align 8
  %one = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$one_envload_967", %TName_Nat** %one, align 8
  %"$retval_152" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_969" = icmp ugt i64 1, %"$gasrem_968"
  br i1 %"$gascmp_969", label %"$out_of_gas_970", label %"$have_gas_971"

"$out_of_gas_970":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_971"

"$have_gas_971":                                  ; preds = %"$out_of_gas_970", %entry
  %"$consume_972" = sub i64 %"$gasrem_968", 1
  store i64 %"$consume_972", i64* @_gasrem, align 8
  %x0 = alloca %TName_Nat*, align 8
  %"$gasrem_973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_974" = icmp ugt i64 1, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %"$have_gas_971"
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %"$have_gas_971"
  %"$consume_977" = sub i64 %"$gasrem_973", 1
  store i64 %"$consume_977", i64* @_gasrem, align 8
  %"$ack_29" = alloca %TName_Nat*, align 8
  %"$ack_fptr_978" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_979" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_980" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$ack_call_981" = call %TName_Nat* %"$ack_fptr_978"(i8* %"$ack_envptr_979", %TName_Nat* %"$one_980"), !dbg !12
  store %TName_Nat* %"$ack_call_981", %TName_Nat** %"$ack_29", align 8, !dbg !12
  %"$$ack_29_982" = load %TName_Nat*, %TName_Nat** %"$ack_29", align 8
  store %TName_Nat* %"$$ack_29_982", %TName_Nat** %x0, align 8, !dbg !12
  %"$gasrem_983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_984" = icmp ugt i64 1, %"$gasrem_983"
  br i1 %"$gascmp_984", label %"$out_of_gas_985", label %"$have_gas_986"

"$out_of_gas_985":                                ; preds = %"$have_gas_976"
  call void @_out_of_gas()
  br label %"$have_gas_986"

"$have_gas_986":                                  ; preds = %"$out_of_gas_985", %"$have_gas_976"
  %"$consume_987" = sub i64 %"$gasrem_983", 1
  store i64 %"$consume_987", i64* @_gasrem, align 8
  %"$$fundef_153_envp_988_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_153_envp_988_salloc" = call i8* @_salloc(i8* %"$$fundef_153_envp_988_load", i64 40)
  %"$$fundef_153_envp_988" = bitcast i8* %"$$fundef_153_envp_988_salloc" to %"$$fundef_153_env_206"*
  %"$$fundef_153_env_voidp_990" = bitcast %"$$fundef_153_env_206"* %"$$fundef_153_envp_988" to i8*
  %"$$fundef_153_cloval_991" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_153_env_206"*, %TName_Nat*)* @"$fundef_153" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_153_env_voidp_990", 1
  %"$$fundef_153_env_ack_992" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %"$$fundef_153_envp_988", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_153_env_ack_992", align 8
  %"$$fundef_153_env_iter_nat_993" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %"$$fundef_153_envp_988", i32 0, i32 1
  %"$iter_nat_994" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_994", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_993", align 8
  %"$$fundef_153_env_x0_995" = getelementptr inbounds %"$$fundef_153_env_206", %"$$fundef_153_env_206"* %"$$fundef_153_envp_988", i32 0, i32 2
  %"$x0_996" = load %TName_Nat*, %TName_Nat** %x0, align 8
  store %TName_Nat* %"$x0_996", %TName_Nat** %"$$fundef_153_env_x0_995", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_153_cloval_991", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_152", align 8, !dbg !13
  %"$$retval_152_997" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_152", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_152_997"
}

define internal %TName_Nat* @"$fundef_149"(%"$$fundef_149_env_208"* %0, %TName_Nat* %1) !dbg !14 {
entry:
  %"$$fundef_149_env_f_948" = getelementptr inbounds %"$$fundef_149_env_208", %"$$fundef_149_env_208"* %0, i32 0, i32 0
  %"$f_envload_949" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_149_env_f_948", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_949", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_149_env_x_950" = getelementptr inbounds %"$$fundef_149_env_208", %"$$fundef_149_env_208"* %0, i32 0, i32 1
  %"$x_envload_951" = load %TName_Nat*, %TName_Nat** %"$$fundef_149_env_x_950", align 8
  %x = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x_envload_951", %TName_Nat** %x, align 8
  %"$retval_150" = alloca %TName_Nat*, align 8
  %"$gasrem_952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_953" = icmp ugt i64 1, %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %entry
  %"$consume_956" = sub i64 %"$gasrem_952", 1
  store i64 %"$consume_956", i64* @_gasrem, align 8
  %"$f_25" = alloca %TName_Nat*, align 8
  %"$f_957" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$f_fptr_958" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_957", 0
  %"$f_envptr_959" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_957", 1
  %"$x_960" = load %TName_Nat*, %TName_Nat** %x, align 8
  %"$f_call_961" = call %TName_Nat* %"$f_fptr_958"(i8* %"$f_envptr_959", %TName_Nat* %"$x_960"), !dbg !15
  store %TName_Nat* %"$f_call_961", %TName_Nat** %"$f_25", align 8, !dbg !15
  %"$$f_25_962" = load %TName_Nat*, %TName_Nat** %"$f_25", align 8
  store %TName_Nat* %"$$f_25_962", %TName_Nat** %"$retval_150", align 8, !dbg !15
  %"$$retval_150_963" = load %TName_Nat*, %TName_Nat** %"$retval_150", align 8
  ret %TName_Nat* %"$$retval_150_963"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_147"(%"$$fundef_147_env_209"* %0, %TName_Nat* %1) !dbg !16 {
entry:
  %"$$fundef_147_env_f_933" = getelementptr inbounds %"$$fundef_147_env_209", %"$$fundef_147_env_209"* %0, i32 0, i32 0
  %"$f_envload_934" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_147_env_f_933", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_934", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$retval_148" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_936" = icmp ugt i64 1, %"$gasrem_935"
  br i1 %"$gascmp_936", label %"$out_of_gas_937", label %"$have_gas_938"

"$out_of_gas_937":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_938"

"$have_gas_938":                                  ; preds = %"$out_of_gas_937", %entry
  %"$consume_939" = sub i64 %"$gasrem_935", 1
  store i64 %"$consume_939", i64* @_gasrem, align 8
  %"$$fundef_149_envp_940_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_149_envp_940_salloc" = call i8* @_salloc(i8* %"$$fundef_149_envp_940_load", i64 24)
  %"$$fundef_149_envp_940" = bitcast i8* %"$$fundef_149_envp_940_salloc" to %"$$fundef_149_env_208"*
  %"$$fundef_149_env_voidp_942" = bitcast %"$$fundef_149_env_208"* %"$$fundef_149_envp_940" to i8*
  %"$$fundef_149_cloval_943" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_149_env_208"*, %TName_Nat*)* @"$fundef_149" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_149_env_voidp_942", 1
  %"$$fundef_149_env_f_944" = getelementptr inbounds %"$$fundef_149_env_208", %"$$fundef_149_env_208"* %"$$fundef_149_envp_940", i32 0, i32 0
  %"$f_945" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_945", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_149_env_f_944", align 8
  %"$$fundef_149_env_x_946" = getelementptr inbounds %"$$fundef_149_env_208", %"$$fundef_149_env_208"* %"$$fundef_149_envp_940", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_149_env_x_946", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_149_cloval_943", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_148", align 8, !dbg !17
  %"$$retval_148_947" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_148", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_148_947"
}

define internal %TName_Nat* @"$fundef_145"(%"$$fundef_145_env_210"* %0, %TName_Nat* %1) !dbg !18 {
entry:
  %"$$fundef_145_env_f_873" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %0, i32 0, i32 0
  %"$f_envload_874" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_145_env_f_873", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_874", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_145_env_n_875" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %0, i32 0, i32 1
  %"$n_envload_876" = load %TName_Nat*, %TName_Nat** %"$$fundef_145_env_n_875", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_876", %TName_Nat** %n, align 8
  %"$$fundef_145_env_nat_fold_877" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %0, i32 0, i32 2
  %"$nat_fold_envload_878" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_145_env_nat_fold_877", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_878", { i8*, i8* }** %nat_fold, align 8
  %"$retval_146" = alloca %TName_Nat*, align 8
  %"$gasrem_879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_880" = icmp ugt i64 1, %"$gasrem_879"
  br i1 %"$gascmp_880", label %"$out_of_gas_881", label %"$have_gas_882"

"$out_of_gas_881":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_882"

"$have_gas_882":                                  ; preds = %"$out_of_gas_881", %entry
  %"$consume_883" = sub i64 %"$gasrem_879", 1
  store i64 %"$consume_883", i64* @_gasrem, align 8
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_885" = icmp ugt i64 1, %"$gasrem_884"
  br i1 %"$gascmp_885", label %"$out_of_gas_886", label %"$have_gas_887"

"$out_of_gas_886":                                ; preds = %"$have_gas_882"
  call void @_out_of_gas()
  br label %"$have_gas_887"

"$have_gas_887":                                  ; preds = %"$out_of_gas_886", %"$have_gas_882"
  %"$consume_888" = sub i64 %"$gasrem_884", 1
  store i64 %"$consume_888", i64* @_gasrem, align 8
  %"$nat_fold_889" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_890" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_889", i32 2
  %"$nat_fold_891" = bitcast { i8*, i8* }* %"$nat_fold_890" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_892" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_891", align 8
  %"$nat_fold_fptr_893" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_892", 0
  %"$nat_fold_envptr_894" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_892", 1
  %"$nat_fold_call_895" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_893"(i8* %"$nat_fold_envptr_894"), !dbg !19
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_895", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8, !dbg !20
  %"$gasrem_896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_897" = icmp ugt i64 1, %"$gasrem_896"
  br i1 %"$gascmp_897", label %"$out_of_gas_898", label %"$have_gas_899"

"$out_of_gas_898":                                ; preds = %"$have_gas_887"
  call void @_out_of_gas()
  br label %"$have_gas_899"

"$have_gas_899":                                  ; preds = %"$out_of_gas_898", %"$have_gas_887"
  %"$consume_900" = sub i64 %"$gasrem_896", 1
  store i64 %"$consume_900", i64* @_gasrem, align 8
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_902" = icmp ugt i64 1, %"$gasrem_901"
  br i1 %"$gascmp_902", label %"$out_of_gas_903", label %"$have_gas_904"

"$out_of_gas_903":                                ; preds = %"$have_gas_899"
  call void @_out_of_gas()
  br label %"$have_gas_904"

"$have_gas_904":                                  ; preds = %"$out_of_gas_903", %"$have_gas_899"
  %"$consume_905" = sub i64 %"$gasrem_901", 1
  store i64 %"$consume_905", i64* @_gasrem, align 8
  %"$$fundef_147_envp_906_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_147_envp_906_salloc" = call i8* @_salloc(i8* %"$$fundef_147_envp_906_load", i64 16)
  %"$$fundef_147_envp_906" = bitcast i8* %"$$fundef_147_envp_906_salloc" to %"$$fundef_147_env_209"*
  %"$$fundef_147_env_voidp_908" = bitcast %"$$fundef_147_env_209"* %"$$fundef_147_envp_906" to i8*
  %"$$fundef_147_cloval_909" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_147_env_209"*, %TName_Nat*)* @"$fundef_147" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_147_env_voidp_908", 1
  %"$$fundef_147_env_f_910" = getelementptr inbounds %"$$fundef_147_env_209", %"$$fundef_147_env_209"* %"$$fundef_147_envp_906", i32 0, i32 0
  %"$f_911" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_911", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_147_env_f_910", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_147_cloval_909", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8, !dbg !21
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 1, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_904"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_904"
  %"$consume_916" = sub i64 %"$gasrem_912", 1
  store i64 %"$consume_916", i64* @_gasrem, align 8
  %"$folder_26" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$folder_917" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_918" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_917", 0
  %"$folder_envptr_919" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_917", 1
  %"$step_920" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$folder_call_921" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_918"(i8* %"$folder_envptr_919", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_920"), !dbg !22
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_921", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_26", align 8, !dbg !22
  %"$folder_27" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_26_922" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_26", align 8
  %"$$folder_26_fptr_923" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_922", 0
  %"$$folder_26_envptr_924" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_922", 1
  %"$$folder_26_call_925" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_26_fptr_923"(i8* %"$$folder_26_envptr_924", %TName_Nat* %1), !dbg !22
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_26_call_925", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8, !dbg !22
  %"$folder_28" = alloca %TName_Nat*, align 8
  %"$$folder_27_926" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8
  %"$$folder_27_fptr_927" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_926", 0
  %"$$folder_27_envptr_928" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_926", 1
  %"$n_929" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_27_call_930" = call %TName_Nat* %"$$folder_27_fptr_927"(i8* %"$$folder_27_envptr_928", %TName_Nat* %"$n_929"), !dbg !22
  store %TName_Nat* %"$$folder_27_call_930", %TName_Nat** %"$folder_28", align 8, !dbg !22
  %"$$folder_28_931" = load %TName_Nat*, %TName_Nat** %"$folder_28", align 8
  store %TName_Nat* %"$$folder_28_931", %TName_Nat** %"$retval_146", align 8, !dbg !22
  %"$$retval_146_932" = load %TName_Nat*, %TName_Nat** %"$retval_146", align 8
  ret %TName_Nat* %"$$retval_146_932"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_143"(%"$$fundef_143_env_211"* %0, %TName_Nat* %1) !dbg !23 {
entry:
  %"$$fundef_143_env_f_854" = getelementptr inbounds %"$$fundef_143_env_211", %"$$fundef_143_env_211"* %0, i32 0, i32 0
  %"$f_envload_855" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_143_env_f_854", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_855", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_143_env_nat_fold_856" = getelementptr inbounds %"$$fundef_143_env_211", %"$$fundef_143_env_211"* %0, i32 0, i32 1
  %"$nat_fold_envload_857" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_143_env_nat_fold_856", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_857", { i8*, i8* }** %nat_fold, align 8
  %"$retval_144" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 1, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %entry
  %"$consume_862" = sub i64 %"$gasrem_858", 1
  store i64 %"$consume_862", i64* @_gasrem, align 8
  %"$$fundef_145_envp_863_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_145_envp_863_salloc" = call i8* @_salloc(i8* %"$$fundef_145_envp_863_load", i64 32)
  %"$$fundef_145_envp_863" = bitcast i8* %"$$fundef_145_envp_863_salloc" to %"$$fundef_145_env_210"*
  %"$$fundef_145_env_voidp_865" = bitcast %"$$fundef_145_env_210"* %"$$fundef_145_envp_863" to i8*
  %"$$fundef_145_cloval_866" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_145_env_210"*, %TName_Nat*)* @"$fundef_145" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_145_env_voidp_865", 1
  %"$$fundef_145_env_f_867" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %"$$fundef_145_envp_863", i32 0, i32 0
  %"$f_868" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_868", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_145_env_f_867", align 8
  %"$$fundef_145_env_n_869" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %"$$fundef_145_envp_863", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_145_env_n_869", align 8
  %"$$fundef_145_env_nat_fold_870" = getelementptr inbounds %"$$fundef_145_env_210", %"$$fundef_145_env_210"* %"$$fundef_145_envp_863", i32 0, i32 2
  %"$nat_fold_871" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_871", { i8*, i8* }** %"$$fundef_145_env_nat_fold_870", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_145_cloval_866", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_144", align 8, !dbg !24
  %"$$retval_144_872" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_144", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_144_872"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_141"(%"$$fundef_141_env_212"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !25 {
entry:
  %"$$fundef_141_env_nat_fold_839" = getelementptr inbounds %"$$fundef_141_env_212", %"$$fundef_141_env_212"* %0, i32 0, i32 0
  %"$nat_fold_envload_840" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_141_env_nat_fold_839", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_840", { i8*, i8* }** %nat_fold, align 8
  %"$retval_142" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_842" = icmp ugt i64 1, %"$gasrem_841"
  br i1 %"$gascmp_842", label %"$out_of_gas_843", label %"$have_gas_844"

"$out_of_gas_843":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_844"

"$have_gas_844":                                  ; preds = %"$out_of_gas_843", %entry
  %"$consume_845" = sub i64 %"$gasrem_841", 1
  store i64 %"$consume_845", i64* @_gasrem, align 8
  %"$$fundef_143_envp_846_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_143_envp_846_salloc" = call i8* @_salloc(i8* %"$$fundef_143_envp_846_load", i64 24)
  %"$$fundef_143_envp_846" = bitcast i8* %"$$fundef_143_envp_846_salloc" to %"$$fundef_143_env_211"*
  %"$$fundef_143_env_voidp_848" = bitcast %"$$fundef_143_env_211"* %"$$fundef_143_envp_846" to i8*
  %"$$fundef_143_cloval_849" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_143_env_211"*, %TName_Nat*)* @"$fundef_143" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_143_env_voidp_848", 1
  %"$$fundef_143_env_f_850" = getelementptr inbounds %"$$fundef_143_env_211", %"$$fundef_143_env_211"* %"$$fundef_143_envp_846", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_143_env_f_850", align 8
  %"$$fundef_143_env_nat_fold_851" = getelementptr inbounds %"$$fundef_143_env_211", %"$$fundef_143_env_211"* %"$$fundef_143_envp_846", i32 0, i32 1
  %"$nat_fold_852" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_852", { i8*, i8* }** %"$$fundef_143_env_nat_fold_851", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_143_cloval_849", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_142", align 8, !dbg !26
  %"$$retval_142_853" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_142", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_142_853"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_139"(%"$$fundef_139_env_213"* %0) !dbg !27 {
entry:
  %"$$fundef_139_env_nat_fold_825" = getelementptr inbounds %"$$fundef_139_env_213", %"$$fundef_139_env_213"* %0, i32 0, i32 0
  %"$nat_fold_envload_826" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_139_env_nat_fold_825", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_826", { i8*, i8* }** %nat_fold, align 8
  %"$retval_140" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_828" = icmp ugt i64 1, %"$gasrem_827"
  br i1 %"$gascmp_828", label %"$out_of_gas_829", label %"$have_gas_830"

"$out_of_gas_829":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_830"

"$have_gas_830":                                  ; preds = %"$out_of_gas_829", %entry
  %"$consume_831" = sub i64 %"$gasrem_827", 1
  store i64 %"$consume_831", i64* @_gasrem, align 8
  %"$$fundef_141_envp_832_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_141_envp_832_salloc" = call i8* @_salloc(i8* %"$$fundef_141_envp_832_load", i64 8)
  %"$$fundef_141_envp_832" = bitcast i8* %"$$fundef_141_envp_832_salloc" to %"$$fundef_141_env_212"*
  %"$$fundef_141_env_voidp_834" = bitcast %"$$fundef_141_env_212"* %"$$fundef_141_envp_832" to i8*
  %"$$fundef_141_cloval_835" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_141_env_212"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_141" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_141_env_voidp_834", 1
  %"$$fundef_141_env_nat_fold_836" = getelementptr inbounds %"$$fundef_141_env_212", %"$$fundef_141_env_212"* %"$$fundef_141_envp_832", i32 0, i32 0
  %"$nat_fold_837" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_837", { i8*, i8* }** %"$$fundef_141_env_nat_fold_836", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_141_cloval_835", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_140", align 8, !dbg !28
  %"$$retval_140_838" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_140", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_140_838"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_137"(%"$$fundef_137_env_214"* %0, %TName_Nat* %1) !dbg !29 {
entry:
  %"$$fundef_137_env_f_809" = getelementptr inbounds %"$$fundef_137_env_214", %"$$fundef_137_env_214"* %0, i32 0, i32 0
  %"$f_envload_810" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_809", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_810", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_137_env_x_811" = getelementptr inbounds %"$$fundef_137_env_214", %"$$fundef_137_env_214"* %0, i32 0, i32 1
  %"$x_envload_812" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_137_env_x_811", align 8
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_812", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$retval_138" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_814" = icmp ugt i64 1, %"$gasrem_813"
  br i1 %"$gascmp_814", label %"$out_of_gas_815", label %"$have_gas_816"

"$out_of_gas_815":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_816"

"$have_gas_816":                                  ; preds = %"$out_of_gas_815", %entry
  %"$consume_817" = sub i64 %"$gasrem_813", 1
  store i64 %"$consume_817", i64* @_gasrem, align 8
  %"$f_25" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$f_818" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$f_fptr_819" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_818", 0
  %"$f_envptr_820" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_818", 1
  %"$x_821" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$f_call_822" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_819"(i8* %"$f_envptr_820", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_821"), !dbg !30
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_822", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_25", align 8, !dbg !30
  %"$$f_25_823" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_25", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_25_823", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_138", align 8, !dbg !30
  %"$$retval_138_824" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_138", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_138_824"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_135"(%"$$fundef_135_env_215"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !31 {
entry:
  %"$$fundef_135_env_f_794" = getelementptr inbounds %"$$fundef_135_env_215", %"$$fundef_135_env_215"* %0, i32 0, i32 0
  %"$f_envload_795" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_794", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_795", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$retval_136" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_796" = load i64, i64* @_gasrem, align 8
  %"$gascmp_797" = icmp ugt i64 1, %"$gasrem_796"
  br i1 %"$gascmp_797", label %"$out_of_gas_798", label %"$have_gas_799"

"$out_of_gas_798":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_799"

"$have_gas_799":                                  ; preds = %"$out_of_gas_798", %entry
  %"$consume_800" = sub i64 %"$gasrem_796", 1
  store i64 %"$consume_800", i64* @_gasrem, align 8
  %"$$fundef_137_envp_801_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_137_envp_801_salloc" = call i8* @_salloc(i8* %"$$fundef_137_envp_801_load", i64 32)
  %"$$fundef_137_envp_801" = bitcast i8* %"$$fundef_137_envp_801_salloc" to %"$$fundef_137_env_214"*
  %"$$fundef_137_env_voidp_803" = bitcast %"$$fundef_137_env_214"* %"$$fundef_137_envp_801" to i8*
  %"$$fundef_137_cloval_804" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_137_env_214"*, %TName_Nat*)* @"$fundef_137" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_137_env_voidp_803", 1
  %"$$fundef_137_env_f_805" = getelementptr inbounds %"$$fundef_137_env_214", %"$$fundef_137_env_214"* %"$$fundef_137_envp_801", i32 0, i32 0
  %"$f_806" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_806", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_805", align 8
  %"$$fundef_137_env_x_807" = getelementptr inbounds %"$$fundef_137_env_214", %"$$fundef_137_env_214"* %"$$fundef_137_envp_801", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_137_env_x_807", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_137_cloval_804", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8, !dbg !32
  %"$$retval_136_808" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_136_808"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_133"(%"$$fundef_133_env_216"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !33 {
entry:
  %"$$fundef_133_env_f_734" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %0, i32 0, i32 0
  %"$f_envload_735" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_734", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_735", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_133_env_n_736" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %0, i32 0, i32 1
  %"$n_envload_737" = load %TName_Nat*, %TName_Nat** %"$$fundef_133_env_n_736", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_737", %TName_Nat** %n, align 8
  %"$$fundef_133_env_nat_fold_738" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %0, i32 0, i32 2
  %"$nat_fold_envload_739" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_133_env_nat_fold_738", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_739", { i8*, i8* }** %nat_fold, align 8
  %"$retval_134" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %entry
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 1, %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %"$have_gas_743"
  %"$consume_749" = sub i64 %"$gasrem_745", 1
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %"$nat_fold_750" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_751" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_750", i32 1
  %"$nat_fold_752" = bitcast { i8*, i8* }* %"$nat_fold_751" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_753" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_752", align 8
  %"$nat_fold_fptr_754" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_753", 0
  %"$nat_fold_envptr_755" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_753", 1
  %"$nat_fold_call_756" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_754"(i8* %"$nat_fold_envptr_755"), !dbg !34
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_756", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8, !dbg !35
  %"$gasrem_757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_758" = icmp ugt i64 1, %"$gasrem_757"
  br i1 %"$gascmp_758", label %"$out_of_gas_759", label %"$have_gas_760"

"$out_of_gas_759":                                ; preds = %"$have_gas_748"
  call void @_out_of_gas()
  br label %"$have_gas_760"

"$have_gas_760":                                  ; preds = %"$out_of_gas_759", %"$have_gas_748"
  %"$consume_761" = sub i64 %"$gasrem_757", 1
  store i64 %"$consume_761", i64* @_gasrem, align 8
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_760"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_760"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$$fundef_135_envp_767_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_135_envp_767_salloc" = call i8* @_salloc(i8* %"$$fundef_135_envp_767_load", i64 16)
  %"$$fundef_135_envp_767" = bitcast i8* %"$$fundef_135_envp_767_salloc" to %"$$fundef_135_env_215"*
  %"$$fundef_135_env_voidp_769" = bitcast %"$$fundef_135_env_215"* %"$$fundef_135_envp_767" to i8*
  %"$$fundef_135_cloval_770" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_135_env_215"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_135" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_135_env_voidp_769", 1
  %"$$fundef_135_env_f_771" = getelementptr inbounds %"$$fundef_135_env_215", %"$$fundef_135_env_215"* %"$$fundef_135_envp_767", i32 0, i32 0
  %"$f_772" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_772", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_771", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_135_cloval_770", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8, !dbg !36
  %"$gasrem_773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_774" = icmp ugt i64 1, %"$gasrem_773"
  br i1 %"$gascmp_774", label %"$out_of_gas_775", label %"$have_gas_776"

"$out_of_gas_775":                                ; preds = %"$have_gas_765"
  call void @_out_of_gas()
  br label %"$have_gas_776"

"$have_gas_776":                                  ; preds = %"$out_of_gas_775", %"$have_gas_765"
  %"$consume_777" = sub i64 %"$gasrem_773", 1
  store i64 %"$consume_777", i64* @_gasrem, align 8
  %"$folder_26" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$folder_778" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_779" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_778", 0
  %"$folder_envptr_780" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_778", 1
  %"$step_781" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$folder_call_782" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_779"(i8* %"$folder_envptr_780", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_781"), !dbg !37
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_782", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_26", align 8, !dbg !37
  %"$folder_27" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_26_783" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_26", align 8
  %"$$folder_26_fptr_784" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_26_783", 0
  %"$$folder_26_envptr_785" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_26_783", 1
  %"$$folder_26_call_786" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_fptr_784"(i8* %"$$folder_26_envptr_785", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1), !dbg !37
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_call_786", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8, !dbg !37
  %"$folder_28" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_27_787" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_27", align 8
  %"$$folder_27_fptr_788" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_27_787", 0
  %"$$folder_27_envptr_789" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_27_787", 1
  %"$n_790" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_27_call_791" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_fptr_788"(i8* %"$$folder_27_envptr_789", %TName_Nat* %"$n_790"), !dbg !37
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_call_791", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_28", align 8, !dbg !37
  %"$$folder_28_792" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_28", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_28_792", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_134", align 8, !dbg !37
  %"$$retval_134_793" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_134", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_134_793"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_131"(%"$$fundef_131_env_217"* %0, %TName_Nat* %1) !dbg !38 {
entry:
  %"$$fundef_131_env_f_715" = getelementptr inbounds %"$$fundef_131_env_217", %"$$fundef_131_env_217"* %0, i32 0, i32 0
  %"$f_envload_716" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_715", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_716", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_131_env_nat_fold_717" = getelementptr inbounds %"$$fundef_131_env_217", %"$$fundef_131_env_217"* %0, i32 0, i32 1
  %"$nat_fold_envload_718" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_131_env_nat_fold_717", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_718", { i8*, i8* }** %nat_fold, align 8
  %"$retval_132" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %entry
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$$fundef_133_envp_724_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_133_envp_724_salloc" = call i8* @_salloc(i8* %"$$fundef_133_envp_724_load", i64 32)
  %"$$fundef_133_envp_724" = bitcast i8* %"$$fundef_133_envp_724_salloc" to %"$$fundef_133_env_216"*
  %"$$fundef_133_env_voidp_726" = bitcast %"$$fundef_133_env_216"* %"$$fundef_133_envp_724" to i8*
  %"$$fundef_133_cloval_727" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_133_env_216"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_133" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_133_env_voidp_726", 1
  %"$$fundef_133_env_f_728" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %"$$fundef_133_envp_724", i32 0, i32 0
  %"$f_729" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_729", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_728", align 8
  %"$$fundef_133_env_n_730" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %"$$fundef_133_envp_724", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_133_env_n_730", align 8
  %"$$fundef_133_env_nat_fold_731" = getelementptr inbounds %"$$fundef_133_env_216", %"$$fundef_133_env_216"* %"$$fundef_133_envp_724", i32 0, i32 2
  %"$nat_fold_732" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_732", { i8*, i8* }** %"$$fundef_133_env_nat_fold_731", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_133_cloval_727", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_132", align 8, !dbg !39
  %"$$retval_132_733" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_132", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_132_733"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_129"(%"$$fundef_129_env_218"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !40 {
entry:
  %"$$fundef_129_env_nat_fold_700" = getelementptr inbounds %"$$fundef_129_env_218", %"$$fundef_129_env_218"* %0, i32 0, i32 0
  %"$nat_fold_envload_701" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_129_env_nat_fold_700", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_701", { i8*, i8* }** %nat_fold, align 8
  %"$retval_130" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_703" = icmp ugt i64 1, %"$gasrem_702"
  br i1 %"$gascmp_703", label %"$out_of_gas_704", label %"$have_gas_705"

"$out_of_gas_704":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_705"

"$have_gas_705":                                  ; preds = %"$out_of_gas_704", %entry
  %"$consume_706" = sub i64 %"$gasrem_702", 1
  store i64 %"$consume_706", i64* @_gasrem, align 8
  %"$$fundef_131_envp_707_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_131_envp_707_salloc" = call i8* @_salloc(i8* %"$$fundef_131_envp_707_load", i64 24)
  %"$$fundef_131_envp_707" = bitcast i8* %"$$fundef_131_envp_707_salloc" to %"$$fundef_131_env_217"*
  %"$$fundef_131_env_voidp_709" = bitcast %"$$fundef_131_env_217"* %"$$fundef_131_envp_707" to i8*
  %"$$fundef_131_cloval_710" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_131_env_217"*, %TName_Nat*)* @"$fundef_131" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_131_env_voidp_709", 1
  %"$$fundef_131_env_f_711" = getelementptr inbounds %"$$fundef_131_env_217", %"$$fundef_131_env_217"* %"$$fundef_131_envp_707", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_711", align 8
  %"$$fundef_131_env_nat_fold_712" = getelementptr inbounds %"$$fundef_131_env_217", %"$$fundef_131_env_217"* %"$$fundef_131_envp_707", i32 0, i32 1
  %"$nat_fold_713" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_713", { i8*, i8* }** %"$$fundef_131_env_nat_fold_712", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_131_cloval_710", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8, !dbg !41
  %"$$retval_130_714" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_130_714"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_127"(%"$$fundef_127_env_219"* %0) !dbg !42 {
entry:
  %"$$fundef_127_env_nat_fold_686" = getelementptr inbounds %"$$fundef_127_env_219", %"$$fundef_127_env_219"* %0, i32 0, i32 0
  %"$nat_fold_envload_687" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_127_env_nat_fold_686", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_687", { i8*, i8* }** %nat_fold, align 8
  %"$retval_128" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 1, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %entry
  %"$consume_692" = sub i64 %"$gasrem_688", 1
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %"$$fundef_129_envp_693_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_129_envp_693_salloc" = call i8* @_salloc(i8* %"$$fundef_129_envp_693_load", i64 8)
  %"$$fundef_129_envp_693" = bitcast i8* %"$$fundef_129_envp_693_salloc" to %"$$fundef_129_env_218"*
  %"$$fundef_129_env_voidp_695" = bitcast %"$$fundef_129_env_218"* %"$$fundef_129_envp_693" to i8*
  %"$$fundef_129_cloval_696" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_129_env_218"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_129" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_129_env_voidp_695", 1
  %"$$fundef_129_env_nat_fold_697" = getelementptr inbounds %"$$fundef_129_env_218", %"$$fundef_129_env_218"* %"$$fundef_129_envp_693", i32 0, i32 0
  %"$nat_fold_698" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_698", { i8*, i8* }** %"$$fundef_129_env_nat_fold_697", align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_129_cloval_696", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128", align 8, !dbg !43
  %"$$retval_128_699" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_128_699"
}

define internal %TName_Nat* @"$fundef_125"(%"$$fundef_125_env_220"* %0, %TName_Nat* %1) !dbg !44 {
entry:
  %"$retval_126" = alloca %TName_Nat*, align 8
  %"$gasrem_676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_677" = icmp ugt i64 1, %"$gasrem_676"
  br i1 %"$gascmp_677", label %"$out_of_gas_678", label %"$have_gas_679"

"$out_of_gas_678":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_679"

"$have_gas_679":                                  ; preds = %"$out_of_gas_678", %entry
  %"$consume_680" = sub i64 %"$gasrem_676", 1
  store i64 %"$consume_680", i64* @_gasrem, align 8
  %"$adtval_681_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_681_salloc" = call i8* @_salloc(i8* %"$adtval_681_load", i64 9)
  %"$adtval_681" = bitcast i8* %"$adtval_681_salloc" to %CName_Succ*
  %"$adtgep_682" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_681", i32 0, i32 0
  store i8 1, i8* %"$adtgep_682", align 1
  %"$adtgep_683" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_681", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_683", align 8
  %"$adtptr_684" = bitcast %CName_Succ* %"$adtval_681" to %TName_Nat*
  store %TName_Nat* %"$adtptr_684", %TName_Nat** %"$retval_126", align 8, !dbg !45
  %"$$retval_126_685" = load %TName_Nat*, %TName_Nat** %"$retval_126", align 8
  ret %TName_Nat* %"$$retval_126_685"
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
  %"$gasrem_667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_668" = icmp ugt i64 4, %"$gasrem_667"
  br i1 %"$gascmp_668", label %"$out_of_gas_669", label %"$have_gas_670"

"$out_of_gas_669":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_670"

"$have_gas_670":                                  ; preds = %"$out_of_gas_669", %entry
  %"$consume_671" = sub i64 %"$gasrem_667", 4
  store i64 %"$consume_671", i64* @_gasrem, align 8
  %"$z_672" = load %Uint32, %Uint32* %z, align 4
  %"$one_int_673" = load %Uint32, %Uint32* %one_int, align 4
  %"$add_call_674" = call %Uint32 @_add_Uint32(%Uint32 %"$z_672", %Uint32 %"$one_int_673"), !dbg !48
  store %Uint32 %"$add_call_674", %Uint32* %"$retval_123", align 4, !dbg !48
  %"$$retval_123_675" = load %Uint32, %Uint32* %"$retval_123", align 4
  ret %Uint32 %"$$retval_123_675"
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
  %"$gasrem_1052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1053" = icmp ugt i64 1, %"$gasrem_1052"
  br i1 %"$gascmp_1053", label %"$out_of_gas_1054", label %"$have_gas_1055"

"$out_of_gas_1054":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1055"

"$have_gas_1055":                                 ; preds = %"$out_of_gas_1054", %entry
  %"$consume_1056" = sub i64 %"$gasrem_1052", 1
  store i64 %"$consume_1056", i64* @_gasrem, align 8
  %"$dyndisp_table_1066_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1066_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1066_salloc_load", i64 48)
  %"$dyndisp_table_1066_salloc" = bitcast i8* %"$dyndisp_table_1066_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1066" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1066_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1067" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1066", i32 0
  %"$dyndisp_pcast_1068" = bitcast { i8*, i8* }* %"$dyndisp_gep_1067" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_94_env_235"*)* @"$fundef_94" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1068", align 8
  %"$dyndisp_gep_1069" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1066", i32 1
  %"$dyndisp_pcast_1070" = bitcast { i8*, i8* }* %"$dyndisp_gep_1069" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_102_env_231"*)* @"$fundef_102" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1070", align 8
  %"$dyndisp_gep_1071" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1066", i32 2
  %"$dyndisp_pcast_1072" = bitcast { i8*, i8* }* %"$dyndisp_gep_1071" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_110_env_227"*)* @"$fundef_110" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1072", align 8
  store { i8*, i8* }* %"$dyndisp_table_1066", { i8*, i8* }** @nat_fold, align 8, !dbg !103
  %"$gasrem_1073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1074" = icmp ugt i64 1, %"$gasrem_1073"
  br i1 %"$gascmp_1074", label %"$out_of_gas_1075", label %"$have_gas_1076"

"$out_of_gas_1075":                               ; preds = %"$have_gas_1055"
  call void @_out_of_gas()
  br label %"$have_gas_1076"

"$have_gas_1076":                                 ; preds = %"$out_of_gas_1075", %"$have_gas_1055"
  %"$consume_1077" = sub i64 %"$gasrem_1073", 1
  store i64 %"$consume_1077", i64* @_gasrem, align 8
  %"$$fundef_118_envp_1078_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_118_envp_1078_salloc" = call i8* @_salloc(i8* %"$$fundef_118_envp_1078_load", i64 8)
  %"$$fundef_118_envp_1078" = bitcast i8* %"$$fundef_118_envp_1078_salloc" to %"$$fundef_118_env_223"*
  %"$$fundef_118_env_voidp_1080" = bitcast %"$$fundef_118_env_223"* %"$$fundef_118_envp_1078" to i8*
  %"$$fundef_118_cloval_1081" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_118_env_223"*, %TName_Nat*)* @"$fundef_118" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_118_env_voidp_1080", 1
  %"$$fundef_118_env_nat_fold_1082" = getelementptr inbounds %"$$fundef_118_env_223", %"$$fundef_118_env_223"* %"$$fundef_118_envp_1078", i32 0, i32 0
  %"$nat_fold_1083" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1083", { i8*, i8* }** %"$$fundef_118_env_nat_fold_1082", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_118_cloval_1081", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8, !dbg !104
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !105 {
entry:
  %"$expr_124" = alloca %Uint32, align 8
  %"$gasrem_1084" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1085" = icmp ugt i64 1, %"$gasrem_1084"
  br i1 %"$gascmp_1085", label %"$out_of_gas_1086", label %"$have_gas_1087"

"$out_of_gas_1086":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1087"

"$have_gas_1087":                                 ; preds = %"$out_of_gas_1086", %entry
  %"$consume_1088" = sub i64 %"$gasrem_1084", 1
  store i64 %"$consume_1088", i64* @_gasrem, align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1090" = icmp ugt i64 1, %"$gasrem_1089"
  br i1 %"$gascmp_1090", label %"$out_of_gas_1091", label %"$have_gas_1092"

"$out_of_gas_1091":                               ; preds = %"$have_gas_1087"
  call void @_out_of_gas()
  br label %"$have_gas_1092"

"$have_gas_1092":                                 ; preds = %"$out_of_gas_1091", %"$have_gas_1087"
  %"$consume_1093" = sub i64 %"$gasrem_1089", 1
  store i64 %"$consume_1093", i64* @_gasrem, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_125_env_220"*, %TName_Nat*)* @"$fundef_125" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8, !dbg !106
  %"$gasrem_1097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1098" = icmp ugt i64 1, %"$gasrem_1097"
  br i1 %"$gascmp_1098", label %"$out_of_gas_1099", label %"$have_gas_1100"

"$out_of_gas_1099":                               ; preds = %"$have_gas_1092"
  call void @_out_of_gas()
  br label %"$have_gas_1100"

"$have_gas_1100":                                 ; preds = %"$out_of_gas_1099", %"$have_gas_1092"
  %"$consume_1101" = sub i64 %"$gasrem_1097", 1
  store i64 %"$consume_1101", i64* @_gasrem, align 8
  %nat_iter = alloca { i8*, i8* }*, align 8
  %"$gasrem_1102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1103" = icmp ugt i64 1, %"$gasrem_1102"
  br i1 %"$gascmp_1103", label %"$out_of_gas_1104", label %"$have_gas_1105"

"$out_of_gas_1104":                               ; preds = %"$have_gas_1100"
  call void @_out_of_gas()
  br label %"$have_gas_1105"

"$have_gas_1105":                                 ; preds = %"$out_of_gas_1104", %"$have_gas_1100"
  %"$consume_1106" = sub i64 %"$gasrem_1102", 1
  store i64 %"$consume_1106", i64* @_gasrem, align 8
  %"$$fundef_127_envp_1107_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_127_envp_1107_salloc" = call i8* @_salloc(i8* %"$$fundef_127_envp_1107_load", i64 8)
  %"$$fundef_127_envp_1107" = bitcast i8* %"$$fundef_127_envp_1107_salloc" to %"$$fundef_127_env_219"*
  %"$$fundef_127_env_voidp_1109" = bitcast %"$$fundef_127_env_219"* %"$$fundef_127_envp_1107" to i8*
  %"$$fundef_127_cloval_1110" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_127_env_219"*)* @"$fundef_127" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_127_env_voidp_1109", 1
  %"$$fundef_127_env_nat_fold_1111" = getelementptr inbounds %"$$fundef_127_env_219", %"$$fundef_127_env_219"* %"$$fundef_127_envp_1107", i32 0, i32 0
  %"$nat_fold_1112" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1112", { i8*, i8* }** %"$$fundef_127_env_nat_fold_1111", align 8
  %"$$fundef_139_env_voidp_1114" = bitcast %"$$fundef_127_env_219"* %"$$fundef_127_envp_1107" to i8*
  %"$$fundef_139_cloval_1115" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_139_env_213"*)* @"$fundef_139" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_139_env_voidp_1114", 1
  %"$dyndisp_table_1116_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1116_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1116_salloc_load", i64 48)
  %"$dyndisp_table_1116_salloc" = bitcast i8* %"$dyndisp_table_1116_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1116" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1116_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1117" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1116", i32 1
  %"$dyndisp_pcast_1118" = bitcast { i8*, i8* }* %"$dyndisp_gep_1117" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_127_cloval_1110", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1118", align 8
  %"$dyndisp_gep_1119" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1116", i32 2
  %"$dyndisp_pcast_1120" = bitcast { i8*, i8* }* %"$dyndisp_gep_1119" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_139_cloval_1115", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1120", align 8
  store { i8*, i8* }* %"$dyndisp_table_1116", { i8*, i8* }** %nat_iter, align 8, !dbg !107
  %"$gasrem_1121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1122" = icmp ugt i64 1, %"$gasrem_1121"
  br i1 %"$gascmp_1122", label %"$out_of_gas_1123", label %"$have_gas_1124"

"$out_of_gas_1123":                               ; preds = %"$have_gas_1105"
  call void @_out_of_gas()
  br label %"$have_gas_1124"

"$have_gas_1124":                                 ; preds = %"$out_of_gas_1123", %"$have_gas_1105"
  %"$consume_1125" = sub i64 %"$gasrem_1121", 1
  store i64 %"$consume_1125", i64* @_gasrem, align 8
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1127" = icmp ugt i64 1, %"$gasrem_1126"
  br i1 %"$gascmp_1127", label %"$out_of_gas_1128", label %"$have_gas_1129"

"$out_of_gas_1128":                               ; preds = %"$have_gas_1124"
  call void @_out_of_gas()
  br label %"$have_gas_1129"

"$have_gas_1129":                                 ; preds = %"$out_of_gas_1128", %"$have_gas_1124"
  %"$consume_1130" = sub i64 %"$gasrem_1126", 1
  store i64 %"$consume_1130", i64* @_gasrem, align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1132" = icmp ugt i64 1, %"$gasrem_1131"
  br i1 %"$gascmp_1132", label %"$out_of_gas_1133", label %"$have_gas_1134"

"$out_of_gas_1133":                               ; preds = %"$have_gas_1129"
  call void @_out_of_gas()
  br label %"$have_gas_1134"

"$have_gas_1134":                                 ; preds = %"$out_of_gas_1133", %"$have_gas_1129"
  %"$consume_1135" = sub i64 %"$gasrem_1131", 1
  store i64 %"$consume_1135", i64* @_gasrem, align 8
  %"$nat_iter_1136" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1137" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1136", i32 2
  %"$nat_iter_1138" = bitcast { i8*, i8* }* %"$nat_iter_1137" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1139" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1138", align 8
  %"$nat_iter_fptr_1140" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1139", 0
  %"$nat_iter_envptr_1141" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1139", 1
  %"$nat_iter_call_1142" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1140"(i8* %"$nat_iter_envptr_1141"), !dbg !108
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1142", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8, !dbg !109
  %"$gasrem_1143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1144" = icmp ugt i64 1, %"$gasrem_1143"
  br i1 %"$gascmp_1144", label %"$out_of_gas_1145", label %"$have_gas_1146"

"$out_of_gas_1145":                               ; preds = %"$have_gas_1134"
  call void @_out_of_gas()
  br label %"$have_gas_1146"

"$have_gas_1146":                                 ; preds = %"$out_of_gas_1145", %"$have_gas_1134"
  %"$consume_1147" = sub i64 %"$gasrem_1143", 1
  store i64 %"$consume_1147", i64* @_gasrem, align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_1148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1149" = icmp ugt i64 1, %"$gasrem_1148"
  br i1 %"$gascmp_1149", label %"$out_of_gas_1150", label %"$have_gas_1151"

"$out_of_gas_1150":                               ; preds = %"$have_gas_1146"
  call void @_out_of_gas()
  br label %"$have_gas_1151"

"$have_gas_1151":                                 ; preds = %"$out_of_gas_1150", %"$have_gas_1146"
  %"$consume_1152" = sub i64 %"$gasrem_1148", 1
  store i64 %"$consume_1152", i64* @_gasrem, align 8
  %"$nat_iter_1153" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1154" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1153", i32 1
  %"$nat_iter_1155" = bitcast { i8*, i8* }* %"$nat_iter_1154" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1156" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1155", align 8
  %"$nat_iter_fptr_1157" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1156", 0
  %"$nat_iter_envptr_1158" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1156", 1
  %"$nat_iter_call_1159" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1157"(i8* %"$nat_iter_envptr_1158"), !dbg !110
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1159", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8, !dbg !111
  %"$gasrem_1160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1161" = icmp ugt i64 1, %"$gasrem_1160"
  br i1 %"$gascmp_1161", label %"$out_of_gas_1162", label %"$have_gas_1163"

"$out_of_gas_1162":                               ; preds = %"$have_gas_1151"
  call void @_out_of_gas()
  br label %"$have_gas_1163"

"$have_gas_1163":                                 ; preds = %"$out_of_gas_1162", %"$have_gas_1151"
  %"$consume_1164" = sub i64 %"$gasrem_1160", 1
  store i64 %"$consume_1164", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_1165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1166" = icmp ugt i64 1, %"$gasrem_1165"
  br i1 %"$gascmp_1166", label %"$out_of_gas_1167", label %"$have_gas_1168"

"$out_of_gas_1167":                               ; preds = %"$have_gas_1163"
  call void @_out_of_gas()
  br label %"$have_gas_1168"

"$have_gas_1168":                                 ; preds = %"$out_of_gas_1167", %"$have_gas_1163"
  %"$consume_1169" = sub i64 %"$gasrem_1165", 1
  store i64 %"$consume_1169", i64* @_gasrem, align 8
  %"$adtval_1170_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1170_salloc" = call i8* @_salloc(i8* %"$adtval_1170_load", i64 1)
  %"$adtval_1170" = bitcast i8* %"$adtval_1170_salloc" to %CName_Zero*
  %"$adtgep_1171" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1170", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1171", align 1
  %"$adtptr_1172" = bitcast %CName_Zero* %"$adtval_1170" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1172", %TName_Nat** %zero, align 8, !dbg !112
  %"$gasrem_1173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1174" = icmp ugt i64 1, %"$gasrem_1173"
  br i1 %"$gascmp_1174", label %"$out_of_gas_1175", label %"$have_gas_1176"

"$out_of_gas_1175":                               ; preds = %"$have_gas_1168"
  call void @_out_of_gas()
  br label %"$have_gas_1176"

"$have_gas_1176":                                 ; preds = %"$out_of_gas_1175", %"$have_gas_1168"
  %"$consume_1177" = sub i64 %"$gasrem_1173", 1
  store i64 %"$consume_1177", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_1178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1179" = icmp ugt i64 1, %"$gasrem_1178"
  br i1 %"$gascmp_1179", label %"$out_of_gas_1180", label %"$have_gas_1181"

"$out_of_gas_1180":                               ; preds = %"$have_gas_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1181"

"$have_gas_1181":                                 ; preds = %"$out_of_gas_1180", %"$have_gas_1176"
  %"$consume_1182" = sub i64 %"$gasrem_1178", 1
  store i64 %"$consume_1182", i64* @_gasrem, align 8
  %"$zero_1183" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_1184_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1184_salloc" = call i8* @_salloc(i8* %"$adtval_1184_load", i64 9)
  %"$adtval_1184" = bitcast i8* %"$adtval_1184_salloc" to %CName_Succ*
  %"$adtgep_1185" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1184", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1185", align 1
  %"$adtgep_1186" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1184", i32 0, i32 1
  store %TName_Nat* %"$zero_1183", %TName_Nat** %"$adtgep_1186", align 8
  %"$adtptr_1187" = bitcast %CName_Succ* %"$adtval_1184" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1187", %TName_Nat** %one, align 8, !dbg !113
  %"$gasrem_1188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1189" = icmp ugt i64 1, %"$gasrem_1188"
  br i1 %"$gascmp_1189", label %"$out_of_gas_1190", label %"$have_gas_1191"

"$out_of_gas_1190":                               ; preds = %"$have_gas_1181"
  call void @_out_of_gas()
  br label %"$have_gas_1191"

"$have_gas_1191":                                 ; preds = %"$out_of_gas_1190", %"$have_gas_1181"
  %"$consume_1192" = sub i64 %"$gasrem_1188", 1
  store i64 %"$consume_1192", i64* @_gasrem, align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1194" = icmp ugt i64 1, %"$gasrem_1193"
  br i1 %"$gascmp_1194", label %"$out_of_gas_1195", label %"$have_gas_1196"

"$out_of_gas_1195":                               ; preds = %"$have_gas_1191"
  call void @_out_of_gas()
  br label %"$have_gas_1196"

"$have_gas_1196":                                 ; preds = %"$out_of_gas_1195", %"$have_gas_1191"
  %"$consume_1197" = sub i64 %"$gasrem_1193", 1
  store i64 %"$consume_1197", i64* @_gasrem, align 8
  %"$$fundef_151_envp_1198_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_151_envp_1198_salloc" = call i8* @_salloc(i8* %"$$fundef_151_envp_1198_load", i64 24)
  %"$$fundef_151_envp_1198" = bitcast i8* %"$$fundef_151_envp_1198_salloc" to %"$$fundef_151_env_207"*
  %"$$fundef_151_env_voidp_1200" = bitcast %"$$fundef_151_env_207"* %"$$fundef_151_envp_1198" to i8*
  %"$$fundef_151_cloval_1201" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_151_env_207"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_151" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_151_env_voidp_1200", 1
  %"$$fundef_151_env_iter_nat_1202" = getelementptr inbounds %"$$fundef_151_env_207", %"$$fundef_151_env_207"* %"$$fundef_151_envp_1198", i32 0, i32 0
  %"$iter_nat_1203" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1203", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_1202", align 8
  %"$$fundef_151_env_one_1204" = getelementptr inbounds %"$$fundef_151_env_207", %"$$fundef_151_env_207"* %"$$fundef_151_envp_1198", i32 0, i32 1
  %"$one_1205" = load %TName_Nat*, %TName_Nat** %one, align 8
  store %TName_Nat* %"$one_1205", %TName_Nat** %"$$fundef_151_env_one_1204", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_151_cloval_1201", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8, !dbg !114
  %"$gasrem_1206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1207" = icmp ugt i64 1, %"$gasrem_1206"
  br i1 %"$gascmp_1207", label %"$out_of_gas_1208", label %"$have_gas_1209"

"$out_of_gas_1208":                               ; preds = %"$have_gas_1196"
  call void @_out_of_gas()
  br label %"$have_gas_1209"

"$have_gas_1209":                                 ; preds = %"$out_of_gas_1208", %"$have_gas_1196"
  %"$consume_1210" = sub i64 %"$gasrem_1206", 1
  store i64 %"$consume_1210", i64* @_gasrem, align 8
  %"$$fundef_155_envp_1211_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_155_envp_1211_salloc" = call i8* @_salloc(i8* %"$$fundef_155_envp_1211_load", i64 48)
  %"$$fundef_155_envp_1211" = bitcast i8* %"$$fundef_155_envp_1211_salloc" to %"$$fundef_155_env_205"*
  %"$$fundef_155_env_voidp_1213" = bitcast %"$$fundef_155_env_205"* %"$$fundef_155_envp_1211" to i8*
  %"$$fundef_155_cloval_1214" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_155_env_205"*, %TName_Nat*)* @"$fundef_155" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_155_env_voidp_1213", 1
  %"$$fundef_155_env_f_1215" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %"$$fundef_155_envp_1211", i32 0, i32 0
  %"$f_1216" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1216", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_1215", align 8
  %"$$fundef_155_env_iter_nat_nat_1217" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %"$$fundef_155_envp_1211", i32 0, i32 1
  %"$iter_nat_nat_1218" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1218", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_1217", align 8
  %"$$fundef_155_env_nat_succ_1219" = getelementptr inbounds %"$$fundef_155_env_205", %"$$fundef_155_env_205"* %"$$fundef_155_envp_1211", i32 0, i32 2
  %"$nat_succ_1220" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1220", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_1219", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_155_cloval_1214", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8, !dbg !115
  %"$gasrem_1221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1222" = icmp ugt i64 1, %"$gasrem_1221"
  br i1 %"$gascmp_1222", label %"$out_of_gas_1223", label %"$have_gas_1224"

"$out_of_gas_1223":                               ; preds = %"$have_gas_1209"
  call void @_out_of_gas()
  br label %"$have_gas_1224"

"$have_gas_1224":                                 ; preds = %"$out_of_gas_1223", %"$have_gas_1209"
  %"$consume_1225" = sub i64 %"$gasrem_1221", 1
  store i64 %"$consume_1225", i64* @_gasrem, align 8
  %uint0 = alloca %Uint32, align 8
  %"$gasrem_1226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1227" = icmp ugt i64 1, %"$gasrem_1226"
  br i1 %"$gascmp_1227", label %"$out_of_gas_1228", label %"$have_gas_1229"

"$out_of_gas_1228":                               ; preds = %"$have_gas_1224"
  call void @_out_of_gas()
  br label %"$have_gas_1229"

"$have_gas_1229":                                 ; preds = %"$out_of_gas_1228", %"$have_gas_1224"
  %"$consume_1230" = sub i64 %"$gasrem_1226", 1
  store i64 %"$consume_1230", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %uint0, align 4, !dbg !116
  %"$gasrem_1231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1232" = icmp ugt i64 1, %"$gasrem_1231"
  br i1 %"$gascmp_1232", label %"$out_of_gas_1233", label %"$have_gas_1234"

"$out_of_gas_1233":                               ; preds = %"$have_gas_1229"
  call void @_out_of_gas()
  br label %"$have_gas_1234"

"$have_gas_1234":                                 ; preds = %"$out_of_gas_1233", %"$have_gas_1229"
  %"$consume_1235" = sub i64 %"$gasrem_1231", 1
  store i64 %"$consume_1235", i64* @_gasrem, align 8
  %uint1 = alloca %Uint32, align 8
  %"$gasrem_1236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1237" = icmp ugt i64 1, %"$gasrem_1236"
  br i1 %"$gascmp_1237", label %"$out_of_gas_1238", label %"$have_gas_1239"

"$out_of_gas_1238":                               ; preds = %"$have_gas_1234"
  call void @_out_of_gas()
  br label %"$have_gas_1239"

"$have_gas_1239":                                 ; preds = %"$out_of_gas_1238", %"$have_gas_1234"
  %"$consume_1240" = sub i64 %"$gasrem_1236", 1
  store i64 %"$consume_1240", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint1, align 4, !dbg !117
  %"$gasrem_1241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1242" = icmp ugt i64 1, %"$gasrem_1241"
  br i1 %"$gascmp_1242", label %"$out_of_gas_1243", label %"$have_gas_1244"

"$out_of_gas_1243":                               ; preds = %"$have_gas_1239"
  call void @_out_of_gas()
  br label %"$have_gas_1244"

"$have_gas_1244":                                 ; preds = %"$out_of_gas_1243", %"$have_gas_1239"
  %"$consume_1245" = sub i64 %"$gasrem_1241", 1
  store i64 %"$consume_1245", i64* @_gasrem, align 8
  %uint2 = alloca %Uint32, align 8
  %"$gasrem_1246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1247" = icmp ugt i64 1, %"$gasrem_1246"
  br i1 %"$gascmp_1247", label %"$out_of_gas_1248", label %"$have_gas_1249"

"$out_of_gas_1248":                               ; preds = %"$have_gas_1244"
  call void @_out_of_gas()
  br label %"$have_gas_1249"

"$have_gas_1249":                                 ; preds = %"$out_of_gas_1248", %"$have_gas_1244"
  %"$consume_1250" = sub i64 %"$gasrem_1246", 1
  store i64 %"$consume_1250", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %uint2, align 4, !dbg !118
  %"$gasrem_1251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1252" = icmp ugt i64 1, %"$gasrem_1251"
  br i1 %"$gascmp_1252", label %"$out_of_gas_1253", label %"$have_gas_1254"

"$out_of_gas_1253":                               ; preds = %"$have_gas_1249"
  call void @_out_of_gas()
  br label %"$have_gas_1254"

"$have_gas_1254":                                 ; preds = %"$out_of_gas_1253", %"$have_gas_1249"
  %"$consume_1255" = sub i64 %"$gasrem_1251", 1
  store i64 %"$consume_1255", i64* @_gasrem, align 8
  %uint3 = alloca %Uint32, align 8
  %"$gasrem_1256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1257" = icmp ugt i64 1, %"$gasrem_1256"
  br i1 %"$gascmp_1257", label %"$out_of_gas_1258", label %"$have_gas_1259"

"$out_of_gas_1258":                               ; preds = %"$have_gas_1254"
  call void @_out_of_gas()
  br label %"$have_gas_1259"

"$have_gas_1259":                                 ; preds = %"$out_of_gas_1258", %"$have_gas_1254"
  %"$consume_1260" = sub i64 %"$gasrem_1256", 1
  store i64 %"$consume_1260", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %uint3, align 4, !dbg !119
  %"$gasrem_1261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1262" = icmp ugt i64 1, %"$gasrem_1261"
  br i1 %"$gascmp_1262", label %"$out_of_gas_1263", label %"$have_gas_1264"

"$out_of_gas_1263":                               ; preds = %"$have_gas_1259"
  call void @_out_of_gas()
  br label %"$have_gas_1264"

"$have_gas_1264":                                 ; preds = %"$out_of_gas_1263", %"$have_gas_1259"
  %"$consume_1265" = sub i64 %"$gasrem_1261", 1
  store i64 %"$consume_1265", i64* @_gasrem, align 8
  %uint4 = alloca %Uint32, align 8
  %"$gasrem_1266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1267" = icmp ugt i64 1, %"$gasrem_1266"
  br i1 %"$gascmp_1267", label %"$out_of_gas_1268", label %"$have_gas_1269"

"$out_of_gas_1268":                               ; preds = %"$have_gas_1264"
  call void @_out_of_gas()
  br label %"$have_gas_1269"

"$have_gas_1269":                                 ; preds = %"$out_of_gas_1268", %"$have_gas_1264"
  %"$consume_1270" = sub i64 %"$gasrem_1266", 1
  store i64 %"$consume_1270", i64* @_gasrem, align 8
  store %Uint32 { i32 4 }, %Uint32* %uint4, align 4, !dbg !120
  %"$gasrem_1271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1272" = icmp ugt i64 1, %"$gasrem_1271"
  br i1 %"$gascmp_1272", label %"$out_of_gas_1273", label %"$have_gas_1274"

"$out_of_gas_1273":                               ; preds = %"$have_gas_1269"
  call void @_out_of_gas()
  br label %"$have_gas_1274"

"$have_gas_1274":                                 ; preds = %"$out_of_gas_1273", %"$have_gas_1269"
  %"$consume_1275" = sub i64 %"$gasrem_1271", 1
  store i64 %"$consume_1275", i64* @_gasrem, align 8
  %n0 = alloca %TName_Nat*, align 8
  %"$uint0_1276" = load %Uint32, %Uint32* %uint0, align 4
  %"$valueof_1277" = extractvalue %Uint32 %"$uint0_1276", 0
  %"$valueof_1278" = zext i32 %"$valueof_1277" to i64
  %"$gasrem_1279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1280" = icmp ugt i64 %"$valueof_1278", %"$gasrem_1279"
  br i1 %"$gascmp_1280", label %"$out_of_gas_1281", label %"$have_gas_1282"

"$out_of_gas_1281":                               ; preds = %"$have_gas_1274"
  call void @_out_of_gas()
  br label %"$have_gas_1282"

"$have_gas_1282":                                 ; preds = %"$out_of_gas_1281", %"$have_gas_1274"
  %"$consume_1283" = sub i64 %"$gasrem_1279", %"$valueof_1278"
  store i64 %"$consume_1283", i64* @_gasrem, align 8
  %"$execptr_load_1284" = load i8*, i8** @_execptr, align 8
  %"$uint0_1285" = load %Uint32, %Uint32* %uint0, align 4
  %"$to_nat_call_1286" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1284", %Uint32 %"$uint0_1285"), !dbg !121
  store %TName_Nat* %"$to_nat_call_1286", %TName_Nat** %n0, align 8, !dbg !121
  %"$gasrem_1288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1289" = icmp ugt i64 1, %"$gasrem_1288"
  br i1 %"$gascmp_1289", label %"$out_of_gas_1290", label %"$have_gas_1291"

"$out_of_gas_1290":                               ; preds = %"$have_gas_1282"
  call void @_out_of_gas()
  br label %"$have_gas_1291"

"$have_gas_1291":                                 ; preds = %"$out_of_gas_1290", %"$have_gas_1282"
  %"$consume_1292" = sub i64 %"$gasrem_1288", 1
  store i64 %"$consume_1292", i64* @_gasrem, align 8
  %n1 = alloca %TName_Nat*, align 8
  %"$uint1_1293" = load %Uint32, %Uint32* %uint1, align 4
  %"$valueof_1294" = extractvalue %Uint32 %"$uint1_1293", 0
  %"$valueof_1295" = zext i32 %"$valueof_1294" to i64
  %"$gasrem_1296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1297" = icmp ugt i64 %"$valueof_1295", %"$gasrem_1296"
  br i1 %"$gascmp_1297", label %"$out_of_gas_1298", label %"$have_gas_1299"

"$out_of_gas_1298":                               ; preds = %"$have_gas_1291"
  call void @_out_of_gas()
  br label %"$have_gas_1299"

"$have_gas_1299":                                 ; preds = %"$out_of_gas_1298", %"$have_gas_1291"
  %"$consume_1300" = sub i64 %"$gasrem_1296", %"$valueof_1295"
  store i64 %"$consume_1300", i64* @_gasrem, align 8
  %"$execptr_load_1301" = load i8*, i8** @_execptr, align 8
  %"$uint1_1302" = load %Uint32, %Uint32* %uint1, align 4
  %"$to_nat_call_1303" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1301", %Uint32 %"$uint1_1302"), !dbg !122
  store %TName_Nat* %"$to_nat_call_1303", %TName_Nat** %n1, align 8, !dbg !122
  %"$gasrem_1305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1306" = icmp ugt i64 1, %"$gasrem_1305"
  br i1 %"$gascmp_1306", label %"$out_of_gas_1307", label %"$have_gas_1308"

"$out_of_gas_1307":                               ; preds = %"$have_gas_1299"
  call void @_out_of_gas()
  br label %"$have_gas_1308"

"$have_gas_1308":                                 ; preds = %"$out_of_gas_1307", %"$have_gas_1299"
  %"$consume_1309" = sub i64 %"$gasrem_1305", 1
  store i64 %"$consume_1309", i64* @_gasrem, align 8
  %n2 = alloca %TName_Nat*, align 8
  %"$uint2_1310" = load %Uint32, %Uint32* %uint2, align 4
  %"$valueof_1311" = extractvalue %Uint32 %"$uint2_1310", 0
  %"$valueof_1312" = zext i32 %"$valueof_1311" to i64
  %"$gasrem_1313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1314" = icmp ugt i64 %"$valueof_1312", %"$gasrem_1313"
  br i1 %"$gascmp_1314", label %"$out_of_gas_1315", label %"$have_gas_1316"

"$out_of_gas_1315":                               ; preds = %"$have_gas_1308"
  call void @_out_of_gas()
  br label %"$have_gas_1316"

"$have_gas_1316":                                 ; preds = %"$out_of_gas_1315", %"$have_gas_1308"
  %"$consume_1317" = sub i64 %"$gasrem_1313", %"$valueof_1312"
  store i64 %"$consume_1317", i64* @_gasrem, align 8
  %"$execptr_load_1318" = load i8*, i8** @_execptr, align 8
  %"$uint2_1319" = load %Uint32, %Uint32* %uint2, align 4
  %"$to_nat_call_1320" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1318", %Uint32 %"$uint2_1319"), !dbg !123
  store %TName_Nat* %"$to_nat_call_1320", %TName_Nat** %n2, align 8, !dbg !123
  %"$gasrem_1322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1323" = icmp ugt i64 1, %"$gasrem_1322"
  br i1 %"$gascmp_1323", label %"$out_of_gas_1324", label %"$have_gas_1325"

"$out_of_gas_1324":                               ; preds = %"$have_gas_1316"
  call void @_out_of_gas()
  br label %"$have_gas_1325"

"$have_gas_1325":                                 ; preds = %"$out_of_gas_1324", %"$have_gas_1316"
  %"$consume_1326" = sub i64 %"$gasrem_1322", 1
  store i64 %"$consume_1326", i64* @_gasrem, align 8
  %n3 = alloca %TName_Nat*, align 8
  %"$uint3_1327" = load %Uint32, %Uint32* %uint3, align 4
  %"$valueof_1328" = extractvalue %Uint32 %"$uint3_1327", 0
  %"$valueof_1329" = zext i32 %"$valueof_1328" to i64
  %"$gasrem_1330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1331" = icmp ugt i64 %"$valueof_1329", %"$gasrem_1330"
  br i1 %"$gascmp_1331", label %"$out_of_gas_1332", label %"$have_gas_1333"

"$out_of_gas_1332":                               ; preds = %"$have_gas_1325"
  call void @_out_of_gas()
  br label %"$have_gas_1333"

"$have_gas_1333":                                 ; preds = %"$out_of_gas_1332", %"$have_gas_1325"
  %"$consume_1334" = sub i64 %"$gasrem_1330", %"$valueof_1329"
  store i64 %"$consume_1334", i64* @_gasrem, align 8
  %"$execptr_load_1335" = load i8*, i8** @_execptr, align 8
  %"$uint3_1336" = load %Uint32, %Uint32* %uint3, align 4
  %"$to_nat_call_1337" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1335", %Uint32 %"$uint3_1336"), !dbg !124
  store %TName_Nat* %"$to_nat_call_1337", %TName_Nat** %n3, align 8, !dbg !124
  %"$gasrem_1339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1340" = icmp ugt i64 1, %"$gasrem_1339"
  br i1 %"$gascmp_1340", label %"$out_of_gas_1341", label %"$have_gas_1342"

"$out_of_gas_1341":                               ; preds = %"$have_gas_1333"
  call void @_out_of_gas()
  br label %"$have_gas_1342"

"$have_gas_1342":                                 ; preds = %"$out_of_gas_1341", %"$have_gas_1333"
  %"$consume_1343" = sub i64 %"$gasrem_1339", 1
  store i64 %"$consume_1343", i64* @_gasrem, align 8
  %n4 = alloca %TName_Nat*, align 8
  %"$uint4_1344" = load %Uint32, %Uint32* %uint4, align 4
  %"$valueof_1345" = extractvalue %Uint32 %"$uint4_1344", 0
  %"$valueof_1346" = zext i32 %"$valueof_1345" to i64
  %"$gasrem_1347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1348" = icmp ugt i64 %"$valueof_1346", %"$gasrem_1347"
  br i1 %"$gascmp_1348", label %"$out_of_gas_1349", label %"$have_gas_1350"

"$out_of_gas_1349":                               ; preds = %"$have_gas_1342"
  call void @_out_of_gas()
  br label %"$have_gas_1350"

"$have_gas_1350":                                 ; preds = %"$out_of_gas_1349", %"$have_gas_1342"
  %"$consume_1351" = sub i64 %"$gasrem_1347", %"$valueof_1346"
  store i64 %"$consume_1351", i64* @_gasrem, align 8
  %"$execptr_load_1352" = load i8*, i8** @_execptr, align 8
  %"$uint4_1353" = load %Uint32, %Uint32* %uint4, align 4
  %"$to_nat_call_1354" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1352", %Uint32 %"$uint4_1353"), !dbg !125
  store %TName_Nat* %"$to_nat_call_1354", %TName_Nat** %n4, align 8, !dbg !125
  %"$gasrem_1356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1357" = icmp ugt i64 1, %"$gasrem_1356"
  br i1 %"$gascmp_1357", label %"$out_of_gas_1358", label %"$have_gas_1359"

"$out_of_gas_1358":                               ; preds = %"$have_gas_1350"
  call void @_out_of_gas()
  br label %"$have_gas_1359"

"$have_gas_1359":                                 ; preds = %"$out_of_gas_1358", %"$have_gas_1350"
  %"$consume_1360" = sub i64 %"$gasrem_1356", 1
  store i64 %"$consume_1360", i64* @_gasrem, align 8
  %ack00 = alloca %TName_Nat*, align 8
  %"$gasrem_1361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1362" = icmp ugt i64 1, %"$gasrem_1361"
  br i1 %"$gascmp_1362", label %"$out_of_gas_1363", label %"$have_gas_1364"

"$out_of_gas_1363":                               ; preds = %"$have_gas_1359"
  call void @_out_of_gas()
  br label %"$have_gas_1364"

"$have_gas_1364":                                 ; preds = %"$out_of_gas_1363", %"$have_gas_1359"
  %"$consume_1365" = sub i64 %"$gasrem_1361", 1
  store i64 %"$consume_1365", i64* @_gasrem, align 8
  %"$ackermann_36" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1366" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1367" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1366", 0
  %"$ackermann_envptr_1368" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1366", 1
  %"$n0_1369" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1370" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1367"(i8* %"$ackermann_envptr_1368", %TName_Nat* %"$n0_1369"), !dbg !126
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1370", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_36", align 8, !dbg !126
  %"$ackermann_37" = alloca %TName_Nat*, align 8
  %"$$ackermann_36_1371" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_36", align 8
  %"$$ackermann_36_fptr_1372" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_36_1371", 0
  %"$$ackermann_36_envptr_1373" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_36_1371", 1
  %"$n0_1374" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_36_call_1375" = call %TName_Nat* %"$$ackermann_36_fptr_1372"(i8* %"$$ackermann_36_envptr_1373", %TName_Nat* %"$n0_1374"), !dbg !126
  store %TName_Nat* %"$$ackermann_36_call_1375", %TName_Nat** %"$ackermann_37", align 8, !dbg !126
  %"$$ackermann_37_1376" = load %TName_Nat*, %TName_Nat** %"$ackermann_37", align 8
  store %TName_Nat* %"$$ackermann_37_1376", %TName_Nat** %ack00, align 8, !dbg !126
  %"$gasrem_1377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1378" = icmp ugt i64 1, %"$gasrem_1377"
  br i1 %"$gascmp_1378", label %"$out_of_gas_1379", label %"$have_gas_1380"

"$out_of_gas_1379":                               ; preds = %"$have_gas_1364"
  call void @_out_of_gas()
  br label %"$have_gas_1380"

"$have_gas_1380":                                 ; preds = %"$out_of_gas_1379", %"$have_gas_1364"
  %"$consume_1381" = sub i64 %"$gasrem_1377", 1
  store i64 %"$consume_1381", i64* @_gasrem, align 8
  %"$gasrem_1382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1383" = icmp ugt i64 1, %"$gasrem_1382"
  br i1 %"$gascmp_1383", label %"$out_of_gas_1384", label %"$have_gas_1385"

"$out_of_gas_1384":                               ; preds = %"$have_gas_1380"
  call void @_out_of_gas()
  br label %"$have_gas_1385"

"$have_gas_1385":                                 ; preds = %"$out_of_gas_1384", %"$have_gas_1380"
  %"$consume_1386" = sub i64 %"$gasrem_1382", 1
  store i64 %"$consume_1386", i64* @_gasrem, align 8
  %ack02 = alloca %TName_Nat*, align 8
  %"$gasrem_1387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1388" = icmp ugt i64 1, %"$gasrem_1387"
  br i1 %"$gascmp_1388", label %"$out_of_gas_1389", label %"$have_gas_1390"

"$out_of_gas_1389":                               ; preds = %"$have_gas_1385"
  call void @_out_of_gas()
  br label %"$have_gas_1390"

"$have_gas_1390":                                 ; preds = %"$out_of_gas_1389", %"$have_gas_1385"
  %"$consume_1391" = sub i64 %"$gasrem_1387", 1
  store i64 %"$consume_1391", i64* @_gasrem, align 8
  %"$ackermann_38" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1392" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1393" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1392", 0
  %"$ackermann_envptr_1394" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1392", 1
  %"$n0_1395" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1396" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1393"(i8* %"$ackermann_envptr_1394", %TName_Nat* %"$n0_1395"), !dbg !127
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1396", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_38", align 8, !dbg !127
  %"$ackermann_39" = alloca %TName_Nat*, align 8
  %"$$ackermann_38_1397" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_38", align 8
  %"$$ackermann_38_fptr_1398" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_38_1397", 0
  %"$$ackermann_38_envptr_1399" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_38_1397", 1
  %"$n2_1400" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_38_call_1401" = call %TName_Nat* %"$$ackermann_38_fptr_1398"(i8* %"$$ackermann_38_envptr_1399", %TName_Nat* %"$n2_1400"), !dbg !127
  store %TName_Nat* %"$$ackermann_38_call_1401", %TName_Nat** %"$ackermann_39", align 8, !dbg !127
  %"$$ackermann_39_1402" = load %TName_Nat*, %TName_Nat** %"$ackermann_39", align 8
  store %TName_Nat* %"$$ackermann_39_1402", %TName_Nat** %ack02, align 8, !dbg !127
  %"$gasrem_1403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1404" = icmp ugt i64 1, %"$gasrem_1403"
  br i1 %"$gascmp_1404", label %"$out_of_gas_1405", label %"$have_gas_1406"

"$out_of_gas_1405":                               ; preds = %"$have_gas_1390"
  call void @_out_of_gas()
  br label %"$have_gas_1406"

"$have_gas_1406":                                 ; preds = %"$out_of_gas_1405", %"$have_gas_1390"
  %"$consume_1407" = sub i64 %"$gasrem_1403", 1
  store i64 %"$consume_1407", i64* @_gasrem, align 8
  %ack03 = alloca %TName_Nat*, align 8
  %"$gasrem_1408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1409" = icmp ugt i64 1, %"$gasrem_1408"
  br i1 %"$gascmp_1409", label %"$out_of_gas_1410", label %"$have_gas_1411"

"$out_of_gas_1410":                               ; preds = %"$have_gas_1406"
  call void @_out_of_gas()
  br label %"$have_gas_1411"

"$have_gas_1411":                                 ; preds = %"$out_of_gas_1410", %"$have_gas_1406"
  %"$consume_1412" = sub i64 %"$gasrem_1408", 1
  store i64 %"$consume_1412", i64* @_gasrem, align 8
  %"$ackermann_40" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1413" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1414" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1413", 0
  %"$ackermann_envptr_1415" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1413", 1
  %"$n0_1416" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1417" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1414"(i8* %"$ackermann_envptr_1415", %TName_Nat* %"$n0_1416"), !dbg !128
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1417", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_40", align 8, !dbg !128
  %"$ackermann_41" = alloca %TName_Nat*, align 8
  %"$$ackermann_40_1418" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_40", align 8
  %"$$ackermann_40_fptr_1419" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_40_1418", 0
  %"$$ackermann_40_envptr_1420" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_40_1418", 1
  %"$n3_1421" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_40_call_1422" = call %TName_Nat* %"$$ackermann_40_fptr_1419"(i8* %"$$ackermann_40_envptr_1420", %TName_Nat* %"$n3_1421"), !dbg !128
  store %TName_Nat* %"$$ackermann_40_call_1422", %TName_Nat** %"$ackermann_41", align 8, !dbg !128
  %"$$ackermann_41_1423" = load %TName_Nat*, %TName_Nat** %"$ackermann_41", align 8
  store %TName_Nat* %"$$ackermann_41_1423", %TName_Nat** %ack03, align 8, !dbg !128
  %"$gasrem_1424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1425" = icmp ugt i64 1, %"$gasrem_1424"
  br i1 %"$gascmp_1425", label %"$out_of_gas_1426", label %"$have_gas_1427"

"$out_of_gas_1426":                               ; preds = %"$have_gas_1411"
  call void @_out_of_gas()
  br label %"$have_gas_1427"

"$have_gas_1427":                                 ; preds = %"$out_of_gas_1426", %"$have_gas_1411"
  %"$consume_1428" = sub i64 %"$gasrem_1424", 1
  store i64 %"$consume_1428", i64* @_gasrem, align 8
  %ack04 = alloca %TName_Nat*, align 8
  %"$gasrem_1429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1430" = icmp ugt i64 1, %"$gasrem_1429"
  br i1 %"$gascmp_1430", label %"$out_of_gas_1431", label %"$have_gas_1432"

"$out_of_gas_1431":                               ; preds = %"$have_gas_1427"
  call void @_out_of_gas()
  br label %"$have_gas_1432"

"$have_gas_1432":                                 ; preds = %"$out_of_gas_1431", %"$have_gas_1427"
  %"$consume_1433" = sub i64 %"$gasrem_1429", 1
  store i64 %"$consume_1433", i64* @_gasrem, align 8
  %"$ackermann_42" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1434" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1435" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1434", 0
  %"$ackermann_envptr_1436" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1434", 1
  %"$n0_1437" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1438" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1435"(i8* %"$ackermann_envptr_1436", %TName_Nat* %"$n0_1437"), !dbg !129
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1438", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_42", align 8, !dbg !129
  %"$ackermann_43" = alloca %TName_Nat*, align 8
  %"$$ackermann_42_1439" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_42", align 8
  %"$$ackermann_42_fptr_1440" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_42_1439", 0
  %"$$ackermann_42_envptr_1441" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_42_1439", 1
  %"$n4_1442" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_42_call_1443" = call %TName_Nat* %"$$ackermann_42_fptr_1440"(i8* %"$$ackermann_42_envptr_1441", %TName_Nat* %"$n4_1442"), !dbg !129
  store %TName_Nat* %"$$ackermann_42_call_1443", %TName_Nat** %"$ackermann_43", align 8, !dbg !129
  %"$$ackermann_43_1444" = load %TName_Nat*, %TName_Nat** %"$ackermann_43", align 8
  store %TName_Nat* %"$$ackermann_43_1444", %TName_Nat** %ack04, align 8, !dbg !129
  %"$gasrem_1445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1446" = icmp ugt i64 1, %"$gasrem_1445"
  br i1 %"$gascmp_1446", label %"$out_of_gas_1447", label %"$have_gas_1448"

"$out_of_gas_1447":                               ; preds = %"$have_gas_1432"
  call void @_out_of_gas()
  br label %"$have_gas_1448"

"$have_gas_1448":                                 ; preds = %"$out_of_gas_1447", %"$have_gas_1432"
  %"$consume_1449" = sub i64 %"$gasrem_1445", 1
  store i64 %"$consume_1449", i64* @_gasrem, align 8
  %ack10 = alloca %TName_Nat*, align 8
  %"$gasrem_1450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1451" = icmp ugt i64 1, %"$gasrem_1450"
  br i1 %"$gascmp_1451", label %"$out_of_gas_1452", label %"$have_gas_1453"

"$out_of_gas_1452":                               ; preds = %"$have_gas_1448"
  call void @_out_of_gas()
  br label %"$have_gas_1453"

"$have_gas_1453":                                 ; preds = %"$out_of_gas_1452", %"$have_gas_1448"
  %"$consume_1454" = sub i64 %"$gasrem_1450", 1
  store i64 %"$consume_1454", i64* @_gasrem, align 8
  %"$ackermann_44" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1455" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1456" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1455", 0
  %"$ackermann_envptr_1457" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1455", 1
  %"$n1_1458" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1459" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1456"(i8* %"$ackermann_envptr_1457", %TName_Nat* %"$n1_1458"), !dbg !130
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1459", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_44", align 8, !dbg !130
  %"$ackermann_45" = alloca %TName_Nat*, align 8
  %"$$ackermann_44_1460" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_44", align 8
  %"$$ackermann_44_fptr_1461" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_44_1460", 0
  %"$$ackermann_44_envptr_1462" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_44_1460", 1
  %"$n0_1463" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_44_call_1464" = call %TName_Nat* %"$$ackermann_44_fptr_1461"(i8* %"$$ackermann_44_envptr_1462", %TName_Nat* %"$n0_1463"), !dbg !130
  store %TName_Nat* %"$$ackermann_44_call_1464", %TName_Nat** %"$ackermann_45", align 8, !dbg !130
  %"$$ackermann_45_1465" = load %TName_Nat*, %TName_Nat** %"$ackermann_45", align 8
  store %TName_Nat* %"$$ackermann_45_1465", %TName_Nat** %ack10, align 8, !dbg !130
  %"$gasrem_1466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1467" = icmp ugt i64 1, %"$gasrem_1466"
  br i1 %"$gascmp_1467", label %"$out_of_gas_1468", label %"$have_gas_1469"

"$out_of_gas_1468":                               ; preds = %"$have_gas_1453"
  call void @_out_of_gas()
  br label %"$have_gas_1469"

"$have_gas_1469":                                 ; preds = %"$out_of_gas_1468", %"$have_gas_1453"
  %"$consume_1470" = sub i64 %"$gasrem_1466", 1
  store i64 %"$consume_1470", i64* @_gasrem, align 8
  %ack11 = alloca %TName_Nat*, align 8
  %"$gasrem_1471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1472" = icmp ugt i64 1, %"$gasrem_1471"
  br i1 %"$gascmp_1472", label %"$out_of_gas_1473", label %"$have_gas_1474"

"$out_of_gas_1473":                               ; preds = %"$have_gas_1469"
  call void @_out_of_gas()
  br label %"$have_gas_1474"

"$have_gas_1474":                                 ; preds = %"$out_of_gas_1473", %"$have_gas_1469"
  %"$consume_1475" = sub i64 %"$gasrem_1471", 1
  store i64 %"$consume_1475", i64* @_gasrem, align 8
  %"$ackermann_46" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1476" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1477" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1476", 0
  %"$ackermann_envptr_1478" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1476", 1
  %"$n1_1479" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1480" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1477"(i8* %"$ackermann_envptr_1478", %TName_Nat* %"$n1_1479"), !dbg !131
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1480", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_46", align 8, !dbg !131
  %"$ackermann_47" = alloca %TName_Nat*, align 8
  %"$$ackermann_46_1481" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_46", align 8
  %"$$ackermann_46_fptr_1482" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_46_1481", 0
  %"$$ackermann_46_envptr_1483" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_46_1481", 1
  %"$n1_1484" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_46_call_1485" = call %TName_Nat* %"$$ackermann_46_fptr_1482"(i8* %"$$ackermann_46_envptr_1483", %TName_Nat* %"$n1_1484"), !dbg !131
  store %TName_Nat* %"$$ackermann_46_call_1485", %TName_Nat** %"$ackermann_47", align 8, !dbg !131
  %"$$ackermann_47_1486" = load %TName_Nat*, %TName_Nat** %"$ackermann_47", align 8
  store %TName_Nat* %"$$ackermann_47_1486", %TName_Nat** %ack11, align 8, !dbg !131
  %"$gasrem_1487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1488" = icmp ugt i64 1, %"$gasrem_1487"
  br i1 %"$gascmp_1488", label %"$out_of_gas_1489", label %"$have_gas_1490"

"$out_of_gas_1489":                               ; preds = %"$have_gas_1474"
  call void @_out_of_gas()
  br label %"$have_gas_1490"

"$have_gas_1490":                                 ; preds = %"$out_of_gas_1489", %"$have_gas_1474"
  %"$consume_1491" = sub i64 %"$gasrem_1487", 1
  store i64 %"$consume_1491", i64* @_gasrem, align 8
  %ack12 = alloca %TName_Nat*, align 8
  %"$gasrem_1492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1493" = icmp ugt i64 1, %"$gasrem_1492"
  br i1 %"$gascmp_1493", label %"$out_of_gas_1494", label %"$have_gas_1495"

"$out_of_gas_1494":                               ; preds = %"$have_gas_1490"
  call void @_out_of_gas()
  br label %"$have_gas_1495"

"$have_gas_1495":                                 ; preds = %"$out_of_gas_1494", %"$have_gas_1490"
  %"$consume_1496" = sub i64 %"$gasrem_1492", 1
  store i64 %"$consume_1496", i64* @_gasrem, align 8
  %"$ackermann_48" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1497" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1498" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1497", 0
  %"$ackermann_envptr_1499" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1497", 1
  %"$n1_1500" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1501" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1498"(i8* %"$ackermann_envptr_1499", %TName_Nat* %"$n1_1500"), !dbg !132
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1501", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_48", align 8, !dbg !132
  %"$ackermann_49" = alloca %TName_Nat*, align 8
  %"$$ackermann_48_1502" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_48", align 8
  %"$$ackermann_48_fptr_1503" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_48_1502", 0
  %"$$ackermann_48_envptr_1504" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_48_1502", 1
  %"$n2_1505" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_48_call_1506" = call %TName_Nat* %"$$ackermann_48_fptr_1503"(i8* %"$$ackermann_48_envptr_1504", %TName_Nat* %"$n2_1505"), !dbg !132
  store %TName_Nat* %"$$ackermann_48_call_1506", %TName_Nat** %"$ackermann_49", align 8, !dbg !132
  %"$$ackermann_49_1507" = load %TName_Nat*, %TName_Nat** %"$ackermann_49", align 8
  store %TName_Nat* %"$$ackermann_49_1507", %TName_Nat** %ack12, align 8, !dbg !132
  %"$gasrem_1508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1509" = icmp ugt i64 1, %"$gasrem_1508"
  br i1 %"$gascmp_1509", label %"$out_of_gas_1510", label %"$have_gas_1511"

"$out_of_gas_1510":                               ; preds = %"$have_gas_1495"
  call void @_out_of_gas()
  br label %"$have_gas_1511"

"$have_gas_1511":                                 ; preds = %"$out_of_gas_1510", %"$have_gas_1495"
  %"$consume_1512" = sub i64 %"$gasrem_1508", 1
  store i64 %"$consume_1512", i64* @_gasrem, align 8
  %ack13 = alloca %TName_Nat*, align 8
  %"$gasrem_1513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1514" = icmp ugt i64 1, %"$gasrem_1513"
  br i1 %"$gascmp_1514", label %"$out_of_gas_1515", label %"$have_gas_1516"

"$out_of_gas_1515":                               ; preds = %"$have_gas_1511"
  call void @_out_of_gas()
  br label %"$have_gas_1516"

"$have_gas_1516":                                 ; preds = %"$out_of_gas_1515", %"$have_gas_1511"
  %"$consume_1517" = sub i64 %"$gasrem_1513", 1
  store i64 %"$consume_1517", i64* @_gasrem, align 8
  %"$ackermann_50" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1518" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1519" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1518", 0
  %"$ackermann_envptr_1520" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1518", 1
  %"$n1_1521" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1522" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1519"(i8* %"$ackermann_envptr_1520", %TName_Nat* %"$n1_1521"), !dbg !133
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1522", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_50", align 8, !dbg !133
  %"$ackermann_51" = alloca %TName_Nat*, align 8
  %"$$ackermann_50_1523" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_50", align 8
  %"$$ackermann_50_fptr_1524" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_50_1523", 0
  %"$$ackermann_50_envptr_1525" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_50_1523", 1
  %"$n3_1526" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_50_call_1527" = call %TName_Nat* %"$$ackermann_50_fptr_1524"(i8* %"$$ackermann_50_envptr_1525", %TName_Nat* %"$n3_1526"), !dbg !133
  store %TName_Nat* %"$$ackermann_50_call_1527", %TName_Nat** %"$ackermann_51", align 8, !dbg !133
  %"$$ackermann_51_1528" = load %TName_Nat*, %TName_Nat** %"$ackermann_51", align 8
  store %TName_Nat* %"$$ackermann_51_1528", %TName_Nat** %ack13, align 8, !dbg !133
  %"$gasrem_1529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1530" = icmp ugt i64 1, %"$gasrem_1529"
  br i1 %"$gascmp_1530", label %"$out_of_gas_1531", label %"$have_gas_1532"

"$out_of_gas_1531":                               ; preds = %"$have_gas_1516"
  call void @_out_of_gas()
  br label %"$have_gas_1532"

"$have_gas_1532":                                 ; preds = %"$out_of_gas_1531", %"$have_gas_1516"
  %"$consume_1533" = sub i64 %"$gasrem_1529", 1
  store i64 %"$consume_1533", i64* @_gasrem, align 8
  %ack14 = alloca %TName_Nat*, align 8
  %"$gasrem_1534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1535" = icmp ugt i64 1, %"$gasrem_1534"
  br i1 %"$gascmp_1535", label %"$out_of_gas_1536", label %"$have_gas_1537"

"$out_of_gas_1536":                               ; preds = %"$have_gas_1532"
  call void @_out_of_gas()
  br label %"$have_gas_1537"

"$have_gas_1537":                                 ; preds = %"$out_of_gas_1536", %"$have_gas_1532"
  %"$consume_1538" = sub i64 %"$gasrem_1534", 1
  store i64 %"$consume_1538", i64* @_gasrem, align 8
  %"$ackermann_52" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1539" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1540" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1539", 0
  %"$ackermann_envptr_1541" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1539", 1
  %"$n1_1542" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1543" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1540"(i8* %"$ackermann_envptr_1541", %TName_Nat* %"$n1_1542"), !dbg !134
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1543", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_52", align 8, !dbg !134
  %"$ackermann_53" = alloca %TName_Nat*, align 8
  %"$$ackermann_52_1544" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_52", align 8
  %"$$ackermann_52_fptr_1545" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_52_1544", 0
  %"$$ackermann_52_envptr_1546" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_52_1544", 1
  %"$n4_1547" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_52_call_1548" = call %TName_Nat* %"$$ackermann_52_fptr_1545"(i8* %"$$ackermann_52_envptr_1546", %TName_Nat* %"$n4_1547"), !dbg !134
  store %TName_Nat* %"$$ackermann_52_call_1548", %TName_Nat** %"$ackermann_53", align 8, !dbg !134
  %"$$ackermann_53_1549" = load %TName_Nat*, %TName_Nat** %"$ackermann_53", align 8
  store %TName_Nat* %"$$ackermann_53_1549", %TName_Nat** %ack14, align 8, !dbg !134
  %"$gasrem_1550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1551" = icmp ugt i64 1, %"$gasrem_1550"
  br i1 %"$gascmp_1551", label %"$out_of_gas_1552", label %"$have_gas_1553"

"$out_of_gas_1552":                               ; preds = %"$have_gas_1537"
  call void @_out_of_gas()
  br label %"$have_gas_1553"

"$have_gas_1553":                                 ; preds = %"$out_of_gas_1552", %"$have_gas_1537"
  %"$consume_1554" = sub i64 %"$gasrem_1550", 1
  store i64 %"$consume_1554", i64* @_gasrem, align 8
  %ack20 = alloca %TName_Nat*, align 8
  %"$gasrem_1555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1556" = icmp ugt i64 1, %"$gasrem_1555"
  br i1 %"$gascmp_1556", label %"$out_of_gas_1557", label %"$have_gas_1558"

"$out_of_gas_1557":                               ; preds = %"$have_gas_1553"
  call void @_out_of_gas()
  br label %"$have_gas_1558"

"$have_gas_1558":                                 ; preds = %"$out_of_gas_1557", %"$have_gas_1553"
  %"$consume_1559" = sub i64 %"$gasrem_1555", 1
  store i64 %"$consume_1559", i64* @_gasrem, align 8
  %"$ackermann_54" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1560" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1561" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1560", 0
  %"$ackermann_envptr_1562" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1560", 1
  %"$n2_1563" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1564" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1561"(i8* %"$ackermann_envptr_1562", %TName_Nat* %"$n2_1563"), !dbg !135
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1564", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_54", align 8, !dbg !135
  %"$ackermann_55" = alloca %TName_Nat*, align 8
  %"$$ackermann_54_1565" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_54", align 8
  %"$$ackermann_54_fptr_1566" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_54_1565", 0
  %"$$ackermann_54_envptr_1567" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_54_1565", 1
  %"$n0_1568" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_54_call_1569" = call %TName_Nat* %"$$ackermann_54_fptr_1566"(i8* %"$$ackermann_54_envptr_1567", %TName_Nat* %"$n0_1568"), !dbg !135
  store %TName_Nat* %"$$ackermann_54_call_1569", %TName_Nat** %"$ackermann_55", align 8, !dbg !135
  %"$$ackermann_55_1570" = load %TName_Nat*, %TName_Nat** %"$ackermann_55", align 8
  store %TName_Nat* %"$$ackermann_55_1570", %TName_Nat** %ack20, align 8, !dbg !135
  %"$gasrem_1571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1572" = icmp ugt i64 1, %"$gasrem_1571"
  br i1 %"$gascmp_1572", label %"$out_of_gas_1573", label %"$have_gas_1574"

"$out_of_gas_1573":                               ; preds = %"$have_gas_1558"
  call void @_out_of_gas()
  br label %"$have_gas_1574"

"$have_gas_1574":                                 ; preds = %"$out_of_gas_1573", %"$have_gas_1558"
  %"$consume_1575" = sub i64 %"$gasrem_1571", 1
  store i64 %"$consume_1575", i64* @_gasrem, align 8
  %ack21 = alloca %TName_Nat*, align 8
  %"$gasrem_1576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1577" = icmp ugt i64 1, %"$gasrem_1576"
  br i1 %"$gascmp_1577", label %"$out_of_gas_1578", label %"$have_gas_1579"

"$out_of_gas_1578":                               ; preds = %"$have_gas_1574"
  call void @_out_of_gas()
  br label %"$have_gas_1579"

"$have_gas_1579":                                 ; preds = %"$out_of_gas_1578", %"$have_gas_1574"
  %"$consume_1580" = sub i64 %"$gasrem_1576", 1
  store i64 %"$consume_1580", i64* @_gasrem, align 8
  %"$ackermann_56" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1581" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1582" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1581", 0
  %"$ackermann_envptr_1583" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1581", 1
  %"$n2_1584" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1585" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1582"(i8* %"$ackermann_envptr_1583", %TName_Nat* %"$n2_1584"), !dbg !136
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1585", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_56", align 8, !dbg !136
  %"$ackermann_57" = alloca %TName_Nat*, align 8
  %"$$ackermann_56_1586" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_56", align 8
  %"$$ackermann_56_fptr_1587" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_56_1586", 0
  %"$$ackermann_56_envptr_1588" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_56_1586", 1
  %"$n1_1589" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_56_call_1590" = call %TName_Nat* %"$$ackermann_56_fptr_1587"(i8* %"$$ackermann_56_envptr_1588", %TName_Nat* %"$n1_1589"), !dbg !136
  store %TName_Nat* %"$$ackermann_56_call_1590", %TName_Nat** %"$ackermann_57", align 8, !dbg !136
  %"$$ackermann_57_1591" = load %TName_Nat*, %TName_Nat** %"$ackermann_57", align 8
  store %TName_Nat* %"$$ackermann_57_1591", %TName_Nat** %ack21, align 8, !dbg !136
  %"$gasrem_1592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1593" = icmp ugt i64 1, %"$gasrem_1592"
  br i1 %"$gascmp_1593", label %"$out_of_gas_1594", label %"$have_gas_1595"

"$out_of_gas_1594":                               ; preds = %"$have_gas_1579"
  call void @_out_of_gas()
  br label %"$have_gas_1595"

"$have_gas_1595":                                 ; preds = %"$out_of_gas_1594", %"$have_gas_1579"
  %"$consume_1596" = sub i64 %"$gasrem_1592", 1
  store i64 %"$consume_1596", i64* @_gasrem, align 8
  %ack22 = alloca %TName_Nat*, align 8
  %"$gasrem_1597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1598" = icmp ugt i64 1, %"$gasrem_1597"
  br i1 %"$gascmp_1598", label %"$out_of_gas_1599", label %"$have_gas_1600"

"$out_of_gas_1599":                               ; preds = %"$have_gas_1595"
  call void @_out_of_gas()
  br label %"$have_gas_1600"

"$have_gas_1600":                                 ; preds = %"$out_of_gas_1599", %"$have_gas_1595"
  %"$consume_1601" = sub i64 %"$gasrem_1597", 1
  store i64 %"$consume_1601", i64* @_gasrem, align 8
  %"$ackermann_58" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1602" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1603" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1602", 0
  %"$ackermann_envptr_1604" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1602", 1
  %"$n2_1605" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1606" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1603"(i8* %"$ackermann_envptr_1604", %TName_Nat* %"$n2_1605"), !dbg !137
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1606", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_58", align 8, !dbg !137
  %"$ackermann_59" = alloca %TName_Nat*, align 8
  %"$$ackermann_58_1607" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_58", align 8
  %"$$ackermann_58_fptr_1608" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_58_1607", 0
  %"$$ackermann_58_envptr_1609" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_58_1607", 1
  %"$n2_1610" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_58_call_1611" = call %TName_Nat* %"$$ackermann_58_fptr_1608"(i8* %"$$ackermann_58_envptr_1609", %TName_Nat* %"$n2_1610"), !dbg !137
  store %TName_Nat* %"$$ackermann_58_call_1611", %TName_Nat** %"$ackermann_59", align 8, !dbg !137
  %"$$ackermann_59_1612" = load %TName_Nat*, %TName_Nat** %"$ackermann_59", align 8
  store %TName_Nat* %"$$ackermann_59_1612", %TName_Nat** %ack22, align 8, !dbg !137
  %"$gasrem_1613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1614" = icmp ugt i64 1, %"$gasrem_1613"
  br i1 %"$gascmp_1614", label %"$out_of_gas_1615", label %"$have_gas_1616"

"$out_of_gas_1615":                               ; preds = %"$have_gas_1600"
  call void @_out_of_gas()
  br label %"$have_gas_1616"

"$have_gas_1616":                                 ; preds = %"$out_of_gas_1615", %"$have_gas_1600"
  %"$consume_1617" = sub i64 %"$gasrem_1613", 1
  store i64 %"$consume_1617", i64* @_gasrem, align 8
  %ack23 = alloca %TName_Nat*, align 8
  %"$gasrem_1618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1619" = icmp ugt i64 1, %"$gasrem_1618"
  br i1 %"$gascmp_1619", label %"$out_of_gas_1620", label %"$have_gas_1621"

"$out_of_gas_1620":                               ; preds = %"$have_gas_1616"
  call void @_out_of_gas()
  br label %"$have_gas_1621"

"$have_gas_1621":                                 ; preds = %"$out_of_gas_1620", %"$have_gas_1616"
  %"$consume_1622" = sub i64 %"$gasrem_1618", 1
  store i64 %"$consume_1622", i64* @_gasrem, align 8
  %"$ackermann_60" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1623" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1624" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1623", 0
  %"$ackermann_envptr_1625" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1623", 1
  %"$n2_1626" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1627" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1624"(i8* %"$ackermann_envptr_1625", %TName_Nat* %"$n2_1626"), !dbg !138
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1627", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_60", align 8, !dbg !138
  %"$ackermann_61" = alloca %TName_Nat*, align 8
  %"$$ackermann_60_1628" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_60", align 8
  %"$$ackermann_60_fptr_1629" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_60_1628", 0
  %"$$ackermann_60_envptr_1630" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_60_1628", 1
  %"$n3_1631" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_60_call_1632" = call %TName_Nat* %"$$ackermann_60_fptr_1629"(i8* %"$$ackermann_60_envptr_1630", %TName_Nat* %"$n3_1631"), !dbg !138
  store %TName_Nat* %"$$ackermann_60_call_1632", %TName_Nat** %"$ackermann_61", align 8, !dbg !138
  %"$$ackermann_61_1633" = load %TName_Nat*, %TName_Nat** %"$ackermann_61", align 8
  store %TName_Nat* %"$$ackermann_61_1633", %TName_Nat** %ack23, align 8, !dbg !138
  %"$gasrem_1634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1635" = icmp ugt i64 1, %"$gasrem_1634"
  br i1 %"$gascmp_1635", label %"$out_of_gas_1636", label %"$have_gas_1637"

"$out_of_gas_1636":                               ; preds = %"$have_gas_1621"
  call void @_out_of_gas()
  br label %"$have_gas_1637"

"$have_gas_1637":                                 ; preds = %"$out_of_gas_1636", %"$have_gas_1621"
  %"$consume_1638" = sub i64 %"$gasrem_1634", 1
  store i64 %"$consume_1638", i64* @_gasrem, align 8
  %"$gasrem_1639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1640" = icmp ugt i64 1, %"$gasrem_1639"
  br i1 %"$gascmp_1640", label %"$out_of_gas_1641", label %"$have_gas_1642"

"$out_of_gas_1641":                               ; preds = %"$have_gas_1637"
  call void @_out_of_gas()
  br label %"$have_gas_1642"

"$have_gas_1642":                                 ; preds = %"$out_of_gas_1641", %"$have_gas_1637"
  %"$consume_1643" = sub i64 %"$gasrem_1639", 1
  store i64 %"$consume_1643", i64* @_gasrem, align 8
  %ack30 = alloca %TName_Nat*, align 8
  %"$gasrem_1644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1645" = icmp ugt i64 1, %"$gasrem_1644"
  br i1 %"$gascmp_1645", label %"$out_of_gas_1646", label %"$have_gas_1647"

"$out_of_gas_1646":                               ; preds = %"$have_gas_1642"
  call void @_out_of_gas()
  br label %"$have_gas_1647"

"$have_gas_1647":                                 ; preds = %"$out_of_gas_1646", %"$have_gas_1642"
  %"$consume_1648" = sub i64 %"$gasrem_1644", 1
  store i64 %"$consume_1648", i64* @_gasrem, align 8
  %"$ackermann_62" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1649" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1650" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1649", 0
  %"$ackermann_envptr_1651" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1649", 1
  %"$n3_1652" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1653" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1650"(i8* %"$ackermann_envptr_1651", %TName_Nat* %"$n3_1652"), !dbg !139
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1653", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_62", align 8, !dbg !139
  %"$ackermann_63" = alloca %TName_Nat*, align 8
  %"$$ackermann_62_1654" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_62", align 8
  %"$$ackermann_62_fptr_1655" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_62_1654", 0
  %"$$ackermann_62_envptr_1656" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_62_1654", 1
  %"$n0_1657" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_62_call_1658" = call %TName_Nat* %"$$ackermann_62_fptr_1655"(i8* %"$$ackermann_62_envptr_1656", %TName_Nat* %"$n0_1657"), !dbg !139
  store %TName_Nat* %"$$ackermann_62_call_1658", %TName_Nat** %"$ackermann_63", align 8, !dbg !139
  %"$$ackermann_63_1659" = load %TName_Nat*, %TName_Nat** %"$ackermann_63", align 8
  store %TName_Nat* %"$$ackermann_63_1659", %TName_Nat** %ack30, align 8, !dbg !139
  %"$gasrem_1660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1661" = icmp ugt i64 1, %"$gasrem_1660"
  br i1 %"$gascmp_1661", label %"$out_of_gas_1662", label %"$have_gas_1663"

"$out_of_gas_1662":                               ; preds = %"$have_gas_1647"
  call void @_out_of_gas()
  br label %"$have_gas_1663"

"$have_gas_1663":                                 ; preds = %"$out_of_gas_1662", %"$have_gas_1647"
  %"$consume_1664" = sub i64 %"$gasrem_1660", 1
  store i64 %"$consume_1664", i64* @_gasrem, align 8
  %ack31 = alloca %TName_Nat*, align 8
  %"$gasrem_1665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1666" = icmp ugt i64 1, %"$gasrem_1665"
  br i1 %"$gascmp_1666", label %"$out_of_gas_1667", label %"$have_gas_1668"

"$out_of_gas_1667":                               ; preds = %"$have_gas_1663"
  call void @_out_of_gas()
  br label %"$have_gas_1668"

"$have_gas_1668":                                 ; preds = %"$out_of_gas_1667", %"$have_gas_1663"
  %"$consume_1669" = sub i64 %"$gasrem_1665", 1
  store i64 %"$consume_1669", i64* @_gasrem, align 8
  %"$ackermann_64" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1670" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1671" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1670", 0
  %"$ackermann_envptr_1672" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1670", 1
  %"$n3_1673" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1674" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1671"(i8* %"$ackermann_envptr_1672", %TName_Nat* %"$n3_1673"), !dbg !140
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1674", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_64", align 8, !dbg !140
  %"$ackermann_65" = alloca %TName_Nat*, align 8
  %"$$ackermann_64_1675" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_64", align 8
  %"$$ackermann_64_fptr_1676" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_64_1675", 0
  %"$$ackermann_64_envptr_1677" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_64_1675", 1
  %"$n1_1678" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_64_call_1679" = call %TName_Nat* %"$$ackermann_64_fptr_1676"(i8* %"$$ackermann_64_envptr_1677", %TName_Nat* %"$n1_1678"), !dbg !140
  store %TName_Nat* %"$$ackermann_64_call_1679", %TName_Nat** %"$ackermann_65", align 8, !dbg !140
  %"$$ackermann_65_1680" = load %TName_Nat*, %TName_Nat** %"$ackermann_65", align 8
  store %TName_Nat* %"$$ackermann_65_1680", %TName_Nat** %ack31, align 8, !dbg !140
  %"$gasrem_1681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1682" = icmp ugt i64 1, %"$gasrem_1681"
  br i1 %"$gascmp_1682", label %"$out_of_gas_1683", label %"$have_gas_1684"

"$out_of_gas_1683":                               ; preds = %"$have_gas_1668"
  call void @_out_of_gas()
  br label %"$have_gas_1684"

"$have_gas_1684":                                 ; preds = %"$out_of_gas_1683", %"$have_gas_1668"
  %"$consume_1685" = sub i64 %"$gasrem_1681", 1
  store i64 %"$consume_1685", i64* @_gasrem, align 8
  %ack32 = alloca %TName_Nat*, align 8
  %"$gasrem_1686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1687" = icmp ugt i64 1, %"$gasrem_1686"
  br i1 %"$gascmp_1687", label %"$out_of_gas_1688", label %"$have_gas_1689"

"$out_of_gas_1688":                               ; preds = %"$have_gas_1684"
  call void @_out_of_gas()
  br label %"$have_gas_1689"

"$have_gas_1689":                                 ; preds = %"$out_of_gas_1688", %"$have_gas_1684"
  %"$consume_1690" = sub i64 %"$gasrem_1686", 1
  store i64 %"$consume_1690", i64* @_gasrem, align 8
  %"$ackermann_66" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1691" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1692" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1691", 0
  %"$ackermann_envptr_1693" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1691", 1
  %"$n3_1694" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1695" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1692"(i8* %"$ackermann_envptr_1693", %TName_Nat* %"$n3_1694"), !dbg !141
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1695", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_66", align 8, !dbg !141
  %"$ackermann_67" = alloca %TName_Nat*, align 8
  %"$$ackermann_66_1696" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_66", align 8
  %"$$ackermann_66_fptr_1697" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_66_1696", 0
  %"$$ackermann_66_envptr_1698" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_66_1696", 1
  %"$n2_1699" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_66_call_1700" = call %TName_Nat* %"$$ackermann_66_fptr_1697"(i8* %"$$ackermann_66_envptr_1698", %TName_Nat* %"$n2_1699"), !dbg !141
  store %TName_Nat* %"$$ackermann_66_call_1700", %TName_Nat** %"$ackermann_67", align 8, !dbg !141
  %"$$ackermann_67_1701" = load %TName_Nat*, %TName_Nat** %"$ackermann_67", align 8
  store %TName_Nat* %"$$ackermann_67_1701", %TName_Nat** %ack32, align 8, !dbg !141
  %"$gasrem_1702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1703" = icmp ugt i64 1, %"$gasrem_1702"
  br i1 %"$gascmp_1703", label %"$out_of_gas_1704", label %"$have_gas_1705"

"$out_of_gas_1704":                               ; preds = %"$have_gas_1689"
  call void @_out_of_gas()
  br label %"$have_gas_1705"

"$have_gas_1705":                                 ; preds = %"$out_of_gas_1704", %"$have_gas_1689"
  %"$consume_1706" = sub i64 %"$gasrem_1702", 1
  store i64 %"$consume_1706", i64* @_gasrem, align 8
  %ack33 = alloca %TName_Nat*, align 8
  %"$gasrem_1707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1708" = icmp ugt i64 1, %"$gasrem_1707"
  br i1 %"$gascmp_1708", label %"$out_of_gas_1709", label %"$have_gas_1710"

"$out_of_gas_1709":                               ; preds = %"$have_gas_1705"
  call void @_out_of_gas()
  br label %"$have_gas_1710"

"$have_gas_1710":                                 ; preds = %"$out_of_gas_1709", %"$have_gas_1705"
  %"$consume_1711" = sub i64 %"$gasrem_1707", 1
  store i64 %"$consume_1711", i64* @_gasrem, align 8
  %"$ackermann_68" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1712" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1713" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1712", 0
  %"$ackermann_envptr_1714" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1712", 1
  %"$n3_1715" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1716" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1713"(i8* %"$ackermann_envptr_1714", %TName_Nat* %"$n3_1715"), !dbg !142
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1716", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_68", align 8, !dbg !142
  %"$ackermann_69" = alloca %TName_Nat*, align 8
  %"$$ackermann_68_1717" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_68", align 8
  %"$$ackermann_68_fptr_1718" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_68_1717", 0
  %"$$ackermann_68_envptr_1719" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_68_1717", 1
  %"$n3_1720" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_68_call_1721" = call %TName_Nat* %"$$ackermann_68_fptr_1718"(i8* %"$$ackermann_68_envptr_1719", %TName_Nat* %"$n3_1720"), !dbg !142
  store %TName_Nat* %"$$ackermann_68_call_1721", %TName_Nat** %"$ackermann_69", align 8, !dbg !142
  %"$$ackermann_69_1722" = load %TName_Nat*, %TName_Nat** %"$ackermann_69", align 8
  store %TName_Nat* %"$$ackermann_69_1722", %TName_Nat** %ack33, align 8, !dbg !142
  %"$gasrem_1723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1724" = icmp ugt i64 1, %"$gasrem_1723"
  br i1 %"$gascmp_1724", label %"$out_of_gas_1725", label %"$have_gas_1726"

"$out_of_gas_1725":                               ; preds = %"$have_gas_1710"
  call void @_out_of_gas()
  br label %"$have_gas_1726"

"$have_gas_1726":                                 ; preds = %"$out_of_gas_1725", %"$have_gas_1710"
  %"$consume_1727" = sub i64 %"$gasrem_1723", 1
  store i64 %"$consume_1727", i64* @_gasrem, align 8
  %ack34 = alloca %TName_Nat*, align 8
  %"$gasrem_1728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1729" = icmp ugt i64 1, %"$gasrem_1728"
  br i1 %"$gascmp_1729", label %"$out_of_gas_1730", label %"$have_gas_1731"

"$out_of_gas_1730":                               ; preds = %"$have_gas_1726"
  call void @_out_of_gas()
  br label %"$have_gas_1731"

"$have_gas_1731":                                 ; preds = %"$out_of_gas_1730", %"$have_gas_1726"
  %"$consume_1732" = sub i64 %"$gasrem_1728", 1
  store i64 %"$consume_1732", i64* @_gasrem, align 8
  %"$ackermann_70" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1733" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1734" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1733", 0
  %"$ackermann_envptr_1735" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1733", 1
  %"$n3_1736" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1737" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1734"(i8* %"$ackermann_envptr_1735", %TName_Nat* %"$n3_1736"), !dbg !143
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1737", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_70", align 8, !dbg !143
  %"$ackermann_71" = alloca %TName_Nat*, align 8
  %"$$ackermann_70_1738" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_70", align 8
  %"$$ackermann_70_fptr_1739" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_70_1738", 0
  %"$$ackermann_70_envptr_1740" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_70_1738", 1
  %"$n4_1741" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_70_call_1742" = call %TName_Nat* %"$$ackermann_70_fptr_1739"(i8* %"$$ackermann_70_envptr_1740", %TName_Nat* %"$n4_1741"), !dbg !143
  store %TName_Nat* %"$$ackermann_70_call_1742", %TName_Nat** %"$ackermann_71", align 8, !dbg !143
  %"$$ackermann_71_1743" = load %TName_Nat*, %TName_Nat** %"$ackermann_71", align 8
  store %TName_Nat* %"$$ackermann_71_1743", %TName_Nat** %ack34, align 8, !dbg !143
  %"$gasrem_1744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1745" = icmp ugt i64 1, %"$gasrem_1744"
  br i1 %"$gascmp_1745", label %"$out_of_gas_1746", label %"$have_gas_1747"

"$out_of_gas_1746":                               ; preds = %"$have_gas_1731"
  call void @_out_of_gas()
  br label %"$have_gas_1747"

"$have_gas_1747":                                 ; preds = %"$out_of_gas_1746", %"$have_gas_1731"
  %"$consume_1748" = sub i64 %"$gasrem_1744", 1
  store i64 %"$consume_1748", i64* @_gasrem, align 8
  %ack40 = alloca %TName_Nat*, align 8
  %"$gasrem_1749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1750" = icmp ugt i64 1, %"$gasrem_1749"
  br i1 %"$gascmp_1750", label %"$out_of_gas_1751", label %"$have_gas_1752"

"$out_of_gas_1751":                               ; preds = %"$have_gas_1747"
  call void @_out_of_gas()
  br label %"$have_gas_1752"

"$have_gas_1752":                                 ; preds = %"$out_of_gas_1751", %"$have_gas_1747"
  %"$consume_1753" = sub i64 %"$gasrem_1749", 1
  store i64 %"$consume_1753", i64* @_gasrem, align 8
  %"$ackermann_72" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1754" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1755" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1754", 0
  %"$ackermann_envptr_1756" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1754", 1
  %"$n4_1757" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$ackermann_call_1758" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1755"(i8* %"$ackermann_envptr_1756", %TName_Nat* %"$n4_1757"), !dbg !144
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1758", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_72", align 8, !dbg !144
  %"$ackermann_73" = alloca %TName_Nat*, align 8
  %"$$ackermann_72_1759" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_72", align 8
  %"$$ackermann_72_fptr_1760" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_72_1759", 0
  %"$$ackermann_72_envptr_1761" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_72_1759", 1
  %"$n0_1762" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_72_call_1763" = call %TName_Nat* %"$$ackermann_72_fptr_1760"(i8* %"$$ackermann_72_envptr_1761", %TName_Nat* %"$n0_1762"), !dbg !144
  store %TName_Nat* %"$$ackermann_72_call_1763", %TName_Nat** %"$ackermann_73", align 8, !dbg !144
  %"$$ackermann_73_1764" = load %TName_Nat*, %TName_Nat** %"$ackermann_73", align 8
  store %TName_Nat* %"$$ackermann_73_1764", %TName_Nat** %ack40, align 8, !dbg !144
  %"$gasrem_1765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1766" = icmp ugt i64 1, %"$gasrem_1765"
  br i1 %"$gascmp_1766", label %"$out_of_gas_1767", label %"$have_gas_1768"

"$out_of_gas_1767":                               ; preds = %"$have_gas_1752"
  call void @_out_of_gas()
  br label %"$have_gas_1768"

"$have_gas_1768":                                 ; preds = %"$out_of_gas_1767", %"$have_gas_1752"
  %"$consume_1769" = sub i64 %"$gasrem_1765", 1
  store i64 %"$consume_1769", i64* @_gasrem, align 8
  %int01 = alloca %Uint32, align 8
  %"$gasrem_1770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1771" = icmp ugt i64 1, %"$gasrem_1770"
  br i1 %"$gascmp_1771", label %"$out_of_gas_1772", label %"$have_gas_1773"

"$out_of_gas_1772":                               ; preds = %"$have_gas_1768"
  call void @_out_of_gas()
  br label %"$have_gas_1773"

"$have_gas_1773":                                 ; preds = %"$out_of_gas_1772", %"$have_gas_1768"
  %"$consume_1774" = sub i64 %"$gasrem_1770", 1
  store i64 %"$consume_1774", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_74" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1775" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1776" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1775", 0
  %"$NatUtils.nat_to_int_envptr_1777" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1775", 1
  %"$ack00_1778" = load %TName_Nat*, %TName_Nat** %ack00, align 8
  %"$NatUtils.nat_to_int_call_1779" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1776"(i8* %"$NatUtils.nat_to_int_envptr_1777", %TName_Nat* %"$ack00_1778"), !dbg !145
  store %Uint32 %"$NatUtils.nat_to_int_call_1779", %Uint32* %"$NatUtils.nat_to_int_74", align 4, !dbg !145
  %"$$NatUtils.nat_to_int_74_1780" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_74", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_74_1780", %Uint32* %int01, align 4, !dbg !145
  %"$gasrem_1781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1782" = icmp ugt i64 1, %"$gasrem_1781"
  br i1 %"$gascmp_1782", label %"$out_of_gas_1783", label %"$have_gas_1784"

"$out_of_gas_1783":                               ; preds = %"$have_gas_1773"
  call void @_out_of_gas()
  br label %"$have_gas_1784"

"$have_gas_1784":                                 ; preds = %"$out_of_gas_1783", %"$have_gas_1773"
  %"$consume_1785" = sub i64 %"$gasrem_1781", 1
  store i64 %"$consume_1785", i64* @_gasrem, align 8
  %int02 = alloca %Uint32, align 8
  %"$gasrem_1786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1787" = icmp ugt i64 1, %"$gasrem_1786"
  br i1 %"$gascmp_1787", label %"$out_of_gas_1788", label %"$have_gas_1789"

"$out_of_gas_1788":                               ; preds = %"$have_gas_1784"
  call void @_out_of_gas()
  br label %"$have_gas_1789"

"$have_gas_1789":                                 ; preds = %"$out_of_gas_1788", %"$have_gas_1784"
  %"$consume_1790" = sub i64 %"$gasrem_1786", 1
  store i64 %"$consume_1790", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_75" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1791" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1792" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1791", 0
  %"$NatUtils.nat_to_int_envptr_1793" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1791", 1
  %"$ack02_1794" = load %TName_Nat*, %TName_Nat** %ack02, align 8
  %"$NatUtils.nat_to_int_call_1795" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1792"(i8* %"$NatUtils.nat_to_int_envptr_1793", %TName_Nat* %"$ack02_1794"), !dbg !146
  store %Uint32 %"$NatUtils.nat_to_int_call_1795", %Uint32* %"$NatUtils.nat_to_int_75", align 4, !dbg !146
  %"$$NatUtils.nat_to_int_75_1796" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_75", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_75_1796", %Uint32* %int02, align 4, !dbg !146
  %"$gasrem_1797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1798" = icmp ugt i64 1, %"$gasrem_1797"
  br i1 %"$gascmp_1798", label %"$out_of_gas_1799", label %"$have_gas_1800"

"$out_of_gas_1799":                               ; preds = %"$have_gas_1789"
  call void @_out_of_gas()
  br label %"$have_gas_1800"

"$have_gas_1800":                                 ; preds = %"$out_of_gas_1799", %"$have_gas_1789"
  %"$consume_1801" = sub i64 %"$gasrem_1797", 1
  store i64 %"$consume_1801", i64* @_gasrem, align 8
  %int03 = alloca %Uint32, align 8
  %"$gasrem_1802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1803" = icmp ugt i64 1, %"$gasrem_1802"
  br i1 %"$gascmp_1803", label %"$out_of_gas_1804", label %"$have_gas_1805"

"$out_of_gas_1804":                               ; preds = %"$have_gas_1800"
  call void @_out_of_gas()
  br label %"$have_gas_1805"

"$have_gas_1805":                                 ; preds = %"$out_of_gas_1804", %"$have_gas_1800"
  %"$consume_1806" = sub i64 %"$gasrem_1802", 1
  store i64 %"$consume_1806", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_76" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1807" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1808" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1807", 0
  %"$NatUtils.nat_to_int_envptr_1809" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1807", 1
  %"$ack03_1810" = load %TName_Nat*, %TName_Nat** %ack03, align 8
  %"$NatUtils.nat_to_int_call_1811" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1808"(i8* %"$NatUtils.nat_to_int_envptr_1809", %TName_Nat* %"$ack03_1810"), !dbg !147
  store %Uint32 %"$NatUtils.nat_to_int_call_1811", %Uint32* %"$NatUtils.nat_to_int_76", align 4, !dbg !147
  %"$$NatUtils.nat_to_int_76_1812" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_76", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_76_1812", %Uint32* %int03, align 4, !dbg !147
  %"$gasrem_1813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1814" = icmp ugt i64 1, %"$gasrem_1813"
  br i1 %"$gascmp_1814", label %"$out_of_gas_1815", label %"$have_gas_1816"

"$out_of_gas_1815":                               ; preds = %"$have_gas_1805"
  call void @_out_of_gas()
  br label %"$have_gas_1816"

"$have_gas_1816":                                 ; preds = %"$out_of_gas_1815", %"$have_gas_1805"
  %"$consume_1817" = sub i64 %"$gasrem_1813", 1
  store i64 %"$consume_1817", i64* @_gasrem, align 8
  %int04 = alloca %Uint32, align 8
  %"$gasrem_1818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1819" = icmp ugt i64 1, %"$gasrem_1818"
  br i1 %"$gascmp_1819", label %"$out_of_gas_1820", label %"$have_gas_1821"

"$out_of_gas_1820":                               ; preds = %"$have_gas_1816"
  call void @_out_of_gas()
  br label %"$have_gas_1821"

"$have_gas_1821":                                 ; preds = %"$out_of_gas_1820", %"$have_gas_1816"
  %"$consume_1822" = sub i64 %"$gasrem_1818", 1
  store i64 %"$consume_1822", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_77" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1823" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1824" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1823", 0
  %"$NatUtils.nat_to_int_envptr_1825" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1823", 1
  %"$ack04_1826" = load %TName_Nat*, %TName_Nat** %ack04, align 8
  %"$NatUtils.nat_to_int_call_1827" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1824"(i8* %"$NatUtils.nat_to_int_envptr_1825", %TName_Nat* %"$ack04_1826"), !dbg !148
  store %Uint32 %"$NatUtils.nat_to_int_call_1827", %Uint32* %"$NatUtils.nat_to_int_77", align 4, !dbg !148
  %"$$NatUtils.nat_to_int_77_1828" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_77", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_77_1828", %Uint32* %int04, align 4, !dbg !148
  %"$gasrem_1829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1830" = icmp ugt i64 1, %"$gasrem_1829"
  br i1 %"$gascmp_1830", label %"$out_of_gas_1831", label %"$have_gas_1832"

"$out_of_gas_1831":                               ; preds = %"$have_gas_1821"
  call void @_out_of_gas()
  br label %"$have_gas_1832"

"$have_gas_1832":                                 ; preds = %"$out_of_gas_1831", %"$have_gas_1821"
  %"$consume_1833" = sub i64 %"$gasrem_1829", 1
  store i64 %"$consume_1833", i64* @_gasrem, align 8
  %int10 = alloca %Uint32, align 8
  %"$gasrem_1834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1835" = icmp ugt i64 1, %"$gasrem_1834"
  br i1 %"$gascmp_1835", label %"$out_of_gas_1836", label %"$have_gas_1837"

"$out_of_gas_1836":                               ; preds = %"$have_gas_1832"
  call void @_out_of_gas()
  br label %"$have_gas_1837"

"$have_gas_1837":                                 ; preds = %"$out_of_gas_1836", %"$have_gas_1832"
  %"$consume_1838" = sub i64 %"$gasrem_1834", 1
  store i64 %"$consume_1838", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_78" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1839" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1840" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1839", 0
  %"$NatUtils.nat_to_int_envptr_1841" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1839", 1
  %"$ack10_1842" = load %TName_Nat*, %TName_Nat** %ack10, align 8
  %"$NatUtils.nat_to_int_call_1843" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1840"(i8* %"$NatUtils.nat_to_int_envptr_1841", %TName_Nat* %"$ack10_1842"), !dbg !149
  store %Uint32 %"$NatUtils.nat_to_int_call_1843", %Uint32* %"$NatUtils.nat_to_int_78", align 4, !dbg !149
  %"$$NatUtils.nat_to_int_78_1844" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_78", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_78_1844", %Uint32* %int10, align 4, !dbg !149
  %"$gasrem_1845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1846" = icmp ugt i64 1, %"$gasrem_1845"
  br i1 %"$gascmp_1846", label %"$out_of_gas_1847", label %"$have_gas_1848"

"$out_of_gas_1847":                               ; preds = %"$have_gas_1837"
  call void @_out_of_gas()
  br label %"$have_gas_1848"

"$have_gas_1848":                                 ; preds = %"$out_of_gas_1847", %"$have_gas_1837"
  %"$consume_1849" = sub i64 %"$gasrem_1845", 1
  store i64 %"$consume_1849", i64* @_gasrem, align 8
  %int11 = alloca %Uint32, align 8
  %"$gasrem_1850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1851" = icmp ugt i64 1, %"$gasrem_1850"
  br i1 %"$gascmp_1851", label %"$out_of_gas_1852", label %"$have_gas_1853"

"$out_of_gas_1852":                               ; preds = %"$have_gas_1848"
  call void @_out_of_gas()
  br label %"$have_gas_1853"

"$have_gas_1853":                                 ; preds = %"$out_of_gas_1852", %"$have_gas_1848"
  %"$consume_1854" = sub i64 %"$gasrem_1850", 1
  store i64 %"$consume_1854", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_79" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1855" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1856" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1855", 0
  %"$NatUtils.nat_to_int_envptr_1857" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1855", 1
  %"$ack11_1858" = load %TName_Nat*, %TName_Nat** %ack11, align 8
  %"$NatUtils.nat_to_int_call_1859" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1856"(i8* %"$NatUtils.nat_to_int_envptr_1857", %TName_Nat* %"$ack11_1858"), !dbg !150
  store %Uint32 %"$NatUtils.nat_to_int_call_1859", %Uint32* %"$NatUtils.nat_to_int_79", align 4, !dbg !150
  %"$$NatUtils.nat_to_int_79_1860" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_79", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_79_1860", %Uint32* %int11, align 4, !dbg !150
  %"$gasrem_1861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1862" = icmp ugt i64 1, %"$gasrem_1861"
  br i1 %"$gascmp_1862", label %"$out_of_gas_1863", label %"$have_gas_1864"

"$out_of_gas_1863":                               ; preds = %"$have_gas_1853"
  call void @_out_of_gas()
  br label %"$have_gas_1864"

"$have_gas_1864":                                 ; preds = %"$out_of_gas_1863", %"$have_gas_1853"
  %"$consume_1865" = sub i64 %"$gasrem_1861", 1
  store i64 %"$consume_1865", i64* @_gasrem, align 8
  %int12 = alloca %Uint32, align 8
  %"$gasrem_1866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1867" = icmp ugt i64 1, %"$gasrem_1866"
  br i1 %"$gascmp_1867", label %"$out_of_gas_1868", label %"$have_gas_1869"

"$out_of_gas_1868":                               ; preds = %"$have_gas_1864"
  call void @_out_of_gas()
  br label %"$have_gas_1869"

"$have_gas_1869":                                 ; preds = %"$out_of_gas_1868", %"$have_gas_1864"
  %"$consume_1870" = sub i64 %"$gasrem_1866", 1
  store i64 %"$consume_1870", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_80" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1871" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1872" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1871", 0
  %"$NatUtils.nat_to_int_envptr_1873" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1871", 1
  %"$ack12_1874" = load %TName_Nat*, %TName_Nat** %ack12, align 8
  %"$NatUtils.nat_to_int_call_1875" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1872"(i8* %"$NatUtils.nat_to_int_envptr_1873", %TName_Nat* %"$ack12_1874"), !dbg !151
  store %Uint32 %"$NatUtils.nat_to_int_call_1875", %Uint32* %"$NatUtils.nat_to_int_80", align 4, !dbg !151
  %"$$NatUtils.nat_to_int_80_1876" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_80", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_80_1876", %Uint32* %int12, align 4, !dbg !151
  %"$gasrem_1877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1878" = icmp ugt i64 1, %"$gasrem_1877"
  br i1 %"$gascmp_1878", label %"$out_of_gas_1879", label %"$have_gas_1880"

"$out_of_gas_1879":                               ; preds = %"$have_gas_1869"
  call void @_out_of_gas()
  br label %"$have_gas_1880"

"$have_gas_1880":                                 ; preds = %"$out_of_gas_1879", %"$have_gas_1869"
  %"$consume_1881" = sub i64 %"$gasrem_1877", 1
  store i64 %"$consume_1881", i64* @_gasrem, align 8
  %int13 = alloca %Uint32, align 8
  %"$gasrem_1882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1883" = icmp ugt i64 1, %"$gasrem_1882"
  br i1 %"$gascmp_1883", label %"$out_of_gas_1884", label %"$have_gas_1885"

"$out_of_gas_1884":                               ; preds = %"$have_gas_1880"
  call void @_out_of_gas()
  br label %"$have_gas_1885"

"$have_gas_1885":                                 ; preds = %"$out_of_gas_1884", %"$have_gas_1880"
  %"$consume_1886" = sub i64 %"$gasrem_1882", 1
  store i64 %"$consume_1886", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_81" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1887" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1888" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1887", 0
  %"$NatUtils.nat_to_int_envptr_1889" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1887", 1
  %"$ack13_1890" = load %TName_Nat*, %TName_Nat** %ack13, align 8
  %"$NatUtils.nat_to_int_call_1891" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1888"(i8* %"$NatUtils.nat_to_int_envptr_1889", %TName_Nat* %"$ack13_1890"), !dbg !152
  store %Uint32 %"$NatUtils.nat_to_int_call_1891", %Uint32* %"$NatUtils.nat_to_int_81", align 4, !dbg !152
  %"$$NatUtils.nat_to_int_81_1892" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_81", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_81_1892", %Uint32* %int13, align 4, !dbg !152
  %"$gasrem_1893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1894" = icmp ugt i64 1, %"$gasrem_1893"
  br i1 %"$gascmp_1894", label %"$out_of_gas_1895", label %"$have_gas_1896"

"$out_of_gas_1895":                               ; preds = %"$have_gas_1885"
  call void @_out_of_gas()
  br label %"$have_gas_1896"

"$have_gas_1896":                                 ; preds = %"$out_of_gas_1895", %"$have_gas_1885"
  %"$consume_1897" = sub i64 %"$gasrem_1893", 1
  store i64 %"$consume_1897", i64* @_gasrem, align 8
  %int14 = alloca %Uint32, align 8
  %"$gasrem_1898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1899" = icmp ugt i64 1, %"$gasrem_1898"
  br i1 %"$gascmp_1899", label %"$out_of_gas_1900", label %"$have_gas_1901"

"$out_of_gas_1900":                               ; preds = %"$have_gas_1896"
  call void @_out_of_gas()
  br label %"$have_gas_1901"

"$have_gas_1901":                                 ; preds = %"$out_of_gas_1900", %"$have_gas_1896"
  %"$consume_1902" = sub i64 %"$gasrem_1898", 1
  store i64 %"$consume_1902", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_82" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1903" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1904" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1903", 0
  %"$NatUtils.nat_to_int_envptr_1905" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1903", 1
  %"$ack14_1906" = load %TName_Nat*, %TName_Nat** %ack14, align 8
  %"$NatUtils.nat_to_int_call_1907" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1904"(i8* %"$NatUtils.nat_to_int_envptr_1905", %TName_Nat* %"$ack14_1906"), !dbg !153
  store %Uint32 %"$NatUtils.nat_to_int_call_1907", %Uint32* %"$NatUtils.nat_to_int_82", align 4, !dbg !153
  %"$$NatUtils.nat_to_int_82_1908" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_82", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_82_1908", %Uint32* %int14, align 4, !dbg !153
  %"$gasrem_1909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1910" = icmp ugt i64 1, %"$gasrem_1909"
  br i1 %"$gascmp_1910", label %"$out_of_gas_1911", label %"$have_gas_1912"

"$out_of_gas_1911":                               ; preds = %"$have_gas_1901"
  call void @_out_of_gas()
  br label %"$have_gas_1912"

"$have_gas_1912":                                 ; preds = %"$out_of_gas_1911", %"$have_gas_1901"
  %"$consume_1913" = sub i64 %"$gasrem_1909", 1
  store i64 %"$consume_1913", i64* @_gasrem, align 8
  %int20 = alloca %Uint32, align 8
  %"$gasrem_1914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1915" = icmp ugt i64 1, %"$gasrem_1914"
  br i1 %"$gascmp_1915", label %"$out_of_gas_1916", label %"$have_gas_1917"

"$out_of_gas_1916":                               ; preds = %"$have_gas_1912"
  call void @_out_of_gas()
  br label %"$have_gas_1917"

"$have_gas_1917":                                 ; preds = %"$out_of_gas_1916", %"$have_gas_1912"
  %"$consume_1918" = sub i64 %"$gasrem_1914", 1
  store i64 %"$consume_1918", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_83" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1919" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1920" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1919", 0
  %"$NatUtils.nat_to_int_envptr_1921" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1919", 1
  %"$ack20_1922" = load %TName_Nat*, %TName_Nat** %ack20, align 8
  %"$NatUtils.nat_to_int_call_1923" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1920"(i8* %"$NatUtils.nat_to_int_envptr_1921", %TName_Nat* %"$ack20_1922"), !dbg !154
  store %Uint32 %"$NatUtils.nat_to_int_call_1923", %Uint32* %"$NatUtils.nat_to_int_83", align 4, !dbg !154
  %"$$NatUtils.nat_to_int_83_1924" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_83", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_83_1924", %Uint32* %int20, align 4, !dbg !154
  %"$gasrem_1925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1926" = icmp ugt i64 1, %"$gasrem_1925"
  br i1 %"$gascmp_1926", label %"$out_of_gas_1927", label %"$have_gas_1928"

"$out_of_gas_1927":                               ; preds = %"$have_gas_1917"
  call void @_out_of_gas()
  br label %"$have_gas_1928"

"$have_gas_1928":                                 ; preds = %"$out_of_gas_1927", %"$have_gas_1917"
  %"$consume_1929" = sub i64 %"$gasrem_1925", 1
  store i64 %"$consume_1929", i64* @_gasrem, align 8
  %int21 = alloca %Uint32, align 8
  %"$gasrem_1930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1931" = icmp ugt i64 1, %"$gasrem_1930"
  br i1 %"$gascmp_1931", label %"$out_of_gas_1932", label %"$have_gas_1933"

"$out_of_gas_1932":                               ; preds = %"$have_gas_1928"
  call void @_out_of_gas()
  br label %"$have_gas_1933"

"$have_gas_1933":                                 ; preds = %"$out_of_gas_1932", %"$have_gas_1928"
  %"$consume_1934" = sub i64 %"$gasrem_1930", 1
  store i64 %"$consume_1934", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_84" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1935" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1936" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1935", 0
  %"$NatUtils.nat_to_int_envptr_1937" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1935", 1
  %"$ack21_1938" = load %TName_Nat*, %TName_Nat** %ack21, align 8
  %"$NatUtils.nat_to_int_call_1939" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1936"(i8* %"$NatUtils.nat_to_int_envptr_1937", %TName_Nat* %"$ack21_1938"), !dbg !155
  store %Uint32 %"$NatUtils.nat_to_int_call_1939", %Uint32* %"$NatUtils.nat_to_int_84", align 4, !dbg !155
  %"$$NatUtils.nat_to_int_84_1940" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_84", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_84_1940", %Uint32* %int21, align 4, !dbg !155
  %"$gasrem_1941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1942" = icmp ugt i64 1, %"$gasrem_1941"
  br i1 %"$gascmp_1942", label %"$out_of_gas_1943", label %"$have_gas_1944"

"$out_of_gas_1943":                               ; preds = %"$have_gas_1933"
  call void @_out_of_gas()
  br label %"$have_gas_1944"

"$have_gas_1944":                                 ; preds = %"$out_of_gas_1943", %"$have_gas_1933"
  %"$consume_1945" = sub i64 %"$gasrem_1941", 1
  store i64 %"$consume_1945", i64* @_gasrem, align 8
  %int22 = alloca %Uint32, align 8
  %"$gasrem_1946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1947" = icmp ugt i64 1, %"$gasrem_1946"
  br i1 %"$gascmp_1947", label %"$out_of_gas_1948", label %"$have_gas_1949"

"$out_of_gas_1948":                               ; preds = %"$have_gas_1944"
  call void @_out_of_gas()
  br label %"$have_gas_1949"

"$have_gas_1949":                                 ; preds = %"$out_of_gas_1948", %"$have_gas_1944"
  %"$consume_1950" = sub i64 %"$gasrem_1946", 1
  store i64 %"$consume_1950", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_85" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1951" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1952" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1951", 0
  %"$NatUtils.nat_to_int_envptr_1953" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1951", 1
  %"$ack22_1954" = load %TName_Nat*, %TName_Nat** %ack22, align 8
  %"$NatUtils.nat_to_int_call_1955" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1952"(i8* %"$NatUtils.nat_to_int_envptr_1953", %TName_Nat* %"$ack22_1954"), !dbg !156
  store %Uint32 %"$NatUtils.nat_to_int_call_1955", %Uint32* %"$NatUtils.nat_to_int_85", align 4, !dbg !156
  %"$$NatUtils.nat_to_int_85_1956" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_85", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_85_1956", %Uint32* %int22, align 4, !dbg !156
  %"$gasrem_1957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1958" = icmp ugt i64 1, %"$gasrem_1957"
  br i1 %"$gascmp_1958", label %"$out_of_gas_1959", label %"$have_gas_1960"

"$out_of_gas_1959":                               ; preds = %"$have_gas_1949"
  call void @_out_of_gas()
  br label %"$have_gas_1960"

"$have_gas_1960":                                 ; preds = %"$out_of_gas_1959", %"$have_gas_1949"
  %"$consume_1961" = sub i64 %"$gasrem_1957", 1
  store i64 %"$consume_1961", i64* @_gasrem, align 8
  %int23 = alloca %Uint32, align 8
  %"$gasrem_1962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1963" = icmp ugt i64 1, %"$gasrem_1962"
  br i1 %"$gascmp_1963", label %"$out_of_gas_1964", label %"$have_gas_1965"

"$out_of_gas_1964":                               ; preds = %"$have_gas_1960"
  call void @_out_of_gas()
  br label %"$have_gas_1965"

"$have_gas_1965":                                 ; preds = %"$out_of_gas_1964", %"$have_gas_1960"
  %"$consume_1966" = sub i64 %"$gasrem_1962", 1
  store i64 %"$consume_1966", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_86" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1967" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1968" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1967", 0
  %"$NatUtils.nat_to_int_envptr_1969" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1967", 1
  %"$ack23_1970" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_1971" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1968"(i8* %"$NatUtils.nat_to_int_envptr_1969", %TName_Nat* %"$ack23_1970"), !dbg !157
  store %Uint32 %"$NatUtils.nat_to_int_call_1971", %Uint32* %"$NatUtils.nat_to_int_86", align 4, !dbg !157
  %"$$NatUtils.nat_to_int_86_1972" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_86", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_86_1972", %Uint32* %int23, align 4, !dbg !157
  %"$gasrem_1973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1974" = icmp ugt i64 1, %"$gasrem_1973"
  br i1 %"$gascmp_1974", label %"$out_of_gas_1975", label %"$have_gas_1976"

"$out_of_gas_1975":                               ; preds = %"$have_gas_1965"
  call void @_out_of_gas()
  br label %"$have_gas_1976"

"$have_gas_1976":                                 ; preds = %"$out_of_gas_1975", %"$have_gas_1965"
  %"$consume_1977" = sub i64 %"$gasrem_1973", 1
  store i64 %"$consume_1977", i64* @_gasrem, align 8
  %int24 = alloca %Uint32, align 8
  %"$gasrem_1978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1979" = icmp ugt i64 1, %"$gasrem_1978"
  br i1 %"$gascmp_1979", label %"$out_of_gas_1980", label %"$have_gas_1981"

"$out_of_gas_1980":                               ; preds = %"$have_gas_1976"
  call void @_out_of_gas()
  br label %"$have_gas_1981"

"$have_gas_1981":                                 ; preds = %"$out_of_gas_1980", %"$have_gas_1976"
  %"$consume_1982" = sub i64 %"$gasrem_1978", 1
  store i64 %"$consume_1982", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_87" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1983" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1984" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1983", 0
  %"$NatUtils.nat_to_int_envptr_1985" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1983", 1
  %"$ack23_1986" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_1987" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1984"(i8* %"$NatUtils.nat_to_int_envptr_1985", %TName_Nat* %"$ack23_1986"), !dbg !158
  store %Uint32 %"$NatUtils.nat_to_int_call_1987", %Uint32* %"$NatUtils.nat_to_int_87", align 4, !dbg !158
  %"$$NatUtils.nat_to_int_87_1988" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_87", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_87_1988", %Uint32* %int24, align 4, !dbg !158
  %"$gasrem_1989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1990" = icmp ugt i64 1, %"$gasrem_1989"
  br i1 %"$gascmp_1990", label %"$out_of_gas_1991", label %"$have_gas_1992"

"$out_of_gas_1991":                               ; preds = %"$have_gas_1981"
  call void @_out_of_gas()
  br label %"$have_gas_1992"

"$have_gas_1992":                                 ; preds = %"$out_of_gas_1991", %"$have_gas_1981"
  %"$consume_1993" = sub i64 %"$gasrem_1989", 1
  store i64 %"$consume_1993", i64* @_gasrem, align 8
  %int30 = alloca %Uint32, align 8
  %"$gasrem_1994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1995" = icmp ugt i64 1, %"$gasrem_1994"
  br i1 %"$gascmp_1995", label %"$out_of_gas_1996", label %"$have_gas_1997"

"$out_of_gas_1996":                               ; preds = %"$have_gas_1992"
  call void @_out_of_gas()
  br label %"$have_gas_1997"

"$have_gas_1997":                                 ; preds = %"$out_of_gas_1996", %"$have_gas_1992"
  %"$consume_1998" = sub i64 %"$gasrem_1994", 1
  store i64 %"$consume_1998", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_88" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1999" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2000" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1999", 0
  %"$NatUtils.nat_to_int_envptr_2001" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1999", 1
  %"$ack30_2002" = load %TName_Nat*, %TName_Nat** %ack30, align 8
  %"$NatUtils.nat_to_int_call_2003" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2000"(i8* %"$NatUtils.nat_to_int_envptr_2001", %TName_Nat* %"$ack30_2002"), !dbg !159
  store %Uint32 %"$NatUtils.nat_to_int_call_2003", %Uint32* %"$NatUtils.nat_to_int_88", align 4, !dbg !159
  %"$$NatUtils.nat_to_int_88_2004" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_88", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_88_2004", %Uint32* %int30, align 4, !dbg !159
  %"$gasrem_2005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2006" = icmp ugt i64 1, %"$gasrem_2005"
  br i1 %"$gascmp_2006", label %"$out_of_gas_2007", label %"$have_gas_2008"

"$out_of_gas_2007":                               ; preds = %"$have_gas_1997"
  call void @_out_of_gas()
  br label %"$have_gas_2008"

"$have_gas_2008":                                 ; preds = %"$out_of_gas_2007", %"$have_gas_1997"
  %"$consume_2009" = sub i64 %"$gasrem_2005", 1
  store i64 %"$consume_2009", i64* @_gasrem, align 8
  %int31 = alloca %Uint32, align 8
  %"$gasrem_2010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2011" = icmp ugt i64 1, %"$gasrem_2010"
  br i1 %"$gascmp_2011", label %"$out_of_gas_2012", label %"$have_gas_2013"

"$out_of_gas_2012":                               ; preds = %"$have_gas_2008"
  call void @_out_of_gas()
  br label %"$have_gas_2013"

"$have_gas_2013":                                 ; preds = %"$out_of_gas_2012", %"$have_gas_2008"
  %"$consume_2014" = sub i64 %"$gasrem_2010", 1
  store i64 %"$consume_2014", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_89" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2015" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2016" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2015", 0
  %"$NatUtils.nat_to_int_envptr_2017" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2015", 1
  %"$ack31_2018" = load %TName_Nat*, %TName_Nat** %ack31, align 8
  %"$NatUtils.nat_to_int_call_2019" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2016"(i8* %"$NatUtils.nat_to_int_envptr_2017", %TName_Nat* %"$ack31_2018"), !dbg !160
  store %Uint32 %"$NatUtils.nat_to_int_call_2019", %Uint32* %"$NatUtils.nat_to_int_89", align 4, !dbg !160
  %"$$NatUtils.nat_to_int_89_2020" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_89", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_89_2020", %Uint32* %int31, align 4, !dbg !160
  %"$gasrem_2021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2022" = icmp ugt i64 1, %"$gasrem_2021"
  br i1 %"$gascmp_2022", label %"$out_of_gas_2023", label %"$have_gas_2024"

"$out_of_gas_2023":                               ; preds = %"$have_gas_2013"
  call void @_out_of_gas()
  br label %"$have_gas_2024"

"$have_gas_2024":                                 ; preds = %"$out_of_gas_2023", %"$have_gas_2013"
  %"$consume_2025" = sub i64 %"$gasrem_2021", 1
  store i64 %"$consume_2025", i64* @_gasrem, align 8
  %int32 = alloca %Uint32, align 8
  %"$gasrem_2026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2027" = icmp ugt i64 1, %"$gasrem_2026"
  br i1 %"$gascmp_2027", label %"$out_of_gas_2028", label %"$have_gas_2029"

"$out_of_gas_2028":                               ; preds = %"$have_gas_2024"
  call void @_out_of_gas()
  br label %"$have_gas_2029"

"$have_gas_2029":                                 ; preds = %"$out_of_gas_2028", %"$have_gas_2024"
  %"$consume_2030" = sub i64 %"$gasrem_2026", 1
  store i64 %"$consume_2030", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_90" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2031" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2032" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2031", 0
  %"$NatUtils.nat_to_int_envptr_2033" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2031", 1
  %"$ack32_2034" = load %TName_Nat*, %TName_Nat** %ack32, align 8
  %"$NatUtils.nat_to_int_call_2035" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2032"(i8* %"$NatUtils.nat_to_int_envptr_2033", %TName_Nat* %"$ack32_2034"), !dbg !161
  store %Uint32 %"$NatUtils.nat_to_int_call_2035", %Uint32* %"$NatUtils.nat_to_int_90", align 4, !dbg !161
  %"$$NatUtils.nat_to_int_90_2036" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_90", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_90_2036", %Uint32* %int32, align 4, !dbg !161
  %"$gasrem_2037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2038" = icmp ugt i64 1, %"$gasrem_2037"
  br i1 %"$gascmp_2038", label %"$out_of_gas_2039", label %"$have_gas_2040"

"$out_of_gas_2039":                               ; preds = %"$have_gas_2029"
  call void @_out_of_gas()
  br label %"$have_gas_2040"

"$have_gas_2040":                                 ; preds = %"$out_of_gas_2039", %"$have_gas_2029"
  %"$consume_2041" = sub i64 %"$gasrem_2037", 1
  store i64 %"$consume_2041", i64* @_gasrem, align 8
  %int33 = alloca %Uint32, align 8
  %"$gasrem_2042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2043" = icmp ugt i64 1, %"$gasrem_2042"
  br i1 %"$gascmp_2043", label %"$out_of_gas_2044", label %"$have_gas_2045"

"$out_of_gas_2044":                               ; preds = %"$have_gas_2040"
  call void @_out_of_gas()
  br label %"$have_gas_2045"

"$have_gas_2045":                                 ; preds = %"$out_of_gas_2044", %"$have_gas_2040"
  %"$consume_2046" = sub i64 %"$gasrem_2042", 1
  store i64 %"$consume_2046", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_91" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2047" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2048" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2047", 0
  %"$NatUtils.nat_to_int_envptr_2049" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2047", 1
  %"$ack33_2050" = load %TName_Nat*, %TName_Nat** %ack33, align 8
  %"$NatUtils.nat_to_int_call_2051" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2048"(i8* %"$NatUtils.nat_to_int_envptr_2049", %TName_Nat* %"$ack33_2050"), !dbg !162
  store %Uint32 %"$NatUtils.nat_to_int_call_2051", %Uint32* %"$NatUtils.nat_to_int_91", align 4, !dbg !162
  %"$$NatUtils.nat_to_int_91_2052" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_91", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_91_2052", %Uint32* %int33, align 4, !dbg !162
  %"$gasrem_2053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2054" = icmp ugt i64 1, %"$gasrem_2053"
  br i1 %"$gascmp_2054", label %"$out_of_gas_2055", label %"$have_gas_2056"

"$out_of_gas_2055":                               ; preds = %"$have_gas_2045"
  call void @_out_of_gas()
  br label %"$have_gas_2056"

"$have_gas_2056":                                 ; preds = %"$out_of_gas_2055", %"$have_gas_2045"
  %"$consume_2057" = sub i64 %"$gasrem_2053", 1
  store i64 %"$consume_2057", i64* @_gasrem, align 8
  %int34 = alloca %Uint32, align 8
  %"$gasrem_2058" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2059" = icmp ugt i64 1, %"$gasrem_2058"
  br i1 %"$gascmp_2059", label %"$out_of_gas_2060", label %"$have_gas_2061"

"$out_of_gas_2060":                               ; preds = %"$have_gas_2056"
  call void @_out_of_gas()
  br label %"$have_gas_2061"

"$have_gas_2061":                                 ; preds = %"$out_of_gas_2060", %"$have_gas_2056"
  %"$consume_2062" = sub i64 %"$gasrem_2058", 1
  store i64 %"$consume_2062", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_92" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2063" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2064" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2063", 0
  %"$NatUtils.nat_to_int_envptr_2065" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2063", 1
  %"$ack34_2066" = load %TName_Nat*, %TName_Nat** %ack34, align 8
  %"$NatUtils.nat_to_int_call_2067" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2064"(i8* %"$NatUtils.nat_to_int_envptr_2065", %TName_Nat* %"$ack34_2066"), !dbg !163
  store %Uint32 %"$NatUtils.nat_to_int_call_2067", %Uint32* %"$NatUtils.nat_to_int_92", align 4, !dbg !163
  %"$$NatUtils.nat_to_int_92_2068" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_92", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_92_2068", %Uint32* %int34, align 4, !dbg !163
  %"$gasrem_2069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2070" = icmp ugt i64 1, %"$gasrem_2069"
  br i1 %"$gascmp_2070", label %"$out_of_gas_2071", label %"$have_gas_2072"

"$out_of_gas_2071":                               ; preds = %"$have_gas_2061"
  call void @_out_of_gas()
  br label %"$have_gas_2072"

"$have_gas_2072":                                 ; preds = %"$out_of_gas_2071", %"$have_gas_2061"
  %"$consume_2073" = sub i64 %"$gasrem_2069", 1
  store i64 %"$consume_2073", i64* @_gasrem, align 8
  %int40 = alloca %Uint32, align 8
  %"$gasrem_2074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2075" = icmp ugt i64 1, %"$gasrem_2074"
  br i1 %"$gascmp_2075", label %"$out_of_gas_2076", label %"$have_gas_2077"

"$out_of_gas_2076":                               ; preds = %"$have_gas_2072"
  call void @_out_of_gas()
  br label %"$have_gas_2077"

"$have_gas_2077":                                 ; preds = %"$out_of_gas_2076", %"$have_gas_2072"
  %"$consume_2078" = sub i64 %"$gasrem_2074", 1
  store i64 %"$consume_2078", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_93" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2079" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2080" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2079", 0
  %"$NatUtils.nat_to_int_envptr_2081" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2079", 1
  %"$ack40_2082" = load %TName_Nat*, %TName_Nat** %ack40, align 8
  %"$NatUtils.nat_to_int_call_2083" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2080"(i8* %"$NatUtils.nat_to_int_envptr_2081", %TName_Nat* %"$ack40_2082"), !dbg !164
  store %Uint32 %"$NatUtils.nat_to_int_call_2083", %Uint32* %"$NatUtils.nat_to_int_93", align 4, !dbg !164
  %"$$NatUtils.nat_to_int_93_2084" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_93", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_93_2084", %Uint32* %int40, align 4, !dbg !164
  %"$gasrem_2085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2086" = icmp ugt i64 1, %"$gasrem_2085"
  br i1 %"$gascmp_2086", label %"$out_of_gas_2087", label %"$have_gas_2088"

"$out_of_gas_2087":                               ; preds = %"$have_gas_2077"
  call void @_out_of_gas()
  br label %"$have_gas_2088"

"$have_gas_2088":                                 ; preds = %"$out_of_gas_2087", %"$have_gas_2077"
  %"$consume_2089" = sub i64 %"$gasrem_2085", 1
  store i64 %"$consume_2089", i64* @_gasrem, align 8
  %sum = alloca %Uint32, align 8
  %"$gasrem_2090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2091" = icmp ugt i64 4, %"$gasrem_2090"
  br i1 %"$gascmp_2091", label %"$out_of_gas_2092", label %"$have_gas_2093"

"$out_of_gas_2092":                               ; preds = %"$have_gas_2088"
  call void @_out_of_gas()
  br label %"$have_gas_2093"

"$have_gas_2093":                                 ; preds = %"$out_of_gas_2092", %"$have_gas_2088"
  %"$consume_2094" = sub i64 %"$gasrem_2090", 4
  store i64 %"$consume_2094", i64* @_gasrem, align 8
  %"$int01_2095" = load %Uint32, %Uint32* %int01, align 4
  %"$int02_2096" = load %Uint32, %Uint32* %int02, align 4
  %"$add_call_2097" = call %Uint32 @_add_Uint32(%Uint32 %"$int01_2095", %Uint32 %"$int02_2096"), !dbg !165
  store %Uint32 %"$add_call_2097", %Uint32* %sum, align 4, !dbg !165
  %"$gasrem_2098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2099" = icmp ugt i64 1, %"$gasrem_2098"
  br i1 %"$gascmp_2099", label %"$out_of_gas_2100", label %"$have_gas_2101"

"$out_of_gas_2100":                               ; preds = %"$have_gas_2093"
  call void @_out_of_gas()
  br label %"$have_gas_2101"

"$have_gas_2101":                                 ; preds = %"$out_of_gas_2100", %"$have_gas_2093"
  %"$consume_2102" = sub i64 %"$gasrem_2098", 1
  store i64 %"$consume_2102", i64* @_gasrem, align 8
  %"$sum_0" = alloca %Uint32, align 8
  %"$gasrem_2103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2104" = icmp ugt i64 4, %"$gasrem_2103"
  br i1 %"$gascmp_2104", label %"$out_of_gas_2105", label %"$have_gas_2106"

"$out_of_gas_2105":                               ; preds = %"$have_gas_2101"
  call void @_out_of_gas()
  br label %"$have_gas_2106"

"$have_gas_2106":                                 ; preds = %"$out_of_gas_2105", %"$have_gas_2101"
  %"$consume_2107" = sub i64 %"$gasrem_2103", 4
  store i64 %"$consume_2107", i64* @_gasrem, align 8
  %"$sum_2108" = load %Uint32, %Uint32* %sum, align 4
  %"$int03_2109" = load %Uint32, %Uint32* %int03, align 4
  %"$add_call_2110" = call %Uint32 @_add_Uint32(%Uint32 %"$sum_2108", %Uint32 %"$int03_2109"), !dbg !166
  store %Uint32 %"$add_call_2110", %Uint32* %"$sum_0", align 4, !dbg !166
  %"$gasrem_2111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2112" = icmp ugt i64 1, %"$gasrem_2111"
  br i1 %"$gascmp_2112", label %"$out_of_gas_2113", label %"$have_gas_2114"

"$out_of_gas_2113":                               ; preds = %"$have_gas_2106"
  call void @_out_of_gas()
  br label %"$have_gas_2114"

"$have_gas_2114":                                 ; preds = %"$out_of_gas_2113", %"$have_gas_2106"
  %"$consume_2115" = sub i64 %"$gasrem_2111", 1
  store i64 %"$consume_2115", i64* @_gasrem, align 8
  %"$sum_1" = alloca %Uint32, align 8
  %"$gasrem_2116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2117" = icmp ugt i64 4, %"$gasrem_2116"
  br i1 %"$gascmp_2117", label %"$out_of_gas_2118", label %"$have_gas_2119"

"$out_of_gas_2118":                               ; preds = %"$have_gas_2114"
  call void @_out_of_gas()
  br label %"$have_gas_2119"

"$have_gas_2119":                                 ; preds = %"$out_of_gas_2118", %"$have_gas_2114"
  %"$consume_2120" = sub i64 %"$gasrem_2116", 4
  store i64 %"$consume_2120", i64* @_gasrem, align 8
  %"$$sum_0_2121" = load %Uint32, %Uint32* %"$sum_0", align 4
  %"$int04_2122" = load %Uint32, %Uint32* %int04, align 4
  %"$add_call_2123" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_0_2121", %Uint32 %"$int04_2122"), !dbg !167
  store %Uint32 %"$add_call_2123", %Uint32* %"$sum_1", align 4, !dbg !167
  %"$gasrem_2124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2125" = icmp ugt i64 1, %"$gasrem_2124"
  br i1 %"$gascmp_2125", label %"$out_of_gas_2126", label %"$have_gas_2127"

"$out_of_gas_2126":                               ; preds = %"$have_gas_2119"
  call void @_out_of_gas()
  br label %"$have_gas_2127"

"$have_gas_2127":                                 ; preds = %"$out_of_gas_2126", %"$have_gas_2119"
  %"$consume_2128" = sub i64 %"$gasrem_2124", 1
  store i64 %"$consume_2128", i64* @_gasrem, align 8
  %"$sum_2" = alloca %Uint32, align 8
  %"$gasrem_2129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2130" = icmp ugt i64 4, %"$gasrem_2129"
  br i1 %"$gascmp_2130", label %"$out_of_gas_2131", label %"$have_gas_2132"

"$out_of_gas_2131":                               ; preds = %"$have_gas_2127"
  call void @_out_of_gas()
  br label %"$have_gas_2132"

"$have_gas_2132":                                 ; preds = %"$out_of_gas_2131", %"$have_gas_2127"
  %"$consume_2133" = sub i64 %"$gasrem_2129", 4
  store i64 %"$consume_2133", i64* @_gasrem, align 8
  %"$$sum_1_2134" = load %Uint32, %Uint32* %"$sum_1", align 4
  %"$int10_2135" = load %Uint32, %Uint32* %int10, align 4
  %"$add_call_2136" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_1_2134", %Uint32 %"$int10_2135"), !dbg !168
  store %Uint32 %"$add_call_2136", %Uint32* %"$sum_2", align 4, !dbg !168
  %"$gasrem_2137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2138" = icmp ugt i64 1, %"$gasrem_2137"
  br i1 %"$gascmp_2138", label %"$out_of_gas_2139", label %"$have_gas_2140"

"$out_of_gas_2139":                               ; preds = %"$have_gas_2132"
  call void @_out_of_gas()
  br label %"$have_gas_2140"

"$have_gas_2140":                                 ; preds = %"$out_of_gas_2139", %"$have_gas_2132"
  %"$consume_2141" = sub i64 %"$gasrem_2137", 1
  store i64 %"$consume_2141", i64* @_gasrem, align 8
  %"$sum_3" = alloca %Uint32, align 8
  %"$gasrem_2142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2143" = icmp ugt i64 4, %"$gasrem_2142"
  br i1 %"$gascmp_2143", label %"$out_of_gas_2144", label %"$have_gas_2145"

"$out_of_gas_2144":                               ; preds = %"$have_gas_2140"
  call void @_out_of_gas()
  br label %"$have_gas_2145"

"$have_gas_2145":                                 ; preds = %"$out_of_gas_2144", %"$have_gas_2140"
  %"$consume_2146" = sub i64 %"$gasrem_2142", 4
  store i64 %"$consume_2146", i64* @_gasrem, align 8
  %"$$sum_2_2147" = load %Uint32, %Uint32* %"$sum_2", align 4
  %"$int11_2148" = load %Uint32, %Uint32* %int11, align 4
  %"$add_call_2149" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_2_2147", %Uint32 %"$int11_2148"), !dbg !169
  store %Uint32 %"$add_call_2149", %Uint32* %"$sum_3", align 4, !dbg !169
  %"$gasrem_2150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2151" = icmp ugt i64 1, %"$gasrem_2150"
  br i1 %"$gascmp_2151", label %"$out_of_gas_2152", label %"$have_gas_2153"

"$out_of_gas_2152":                               ; preds = %"$have_gas_2145"
  call void @_out_of_gas()
  br label %"$have_gas_2153"

"$have_gas_2153":                                 ; preds = %"$out_of_gas_2152", %"$have_gas_2145"
  %"$consume_2154" = sub i64 %"$gasrem_2150", 1
  store i64 %"$consume_2154", i64* @_gasrem, align 8
  %"$sum_4" = alloca %Uint32, align 8
  %"$gasrem_2155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2156" = icmp ugt i64 4, %"$gasrem_2155"
  br i1 %"$gascmp_2156", label %"$out_of_gas_2157", label %"$have_gas_2158"

"$out_of_gas_2157":                               ; preds = %"$have_gas_2153"
  call void @_out_of_gas()
  br label %"$have_gas_2158"

"$have_gas_2158":                                 ; preds = %"$out_of_gas_2157", %"$have_gas_2153"
  %"$consume_2159" = sub i64 %"$gasrem_2155", 4
  store i64 %"$consume_2159", i64* @_gasrem, align 8
  %"$$sum_3_2160" = load %Uint32, %Uint32* %"$sum_3", align 4
  %"$int12_2161" = load %Uint32, %Uint32* %int12, align 4
  %"$add_call_2162" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_3_2160", %Uint32 %"$int12_2161"), !dbg !170
  store %Uint32 %"$add_call_2162", %Uint32* %"$sum_4", align 4, !dbg !170
  %"$gasrem_2163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2164" = icmp ugt i64 1, %"$gasrem_2163"
  br i1 %"$gascmp_2164", label %"$out_of_gas_2165", label %"$have_gas_2166"

"$out_of_gas_2165":                               ; preds = %"$have_gas_2158"
  call void @_out_of_gas()
  br label %"$have_gas_2166"

"$have_gas_2166":                                 ; preds = %"$out_of_gas_2165", %"$have_gas_2158"
  %"$consume_2167" = sub i64 %"$gasrem_2163", 1
  store i64 %"$consume_2167", i64* @_gasrem, align 8
  %"$sum_5" = alloca %Uint32, align 8
  %"$gasrem_2168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2169" = icmp ugt i64 4, %"$gasrem_2168"
  br i1 %"$gascmp_2169", label %"$out_of_gas_2170", label %"$have_gas_2171"

"$out_of_gas_2170":                               ; preds = %"$have_gas_2166"
  call void @_out_of_gas()
  br label %"$have_gas_2171"

"$have_gas_2171":                                 ; preds = %"$out_of_gas_2170", %"$have_gas_2166"
  %"$consume_2172" = sub i64 %"$gasrem_2168", 4
  store i64 %"$consume_2172", i64* @_gasrem, align 8
  %"$$sum_4_2173" = load %Uint32, %Uint32* %"$sum_4", align 4
  %"$int13_2174" = load %Uint32, %Uint32* %int13, align 4
  %"$add_call_2175" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_4_2173", %Uint32 %"$int13_2174"), !dbg !171
  store %Uint32 %"$add_call_2175", %Uint32* %"$sum_5", align 4, !dbg !171
  %"$gasrem_2176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2177" = icmp ugt i64 1, %"$gasrem_2176"
  br i1 %"$gascmp_2177", label %"$out_of_gas_2178", label %"$have_gas_2179"

"$out_of_gas_2178":                               ; preds = %"$have_gas_2171"
  call void @_out_of_gas()
  br label %"$have_gas_2179"

"$have_gas_2179":                                 ; preds = %"$out_of_gas_2178", %"$have_gas_2171"
  %"$consume_2180" = sub i64 %"$gasrem_2176", 1
  store i64 %"$consume_2180", i64* @_gasrem, align 8
  %"$sum_6" = alloca %Uint32, align 8
  %"$gasrem_2181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2182" = icmp ugt i64 4, %"$gasrem_2181"
  br i1 %"$gascmp_2182", label %"$out_of_gas_2183", label %"$have_gas_2184"

"$out_of_gas_2183":                               ; preds = %"$have_gas_2179"
  call void @_out_of_gas()
  br label %"$have_gas_2184"

"$have_gas_2184":                                 ; preds = %"$out_of_gas_2183", %"$have_gas_2179"
  %"$consume_2185" = sub i64 %"$gasrem_2181", 4
  store i64 %"$consume_2185", i64* @_gasrem, align 8
  %"$$sum_5_2186" = load %Uint32, %Uint32* %"$sum_5", align 4
  %"$int14_2187" = load %Uint32, %Uint32* %int14, align 4
  %"$add_call_2188" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_5_2186", %Uint32 %"$int14_2187"), !dbg !172
  store %Uint32 %"$add_call_2188", %Uint32* %"$sum_6", align 4, !dbg !172
  %"$gasrem_2189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2190" = icmp ugt i64 1, %"$gasrem_2189"
  br i1 %"$gascmp_2190", label %"$out_of_gas_2191", label %"$have_gas_2192"

"$out_of_gas_2191":                               ; preds = %"$have_gas_2184"
  call void @_out_of_gas()
  br label %"$have_gas_2192"

"$have_gas_2192":                                 ; preds = %"$out_of_gas_2191", %"$have_gas_2184"
  %"$consume_2193" = sub i64 %"$gasrem_2189", 1
  store i64 %"$consume_2193", i64* @_gasrem, align 8
  %"$sum_7" = alloca %Uint32, align 8
  %"$gasrem_2194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2195" = icmp ugt i64 4, %"$gasrem_2194"
  br i1 %"$gascmp_2195", label %"$out_of_gas_2196", label %"$have_gas_2197"

"$out_of_gas_2196":                               ; preds = %"$have_gas_2192"
  call void @_out_of_gas()
  br label %"$have_gas_2197"

"$have_gas_2197":                                 ; preds = %"$out_of_gas_2196", %"$have_gas_2192"
  %"$consume_2198" = sub i64 %"$gasrem_2194", 4
  store i64 %"$consume_2198", i64* @_gasrem, align 8
  %"$$sum_6_2199" = load %Uint32, %Uint32* %"$sum_6", align 4
  %"$int20_2200" = load %Uint32, %Uint32* %int20, align 4
  %"$add_call_2201" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_6_2199", %Uint32 %"$int20_2200"), !dbg !173
  store %Uint32 %"$add_call_2201", %Uint32* %"$sum_7", align 4, !dbg !173
  %"$gasrem_2202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2203" = icmp ugt i64 1, %"$gasrem_2202"
  br i1 %"$gascmp_2203", label %"$out_of_gas_2204", label %"$have_gas_2205"

"$out_of_gas_2204":                               ; preds = %"$have_gas_2197"
  call void @_out_of_gas()
  br label %"$have_gas_2205"

"$have_gas_2205":                                 ; preds = %"$out_of_gas_2204", %"$have_gas_2197"
  %"$consume_2206" = sub i64 %"$gasrem_2202", 1
  store i64 %"$consume_2206", i64* @_gasrem, align 8
  %"$sum_8" = alloca %Uint32, align 8
  %"$gasrem_2207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2208" = icmp ugt i64 4, %"$gasrem_2207"
  br i1 %"$gascmp_2208", label %"$out_of_gas_2209", label %"$have_gas_2210"

"$out_of_gas_2209":                               ; preds = %"$have_gas_2205"
  call void @_out_of_gas()
  br label %"$have_gas_2210"

"$have_gas_2210":                                 ; preds = %"$out_of_gas_2209", %"$have_gas_2205"
  %"$consume_2211" = sub i64 %"$gasrem_2207", 4
  store i64 %"$consume_2211", i64* @_gasrem, align 8
  %"$$sum_7_2212" = load %Uint32, %Uint32* %"$sum_7", align 4
  %"$int21_2213" = load %Uint32, %Uint32* %int21, align 4
  %"$add_call_2214" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_7_2212", %Uint32 %"$int21_2213"), !dbg !174
  store %Uint32 %"$add_call_2214", %Uint32* %"$sum_8", align 4, !dbg !174
  %"$gasrem_2215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2216" = icmp ugt i64 1, %"$gasrem_2215"
  br i1 %"$gascmp_2216", label %"$out_of_gas_2217", label %"$have_gas_2218"

"$out_of_gas_2217":                               ; preds = %"$have_gas_2210"
  call void @_out_of_gas()
  br label %"$have_gas_2218"

"$have_gas_2218":                                 ; preds = %"$out_of_gas_2217", %"$have_gas_2210"
  %"$consume_2219" = sub i64 %"$gasrem_2215", 1
  store i64 %"$consume_2219", i64* @_gasrem, align 8
  %"$sum_9" = alloca %Uint32, align 8
  %"$gasrem_2220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2221" = icmp ugt i64 4, %"$gasrem_2220"
  br i1 %"$gascmp_2221", label %"$out_of_gas_2222", label %"$have_gas_2223"

"$out_of_gas_2222":                               ; preds = %"$have_gas_2218"
  call void @_out_of_gas()
  br label %"$have_gas_2223"

"$have_gas_2223":                                 ; preds = %"$out_of_gas_2222", %"$have_gas_2218"
  %"$consume_2224" = sub i64 %"$gasrem_2220", 4
  store i64 %"$consume_2224", i64* @_gasrem, align 8
  %"$$sum_8_2225" = load %Uint32, %Uint32* %"$sum_8", align 4
  %"$int22_2226" = load %Uint32, %Uint32* %int22, align 4
  %"$add_call_2227" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_8_2225", %Uint32 %"$int22_2226"), !dbg !175
  store %Uint32 %"$add_call_2227", %Uint32* %"$sum_9", align 4, !dbg !175
  %"$gasrem_2228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2229" = icmp ugt i64 1, %"$gasrem_2228"
  br i1 %"$gascmp_2229", label %"$out_of_gas_2230", label %"$have_gas_2231"

"$out_of_gas_2230":                               ; preds = %"$have_gas_2223"
  call void @_out_of_gas()
  br label %"$have_gas_2231"

"$have_gas_2231":                                 ; preds = %"$out_of_gas_2230", %"$have_gas_2223"
  %"$consume_2232" = sub i64 %"$gasrem_2228", 1
  store i64 %"$consume_2232", i64* @_gasrem, align 8
  %"$sum_10" = alloca %Uint32, align 8
  %"$gasrem_2233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2234" = icmp ugt i64 4, %"$gasrem_2233"
  br i1 %"$gascmp_2234", label %"$out_of_gas_2235", label %"$have_gas_2236"

"$out_of_gas_2235":                               ; preds = %"$have_gas_2231"
  call void @_out_of_gas()
  br label %"$have_gas_2236"

"$have_gas_2236":                                 ; preds = %"$out_of_gas_2235", %"$have_gas_2231"
  %"$consume_2237" = sub i64 %"$gasrem_2233", 4
  store i64 %"$consume_2237", i64* @_gasrem, align 8
  %"$$sum_9_2238" = load %Uint32, %Uint32* %"$sum_9", align 4
  %"$int23_2239" = load %Uint32, %Uint32* %int23, align 4
  %"$add_call_2240" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_9_2238", %Uint32 %"$int23_2239"), !dbg !176
  store %Uint32 %"$add_call_2240", %Uint32* %"$sum_10", align 4, !dbg !176
  %"$gasrem_2241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2242" = icmp ugt i64 1, %"$gasrem_2241"
  br i1 %"$gascmp_2242", label %"$out_of_gas_2243", label %"$have_gas_2244"

"$out_of_gas_2243":                               ; preds = %"$have_gas_2236"
  call void @_out_of_gas()
  br label %"$have_gas_2244"

"$have_gas_2244":                                 ; preds = %"$out_of_gas_2243", %"$have_gas_2236"
  %"$consume_2245" = sub i64 %"$gasrem_2241", 1
  store i64 %"$consume_2245", i64* @_gasrem, align 8
  %"$sum_11" = alloca %Uint32, align 8
  %"$gasrem_2246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2247" = icmp ugt i64 4, %"$gasrem_2246"
  br i1 %"$gascmp_2247", label %"$out_of_gas_2248", label %"$have_gas_2249"

"$out_of_gas_2248":                               ; preds = %"$have_gas_2244"
  call void @_out_of_gas()
  br label %"$have_gas_2249"

"$have_gas_2249":                                 ; preds = %"$out_of_gas_2248", %"$have_gas_2244"
  %"$consume_2250" = sub i64 %"$gasrem_2246", 4
  store i64 %"$consume_2250", i64* @_gasrem, align 8
  %"$$sum_10_2251" = load %Uint32, %Uint32* %"$sum_10", align 4
  %"$int24_2252" = load %Uint32, %Uint32* %int24, align 4
  %"$add_call_2253" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_10_2251", %Uint32 %"$int24_2252"), !dbg !177
  store %Uint32 %"$add_call_2253", %Uint32* %"$sum_11", align 4, !dbg !177
  %"$gasrem_2254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2255" = icmp ugt i64 1, %"$gasrem_2254"
  br i1 %"$gascmp_2255", label %"$out_of_gas_2256", label %"$have_gas_2257"

"$out_of_gas_2256":                               ; preds = %"$have_gas_2249"
  call void @_out_of_gas()
  br label %"$have_gas_2257"

"$have_gas_2257":                                 ; preds = %"$out_of_gas_2256", %"$have_gas_2249"
  %"$consume_2258" = sub i64 %"$gasrem_2254", 1
  store i64 %"$consume_2258", i64* @_gasrem, align 8
  %"$sum_12" = alloca %Uint32, align 8
  %"$gasrem_2259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2260" = icmp ugt i64 4, %"$gasrem_2259"
  br i1 %"$gascmp_2260", label %"$out_of_gas_2261", label %"$have_gas_2262"

"$out_of_gas_2261":                               ; preds = %"$have_gas_2257"
  call void @_out_of_gas()
  br label %"$have_gas_2262"

"$have_gas_2262":                                 ; preds = %"$out_of_gas_2261", %"$have_gas_2257"
  %"$consume_2263" = sub i64 %"$gasrem_2259", 4
  store i64 %"$consume_2263", i64* @_gasrem, align 8
  %"$$sum_11_2264" = load %Uint32, %Uint32* %"$sum_11", align 4
  %"$int30_2265" = load %Uint32, %Uint32* %int30, align 4
  %"$add_call_2266" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_11_2264", %Uint32 %"$int30_2265"), !dbg !178
  store %Uint32 %"$add_call_2266", %Uint32* %"$sum_12", align 4, !dbg !178
  %"$gasrem_2267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2268" = icmp ugt i64 1, %"$gasrem_2267"
  br i1 %"$gascmp_2268", label %"$out_of_gas_2269", label %"$have_gas_2270"

"$out_of_gas_2269":                               ; preds = %"$have_gas_2262"
  call void @_out_of_gas()
  br label %"$have_gas_2270"

"$have_gas_2270":                                 ; preds = %"$out_of_gas_2269", %"$have_gas_2262"
  %"$consume_2271" = sub i64 %"$gasrem_2267", 1
  store i64 %"$consume_2271", i64* @_gasrem, align 8
  %"$sum_13" = alloca %Uint32, align 8
  %"$gasrem_2272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2273" = icmp ugt i64 4, %"$gasrem_2272"
  br i1 %"$gascmp_2273", label %"$out_of_gas_2274", label %"$have_gas_2275"

"$out_of_gas_2274":                               ; preds = %"$have_gas_2270"
  call void @_out_of_gas()
  br label %"$have_gas_2275"

"$have_gas_2275":                                 ; preds = %"$out_of_gas_2274", %"$have_gas_2270"
  %"$consume_2276" = sub i64 %"$gasrem_2272", 4
  store i64 %"$consume_2276", i64* @_gasrem, align 8
  %"$$sum_12_2277" = load %Uint32, %Uint32* %"$sum_12", align 4
  %"$int31_2278" = load %Uint32, %Uint32* %int31, align 4
  %"$add_call_2279" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_12_2277", %Uint32 %"$int31_2278"), !dbg !179
  store %Uint32 %"$add_call_2279", %Uint32* %"$sum_13", align 4, !dbg !179
  %"$gasrem_2280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2281" = icmp ugt i64 1, %"$gasrem_2280"
  br i1 %"$gascmp_2281", label %"$out_of_gas_2282", label %"$have_gas_2283"

"$out_of_gas_2282":                               ; preds = %"$have_gas_2275"
  call void @_out_of_gas()
  br label %"$have_gas_2283"

"$have_gas_2283":                                 ; preds = %"$out_of_gas_2282", %"$have_gas_2275"
  %"$consume_2284" = sub i64 %"$gasrem_2280", 1
  store i64 %"$consume_2284", i64* @_gasrem, align 8
  %"$sum_14" = alloca %Uint32, align 8
  %"$gasrem_2285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2286" = icmp ugt i64 4, %"$gasrem_2285"
  br i1 %"$gascmp_2286", label %"$out_of_gas_2287", label %"$have_gas_2288"

"$out_of_gas_2287":                               ; preds = %"$have_gas_2283"
  call void @_out_of_gas()
  br label %"$have_gas_2288"

"$have_gas_2288":                                 ; preds = %"$out_of_gas_2287", %"$have_gas_2283"
  %"$consume_2289" = sub i64 %"$gasrem_2285", 4
  store i64 %"$consume_2289", i64* @_gasrem, align 8
  %"$$sum_13_2290" = load %Uint32, %Uint32* %"$sum_13", align 4
  %"$int32_2291" = load %Uint32, %Uint32* %int32, align 4
  %"$add_call_2292" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_13_2290", %Uint32 %"$int32_2291"), !dbg !180
  store %Uint32 %"$add_call_2292", %Uint32* %"$sum_14", align 4, !dbg !180
  %"$gasrem_2293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2294" = icmp ugt i64 1, %"$gasrem_2293"
  br i1 %"$gascmp_2294", label %"$out_of_gas_2295", label %"$have_gas_2296"

"$out_of_gas_2295":                               ; preds = %"$have_gas_2288"
  call void @_out_of_gas()
  br label %"$have_gas_2296"

"$have_gas_2296":                                 ; preds = %"$out_of_gas_2295", %"$have_gas_2288"
  %"$consume_2297" = sub i64 %"$gasrem_2293", 1
  store i64 %"$consume_2297", i64* @_gasrem, align 8
  %"$sum_15" = alloca %Uint32, align 8
  %"$gasrem_2298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2299" = icmp ugt i64 4, %"$gasrem_2298"
  br i1 %"$gascmp_2299", label %"$out_of_gas_2300", label %"$have_gas_2301"

"$out_of_gas_2300":                               ; preds = %"$have_gas_2296"
  call void @_out_of_gas()
  br label %"$have_gas_2301"

"$have_gas_2301":                                 ; preds = %"$out_of_gas_2300", %"$have_gas_2296"
  %"$consume_2302" = sub i64 %"$gasrem_2298", 4
  store i64 %"$consume_2302", i64* @_gasrem, align 8
  %"$$sum_14_2303" = load %Uint32, %Uint32* %"$sum_14", align 4
  %"$int33_2304" = load %Uint32, %Uint32* %int33, align 4
  %"$add_call_2305" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_14_2303", %Uint32 %"$int33_2304"), !dbg !181
  store %Uint32 %"$add_call_2305", %Uint32* %"$sum_15", align 4, !dbg !181
  %"$gasrem_2306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2307" = icmp ugt i64 1, %"$gasrem_2306"
  br i1 %"$gascmp_2307", label %"$out_of_gas_2308", label %"$have_gas_2309"

"$out_of_gas_2308":                               ; preds = %"$have_gas_2301"
  call void @_out_of_gas()
  br label %"$have_gas_2309"

"$have_gas_2309":                                 ; preds = %"$out_of_gas_2308", %"$have_gas_2301"
  %"$consume_2310" = sub i64 %"$gasrem_2306", 1
  store i64 %"$consume_2310", i64* @_gasrem, align 8
  %"$sum_16" = alloca %Uint32, align 8
  %"$gasrem_2311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2312" = icmp ugt i64 4, %"$gasrem_2311"
  br i1 %"$gascmp_2312", label %"$out_of_gas_2313", label %"$have_gas_2314"

"$out_of_gas_2313":                               ; preds = %"$have_gas_2309"
  call void @_out_of_gas()
  br label %"$have_gas_2314"

"$have_gas_2314":                                 ; preds = %"$out_of_gas_2313", %"$have_gas_2309"
  %"$consume_2315" = sub i64 %"$gasrem_2311", 4
  store i64 %"$consume_2315", i64* @_gasrem, align 8
  %"$$sum_15_2316" = load %Uint32, %Uint32* %"$sum_15", align 4
  %"$int34_2317" = load %Uint32, %Uint32* %int34, align 4
  %"$add_call_2318" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_15_2316", %Uint32 %"$int34_2317"), !dbg !182
  store %Uint32 %"$add_call_2318", %Uint32* %"$sum_16", align 4, !dbg !182
  %"$gasrem_2319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2320" = icmp ugt i64 1, %"$gasrem_2319"
  br i1 %"$gascmp_2320", label %"$out_of_gas_2321", label %"$have_gas_2322"

"$out_of_gas_2321":                               ; preds = %"$have_gas_2314"
  call void @_out_of_gas()
  br label %"$have_gas_2322"

"$have_gas_2322":                                 ; preds = %"$out_of_gas_2321", %"$have_gas_2314"
  %"$consume_2323" = sub i64 %"$gasrem_2319", 1
  store i64 %"$consume_2323", i64* @_gasrem, align 8
  %"$sum_17" = alloca %Uint32, align 8
  %"$gasrem_2324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2325" = icmp ugt i64 4, %"$gasrem_2324"
  br i1 %"$gascmp_2325", label %"$out_of_gas_2326", label %"$have_gas_2327"

"$out_of_gas_2326":                               ; preds = %"$have_gas_2322"
  call void @_out_of_gas()
  br label %"$have_gas_2327"

"$have_gas_2327":                                 ; preds = %"$out_of_gas_2326", %"$have_gas_2322"
  %"$consume_2328" = sub i64 %"$gasrem_2324", 4
  store i64 %"$consume_2328", i64* @_gasrem, align 8
  %"$$sum_16_2329" = load %Uint32, %Uint32* %"$sum_16", align 4
  %"$int40_2330" = load %Uint32, %Uint32* %int40, align 4
  %"$add_call_2331" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_16_2329", %Uint32 %"$int40_2330"), !dbg !183
  store %Uint32 %"$add_call_2331", %Uint32* %"$sum_17", align 4, !dbg !183
  %"$gasrem_2332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2333" = icmp ugt i64 1, %"$gasrem_2332"
  br i1 %"$gascmp_2333", label %"$out_of_gas_2334", label %"$have_gas_2335"

"$out_of_gas_2334":                               ; preds = %"$have_gas_2327"
  call void @_out_of_gas()
  br label %"$have_gas_2335"

"$have_gas_2335":                                 ; preds = %"$out_of_gas_2334", %"$have_gas_2327"
  %"$consume_2336" = sub i64 %"$gasrem_2332", 1
  store i64 %"$consume_2336", i64* @_gasrem, align 8
  %"$$sum_17_2337" = load %Uint32, %Uint32* %"$sum_17", align 4
  store %Uint32 %"$$sum_17_2337", %Uint32* %"$expr_124", align 4, !dbg !184
  %"$$expr_124_2338" = load %Uint32, %Uint32* %"$expr_124", align 4
  ret %Uint32 %"$$expr_124_2338"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_2339" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_2340" = alloca %Uint32, align 8
  %"$memvoidcast_2341" = bitcast %Uint32* %"$pval_2340" to i8*
  store %Uint32 %"$exprval_2339", %Uint32* %"$pval_2340", align 4
  %"$execptr_load_2342" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2342", %_TyDescrTy_Typ* @"$TyDescr_Uint32_161", i8* %"$memvoidcast_2341")
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
!103 = !DILocation(line: 1, column: 18, scope: !101)
!104 = !DILocation(line: 52, column: 5, scope: !101)
!105 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!106 = !DILocation(line: 3, column: 20, scope: !105)
!107 = !DILocation(line: 8, column: 3, scope: !105)
!108 = !DILocation(line: 18, column: 19, scope: !105)
!109 = !DILocation(line: 18, column: 18, scope: !105)
!110 = !DILocation(line: 19, column: 23, scope: !105)
!111 = !DILocation(line: 19, column: 22, scope: !105)
!112 = !DILocation(line: 20, column: 14, scope: !105)
!113 = !DILocation(line: 21, column: 13, scope: !105)
!114 = !DILocation(line: 23, column: 5, scope: !105)
!115 = !DILocation(line: 25, column: 23, scope: !105)
!116 = !DILocation(line: 29, column: 13, scope: !105)
!117 = !DILocation(line: 30, column: 13, scope: !105)
!118 = !DILocation(line: 31, column: 13, scope: !105)
!119 = !DILocation(line: 32, column: 13, scope: !105)
!120 = !DILocation(line: 33, column: 13, scope: !105)
!121 = !DILocation(line: 35, column: 10, scope: !105)
!122 = !DILocation(line: 36, column: 10, scope: !105)
!123 = !DILocation(line: 37, column: 10, scope: !105)
!124 = !DILocation(line: 38, column: 10, scope: !105)
!125 = !DILocation(line: 39, column: 10, scope: !105)
!126 = !DILocation(line: 41, column: 13, scope: !105)
!127 = !DILocation(line: 43, column: 13, scope: !105)
!128 = !DILocation(line: 44, column: 13, scope: !105)
!129 = !DILocation(line: 45, column: 13, scope: !105)
!130 = !DILocation(line: 46, column: 13, scope: !105)
!131 = !DILocation(line: 47, column: 13, scope: !105)
!132 = !DILocation(line: 48, column: 13, scope: !105)
!133 = !DILocation(line: 49, column: 13, scope: !105)
!134 = !DILocation(line: 50, column: 13, scope: !105)
!135 = !DILocation(line: 51, column: 13, scope: !105)
!136 = !DILocation(line: 52, column: 13, scope: !105)
!137 = !DILocation(line: 53, column: 13, scope: !105)
!138 = !DILocation(line: 54, column: 13, scope: !105)
!139 = !DILocation(line: 56, column: 13, scope: !105)
!140 = !DILocation(line: 57, column: 13, scope: !105)
!141 = !DILocation(line: 58, column: 13, scope: !105)
!142 = !DILocation(line: 59, column: 13, scope: !105)
!143 = !DILocation(line: 60, column: 13, scope: !105)
!144 = !DILocation(line: 61, column: 13, scope: !105)
!145 = !DILocation(line: 63, column: 13, scope: !105)
!146 = !DILocation(line: 64, column: 13, scope: !105)
!147 = !DILocation(line: 65, column: 13, scope: !105)
!148 = !DILocation(line: 66, column: 13, scope: !105)
!149 = !DILocation(line: 67, column: 13, scope: !105)
!150 = !DILocation(line: 68, column: 13, scope: !105)
!151 = !DILocation(line: 69, column: 13, scope: !105)
!152 = !DILocation(line: 70, column: 13, scope: !105)
!153 = !DILocation(line: 71, column: 13, scope: !105)
!154 = !DILocation(line: 72, column: 13, scope: !105)
!155 = !DILocation(line: 73, column: 13, scope: !105)
!156 = !DILocation(line: 74, column: 13, scope: !105)
!157 = !DILocation(line: 75, column: 13, scope: !105)
!158 = !DILocation(line: 76, column: 13, scope: !105)
!159 = !DILocation(line: 77, column: 13, scope: !105)
!160 = !DILocation(line: 78, column: 13, scope: !105)
!161 = !DILocation(line: 79, column: 13, scope: !105)
!162 = !DILocation(line: 80, column: 13, scope: !105)
!163 = !DILocation(line: 81, column: 13, scope: !105)
!164 = !DILocation(line: 82, column: 13, scope: !105)
!165 = !DILocation(line: 84, column: 11, scope: !105)
!166 = !DILocation(line: 85, column: 11, scope: !105)
!167 = !DILocation(line: 86, column: 11, scope: !105)
!168 = !DILocation(line: 87, column: 11, scope: !105)
!169 = !DILocation(line: 88, column: 11, scope: !105)
!170 = !DILocation(line: 89, column: 11, scope: !105)
!171 = !DILocation(line: 90, column: 11, scope: !105)
!172 = !DILocation(line: 91, column: 11, scope: !105)
!173 = !DILocation(line: 92, column: 11, scope: !105)
!174 = !DILocation(line: 93, column: 11, scope: !105)
!175 = !DILocation(line: 94, column: 11, scope: !105)
!176 = !DILocation(line: 95, column: 11, scope: !105)
!177 = !DILocation(line: 96, column: 11, scope: !105)
!178 = !DILocation(line: 97, column: 11, scope: !105)
!179 = !DILocation(line: 98, column: 11, scope: !105)
!180 = !DILocation(line: 99, column: 11, scope: !105)
!181 = !DILocation(line: 100, column: 11, scope: !105)
!182 = !DILocation(line: 101, column: 11, scope: !105)
!183 = !DILocation(line: 102, column: 11, scope: !105)
!184 = !DILocation(line: 104, column: 1, scope: !105)
