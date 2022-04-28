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

%"$TyDescrTy_PrimTyp_172" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_204" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_203"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_203" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_205"**, %"$TyDescrTy_ADTTyp_204"* }
%"$TyDescrTy_ADTTyp_Constr_205" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>
%"$ParamDescr_2440" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2441" = type { %ParamDescrString, i32, %"$ParamDescr_2440"* }
%"$$fundef_170_env_222" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_168_env_223" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_166_env_224" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_164_env_225" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat* }
%"$$fundef_162_env_226" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_160_env_227" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_158_env_228" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { i8*, i8* }* }
%"$$fundef_156_env_229" = type { { i8*, i8* }* }
%"$$fundef_154_env_230" = type { { i8*, i8* }* }
%"$$fundef_152_env_231" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_150_env_232" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_148_env_233" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_146_env_234" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { i8*, i8* }* }
%"$$fundef_144_env_235" = type { { i8*, i8* }* }
%"$$fundef_142_env_236" = type { { i8*, i8* }* }
%"$$fundef_140_env_237" = type {}
%"$$fundef_137_env_238" = type { %Uint32, %Uint32 }
%"$$fundef_135_env_239" = type { %Uint32 }
%"$$fundef_133_env_240" = type { { i8*, i8* }* }
%"$$fundef_131_env_241" = type { %Uint32, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_129_env_242" = type { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_127_env_243" = type {}
%"$$fundef_125_env_244" = type {}
%"$$fundef_123_env_245" = type { %TName_Nat*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_121_env_246" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_119_env_247" = type {}
%"$$fundef_117_env_248" = type {}
%"$$fundef_115_env_249" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_113_env_250" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_111_env_251" = type {}
%"$$fundef_109_env_252" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_173" = global %"$TyDescrTy_PrimTyp_172" zeroinitializer
@"$TyDescr_Int32_174" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Int32_Prim_173" to i8*) }
@"$TyDescr_Uint32_Prim_175" = global %"$TyDescrTy_PrimTyp_172" { i32 1, i32 0 }
@"$TyDescr_Uint32_176" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Uint32_Prim_175" to i8*) }
@"$TyDescr_Int64_Prim_177" = global %"$TyDescrTy_PrimTyp_172" { i32 0, i32 1 }
@"$TyDescr_Int64_178" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Int64_Prim_177" to i8*) }
@"$TyDescr_Uint64_Prim_179" = global %"$TyDescrTy_PrimTyp_172" { i32 1, i32 1 }
@"$TyDescr_Uint64_180" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Uint64_Prim_179" to i8*) }
@"$TyDescr_Int128_Prim_181" = global %"$TyDescrTy_PrimTyp_172" { i32 0, i32 2 }
@"$TyDescr_Int128_182" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Int128_Prim_181" to i8*) }
@"$TyDescr_Uint128_Prim_183" = global %"$TyDescrTy_PrimTyp_172" { i32 1, i32 2 }
@"$TyDescr_Uint128_184" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Uint128_Prim_183" to i8*) }
@"$TyDescr_Int256_Prim_185" = global %"$TyDescrTy_PrimTyp_172" { i32 0, i32 3 }
@"$TyDescr_Int256_186" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Int256_Prim_185" to i8*) }
@"$TyDescr_Uint256_Prim_187" = global %"$TyDescrTy_PrimTyp_172" { i32 1, i32 3 }
@"$TyDescr_Uint256_188" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Uint256_Prim_187" to i8*) }
@"$TyDescr_String_Prim_189" = global %"$TyDescrTy_PrimTyp_172" { i32 2, i32 0 }
@"$TyDescr_String_190" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_String_Prim_189" to i8*) }
@"$TyDescr_Bnum_Prim_191" = global %"$TyDescrTy_PrimTyp_172" { i32 3, i32 0 }
@"$TyDescr_Bnum_192" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Bnum_Prim_191" to i8*) }
@"$TyDescr_Message_Prim_193" = global %"$TyDescrTy_PrimTyp_172" { i32 4, i32 0 }
@"$TyDescr_Message_194" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Message_Prim_193" to i8*) }
@"$TyDescr_Event_Prim_195" = global %"$TyDescrTy_PrimTyp_172" { i32 5, i32 0 }
@"$TyDescr_Event_196" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Event_Prim_195" to i8*) }
@"$TyDescr_Exception_Prim_197" = global %"$TyDescrTy_PrimTyp_172" { i32 6, i32 0 }
@"$TyDescr_Exception_198" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Exception_Prim_197" to i8*) }
@"$TyDescr_ReplicateContr_Prim_199" = global %"$TyDescrTy_PrimTyp_172" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_200" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_ReplicateContr_Prim_199" to i8*) }
@"$TyDescr_Bystr_Prim_201" = global %"$TyDescrTy_PrimTyp_172" { i32 7, i32 0 }
@"$TyDescr_Bystr_202" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Bystr_Prim_201" to i8*) }
@"$TyDescr_ADT_Nat_206" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_203"* @"$TyDescr_Nat_ADTTyp_Specl_219" to i8*) }
@"$TyDescr_Nat_ADTTyp_210" = unnamed_addr constant %"$TyDescrTy_ADTTyp_204" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_221", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_203"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_203"*], [1 x %"$TyDescrTy_ADTTyp_Specl_203"*]* @"$TyDescr_Nat_ADTTyp_m_specls_220", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_211" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_212" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_213" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_205" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_212", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_211", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_214" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_206"]
@"$TyDescr_ADT_Succ_215" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_216" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_205" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_215", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_214", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_217" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_205"*] [%"$TyDescrTy_ADTTyp_Constr_205"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_213", %"$TyDescrTy_ADTTyp_Constr_205"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_216"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_218" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_219" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_203" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_218", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_205"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_205"*], [2 x %"$TyDescrTy_ADTTyp_Constr_205"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_217", i32 0, i32 0), %"$TyDescrTy_ADTTyp_204"* @"$TyDescr_Nat_ADTTyp_210" }
@"$TyDescr_Nat_ADTTyp_m_specls_220" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_203"*] [%"$TyDescrTy_ADTTyp_Specl_203"* @"$TyDescr_Nat_ADTTyp_Specl_219"]
@"$TyDescr_ADT_Nat_221" = unnamed_addr constant [3 x i8] c"Nat"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@nat_fold = global { i8*, i8* }* null
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@NatUtils.nat_to_int = global { %Uint32 (i8*, %TName_Nat*)*, i8* } zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_196", %_TyDescrTy_Typ* @"$TyDescr_Int64_178", %_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_206", %_TyDescrTy_Typ* @"$TyDescr_Uint256_188", %_TyDescrTy_Typ* @"$TyDescr_Uint32_176", %_TyDescrTy_Typ* @"$TyDescr_Uint64_180", %_TyDescrTy_Typ* @"$TyDescr_Bnum_192", %_TyDescrTy_Typ* @"$TyDescr_Uint128_184", %_TyDescrTy_Typ* @"$TyDescr_Exception_198", %_TyDescrTy_Typ* @"$TyDescr_String_190", %_TyDescrTy_Typ* @"$TyDescr_Int256_186", %_TyDescrTy_Typ* @"$TyDescr_Int128_182", %_TyDescrTy_Typ* @"$TyDescr_Bystr_202", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_200", %_TyDescrTy_Typ* @"$TyDescr_Message_194", %_TyDescrTy_Typ* @"$TyDescr_Int32_174"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_2440"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2441"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_170"(%"$$fundef_170_env_222"* %0, %TName_Nat* %1) !dbg !3 {
entry:
  %"$n_1085" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_1085", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_1085", metadata !8, metadata !DIExpression()), !dbg !11
  %"$$fundef_170_env_f_1058" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %0, i32 0, i32 0
  %"$f_envload_1059" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_170_env_f_1058", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_1059", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_170_env_iter_nat_nat_1060" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_1061" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_170_env_iter_nat_nat_1060", align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_1061", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$$fundef_170_env_nat_succ_1062" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %0, i32 0, i32 2
  %"$nat_succ_envload_1063" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_170_env_nat_succ_1062", align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_1063", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$retval_171" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1065" = icmp ugt i64 1, %"$gasrem_1064"
  br i1 %"$gascmp_1065", label %"$out_of_gas_1066", label %"$have_gas_1067"

"$out_of_gas_1066":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1067"

"$have_gas_1067":                                 ; preds = %"$out_of_gas_1066", %entry
  %"$consume_1068" = sub i64 %"$gasrem_1064", 1
  store i64 %"$consume_1068", i64* @_gasrem, align 8
  %"$iter_nat_nat_44" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_nat_1069" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$iter_nat_nat_fptr_1070" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1069", 0
  %"$iter_nat_nat_envptr_1071" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1069", 1
  %"$f_1072" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$iter_nat_nat_call_1073" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_1070"(i8* %"$iter_nat_nat_envptr_1071", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1072"), !dbg !12
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_1073", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_44", align 8, !dbg !12
  %"$iter_nat_nat_45" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$$iter_nat_nat_44_1074" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_44", align 8
  %"$$iter_nat_nat_44_fptr_1075" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_44_1074", 0
  %"$$iter_nat_nat_44_envptr_1076" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_44_1074", 1
  %"$$iter_nat_nat_44_call_1077" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_44_fptr_1075"(i8* %"$$iter_nat_nat_44_envptr_1076", %TName_Nat* %1), !dbg !12
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_44_call_1077", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_45", align 8, !dbg !12
  %"$iter_nat_nat_46" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_nat_45_1078" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_45", align 8
  %"$$iter_nat_nat_45_fptr_1079" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_45_1078", 0
  %"$$iter_nat_nat_45_envptr_1080" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_45_1078", 1
  %"$nat_succ_1081" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$$iter_nat_nat_45_call_1082" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_45_fptr_1079"(i8* %"$$iter_nat_nat_45_envptr_1080", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1081"), !dbg !12
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_45_call_1082", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_46", align 8, !dbg !12
  %"$$iter_nat_nat_46_1083" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_46", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_46_1083", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_171", align 8, !dbg !12
  %"$$retval_171_1084" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_171", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_171_1084"
}

define internal %TName_Nat* @"$fundef_168"(%"$$fundef_168_env_223"* %0, %TName_Nat* %1) !dbg !13 {
entry:
  %"$n_1057" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_1057", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_1057", metadata !14, metadata !DIExpression()), !dbg !15
  %"$$fundef_168_env_ack_1030" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %0, i32 0, i32 0
  %"$ack_envload_1031" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_168_env_ack_1030", align 8
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_1031", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$$fundef_168_env_iter_nat_1032" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %0, i32 0, i32 1
  %"$iter_nat_envload_1033" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_168_env_iter_nat_1032", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_1033", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_168_env_x0_1034" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %0, i32 0, i32 2
  %"$x0_envload_1035" = load %TName_Nat*, %TName_Nat** %"$$fundef_168_env_x0_1034", align 8
  %x0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x0_envload_1035", %TName_Nat** %x0, align 8
  %"$retval_169" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$retval_169", metadata !16, metadata !DIExpression()), !dbg !17
  %"$gasrem_1036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1037" = icmp ugt i64 1, %"$gasrem_1036"
  br i1 %"$gascmp_1037", label %"$out_of_gas_1038", label %"$have_gas_1039"

"$out_of_gas_1038":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1039"

"$have_gas_1039":                                 ; preds = %"$out_of_gas_1038", %entry
  %"$consume_1040" = sub i64 %"$gasrem_1036", 1
  store i64 %"$consume_1040", i64* @_gasrem, align 8
  %"$iter_nat_41" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_1041" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$iter_nat_fptr_1042" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1041", 0
  %"$iter_nat_envptr_1043" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1041", 1
  %"$ack_1044" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$iter_nat_call_1045" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_1042"(i8* %"$iter_nat_envptr_1043", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_1044"), !dbg !17
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_1045", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_41", align 8, !dbg !17
  %"$iter_nat_42" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_41_1046" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_41", align 8
  %"$$iter_nat_41_fptr_1047" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_1046", 0
  %"$$iter_nat_41_envptr_1048" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_1046", 1
  %"$$iter_nat_41_call_1049" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_fptr_1047"(i8* %"$$iter_nat_41_envptr_1048", %TName_Nat* %1), !dbg !17
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_call_1049", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_42", align 8, !dbg !17
  %"$iter_nat_43" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$iter_nat_43", metadata !18, metadata !DIExpression()), !dbg !17
  %"$$iter_nat_42_1050" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_42", align 8
  %"$$iter_nat_42_fptr_1051" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_42_1050", 0
  %"$$iter_nat_42_envptr_1052" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_42_1050", 1
  %"$x0_1053" = load %TName_Nat*, %TName_Nat** %x0, align 8
  %"$$iter_nat_42_call_1054" = call %TName_Nat* %"$$iter_nat_42_fptr_1051"(i8* %"$$iter_nat_42_envptr_1052", %TName_Nat* %"$x0_1053"), !dbg !17
  store %TName_Nat* %"$$iter_nat_42_call_1054", %TName_Nat** %"$iter_nat_43", align 8, !dbg !17
  %"$$iter_nat_43_1055" = load %TName_Nat*, %TName_Nat** %"$iter_nat_43", align 8
  store %TName_Nat* %"$$iter_nat_43_1055", %TName_Nat** %"$retval_169", align 8, !dbg !17
  %"$$retval_169_1056" = load %TName_Nat*, %TName_Nat** %"$retval_169", align 8
  ret %TName_Nat* %"$$retval_169_1056"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_166"(%"$$fundef_166_env_224"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !19 {
entry:
  %"$$fundef_166_env_iter_nat_996" = getelementptr inbounds %"$$fundef_166_env_224", %"$$fundef_166_env_224"* %0, i32 0, i32 0
  %"$iter_nat_envload_997" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_166_env_iter_nat_996", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_997", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_166_env_one_998" = getelementptr inbounds %"$$fundef_166_env_224", %"$$fundef_166_env_224"* %0, i32 0, i32 1
  %"$one_envload_999" = load %TName_Nat*, %TName_Nat** %"$$fundef_166_env_one_998", align 8
  %one = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$one_envload_999", %TName_Nat** %one, align 8
  %"$retval_167" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1001" = icmp ugt i64 1, %"$gasrem_1000"
  br i1 %"$gascmp_1001", label %"$out_of_gas_1002", label %"$have_gas_1003"

"$out_of_gas_1002":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1003"

"$have_gas_1003":                                 ; preds = %"$out_of_gas_1002", %entry
  %"$consume_1004" = sub i64 %"$gasrem_1000", 1
  store i64 %"$consume_1004", i64* @_gasrem, align 8
  %x0 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %x0, metadata !20, metadata !DIExpression()), !dbg !21
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$have_gas_1003"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$have_gas_1003"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %"$ack_40" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ack_40", metadata !22, metadata !DIExpression()), !dbg !23
  %"$ack_fptr_1010" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_1011" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_1012" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$ack_call_1013" = call %TName_Nat* %"$ack_fptr_1010"(i8* %"$ack_envptr_1011", %TName_Nat* %"$one_1012"), !dbg !23
  store %TName_Nat* %"$ack_call_1013", %TName_Nat** %"$ack_40", align 8, !dbg !23
  %"$$ack_40_1014" = load %TName_Nat*, %TName_Nat** %"$ack_40", align 8
  store %TName_Nat* %"$$ack_40_1014", %TName_Nat** %x0, align 8, !dbg !23
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$have_gas_1008"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  %"$$fundef_168_envp_1020_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_168_envp_1020_salloc" = call i8* @_salloc(i8* %"$$fundef_168_envp_1020_load", i64 40)
  %"$$fundef_168_envp_1020" = bitcast i8* %"$$fundef_168_envp_1020_salloc" to %"$$fundef_168_env_223"*
  %"$$fundef_168_env_voidp_1022" = bitcast %"$$fundef_168_env_223"* %"$$fundef_168_envp_1020" to i8*
  %"$$fundef_168_cloval_1023" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_168_env_223"*, %TName_Nat*)* @"$fundef_168" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_168_env_voidp_1022", 1
  %"$$fundef_168_env_ack_1024" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %"$$fundef_168_envp_1020", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_168_env_ack_1024", align 8
  %"$$fundef_168_env_iter_nat_1025" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %"$$fundef_168_envp_1020", i32 0, i32 1
  %"$iter_nat_1026" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1026", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_168_env_iter_nat_1025", align 8
  %"$$fundef_168_env_x0_1027" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %"$$fundef_168_envp_1020", i32 0, i32 2
  %"$x0_1028" = load %TName_Nat*, %TName_Nat** %x0, align 8
  store %TName_Nat* %"$x0_1028", %TName_Nat** %"$$fundef_168_env_x0_1027", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_168_cloval_1023", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_167", align 8, !dbg !24
  %"$$retval_167_1029" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_167", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_167_1029"
}

define internal %TName_Nat* @"$fundef_164"(%"$$fundef_164_env_225"* %0, %TName_Nat* %1) !dbg !25 {
entry:
  %"$unused_995" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$unused_995", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$unused_995", metadata !26, metadata !DIExpression()), !dbg !27
  %"$$fundef_164_env_f_979" = getelementptr inbounds %"$$fundef_164_env_225", %"$$fundef_164_env_225"* %0, i32 0, i32 0
  %"$f_envload_980" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_164_env_f_979", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_980", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_164_env_x_981" = getelementptr inbounds %"$$fundef_164_env_225", %"$$fundef_164_env_225"* %0, i32 0, i32 1
  %"$x_envload_982" = load %TName_Nat*, %TName_Nat** %"$$fundef_164_env_x_981", align 8
  %x = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x_envload_982", %TName_Nat** %x, align 8
  %"$retval_165" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$retval_165", metadata !28, metadata !DIExpression()), !dbg !29
  %"$gasrem_983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_984" = icmp ugt i64 1, %"$gasrem_983"
  br i1 %"$gascmp_984", label %"$out_of_gas_985", label %"$have_gas_986"

"$out_of_gas_985":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_986"

"$have_gas_986":                                  ; preds = %"$out_of_gas_985", %entry
  %"$consume_987" = sub i64 %"$gasrem_983", 1
  store i64 %"$consume_987", i64* @_gasrem, align 8
  %"$f_36" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$f_36", metadata !30, metadata !DIExpression()), !dbg !29
  %"$f_988" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$f_fptr_989" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_988", 0
  %"$f_envptr_990" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_988", 1
  %"$x_991" = load %TName_Nat*, %TName_Nat** %x, align 8
  %"$f_call_992" = call %TName_Nat* %"$f_fptr_989"(i8* %"$f_envptr_990", %TName_Nat* %"$x_991"), !dbg !29
  store %TName_Nat* %"$f_call_992", %TName_Nat** %"$f_36", align 8, !dbg !29
  %"$$f_36_993" = load %TName_Nat*, %TName_Nat** %"$f_36", align 8
  store %TName_Nat* %"$$f_36_993", %TName_Nat** %"$retval_165", align 8, !dbg !29
  %"$$retval_165_994" = load %TName_Nat*, %TName_Nat** %"$retval_165", align 8
  ret %TName_Nat* %"$$retval_165_994"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_162"(%"$$fundef_162_env_226"* %0, %TName_Nat* %1) !dbg !31 {
entry:
  %"$x_978" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$x_978", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$x_978", metadata !32, metadata !DIExpression()), !dbg !33
  %"$$fundef_162_env_f_963" = getelementptr inbounds %"$$fundef_162_env_226", %"$$fundef_162_env_226"* %0, i32 0, i32 0
  %"$f_envload_964" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_162_env_f_963", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_964", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$retval_163" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_966" = icmp ugt i64 1, %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %entry
  %"$consume_969" = sub i64 %"$gasrem_965", 1
  store i64 %"$consume_969", i64* @_gasrem, align 8
  %"$$fundef_164_envp_970_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_164_envp_970_salloc" = call i8* @_salloc(i8* %"$$fundef_164_envp_970_load", i64 24)
  %"$$fundef_164_envp_970" = bitcast i8* %"$$fundef_164_envp_970_salloc" to %"$$fundef_164_env_225"*
  %"$$fundef_164_env_voidp_972" = bitcast %"$$fundef_164_env_225"* %"$$fundef_164_envp_970" to i8*
  %"$$fundef_164_cloval_973" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_164_env_225"*, %TName_Nat*)* @"$fundef_164" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_164_env_voidp_972", 1
  %"$$fundef_164_env_f_974" = getelementptr inbounds %"$$fundef_164_env_225", %"$$fundef_164_env_225"* %"$$fundef_164_envp_970", i32 0, i32 0
  %"$f_975" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_975", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_164_env_f_974", align 8
  %"$$fundef_164_env_x_976" = getelementptr inbounds %"$$fundef_164_env_225", %"$$fundef_164_env_225"* %"$$fundef_164_envp_970", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_164_env_x_976", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_164_cloval_973", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_163", align 8, !dbg !34
  %"$$retval_163_977" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_163", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_163_977"
}

define internal %TName_Nat* @"$fundef_160"(%"$$fundef_160_env_227"* %0, %TName_Nat* %1) !dbg !35 {
entry:
  %"$x0_962" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$x0_962", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$x0_962", metadata !36, metadata !DIExpression()), !dbg !37
  %"$$fundef_160_env_f_902" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %0, i32 0, i32 0
  %"$f_envload_903" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_160_env_f_902", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_903", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_160_env_n_904" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %0, i32 0, i32 1
  %"$n_envload_905" = load %TName_Nat*, %TName_Nat** %"$$fundef_160_env_n_904", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_905", %TName_Nat** %n, align 8
  %"$$fundef_160_env_nat_fold_906" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %0, i32 0, i32 2
  %"$nat_fold_envload_907" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_160_env_nat_fold_906", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_907", { i8*, i8* }** %nat_fold, align 8
  %"$retval_161" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$retval_161", metadata !38, metadata !DIExpression()), !dbg !39
  %"$gasrem_908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_909" = icmp ugt i64 1, %"$gasrem_908"
  br i1 %"$gascmp_909", label %"$out_of_gas_910", label %"$have_gas_911"

"$out_of_gas_910":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_911"

"$have_gas_911":                                  ; preds = %"$out_of_gas_910", %entry
  %"$consume_912" = sub i64 %"$gasrem_908", 1
  store i64 %"$consume_912", i64* @_gasrem, align 8
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_914" = icmp ugt i64 1, %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$have_gas_911"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$have_gas_911"
  %"$consume_917" = sub i64 %"$gasrem_913", 1
  store i64 %"$consume_917", i64* @_gasrem, align 8
  %"$nat_fold_918" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_919" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_918", i32 2
  %"$nat_fold_920" = bitcast { i8*, i8* }* %"$nat_fold_919" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_921" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_920", align 8
  %"$nat_fold_fptr_922" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_921", 0
  %"$nat_fold_envptr_923" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_921", 1
  %"$nat_fold_call_924" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_922"(i8* %"$nat_fold_envptr_923"), !dbg !40
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_924", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8, !dbg !41
  %"$gasrem_925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_926" = icmp ugt i64 1, %"$gasrem_925"
  br i1 %"$gascmp_926", label %"$out_of_gas_927", label %"$have_gas_928"

"$out_of_gas_927":                                ; preds = %"$have_gas_916"
  call void @_out_of_gas()
  br label %"$have_gas_928"

"$have_gas_928":                                  ; preds = %"$out_of_gas_927", %"$have_gas_916"
  %"$consume_929" = sub i64 %"$gasrem_925", 1
  store i64 %"$consume_929", i64* @_gasrem, align 8
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 1, %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$have_gas_928"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$have_gas_928"
  %"$consume_934" = sub i64 %"$gasrem_930", 1
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %"$$fundef_162_envp_935_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_162_envp_935_salloc" = call i8* @_salloc(i8* %"$$fundef_162_envp_935_load", i64 16)
  %"$$fundef_162_envp_935" = bitcast i8* %"$$fundef_162_envp_935_salloc" to %"$$fundef_162_env_226"*
  %"$$fundef_162_env_voidp_937" = bitcast %"$$fundef_162_env_226"* %"$$fundef_162_envp_935" to i8*
  %"$$fundef_162_cloval_938" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_162_env_226"*, %TName_Nat*)* @"$fundef_162" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_162_env_voidp_937", 1
  %"$$fundef_162_env_f_939" = getelementptr inbounds %"$$fundef_162_env_226", %"$$fundef_162_env_226"* %"$$fundef_162_envp_935", i32 0, i32 0
  %"$f_940" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_940", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_162_env_f_939", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_162_cloval_938", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8, !dbg !42
  %"$gasrem_941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_942" = icmp ugt i64 1, %"$gasrem_941"
  br i1 %"$gascmp_942", label %"$out_of_gas_943", label %"$have_gas_944"

"$out_of_gas_943":                                ; preds = %"$have_gas_933"
  call void @_out_of_gas()
  br label %"$have_gas_944"

"$have_gas_944":                                  ; preds = %"$out_of_gas_943", %"$have_gas_933"
  %"$consume_945" = sub i64 %"$gasrem_941", 1
  store i64 %"$consume_945", i64* @_gasrem, align 8
  %"$folder_37" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$folder_946" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_947" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_946", 0
  %"$folder_envptr_948" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_946", 1
  %"$step_949" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$folder_call_950" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_947"(i8* %"$folder_envptr_948", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_949"), !dbg !43
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_950", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_37", align 8, !dbg !43
  %"$folder_38" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_37_951" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_37", align 8
  %"$$folder_37_fptr_952" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_951", 0
  %"$$folder_37_envptr_953" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_951", 1
  %"$$folder_37_call_954" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_37_fptr_952"(i8* %"$$folder_37_envptr_953", %TName_Nat* %1), !dbg !43
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_37_call_954", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8, !dbg !43
  %"$folder_39" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$folder_39", metadata !44, metadata !DIExpression()), !dbg !43
  %"$$folder_38_955" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8
  %"$$folder_38_fptr_956" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_955", 0
  %"$$folder_38_envptr_957" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_955", 1
  %"$n_958" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_38_call_959" = call %TName_Nat* %"$$folder_38_fptr_956"(i8* %"$$folder_38_envptr_957", %TName_Nat* %"$n_958"), !dbg !43
  store %TName_Nat* %"$$folder_38_call_959", %TName_Nat** %"$folder_39", align 8, !dbg !43
  %"$$folder_39_960" = load %TName_Nat*, %TName_Nat** %"$folder_39", align 8
  store %TName_Nat* %"$$folder_39_960", %TName_Nat** %"$retval_161", align 8, !dbg !43
  %"$$retval_161_961" = load %TName_Nat*, %TName_Nat** %"$retval_161", align 8
  ret %TName_Nat* %"$$retval_161_961"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_158"(%"$$fundef_158_env_228"* %0, %TName_Nat* %1) !dbg !45 {
entry:
  %"$n_901" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_901", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_901", metadata !46, metadata !DIExpression()), !dbg !47
  %"$$fundef_158_env_f_882" = getelementptr inbounds %"$$fundef_158_env_228", %"$$fundef_158_env_228"* %0, i32 0, i32 0
  %"$f_envload_883" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_158_env_f_882", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_883", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_158_env_nat_fold_884" = getelementptr inbounds %"$$fundef_158_env_228", %"$$fundef_158_env_228"* %0, i32 0, i32 1
  %"$nat_fold_envload_885" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_158_env_nat_fold_884", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_885", { i8*, i8* }** %nat_fold, align 8
  %"$retval_159" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_887" = icmp ugt i64 1, %"$gasrem_886"
  br i1 %"$gascmp_887", label %"$out_of_gas_888", label %"$have_gas_889"

"$out_of_gas_888":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_889"

"$have_gas_889":                                  ; preds = %"$out_of_gas_888", %entry
  %"$consume_890" = sub i64 %"$gasrem_886", 1
  store i64 %"$consume_890", i64* @_gasrem, align 8
  %"$$fundef_160_envp_891_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_160_envp_891_salloc" = call i8* @_salloc(i8* %"$$fundef_160_envp_891_load", i64 32)
  %"$$fundef_160_envp_891" = bitcast i8* %"$$fundef_160_envp_891_salloc" to %"$$fundef_160_env_227"*
  %"$$fundef_160_env_voidp_893" = bitcast %"$$fundef_160_env_227"* %"$$fundef_160_envp_891" to i8*
  %"$$fundef_160_cloval_894" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_160_env_227"*, %TName_Nat*)* @"$fundef_160" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_160_env_voidp_893", 1
  %"$$fundef_160_env_f_895" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %"$$fundef_160_envp_891", i32 0, i32 0
  %"$f_896" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_896", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_160_env_f_895", align 8
  %"$$fundef_160_env_n_897" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %"$$fundef_160_envp_891", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_160_env_n_897", align 8
  %"$$fundef_160_env_nat_fold_898" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %"$$fundef_160_envp_891", i32 0, i32 2
  %"$nat_fold_899" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_899", { i8*, i8* }** %"$$fundef_160_env_nat_fold_898", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_160_cloval_894", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_159", align 8, !dbg !48
  %"$$retval_159_900" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_159", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_159_900"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_156"(%"$$fundef_156_env_229"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !49 {
entry:
  %"$$fundef_156_env_nat_fold_867" = getelementptr inbounds %"$$fundef_156_env_229", %"$$fundef_156_env_229"* %0, i32 0, i32 0
  %"$nat_fold_envload_868" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_156_env_nat_fold_867", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_868", { i8*, i8* }** %nat_fold, align 8
  %"$retval_157" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_870" = icmp ugt i64 1, %"$gasrem_869"
  br i1 %"$gascmp_870", label %"$out_of_gas_871", label %"$have_gas_872"

"$out_of_gas_871":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_872"

"$have_gas_872":                                  ; preds = %"$out_of_gas_871", %entry
  %"$consume_873" = sub i64 %"$gasrem_869", 1
  store i64 %"$consume_873", i64* @_gasrem, align 8
  %"$$fundef_158_envp_874_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_158_envp_874_salloc" = call i8* @_salloc(i8* %"$$fundef_158_envp_874_load", i64 24)
  %"$$fundef_158_envp_874" = bitcast i8* %"$$fundef_158_envp_874_salloc" to %"$$fundef_158_env_228"*
  %"$$fundef_158_env_voidp_876" = bitcast %"$$fundef_158_env_228"* %"$$fundef_158_envp_874" to i8*
  %"$$fundef_158_cloval_877" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_158_env_228"*, %TName_Nat*)* @"$fundef_158" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_158_env_voidp_876", 1
  %"$$fundef_158_env_f_878" = getelementptr inbounds %"$$fundef_158_env_228", %"$$fundef_158_env_228"* %"$$fundef_158_envp_874", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_158_env_f_878", align 8
  %"$$fundef_158_env_nat_fold_879" = getelementptr inbounds %"$$fundef_158_env_228", %"$$fundef_158_env_228"* %"$$fundef_158_envp_874", i32 0, i32 1
  %"$nat_fold_880" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_880", { i8*, i8* }** %"$$fundef_158_env_nat_fold_879", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_158_cloval_877", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_157", align 8, !dbg !50
  %"$$retval_157_881" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_157", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_157_881"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_154"(%"$$fundef_154_env_230"* %0) !dbg !51 {
entry:
  %"$$fundef_154_env_nat_fold_853" = getelementptr inbounds %"$$fundef_154_env_230", %"$$fundef_154_env_230"* %0, i32 0, i32 0
  %"$nat_fold_envload_854" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_154_env_nat_fold_853", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_854", { i8*, i8* }** %nat_fold, align 8
  %"$retval_155" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_856" = icmp ugt i64 1, %"$gasrem_855"
  br i1 %"$gascmp_856", label %"$out_of_gas_857", label %"$have_gas_858"

"$out_of_gas_857":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_858"

"$have_gas_858":                                  ; preds = %"$out_of_gas_857", %entry
  %"$consume_859" = sub i64 %"$gasrem_855", 1
  store i64 %"$consume_859", i64* @_gasrem, align 8
  %"$$fundef_156_envp_860_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_156_envp_860_salloc" = call i8* @_salloc(i8* %"$$fundef_156_envp_860_load", i64 8)
  %"$$fundef_156_envp_860" = bitcast i8* %"$$fundef_156_envp_860_salloc" to %"$$fundef_156_env_229"*
  %"$$fundef_156_env_voidp_862" = bitcast %"$$fundef_156_env_229"* %"$$fundef_156_envp_860" to i8*
  %"$$fundef_156_cloval_863" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_156_env_229"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_156" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_156_env_voidp_862", 1
  %"$$fundef_156_env_nat_fold_864" = getelementptr inbounds %"$$fundef_156_env_229", %"$$fundef_156_env_229"* %"$$fundef_156_envp_860", i32 0, i32 0
  %"$nat_fold_865" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_865", { i8*, i8* }** %"$$fundef_156_env_nat_fold_864", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_156_cloval_863", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_155", align 8, !dbg !52
  %"$$retval_155_866" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_155", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_155_866"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_152"(%"$$fundef_152_env_231"* %0, %TName_Nat* %1) !dbg !53 {
entry:
  %"$unused_852" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$unused_852", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$unused_852", metadata !54, metadata !DIExpression()), !dbg !55
  %"$$fundef_152_env_f_836" = getelementptr inbounds %"$$fundef_152_env_231", %"$$fundef_152_env_231"* %0, i32 0, i32 0
  %"$f_envload_837" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_152_env_f_836", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_837", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_152_env_x_838" = getelementptr inbounds %"$$fundef_152_env_231", %"$$fundef_152_env_231"* %0, i32 0, i32 1
  %"$x_envload_839" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_152_env_x_838", align 8
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_839", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$retval_153" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_841" = icmp ugt i64 1, %"$gasrem_840"
  br i1 %"$gascmp_841", label %"$out_of_gas_842", label %"$have_gas_843"

"$out_of_gas_842":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_843"

"$have_gas_843":                                  ; preds = %"$out_of_gas_842", %entry
  %"$consume_844" = sub i64 %"$gasrem_840", 1
  store i64 %"$consume_844", i64* @_gasrem, align 8
  %"$f_36" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$f_845" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$f_fptr_846" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_845", 0
  %"$f_envptr_847" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_845", 1
  %"$x_848" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$f_call_849" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_846"(i8* %"$f_envptr_847", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_848"), !dbg !56
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_849", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_36", align 8, !dbg !56
  %"$$f_36_850" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_36", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_36_850", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_153", align 8, !dbg !56
  %"$$retval_153_851" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_153", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_153_851"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_150"(%"$$fundef_150_env_232"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !57 {
entry:
  %"$$fundef_150_env_f_821" = getelementptr inbounds %"$$fundef_150_env_232", %"$$fundef_150_env_232"* %0, i32 0, i32 0
  %"$f_envload_822" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_150_env_f_821", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_822", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$retval_151" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 1, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %entry
  %"$consume_827" = sub i64 %"$gasrem_823", 1
  store i64 %"$consume_827", i64* @_gasrem, align 8
  %"$$fundef_152_envp_828_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_152_envp_828_salloc" = call i8* @_salloc(i8* %"$$fundef_152_envp_828_load", i64 32)
  %"$$fundef_152_envp_828" = bitcast i8* %"$$fundef_152_envp_828_salloc" to %"$$fundef_152_env_231"*
  %"$$fundef_152_env_voidp_830" = bitcast %"$$fundef_152_env_231"* %"$$fundef_152_envp_828" to i8*
  %"$$fundef_152_cloval_831" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_152_env_231"*, %TName_Nat*)* @"$fundef_152" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_152_env_voidp_830", 1
  %"$$fundef_152_env_f_832" = getelementptr inbounds %"$$fundef_152_env_231", %"$$fundef_152_env_231"* %"$$fundef_152_envp_828", i32 0, i32 0
  %"$f_833" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_833", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_152_env_f_832", align 8
  %"$$fundef_152_env_x_834" = getelementptr inbounds %"$$fundef_152_env_231", %"$$fundef_152_env_231"* %"$$fundef_152_envp_828", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_152_env_x_834", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_152_cloval_831", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_151", align 8, !dbg !58
  %"$$retval_151_835" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_151", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_151_835"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_148"(%"$$fundef_148_env_233"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !59 {
entry:
  %"$$fundef_148_env_f_761" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %0, i32 0, i32 0
  %"$f_envload_762" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_148_env_f_761", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_762", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_148_env_n_763" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %0, i32 0, i32 1
  %"$n_envload_764" = load %TName_Nat*, %TName_Nat** %"$$fundef_148_env_n_763", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_764", %TName_Nat** %n, align 8
  %"$$fundef_148_env_nat_fold_765" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %0, i32 0, i32 2
  %"$nat_fold_envload_766" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_148_env_nat_fold_765", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_766", { i8*, i8* }** %nat_fold, align 8
  %"$retval_149" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %entry
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem, align 8
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 1, %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$have_gas_770"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$have_gas_770"
  %"$consume_776" = sub i64 %"$gasrem_772", 1
  store i64 %"$consume_776", i64* @_gasrem, align 8
  %"$nat_fold_777" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_778" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_777", i32 1
  %"$nat_fold_779" = bitcast { i8*, i8* }* %"$nat_fold_778" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_780" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_779", align 8
  %"$nat_fold_fptr_781" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_780", 0
  %"$nat_fold_envptr_782" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_780", 1
  %"$nat_fold_call_783" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_781"(i8* %"$nat_fold_envptr_782"), !dbg !60
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_783", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8, !dbg !61
  %"$gasrem_784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_785" = icmp ugt i64 1, %"$gasrem_784"
  br i1 %"$gascmp_785", label %"$out_of_gas_786", label %"$have_gas_787"

"$out_of_gas_786":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_787"

"$have_gas_787":                                  ; preds = %"$out_of_gas_786", %"$have_gas_775"
  %"$consume_788" = sub i64 %"$gasrem_784", 1
  store i64 %"$consume_788", i64* @_gasrem, align 8
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_790" = icmp ugt i64 1, %"$gasrem_789"
  br i1 %"$gascmp_790", label %"$out_of_gas_791", label %"$have_gas_792"

"$out_of_gas_791":                                ; preds = %"$have_gas_787"
  call void @_out_of_gas()
  br label %"$have_gas_792"

"$have_gas_792":                                  ; preds = %"$out_of_gas_791", %"$have_gas_787"
  %"$consume_793" = sub i64 %"$gasrem_789", 1
  store i64 %"$consume_793", i64* @_gasrem, align 8
  %"$$fundef_150_envp_794_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_150_envp_794_salloc" = call i8* @_salloc(i8* %"$$fundef_150_envp_794_load", i64 16)
  %"$$fundef_150_envp_794" = bitcast i8* %"$$fundef_150_envp_794_salloc" to %"$$fundef_150_env_232"*
  %"$$fundef_150_env_voidp_796" = bitcast %"$$fundef_150_env_232"* %"$$fundef_150_envp_794" to i8*
  %"$$fundef_150_cloval_797" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_150_env_232"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_150" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_150_env_voidp_796", 1
  %"$$fundef_150_env_f_798" = getelementptr inbounds %"$$fundef_150_env_232", %"$$fundef_150_env_232"* %"$$fundef_150_envp_794", i32 0, i32 0
  %"$f_799" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_799", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_150_env_f_798", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_150_cloval_797", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8, !dbg !62
  %"$gasrem_800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_801" = icmp ugt i64 1, %"$gasrem_800"
  br i1 %"$gascmp_801", label %"$out_of_gas_802", label %"$have_gas_803"

"$out_of_gas_802":                                ; preds = %"$have_gas_792"
  call void @_out_of_gas()
  br label %"$have_gas_803"

"$have_gas_803":                                  ; preds = %"$out_of_gas_802", %"$have_gas_792"
  %"$consume_804" = sub i64 %"$gasrem_800", 1
  store i64 %"$consume_804", i64* @_gasrem, align 8
  %"$folder_37" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$folder_805" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_806" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_805", 0
  %"$folder_envptr_807" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_805", 1
  %"$step_808" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$folder_call_809" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_806"(i8* %"$folder_envptr_807", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_808"), !dbg !63
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_809", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_37", align 8, !dbg !63
  %"$folder_38" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_37_810" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_37", align 8
  %"$$folder_37_fptr_811" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_37_810", 0
  %"$$folder_37_envptr_812" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_37_810", 1
  %"$$folder_37_call_813" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_fptr_811"(i8* %"$$folder_37_envptr_812", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1), !dbg !63
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_call_813", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8, !dbg !63
  %"$folder_39" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_38_814" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8
  %"$$folder_38_fptr_815" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_38_814", 0
  %"$$folder_38_envptr_816" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_38_814", 1
  %"$n_817" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_38_call_818" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_fptr_815"(i8* %"$$folder_38_envptr_816", %TName_Nat* %"$n_817"), !dbg !63
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_call_818", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_39", align 8, !dbg !63
  %"$$folder_39_819" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_39", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_39_819", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_149", align 8, !dbg !63
  %"$$retval_149_820" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_149", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_149_820"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_146"(%"$$fundef_146_env_234"* %0, %TName_Nat* %1) !dbg !64 {
entry:
  %"$n_760" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_760", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_760", metadata !65, metadata !DIExpression()), !dbg !66
  %"$$fundef_146_env_f_741" = getelementptr inbounds %"$$fundef_146_env_234", %"$$fundef_146_env_234"* %0, i32 0, i32 0
  %"$f_envload_742" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_146_env_f_741", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_742", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_146_env_nat_fold_743" = getelementptr inbounds %"$$fundef_146_env_234", %"$$fundef_146_env_234"* %0, i32 0, i32 1
  %"$nat_fold_envload_744" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_146_env_nat_fold_743", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_744", { i8*, i8* }** %nat_fold, align 8
  %"$retval_147" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 1, %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %entry
  %"$consume_749" = sub i64 %"$gasrem_745", 1
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %"$$fundef_148_envp_750_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_148_envp_750_salloc" = call i8* @_salloc(i8* %"$$fundef_148_envp_750_load", i64 32)
  %"$$fundef_148_envp_750" = bitcast i8* %"$$fundef_148_envp_750_salloc" to %"$$fundef_148_env_233"*
  %"$$fundef_148_env_voidp_752" = bitcast %"$$fundef_148_env_233"* %"$$fundef_148_envp_750" to i8*
  %"$$fundef_148_cloval_753" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_148_env_233"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_148" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_148_env_voidp_752", 1
  %"$$fundef_148_env_f_754" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %"$$fundef_148_envp_750", i32 0, i32 0
  %"$f_755" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_755", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_148_env_f_754", align 8
  %"$$fundef_148_env_n_756" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %"$$fundef_148_envp_750", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_148_env_n_756", align 8
  %"$$fundef_148_env_nat_fold_757" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %"$$fundef_148_envp_750", i32 0, i32 2
  %"$nat_fold_758" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_758", { i8*, i8* }** %"$$fundef_148_env_nat_fold_757", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_148_cloval_753", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_147", align 8, !dbg !67
  %"$$retval_147_759" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_147", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_147_759"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_144"(%"$$fundef_144_env_235"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !68 {
entry:
  %"$$fundef_144_env_nat_fold_726" = getelementptr inbounds %"$$fundef_144_env_235", %"$$fundef_144_env_235"* %0, i32 0, i32 0
  %"$nat_fold_envload_727" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_144_env_nat_fold_726", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_727", { i8*, i8* }** %nat_fold, align 8
  %"$retval_145" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %entry
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  %"$$fundef_146_envp_733_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_146_envp_733_salloc" = call i8* @_salloc(i8* %"$$fundef_146_envp_733_load", i64 24)
  %"$$fundef_146_envp_733" = bitcast i8* %"$$fundef_146_envp_733_salloc" to %"$$fundef_146_env_234"*
  %"$$fundef_146_env_voidp_735" = bitcast %"$$fundef_146_env_234"* %"$$fundef_146_envp_733" to i8*
  %"$$fundef_146_cloval_736" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_146_env_234"*, %TName_Nat*)* @"$fundef_146" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_146_env_voidp_735", 1
  %"$$fundef_146_env_f_737" = getelementptr inbounds %"$$fundef_146_env_234", %"$$fundef_146_env_234"* %"$$fundef_146_envp_733", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_146_env_f_737", align 8
  %"$$fundef_146_env_nat_fold_738" = getelementptr inbounds %"$$fundef_146_env_234", %"$$fundef_146_env_234"* %"$$fundef_146_envp_733", i32 0, i32 1
  %"$nat_fold_739" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_739", { i8*, i8* }** %"$$fundef_146_env_nat_fold_738", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_146_cloval_736", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_145", align 8, !dbg !69
  %"$$retval_145_740" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_145", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_145_740"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_142"(%"$$fundef_142_env_236"* %0) !dbg !70 {
entry:
  %"$$fundef_142_env_nat_fold_712" = getelementptr inbounds %"$$fundef_142_env_236", %"$$fundef_142_env_236"* %0, i32 0, i32 0
  %"$nat_fold_envload_713" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_142_env_nat_fold_712", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_713", { i8*, i8* }** %nat_fold, align 8
  %"$retval_143" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %entry
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %"$$fundef_144_envp_719_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_144_envp_719_salloc" = call i8* @_salloc(i8* %"$$fundef_144_envp_719_load", i64 8)
  %"$$fundef_144_envp_719" = bitcast i8* %"$$fundef_144_envp_719_salloc" to %"$$fundef_144_env_235"*
  %"$$fundef_144_env_voidp_721" = bitcast %"$$fundef_144_env_235"* %"$$fundef_144_envp_719" to i8*
  %"$$fundef_144_cloval_722" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_144_env_235"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_144" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_144_env_voidp_721", 1
  %"$$fundef_144_env_nat_fold_723" = getelementptr inbounds %"$$fundef_144_env_235", %"$$fundef_144_env_235"* %"$$fundef_144_envp_719", i32 0, i32 0
  %"$nat_fold_724" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_724", { i8*, i8* }** %"$$fundef_144_env_nat_fold_723", align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_144_cloval_722", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_143", align 8, !dbg !71
  %"$$retval_143_725" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_143", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_143_725"
}

define internal %TName_Nat* @"$fundef_140"(%"$$fundef_140_env_237"* %0, %TName_Nat* %1) !dbg !72 {
entry:
  %"$n_711" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_711", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_711", metadata !73, metadata !DIExpression()), !dbg !74
  %"$retval_141" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$retval_141", metadata !75, metadata !DIExpression()), !dbg !76
  %"$gasrem_701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_702" = icmp ugt i64 1, %"$gasrem_701"
  br i1 %"$gascmp_702", label %"$out_of_gas_703", label %"$have_gas_704"

"$out_of_gas_703":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_704"

"$have_gas_704":                                  ; preds = %"$out_of_gas_703", %entry
  %"$consume_705" = sub i64 %"$gasrem_701", 1
  store i64 %"$consume_705", i64* @_gasrem, align 8
  %"$adtval_706_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_706_salloc" = call i8* @_salloc(i8* %"$adtval_706_load", i64 9)
  %"$adtval_706" = bitcast i8* %"$adtval_706_salloc" to %CName_Succ*
  %"$adtgep_707" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_706", i32 0, i32 0
  store i8 1, i8* %"$adtgep_707", align 1
  %"$adtgep_708" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_706", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_708", align 8
  %"$adtptr_709" = bitcast %CName_Succ* %"$adtval_706" to %TName_Nat*
  store %TName_Nat* %"$adtptr_709", %TName_Nat** %"$retval_141", align 8, !dbg !76
  %"$$retval_141_710" = load %TName_Nat*, %TName_Nat** %"$retval_141", align 8
  ret %TName_Nat* %"$$retval_141_710"
}

define internal %Uint32 @"$fundef_137"(%"$$fundef_137_env_238"* %0, %TName_Nat* %1) !dbg !77 {
entry:
  %"$ignore_700" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$ignore_700", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ignore_700", metadata !79, metadata !DIExpression()), !dbg !80
  %"$$fundef_137_env_one_int_687" = getelementptr inbounds %"$$fundef_137_env_238", %"$$fundef_137_env_238"* %0, i32 0, i32 0
  %"$one_int_envload_688" = load %Uint32, %Uint32* %"$$fundef_137_env_one_int_687", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_688", %Uint32* %one_int, align 4
  %"$$fundef_137_env_z_689" = getelementptr inbounds %"$$fundef_137_env_238", %"$$fundef_137_env_238"* %0, i32 0, i32 1
  %"$z_envload_690" = load %Uint32, %Uint32* %"$$fundef_137_env_z_689", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_690", %Uint32* %z, align 4
  %"$retval_138" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_138", metadata !81, metadata !DIExpression()), !dbg !83
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 4, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %entry
  %"$consume_695" = sub i64 %"$gasrem_691", 4
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %"$z_696" = load %Uint32, %Uint32* %z, align 4
  %"$one_int_697" = load %Uint32, %Uint32* %one_int, align 4
  %"$add_call_698" = call %Uint32 @_add_Uint32(%Uint32 %"$z_696", %Uint32 %"$one_int_697"), !dbg !83
  store %Uint32 %"$add_call_698", %Uint32* %"$retval_138", align 4, !dbg !83
  %"$$retval_138_699" = load %Uint32, %Uint32* %"$retval_138", align 4
  ret %Uint32 %"$$retval_138_699"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_135"(%"$$fundef_135_env_239"* %0, %Uint32 %1) !dbg !84 {
entry:
  %"$z_686" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_686", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_686", metadata !85, metadata !DIExpression()), !dbg !86
  %"$$fundef_135_env_one_int_671" = getelementptr inbounds %"$$fundef_135_env_239", %"$$fundef_135_env_239"* %0, i32 0, i32 0
  %"$one_int_envload_672" = load %Uint32, %Uint32* %"$$fundef_135_env_one_int_671", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_672", %Uint32* %one_int, align 4
  %"$retval_136" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_674" = icmp ugt i64 1, %"$gasrem_673"
  br i1 %"$gascmp_674", label %"$out_of_gas_675", label %"$have_gas_676"

"$out_of_gas_675":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_676"

"$have_gas_676":                                  ; preds = %"$out_of_gas_675", %entry
  %"$consume_677" = sub i64 %"$gasrem_673", 1
  store i64 %"$consume_677", i64* @_gasrem, align 8
  %"$$fundef_137_envp_678_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_137_envp_678_salloc" = call i8* @_salloc(i8* %"$$fundef_137_envp_678_load", i64 8)
  %"$$fundef_137_envp_678" = bitcast i8* %"$$fundef_137_envp_678_salloc" to %"$$fundef_137_env_238"*
  %"$$fundef_137_env_voidp_680" = bitcast %"$$fundef_137_env_238"* %"$$fundef_137_envp_678" to i8*
  %"$$fundef_137_cloval_681" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_137_env_238"*, %TName_Nat*)* @"$fundef_137" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_137_env_voidp_680", 1
  %"$$fundef_137_env_one_int_682" = getelementptr inbounds %"$$fundef_137_env_238", %"$$fundef_137_env_238"* %"$$fundef_137_envp_678", i32 0, i32 0
  %"$one_int_683" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_683", %Uint32* %"$$fundef_137_env_one_int_682", align 4
  %"$$fundef_137_env_z_684" = getelementptr inbounds %"$$fundef_137_env_238", %"$$fundef_137_env_238"* %"$$fundef_137_envp_678", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_137_env_z_684", align 4
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_137_cloval_681", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8, !dbg !87
  %"$$retval_136_685" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_136_685"
}

define internal %Uint32 @"$fundef_133"(%"$$fundef_133_env_240"* %0, %TName_Nat* %1) !dbg !88 {
entry:
  %"$n_670" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_670", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_670", metadata !89, metadata !DIExpression()), !dbg !90
  %"$$fundef_133_env_$nat_fold_6_594" = getelementptr inbounds %"$$fundef_133_env_240", %"$$fundef_133_env_240"* %0, i32 0, i32 0
  %"$$nat_fold_6_envload_595" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_133_env_$nat_fold_6_594", align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$$nat_fold_6_envload_595", { i8*, i8* }** %"$nat_fold_6", align 8
  %"$retval_134" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_134", metadata !91, metadata !DIExpression()), !dbg !92
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 1, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %entry
  %"$consume_600" = sub i64 %"$gasrem_596", 1
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_602" = icmp ugt i64 1, %"$gasrem_601"
  br i1 %"$gascmp_602", label %"$out_of_gas_603", label %"$have_gas_604"

"$out_of_gas_603":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_604"

"$have_gas_604":                                  ; preds = %"$out_of_gas_603", %"$have_gas_599"
  %"$consume_605" = sub i64 %"$gasrem_601", 1
  store i64 %"$consume_605", i64* @_gasrem, align 8
  %"$$nat_fold_6_606" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  %"$$nat_fold_6_607" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$$nat_fold_6_606", i32 0
  %"$$nat_fold_6_608" = bitcast { i8*, i8* }* %"$$nat_fold_6_607" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$$nat_fold_6_609" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$$nat_fold_6_608", align 8
  %"$$nat_fold_6_fptr_610" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_609", 0
  %"$$nat_fold_6_envptr_611" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_609", 1
  %"$$nat_fold_6_call_612" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_fptr_610"(i8* %"$$nat_fold_6_envptr_611"), !dbg !93
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_call_612", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8, !dbg !94
  %"$gasrem_613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_614" = icmp ugt i64 1, %"$gasrem_613"
  br i1 %"$gascmp_614", label %"$out_of_gas_615", label %"$have_gas_616"

"$out_of_gas_615":                                ; preds = %"$have_gas_604"
  call void @_out_of_gas()
  br label %"$have_gas_616"

"$have_gas_616":                                  ; preds = %"$out_of_gas_615", %"$have_gas_604"
  %"$consume_617" = sub i64 %"$gasrem_613", 1
  store i64 %"$consume_617", i64* @_gasrem, align 8
  %one_int = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one_int, metadata !95, metadata !DIExpression()), !dbg !96
  %"$gasrem_618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_619" = icmp ugt i64 1, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %"$have_gas_616"
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %"$have_gas_616"
  %"$consume_622" = sub i64 %"$gasrem_618", 1
  store i64 %"$consume_622", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one_int, align 4, !dbg !97
  %"$gasrem_623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_624" = icmp ugt i64 1, %"$gasrem_623"
  br i1 %"$gascmp_624", label %"$out_of_gas_625", label %"$have_gas_626"

"$out_of_gas_625":                                ; preds = %"$have_gas_621"
  call void @_out_of_gas()
  br label %"$have_gas_626"

"$have_gas_626":                                  ; preds = %"$out_of_gas_625", %"$have_gas_621"
  %"$consume_627" = sub i64 %"$gasrem_623", 1
  store i64 %"$consume_627", i64* @_gasrem, align 8
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_629" = icmp ugt i64 1, %"$gasrem_628"
  br i1 %"$gascmp_629", label %"$out_of_gas_630", label %"$have_gas_631"

"$out_of_gas_630":                                ; preds = %"$have_gas_626"
  call void @_out_of_gas()
  br label %"$have_gas_631"

"$have_gas_631":                                  ; preds = %"$out_of_gas_630", %"$have_gas_626"
  %"$consume_632" = sub i64 %"$gasrem_628", 1
  store i64 %"$consume_632", i64* @_gasrem, align 8
  %"$$fundef_135_envp_633_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_135_envp_633_salloc" = call i8* @_salloc(i8* %"$$fundef_135_envp_633_load", i64 4)
  %"$$fundef_135_envp_633" = bitcast i8* %"$$fundef_135_envp_633_salloc" to %"$$fundef_135_env_239"*
  %"$$fundef_135_env_voidp_635" = bitcast %"$$fundef_135_env_239"* %"$$fundef_135_envp_633" to i8*
  %"$$fundef_135_cloval_636" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_135_env_239"*, %Uint32)* @"$fundef_135" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_135_env_voidp_635", 1
  %"$$fundef_135_env_one_int_637" = getelementptr inbounds %"$$fundef_135_env_239", %"$$fundef_135_env_239"* %"$$fundef_135_envp_633", i32 0, i32 0
  %"$one_int_638" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_638", %Uint32* %"$$fundef_135_env_one_int_637", align 4
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_135_cloval_636", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8, !dbg !98
  %"$gasrem_639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_640" = icmp ugt i64 1, %"$gasrem_639"
  br i1 %"$gascmp_640", label %"$out_of_gas_641", label %"$have_gas_642"

"$out_of_gas_641":                                ; preds = %"$have_gas_631"
  call void @_out_of_gas()
  br label %"$have_gas_642"

"$have_gas_642":                                  ; preds = %"$out_of_gas_641", %"$have_gas_631"
  %"$consume_643" = sub i64 %"$gasrem_639", 1
  store i64 %"$consume_643", i64* @_gasrem, align 8
  %zero_int = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero_int, metadata !99, metadata !DIExpression()), !dbg !100
  %"$gasrem_644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_645" = icmp ugt i64 1, %"$gasrem_644"
  br i1 %"$gascmp_645", label %"$out_of_gas_646", label %"$have_gas_647"

"$out_of_gas_646":                                ; preds = %"$have_gas_642"
  call void @_out_of_gas()
  br label %"$have_gas_647"

"$have_gas_647":                                  ; preds = %"$out_of_gas_646", %"$have_gas_642"
  %"$consume_648" = sub i64 %"$gasrem_644", 1
  store i64 %"$consume_648", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero_int, align 4, !dbg !101
  %"$gasrem_649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_650" = icmp ugt i64 1, %"$gasrem_649"
  br i1 %"$gascmp_650", label %"$out_of_gas_651", label %"$have_gas_652"

"$out_of_gas_651":                                ; preds = %"$have_gas_647"
  call void @_out_of_gas()
  br label %"$have_gas_652"

"$have_gas_652":                                  ; preds = %"$out_of_gas_651", %"$have_gas_647"
  %"$consume_653" = sub i64 %"$gasrem_649", 1
  store i64 %"$consume_653", i64* @_gasrem, align 8
  %"$fold_33" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$fold_654" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$fold_fptr_655" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_654", 0
  %"$fold_envptr_656" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_654", 1
  %"$f_657" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$fold_call_658" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_655"(i8* %"$fold_envptr_656", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_657"), !dbg !102
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_658", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_33", align 8, !dbg !102
  %"$fold_34" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fold_33_659" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_33", align 8
  %"$$fold_33_fptr_660" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_33_659", 0
  %"$$fold_33_envptr_661" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_33_659", 1
  %"$zero_int_662" = load %Uint32, %Uint32* %zero_int, align 4
  %"$$fold_33_call_663" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_33_fptr_660"(i8* %"$$fold_33_envptr_661", %Uint32 %"$zero_int_662"), !dbg !102
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_33_call_663", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_34", align 8, !dbg !102
  %"$fold_35" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$fold_35", metadata !103, metadata !DIExpression()), !dbg !102
  %"$$fold_34_664" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_34", align 8
  %"$$fold_34_fptr_665" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_34_664", 0
  %"$$fold_34_envptr_666" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_34_664", 1
  %"$$fold_34_call_667" = call %Uint32 %"$$fold_34_fptr_665"(i8* %"$$fold_34_envptr_666", %TName_Nat* %1), !dbg !102
  store %Uint32 %"$$fold_34_call_667", %Uint32* %"$fold_35", align 4, !dbg !102
  %"$$fold_35_668" = load %Uint32, %Uint32* %"$fold_35", align 4
  store %Uint32 %"$$fold_35_668", %Uint32* %"$retval_134", align 4, !dbg !102
  %"$$retval_134_669" = load %Uint32, %Uint32* %"$retval_134", align 4
  ret %Uint32 %"$$retval_134_669"
}

define internal %Uint32 @"$fundef_131"(%"$$fundef_131_env_241"* %0, %TName_Nat* %1) !dbg !104 {
entry:
  %"$n_593" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_593", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_593", metadata !106, metadata !DIExpression()), !dbg !107
  %"$$fundef_131_env_f0_528" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %0, i32 0, i32 0
  %"$f0_envload_529" = load %Uint32, %Uint32* %"$$fundef_131_env_f0_528", align 4
  %f0 = alloca %Uint32, align 8
  store %Uint32 %"$f0_envload_529", %Uint32* %f0, align 4
  %"$$fundef_131_env_fn_530" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %0, i32 0, i32 1
  %"$fn_envload_531" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_fn_530", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_531", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_131_env_g_532" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %0, i32 0, i32 2
  %"$g_envload_533" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_g_532", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_533", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_132" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_132", metadata !108, metadata !DIExpression()), !dbg !109
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 2, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %entry
  %"$consume_538" = sub i64 %"$gasrem_534", 2
  store i64 %"$consume_538", i64* @_gasrem, align 8
  %"$n_tag_540" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_541" = load i8, i8* %"$n_tag_540", align 1
  switch i8 %"$n_tag_541", label %"$empty_default_542" [
    i8 1, label %"$Succ_543"
    i8 0, label %"$Zero_584"
  ], !dbg !109

"$Succ_543":                                      ; preds = %"$have_gas_537"
  %"$n_544" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_545" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_544", i32 0, i32 1
  %"$n1_load_546" = load %TName_Nat*, %TName_Nat** %"$n1_gep_545", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_546", %TName_Nat** %n1, align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$Succ_543"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$Succ_543"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res, metadata !110, metadata !DIExpression()), !dbg !113
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_550"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$fn_29" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_557" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$fn_fptr_558" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_557", 0
  %"$fn_envptr_559" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_557", 1
  %"$f0_560" = load %Uint32, %Uint32* %f0, align 4
  %"$fn_call_561" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_558"(i8* %"$fn_envptr_559", %Uint32 %"$f0_560"), !dbg !114
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_561", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_29", align 8, !dbg !114
  %"$fn_30" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$fn_30", metadata !115, metadata !DIExpression()), !dbg !114
  %"$$fn_29_562" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_29", align 8
  %"$$fn_29_fptr_563" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_29_562", 0
  %"$$fn_29_envptr_564" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_29_562", 1
  %"$n1_565" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_29_call_566" = call %Uint32 %"$$fn_29_fptr_563"(i8* %"$$fn_29_envptr_564", %TName_Nat* %"$n1_565"), !dbg !114
  store %Uint32 %"$$fn_29_call_566", %Uint32* %"$fn_30", align 4, !dbg !114
  %"$$fn_30_567" = load %Uint32, %Uint32* %"$fn_30", align 4
  store %Uint32 %"$$fn_30_567", %Uint32* %res, align 4, !dbg !114
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_555"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  %"$g_31" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_573" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_574" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_573", 0
  %"$g_envptr_575" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_573", 1
  %"$res_576" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_577" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_574"(i8* %"$g_envptr_575", %Uint32 %"$res_576"), !dbg !116
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_577", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_31", align 8, !dbg !116
  %"$g_32" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$g_32", metadata !117, metadata !DIExpression()), !dbg !116
  %"$$g_31_578" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_31", align 8
  %"$$g_31_fptr_579" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_31_578", 0
  %"$$g_31_envptr_580" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_31_578", 1
  %"$n1_581" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_31_call_582" = call %Uint32 %"$$g_31_fptr_579"(i8* %"$$g_31_envptr_580", %TName_Nat* %"$n1_581"), !dbg !116
  store %Uint32 %"$$g_31_call_582", %Uint32* %"$g_32", align 4, !dbg !116
  %"$$g_32_583" = load %Uint32, %Uint32* %"$g_32", align 4
  store %Uint32 %"$$g_32_583", %Uint32* %"$retval_132", align 4, !dbg !116
  br label %"$matchsucc_539"

"$Zero_584":                                      ; preds = %"$have_gas_537"
  %"$n_585" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$Zero_584"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$Zero_584"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  %"$f0_591" = load %Uint32, %Uint32* %f0, align 4
  store %Uint32 %"$f0_591", %Uint32* %"$retval_132", align 4, !dbg !118
  br label %"$matchsucc_539"

"$empty_default_542":                             ; preds = %"$have_gas_537"
  br label %"$matchsucc_539"

"$matchsucc_539":                                 ; preds = %"$have_gas_589", %"$have_gas_571", %"$empty_default_542"
  %"$$retval_132_592" = load %Uint32, %Uint32* %"$retval_132", align 4
  ret %Uint32 %"$$retval_132_592"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_129"(%"$$fundef_129_env_242"* %0, %Uint32 %1) !dbg !120 {
entry:
  %"$f0_527" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$f0_527", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$f0_527", metadata !121, metadata !DIExpression()), !dbg !122
  %"$$fundef_129_env_fn_503" = getelementptr inbounds %"$$fundef_129_env_242", %"$$fundef_129_env_242"* %0, i32 0, i32 0
  %"$fn_envload_504" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_fn_503", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_504", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_129_env_g_505" = getelementptr inbounds %"$$fundef_129_env_242", %"$$fundef_129_env_242"* %0, i32 0, i32 1
  %"$g_envload_506" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_g_505", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_506", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_130" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 1, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %entry
  %"$consume_511" = sub i64 %"$gasrem_507", 1
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_510"
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$$fundef_131_envp_517_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_131_envp_517_salloc" = call i8* @_salloc(i8* %"$$fundef_131_envp_517_load", i64 40)
  %"$$fundef_131_envp_517" = bitcast i8* %"$$fundef_131_envp_517_salloc" to %"$$fundef_131_env_241"*
  %"$$fundef_131_env_voidp_519" = bitcast %"$$fundef_131_env_241"* %"$$fundef_131_envp_517" to i8*
  %"$$fundef_131_cloval_520" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_131_env_241"*, %TName_Nat*)* @"$fundef_131" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_131_env_voidp_519", 1
  %"$$fundef_131_env_f0_521" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %"$$fundef_131_envp_517", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_131_env_f0_521", align 4
  %"$$fundef_131_env_fn_522" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %"$$fundef_131_envp_517", i32 0, i32 1
  %"$fn_523" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_523", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_fn_522", align 8
  %"$$fundef_131_env_g_524" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %"$$fundef_131_envp_517", i32 0, i32 2
  %"$g_525" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_525", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_g_524", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_131_cloval_520", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8, !dbg !123
  %"$$retval_130_526" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_130_526"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_127"(%"$$fundef_127_env_243"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !124 {
entry:
  %"$retval_128" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %entry
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %"$$fundef_129_envp_494_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_129_envp_494_salloc" = call i8* @_salloc(i8* %"$$fundef_129_envp_494_load", i64 32)
  %"$$fundef_129_envp_494" = bitcast i8* %"$$fundef_129_envp_494_salloc" to %"$$fundef_129_env_242"*
  %"$$fundef_129_env_voidp_496" = bitcast %"$$fundef_129_env_242"* %"$$fundef_129_envp_494" to i8*
  %"$$fundef_129_cloval_497" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_129_env_242"*, %Uint32)* @"$fundef_129" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_129_env_voidp_496", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_129_cloval_497", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !125
  %"$$fundef_129_env_fn_498" = getelementptr inbounds %"$$fundef_129_env_242", %"$$fundef_129_env_242"* %"$$fundef_129_envp_494", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_fn_498", align 8
  %"$$fundef_129_env_g_499" = getelementptr inbounds %"$$fundef_129_env_242", %"$$fundef_129_env_242"* %"$$fundef_129_envp_494", i32 0, i32 1
  %"$g_500" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_500", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_g_499", align 8
  %"$g_501" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_501", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_128", align 8, !dbg !125
  %"$$retval_128_502" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_128", align 8
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_128_502"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_125"(%"$$fundef_125_env_244"* %0) !dbg !126 {
entry:
  %"$retval_126" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %entry
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_127_env_243"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_127" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_126", align 8, !dbg !127
  %"$$retval_126_488" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_126", align 8
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_126_488"
}

define internal %TName_Nat* @"$fundef_123"(%"$$fundef_123_env_245"* %0, %TName_Nat* %1) !dbg !128 {
entry:
  %"$n_479" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_479", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_479", metadata !129, metadata !DIExpression()), !dbg !130
  %"$$fundef_123_env_f0_414" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %0, i32 0, i32 0
  %"$f0_envload_415" = load %TName_Nat*, %TName_Nat** %"$$fundef_123_env_f0_414", align 8
  %f0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$f0_envload_415", %TName_Nat** %f0, align 8
  %"$$fundef_123_env_fn_416" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %0, i32 0, i32 1
  %"$fn_envload_417" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_fn_416", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_417", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_123_env_g_418" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %0, i32 0, i32 2
  %"$g_envload_419" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_g_418", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_419", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_124" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$retval_124", metadata !131, metadata !DIExpression()), !dbg !132
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 2, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %entry
  %"$consume_424" = sub i64 %"$gasrem_420", 2
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %"$n_tag_426" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_427" = load i8, i8* %"$n_tag_426", align 1
  switch i8 %"$n_tag_427", label %"$empty_default_428" [
    i8 1, label %"$Succ_429"
    i8 0, label %"$Zero_470"
  ], !dbg !132

"$Succ_429":                                      ; preds = %"$have_gas_423"
  %"$n_430" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_431" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_430", i32 0, i32 1
  %"$n1_load_432" = load %TName_Nat*, %TName_Nat** %"$n1_gep_431", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_432", %TName_Nat** %n1, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$Succ_429"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$Succ_429"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %res = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %res, metadata !133, metadata !DIExpression()), !dbg !136
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$fn_25" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_443" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$fn_fptr_444" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_443", 0
  %"$fn_envptr_445" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_443", 1
  %"$f0_446" = load %TName_Nat*, %TName_Nat** %f0, align 8
  %"$fn_call_447" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_444"(i8* %"$fn_envptr_445", %TName_Nat* %"$f0_446"), !dbg !137
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_447", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8, !dbg !137
  %"$fn_26" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$fn_26", metadata !138, metadata !DIExpression()), !dbg !137
  %"$$fn_25_448" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8
  %"$$fn_25_fptr_449" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_448", 0
  %"$$fn_25_envptr_450" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_448", 1
  %"$n1_451" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_25_call_452" = call %TName_Nat* %"$$fn_25_fptr_449"(i8* %"$$fn_25_envptr_450", %TName_Nat* %"$n1_451"), !dbg !137
  store %TName_Nat* %"$$fn_25_call_452", %TName_Nat** %"$fn_26", align 8, !dbg !137
  %"$$fn_26_453" = load %TName_Nat*, %TName_Nat** %"$fn_26", align 8
  store %TName_Nat* %"$$fn_26_453", %TName_Nat** %res, align 8, !dbg !137
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 1, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %"$have_gas_441"
  %"$consume_458" = sub i64 %"$gasrem_454", 1
  store i64 %"$consume_458", i64* @_gasrem, align 8
  %"$g_27" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_459" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$g_fptr_460" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_459", 0
  %"$g_envptr_461" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_459", 1
  %"$res_462" = load %TName_Nat*, %TName_Nat** %res, align 8
  %"$g_call_463" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_460"(i8* %"$g_envptr_461", %TName_Nat* %"$res_462"), !dbg !139
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_463", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8, !dbg !139
  %"$g_28" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$g_28", metadata !140, metadata !DIExpression()), !dbg !139
  %"$$g_27_464" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8
  %"$$g_27_fptr_465" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_464", 0
  %"$$g_27_envptr_466" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_464", 1
  %"$n1_467" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_27_call_468" = call %TName_Nat* %"$$g_27_fptr_465"(i8* %"$$g_27_envptr_466", %TName_Nat* %"$n1_467"), !dbg !139
  store %TName_Nat* %"$$g_27_call_468", %TName_Nat** %"$g_28", align 8, !dbg !139
  %"$$g_28_469" = load %TName_Nat*, %TName_Nat** %"$g_28", align 8
  store %TName_Nat* %"$$g_28_469", %TName_Nat** %"$retval_124", align 8, !dbg !139
  br label %"$matchsucc_425"

"$Zero_470":                                      ; preds = %"$have_gas_423"
  %"$n_471" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$Zero_470"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$Zero_470"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %"$f0_477" = load %TName_Nat*, %TName_Nat** %f0, align 8
  store %TName_Nat* %"$f0_477", %TName_Nat** %"$retval_124", align 8, !dbg !141
  br label %"$matchsucc_425"

"$empty_default_428":                             ; preds = %"$have_gas_423"
  br label %"$matchsucc_425"

"$matchsucc_425":                                 ; preds = %"$have_gas_475", %"$have_gas_457", %"$empty_default_428"
  %"$$retval_124_478" = load %TName_Nat*, %TName_Nat** %"$retval_124", align 8
  ret %TName_Nat* %"$$retval_124_478"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_121"(%"$$fundef_121_env_246"* %0, %TName_Nat* %1) !dbg !143 {
entry:
  %"$f0_413" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$f0_413", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$f0_413", metadata !144, metadata !DIExpression()), !dbg !145
  %"$$fundef_121_env_fn_389" = getelementptr inbounds %"$$fundef_121_env_246", %"$$fundef_121_env_246"* %0, i32 0, i32 0
  %"$fn_envload_390" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_fn_389", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_390", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_121_env_g_391" = getelementptr inbounds %"$$fundef_121_env_246", %"$$fundef_121_env_246"* %0, i32 0, i32 1
  %"$g_envload_392" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_g_391", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_392", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_122" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %entry
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_396"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$$fundef_123_envp_403_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_123_envp_403_salloc" = call i8* @_salloc(i8* %"$$fundef_123_envp_403_load", i64 40)
  %"$$fundef_123_envp_403" = bitcast i8* %"$$fundef_123_envp_403_salloc" to %"$$fundef_123_env_245"*
  %"$$fundef_123_env_voidp_405" = bitcast %"$$fundef_123_env_245"* %"$$fundef_123_envp_403" to i8*
  %"$$fundef_123_cloval_406" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_123_env_245"*, %TName_Nat*)* @"$fundef_123" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_123_env_voidp_405", 1
  %"$$fundef_123_env_f0_407" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %"$$fundef_123_envp_403", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_123_env_f0_407", align 8
  %"$$fundef_123_env_fn_408" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %"$$fundef_123_envp_403", i32 0, i32 1
  %"$fn_409" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_409", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_fn_408", align 8
  %"$$fundef_123_env_g_410" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %"$$fundef_123_envp_403", i32 0, i32 2
  %"$g_411" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_411", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_g_410", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_123_cloval_406", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_122", align 8, !dbg !146
  %"$$retval_122_412" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_122", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_122_412"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_119"(%"$$fundef_119_env_247"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) !dbg !147 {
entry:
  %"$retval_120" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %entry
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$$fundef_121_envp_380_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_121_envp_380_salloc" = call i8* @_salloc(i8* %"$$fundef_121_envp_380_load", i64 32)
  %"$$fundef_121_envp_380" = bitcast i8* %"$$fundef_121_envp_380_salloc" to %"$$fundef_121_env_246"*
  %"$$fundef_121_env_voidp_382" = bitcast %"$$fundef_121_env_246"* %"$$fundef_121_envp_380" to i8*
  %"$$fundef_121_cloval_383" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_121_env_246"*, %TName_Nat*)* @"$fundef_121" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_121_env_voidp_382", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_121_cloval_383", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8, !dbg !148
  %"$$fundef_121_env_fn_384" = getelementptr inbounds %"$$fundef_121_env_246", %"$$fundef_121_env_246"* %"$$fundef_121_envp_380", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_fn_384", align 8
  %"$$fundef_121_env_g_385" = getelementptr inbounds %"$$fundef_121_env_246", %"$$fundef_121_env_246"* %"$$fundef_121_envp_380", i32 0, i32 1
  %"$g_386" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_386", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_g_385", align 8
  %"$g_387" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_387", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_120", align 8, !dbg !148
  %"$$retval_120_388" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_120", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_120_388"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_117"(%"$$fundef_117_env_248"* %0) !dbg !149 {
entry:
  %"$retval_118" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %entry
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_119_env_247"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_119" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_118", align 8, !dbg !150
  %"$$retval_118_374" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_118", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_118_374"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_115"(%"$$fundef_115_env_249"* %0, %TName_Nat* %1) !dbg !151 {
entry:
  %"$n_365" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_365", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_365", metadata !152, metadata !DIExpression()), !dbg !153
  %"$$fundef_115_env_f0_300" = getelementptr inbounds %"$$fundef_115_env_249", %"$$fundef_115_env_249"* %0, i32 0, i32 0
  %"$f0_envload_301" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_115_env_f0_300", align 8
  %f0 = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_envload_301", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$$fundef_115_env_fn_302" = getelementptr inbounds %"$$fundef_115_env_249", %"$$fundef_115_env_249"* %0, i32 0, i32 1
  %"$fn_envload_303" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_115_env_fn_302", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_303", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_115_env_g_304" = getelementptr inbounds %"$$fundef_115_env_249", %"$$fundef_115_env_249"* %0, i32 0, i32 2
  %"$g_envload_305" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_115_env_g_304", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_305", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_116" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 2, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %entry
  %"$consume_310" = sub i64 %"$gasrem_306", 2
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %"$n_tag_312" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_313" = load i8, i8* %"$n_tag_312", align 1
  switch i8 %"$n_tag_313", label %"$empty_default_314" [
    i8 1, label %"$Succ_315"
    i8 0, label %"$Zero_356"
  ], !dbg !154

"$Succ_315":                                      ; preds = %"$have_gas_309"
  %"$n_316" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_317" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_316", i32 0, i32 1
  %"$n1_load_318" = load %TName_Nat*, %TName_Nat** %"$n1_gep_317", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_318", %TName_Nat** %n1, align 8
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$Succ_315"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$Succ_315"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %res = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$have_gas_322"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %"$fn_25" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_329" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$fn_fptr_330" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_329", 0
  %"$fn_envptr_331" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_329", 1
  %"$f0_332" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$fn_call_333" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_330"(i8* %"$fn_envptr_331", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_332"), !dbg !155
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_333", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8, !dbg !155
  %"$fn_26" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fn_25_334" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8
  %"$$fn_25_fptr_335" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_25_334", 0
  %"$$fn_25_envptr_336" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_25_334", 1
  %"$n1_337" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_25_call_338" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_fptr_335"(i8* %"$$fn_25_envptr_336", %TName_Nat* %"$n1_337"), !dbg !155
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_call_338", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_26", align 8, !dbg !155
  %"$$fn_26_339" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_26", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_26_339", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8, !dbg !155
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_327"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %"$g_27" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_345" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$g_fptr_346" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_345", 0
  %"$g_envptr_347" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_345", 1
  %"$res_348" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8
  %"$g_call_349" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_346"(i8* %"$g_envptr_347", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_348"), !dbg !158
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_349", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8, !dbg !158
  %"$g_28" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$g_27_350" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8
  %"$$g_27_fptr_351" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_27_350", 0
  %"$$g_27_envptr_352" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_27_350", 1
  %"$n1_353" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_27_call_354" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_fptr_351"(i8* %"$$g_27_envptr_352", %TName_Nat* %"$n1_353"), !dbg !158
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_call_354", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_28", align 8, !dbg !158
  %"$$g_28_355" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_28", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_28_355", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_116", align 8, !dbg !158
  br label %"$matchsucc_311"

"$Zero_356":                                      ; preds = %"$have_gas_309"
  %"$n_357" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$Zero_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$Zero_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %"$f0_363" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_363", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_116", align 8, !dbg !159
  br label %"$matchsucc_311"

"$empty_default_314":                             ; preds = %"$have_gas_309"
  br label %"$matchsucc_311"

"$matchsucc_311":                                 ; preds = %"$have_gas_361", %"$have_gas_343", %"$empty_default_314"
  %"$$retval_116_364" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_116", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_116_364"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_113"(%"$$fundef_113_env_250"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !161 {
entry:
  %"$$fundef_113_env_fn_276" = getelementptr inbounds %"$$fundef_113_env_250", %"$$fundef_113_env_250"* %0, i32 0, i32 0
  %"$fn_envload_277" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_113_env_fn_276", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_277", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_113_env_g_278" = getelementptr inbounds %"$$fundef_113_env_250", %"$$fundef_113_env_250"* %0, i32 0, i32 1
  %"$g_envload_279" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_113_env_g_278", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_279", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_114" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %entry
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %"$$fundef_115_envp_290_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_115_envp_290_salloc" = call i8* @_salloc(i8* %"$$fundef_115_envp_290_load", i64 48)
  %"$$fundef_115_envp_290" = bitcast i8* %"$$fundef_115_envp_290_salloc" to %"$$fundef_115_env_249"*
  %"$$fundef_115_env_voidp_292" = bitcast %"$$fundef_115_env_249"* %"$$fundef_115_envp_290" to i8*
  %"$$fundef_115_cloval_293" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_115_env_249"*, %TName_Nat*)* @"$fundef_115" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_115_env_voidp_292", 1
  %"$$fundef_115_env_f0_294" = getelementptr inbounds %"$$fundef_115_env_249", %"$$fundef_115_env_249"* %"$$fundef_115_envp_290", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_115_env_f0_294", align 8
  %"$$fundef_115_env_fn_295" = getelementptr inbounds %"$$fundef_115_env_249", %"$$fundef_115_env_249"* %"$$fundef_115_envp_290", i32 0, i32 1
  %"$fn_296" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_296", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_115_env_fn_295", align 8
  %"$$fundef_115_env_g_297" = getelementptr inbounds %"$$fundef_115_env_249", %"$$fundef_115_env_249"* %"$$fundef_115_envp_290", i32 0, i32 2
  %"$g_298" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_298", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_115_env_g_297", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_115_cloval_293", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_114", align 8, !dbg !162
  %"$$retval_114_299" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_114", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_114_299"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_111"(%"$$fundef_111_env_251"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !163 {
entry:
  %"$retval_112" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %entry
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$$fundef_113_envp_267_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_113_envp_267_salloc" = call i8* @_salloc(i8* %"$$fundef_113_envp_267_load", i64 32)
  %"$$fundef_113_envp_267" = bitcast i8* %"$$fundef_113_envp_267_salloc" to %"$$fundef_113_env_250"*
  %"$$fundef_113_env_voidp_269" = bitcast %"$$fundef_113_env_250"* %"$$fundef_113_envp_267" to i8*
  %"$$fundef_113_cloval_270" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_113_env_250"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_113" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_113_env_voidp_269", 1
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_113_cloval_270", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8, !dbg !164
  %"$$fundef_113_env_fn_271" = getelementptr inbounds %"$$fundef_113_env_250", %"$$fundef_113_env_250"* %"$$fundef_113_envp_267", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_113_env_fn_271", align 8
  %"$$fundef_113_env_g_272" = getelementptr inbounds %"$$fundef_113_env_250", %"$$fundef_113_env_250"* %"$$fundef_113_envp_267", i32 0, i32 1
  %"$g_273" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_273", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_113_env_g_272", align 8
  %"$g_274" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_274", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_112", align 8, !dbg !164
  %"$$retval_112_275" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_112", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_112_275"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_109"(%"$$fundef_109_env_252"* %0) !dbg !165 {
entry:
  %"$retval_110" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %entry
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_111_env_251"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_111" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_110", align 8, !dbg !166
  %"$$retval_110_261" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_110", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_110_261"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !167 {
entry:
  %"$gasrem_1086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1087" = icmp ugt i64 4, %"$gasrem_1086"
  br i1 %"$gascmp_1087", label %"$out_of_gas_1088", label %"$have_gas_1089"

"$out_of_gas_1088":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1089"

"$have_gas_1089":                                 ; preds = %"$out_of_gas_1088", %entry
  %"$consume_1090" = sub i64 %"$gasrem_1086", 4
  store i64 %"$consume_1090", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !169
  %"$gasrem_1091" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1092" = icmp ugt i64 1, %"$gasrem_1091"
  br i1 %"$gascmp_1092", label %"$out_of_gas_1093", label %"$have_gas_1094"

"$out_of_gas_1093":                               ; preds = %"$have_gas_1089"
  call void @_out_of_gas()
  br label %"$have_gas_1094"

"$have_gas_1094":                                 ; preds = %"$out_of_gas_1093", %"$have_gas_1089"
  %"$consume_1095" = sub i64 %"$gasrem_1091", 1
  store i64 %"$consume_1095", i64* @_gasrem, align 8
  %"$dyndisp_table_1102_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1102_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1102_salloc_load", i64 48)
  %"$dyndisp_table_1102_salloc" = bitcast i8* %"$dyndisp_table_1102_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1102" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1102_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1103" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1102", i32 1
  %"$dyndisp_pcast_1104" = bitcast { i8*, i8* }* %"$dyndisp_gep_1103" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_109_env_252"*)* @"$fundef_109" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1104", align 8
  %"$dyndisp_gep_1105" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1102", i32 2
  %"$dyndisp_pcast_1106" = bitcast { i8*, i8* }* %"$dyndisp_gep_1105" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_117_env_248"*)* @"$fundef_117" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1106", align 8
  store { i8*, i8* }* %"$dyndisp_table_1102", { i8*, i8* }** @nat_fold, align 8, !dbg !170
  %"$gasrem_1107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1108" = icmp ugt i64 8, %"$gasrem_1107"
  br i1 %"$gascmp_1108", label %"$out_of_gas_1109", label %"$have_gas_1110"

"$out_of_gas_1109":                               ; preds = %"$have_gas_1094"
  call void @_out_of_gas()
  br label %"$have_gas_1110"

"$have_gas_1110":                                 ; preds = %"$out_of_gas_1109", %"$have_gas_1094"
  %"$consume_1111" = sub i64 %"$gasrem_1107", 8
  store i64 %"$consume_1111", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !169
  %"$gasrem_1112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1113" = icmp ugt i64 196, %"$gasrem_1112"
  br i1 %"$gascmp_1113", label %"$out_of_gas_1114", label %"$have_gas_1115"

"$out_of_gas_1114":                               ; preds = %"$have_gas_1110"
  call void @_out_of_gas()
  br label %"$have_gas_1115"

"$have_gas_1115":                                 ; preds = %"$out_of_gas_1114", %"$have_gas_1110"
  %"$consume_1116" = sub i64 %"$gasrem_1112", 196
  store i64 %"$consume_1116", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !169
  %"$gasrem_1117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1118" = icmp ugt i64 20, %"$gasrem_1117"
  br i1 %"$gascmp_1118", label %"$out_of_gas_1119", label %"$have_gas_1120"

"$out_of_gas_1119":                               ; preds = %"$have_gas_1115"
  call void @_out_of_gas()
  br label %"$have_gas_1120"

"$have_gas_1120":                                 ; preds = %"$out_of_gas_1119", %"$have_gas_1115"
  %"$consume_1121" = sub i64 %"$gasrem_1117", 20
  store i64 %"$consume_1121", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !169
  %"$gasrem_1122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1123" = icmp ugt i64 11, %"$gasrem_1122"
  br i1 %"$gascmp_1123", label %"$out_of_gas_1124", label %"$have_gas_1125"

"$out_of_gas_1124":                               ; preds = %"$have_gas_1120"
  call void @_out_of_gas()
  br label %"$have_gas_1125"

"$have_gas_1125":                                 ; preds = %"$out_of_gas_1124", %"$have_gas_1120"
  %"$consume_1126" = sub i64 %"$gasrem_1122", 11
  store i64 %"$consume_1126", i64* @_gasrem, align 8
  store %Int32 { i32 11 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !169
  %"$gasrem_1127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1128" = icmp ugt i64 1, %"$gasrem_1127"
  br i1 %"$gascmp_1128", label %"$out_of_gas_1129", label %"$have_gas_1130"

"$out_of_gas_1129":                               ; preds = %"$have_gas_1125"
  call void @_out_of_gas()
  br label %"$have_gas_1130"

"$have_gas_1130":                                 ; preds = %"$out_of_gas_1129", %"$have_gas_1125"
  %"$consume_1131" = sub i64 %"$gasrem_1127", 1
  store i64 %"$consume_1131", i64* @_gasrem, align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_1135_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1135_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1135_salloc_load", i64 48)
  %"$dyndisp_table_1135_salloc" = bitcast i8* %"$dyndisp_table_1135_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1135" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1135_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1136" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1135", i32 0
  %"$dyndisp_pcast_1137" = bitcast { i8*, i8* }* %"$dyndisp_gep_1136" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_125_env_244"*)* @"$fundef_125" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1137", align 8
  store { i8*, i8* }* %"$dyndisp_table_1135", { i8*, i8* }** %"$nat_fold_6", align 8, !dbg !170
  %"$$fundef_133_envp_1138_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_133_envp_1138_salloc" = call i8* @_salloc(i8* %"$$fundef_133_envp_1138_load", i64 8)
  %"$$fundef_133_envp_1138" = bitcast i8* %"$$fundef_133_envp_1138_salloc" to %"$$fundef_133_env_240"*
  %"$$fundef_133_env_voidp_1140" = bitcast %"$$fundef_133_env_240"* %"$$fundef_133_envp_1138" to i8*
  %"$$fundef_133_cloval_1141" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_133_env_240"*, %TName_Nat*)* @"$fundef_133" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_133_env_voidp_1140", 1
  %"$$fundef_133_env_$nat_fold_6_1142" = getelementptr inbounds %"$$fundef_133_env_240", %"$$fundef_133_env_240"* %"$$fundef_133_envp_1138", i32 0, i32 0
  %"$$nat_fold_6_1143" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  store { i8*, i8* }* %"$$nat_fold_6_1143", { i8*, i8* }** %"$$fundef_133_env_$nat_fold_6_1142", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_133_cloval_1141", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8, !dbg !171
  %"$gasrem_1144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1145" = icmp ugt i64 2, %"$gasrem_1144"
  br i1 %"$gascmp_1145", label %"$out_of_gas_1146", label %"$have_gas_1147"

"$out_of_gas_1146":                               ; preds = %"$have_gas_1130"
  call void @_out_of_gas()
  br label %"$have_gas_1147"

"$have_gas_1147":                                 ; preds = %"$out_of_gas_1146", %"$have_gas_1130"
  %"$consume_1148" = sub i64 %"$gasrem_1144", 2
  store i64 %"$consume_1148", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !169
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !172 {
entry:
  %"$expr_139" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$expr_139", metadata !173, metadata !DIExpression()), !dbg !174
  %"$gasrem_1149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1150" = icmp ugt i64 1, %"$gasrem_1149"
  br i1 %"$gascmp_1150", label %"$out_of_gas_1151", label %"$have_gas_1152"

"$out_of_gas_1151":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1152"

"$have_gas_1152":                                 ; preds = %"$out_of_gas_1151", %entry
  %"$consume_1153" = sub i64 %"$gasrem_1149", 1
  store i64 %"$consume_1153", i64* @_gasrem, align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1155" = icmp ugt i64 1, %"$gasrem_1154"
  br i1 %"$gascmp_1155", label %"$out_of_gas_1156", label %"$have_gas_1157"

"$out_of_gas_1156":                               ; preds = %"$have_gas_1152"
  call void @_out_of_gas()
  br label %"$have_gas_1157"

"$have_gas_1157":                                 ; preds = %"$out_of_gas_1156", %"$have_gas_1152"
  %"$consume_1158" = sub i64 %"$gasrem_1154", 1
  store i64 %"$consume_1158", i64* @_gasrem, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_140_env_237"*, %TName_Nat*)* @"$fundef_140" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8, !dbg !175
  %"$gasrem_1162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1163" = icmp ugt i64 1, %"$gasrem_1162"
  br i1 %"$gascmp_1163", label %"$out_of_gas_1164", label %"$have_gas_1165"

"$out_of_gas_1164":                               ; preds = %"$have_gas_1157"
  call void @_out_of_gas()
  br label %"$have_gas_1165"

"$have_gas_1165":                                 ; preds = %"$out_of_gas_1164", %"$have_gas_1157"
  %"$consume_1166" = sub i64 %"$gasrem_1162", 1
  store i64 %"$consume_1166", i64* @_gasrem, align 8
  %nat_iter = alloca { i8*, i8* }*, align 8
  %"$gasrem_1167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1168" = icmp ugt i64 1, %"$gasrem_1167"
  br i1 %"$gascmp_1168", label %"$out_of_gas_1169", label %"$have_gas_1170"

"$out_of_gas_1169":                               ; preds = %"$have_gas_1165"
  call void @_out_of_gas()
  br label %"$have_gas_1170"

"$have_gas_1170":                                 ; preds = %"$out_of_gas_1169", %"$have_gas_1165"
  %"$consume_1171" = sub i64 %"$gasrem_1167", 1
  store i64 %"$consume_1171", i64* @_gasrem, align 8
  %"$$fundef_142_envp_1172_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_142_envp_1172_salloc" = call i8* @_salloc(i8* %"$$fundef_142_envp_1172_load", i64 8)
  %"$$fundef_142_envp_1172" = bitcast i8* %"$$fundef_142_envp_1172_salloc" to %"$$fundef_142_env_236"*
  %"$$fundef_142_env_voidp_1174" = bitcast %"$$fundef_142_env_236"* %"$$fundef_142_envp_1172" to i8*
  %"$$fundef_142_cloval_1175" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_142_env_236"*)* @"$fundef_142" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_142_env_voidp_1174", 1
  %"$$fundef_142_env_nat_fold_1176" = getelementptr inbounds %"$$fundef_142_env_236", %"$$fundef_142_env_236"* %"$$fundef_142_envp_1172", i32 0, i32 0
  %"$nat_fold_1177" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1177", { i8*, i8* }** %"$$fundef_142_env_nat_fold_1176", align 8
  %"$$fundef_154_env_voidp_1179" = bitcast %"$$fundef_142_env_236"* %"$$fundef_142_envp_1172" to i8*
  %"$$fundef_154_cloval_1180" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_154_env_230"*)* @"$fundef_154" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_154_env_voidp_1179", 1
  %"$dyndisp_table_1181_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1181_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1181_salloc_load", i64 48)
  %"$dyndisp_table_1181_salloc" = bitcast i8* %"$dyndisp_table_1181_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1181" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1181_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1182" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1181", i32 1
  %"$dyndisp_pcast_1183" = bitcast { i8*, i8* }* %"$dyndisp_gep_1182" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_142_cloval_1175", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1183", align 8
  %"$dyndisp_gep_1184" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1181", i32 2
  %"$dyndisp_pcast_1185" = bitcast { i8*, i8* }* %"$dyndisp_gep_1184" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_154_cloval_1180", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1185", align 8
  store { i8*, i8* }* %"$dyndisp_table_1181", { i8*, i8* }** %nat_iter, align 8, !dbg !176
  %"$gasrem_1186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1187" = icmp ugt i64 1, %"$gasrem_1186"
  br i1 %"$gascmp_1187", label %"$out_of_gas_1188", label %"$have_gas_1189"

"$out_of_gas_1188":                               ; preds = %"$have_gas_1170"
  call void @_out_of_gas()
  br label %"$have_gas_1189"

"$have_gas_1189":                                 ; preds = %"$out_of_gas_1188", %"$have_gas_1170"
  %"$consume_1190" = sub i64 %"$gasrem_1186", 1
  store i64 %"$consume_1190", i64* @_gasrem, align 8
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1192" = icmp ugt i64 1, %"$gasrem_1191"
  br i1 %"$gascmp_1192", label %"$out_of_gas_1193", label %"$have_gas_1194"

"$out_of_gas_1193":                               ; preds = %"$have_gas_1189"
  call void @_out_of_gas()
  br label %"$have_gas_1194"

"$have_gas_1194":                                 ; preds = %"$out_of_gas_1193", %"$have_gas_1189"
  %"$consume_1195" = sub i64 %"$gasrem_1191", 1
  store i64 %"$consume_1195", i64* @_gasrem, align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1197" = icmp ugt i64 1, %"$gasrem_1196"
  br i1 %"$gascmp_1197", label %"$out_of_gas_1198", label %"$have_gas_1199"

"$out_of_gas_1198":                               ; preds = %"$have_gas_1194"
  call void @_out_of_gas()
  br label %"$have_gas_1199"

"$have_gas_1199":                                 ; preds = %"$out_of_gas_1198", %"$have_gas_1194"
  %"$consume_1200" = sub i64 %"$gasrem_1196", 1
  store i64 %"$consume_1200", i64* @_gasrem, align 8
  %"$nat_iter_1201" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1202" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1201", i32 2
  %"$nat_iter_1203" = bitcast { i8*, i8* }* %"$nat_iter_1202" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1204" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1203", align 8
  %"$nat_iter_fptr_1205" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1204", 0
  %"$nat_iter_envptr_1206" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1204", 1
  %"$nat_iter_call_1207" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1205"(i8* %"$nat_iter_envptr_1206"), !dbg !177
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1207", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8, !dbg !178
  %"$gasrem_1208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1209" = icmp ugt i64 1, %"$gasrem_1208"
  br i1 %"$gascmp_1209", label %"$out_of_gas_1210", label %"$have_gas_1211"

"$out_of_gas_1210":                               ; preds = %"$have_gas_1199"
  call void @_out_of_gas()
  br label %"$have_gas_1211"

"$have_gas_1211":                                 ; preds = %"$out_of_gas_1210", %"$have_gas_1199"
  %"$consume_1212" = sub i64 %"$gasrem_1208", 1
  store i64 %"$consume_1212", i64* @_gasrem, align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_1213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1214" = icmp ugt i64 1, %"$gasrem_1213"
  br i1 %"$gascmp_1214", label %"$out_of_gas_1215", label %"$have_gas_1216"

"$out_of_gas_1215":                               ; preds = %"$have_gas_1211"
  call void @_out_of_gas()
  br label %"$have_gas_1216"

"$have_gas_1216":                                 ; preds = %"$out_of_gas_1215", %"$have_gas_1211"
  %"$consume_1217" = sub i64 %"$gasrem_1213", 1
  store i64 %"$consume_1217", i64* @_gasrem, align 8
  %"$nat_iter_1218" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1219" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1218", i32 1
  %"$nat_iter_1220" = bitcast { i8*, i8* }* %"$nat_iter_1219" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1221" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1220", align 8
  %"$nat_iter_fptr_1222" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1221", 0
  %"$nat_iter_envptr_1223" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1221", 1
  %"$nat_iter_call_1224" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1222"(i8* %"$nat_iter_envptr_1223"), !dbg !179
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1224", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8, !dbg !180
  %"$gasrem_1225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1226" = icmp ugt i64 1, %"$gasrem_1225"
  br i1 %"$gascmp_1226", label %"$out_of_gas_1227", label %"$have_gas_1228"

"$out_of_gas_1227":                               ; preds = %"$have_gas_1216"
  call void @_out_of_gas()
  br label %"$have_gas_1228"

"$have_gas_1228":                                 ; preds = %"$out_of_gas_1227", %"$have_gas_1216"
  %"$consume_1229" = sub i64 %"$gasrem_1225", 1
  store i64 %"$consume_1229", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %zero, metadata !181, metadata !DIExpression()), !dbg !182
  %"$gasrem_1230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1231" = icmp ugt i64 1, %"$gasrem_1230"
  br i1 %"$gascmp_1231", label %"$out_of_gas_1232", label %"$have_gas_1233"

"$out_of_gas_1232":                               ; preds = %"$have_gas_1228"
  call void @_out_of_gas()
  br label %"$have_gas_1233"

"$have_gas_1233":                                 ; preds = %"$out_of_gas_1232", %"$have_gas_1228"
  %"$consume_1234" = sub i64 %"$gasrem_1230", 1
  store i64 %"$consume_1234", i64* @_gasrem, align 8
  %"$adtval_1235_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1235_salloc" = call i8* @_salloc(i8* %"$adtval_1235_load", i64 1)
  %"$adtval_1235" = bitcast i8* %"$adtval_1235_salloc" to %CName_Zero*
  %"$adtgep_1236" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1235", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1236", align 1
  %"$adtptr_1237" = bitcast %CName_Zero* %"$adtval_1235" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1237", %TName_Nat** %zero, align 8, !dbg !183
  %"$gasrem_1238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1239" = icmp ugt i64 1, %"$gasrem_1238"
  br i1 %"$gascmp_1239", label %"$out_of_gas_1240", label %"$have_gas_1241"

"$out_of_gas_1240":                               ; preds = %"$have_gas_1233"
  call void @_out_of_gas()
  br label %"$have_gas_1241"

"$have_gas_1241":                                 ; preds = %"$out_of_gas_1240", %"$have_gas_1233"
  %"$consume_1242" = sub i64 %"$gasrem_1238", 1
  store i64 %"$consume_1242", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %one, metadata !184, metadata !DIExpression()), !dbg !185
  %"$gasrem_1243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1244" = icmp ugt i64 1, %"$gasrem_1243"
  br i1 %"$gascmp_1244", label %"$out_of_gas_1245", label %"$have_gas_1246"

"$out_of_gas_1245":                               ; preds = %"$have_gas_1241"
  call void @_out_of_gas()
  br label %"$have_gas_1246"

"$have_gas_1246":                                 ; preds = %"$out_of_gas_1245", %"$have_gas_1241"
  %"$consume_1247" = sub i64 %"$gasrem_1243", 1
  store i64 %"$consume_1247", i64* @_gasrem, align 8
  %"$zero_1248" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_1249_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1249_salloc" = call i8* @_salloc(i8* %"$adtval_1249_load", i64 9)
  %"$adtval_1249" = bitcast i8* %"$adtval_1249_salloc" to %CName_Succ*
  %"$adtgep_1250" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1249", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1250", align 1
  %"$adtgep_1251" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1249", i32 0, i32 1
  store %TName_Nat* %"$zero_1248", %TName_Nat** %"$adtgep_1251", align 8
  %"$adtptr_1252" = bitcast %CName_Succ* %"$adtval_1249" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1252", %TName_Nat** %one, align 8, !dbg !186
  %"$gasrem_1253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1254" = icmp ugt i64 1, %"$gasrem_1253"
  br i1 %"$gascmp_1254", label %"$out_of_gas_1255", label %"$have_gas_1256"

"$out_of_gas_1255":                               ; preds = %"$have_gas_1246"
  call void @_out_of_gas()
  br label %"$have_gas_1256"

"$have_gas_1256":                                 ; preds = %"$out_of_gas_1255", %"$have_gas_1246"
  %"$consume_1257" = sub i64 %"$gasrem_1253", 1
  store i64 %"$consume_1257", i64* @_gasrem, align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1259" = icmp ugt i64 1, %"$gasrem_1258"
  br i1 %"$gascmp_1259", label %"$out_of_gas_1260", label %"$have_gas_1261"

"$out_of_gas_1260":                               ; preds = %"$have_gas_1256"
  call void @_out_of_gas()
  br label %"$have_gas_1261"

"$have_gas_1261":                                 ; preds = %"$out_of_gas_1260", %"$have_gas_1256"
  %"$consume_1262" = sub i64 %"$gasrem_1258", 1
  store i64 %"$consume_1262", i64* @_gasrem, align 8
  %"$$fundef_166_envp_1263_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_166_envp_1263_salloc" = call i8* @_salloc(i8* %"$$fundef_166_envp_1263_load", i64 24)
  %"$$fundef_166_envp_1263" = bitcast i8* %"$$fundef_166_envp_1263_salloc" to %"$$fundef_166_env_224"*
  %"$$fundef_166_env_voidp_1265" = bitcast %"$$fundef_166_env_224"* %"$$fundef_166_envp_1263" to i8*
  %"$$fundef_166_cloval_1266" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_166_env_224"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_166" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_166_env_voidp_1265", 1
  %"$$fundef_166_env_iter_nat_1267" = getelementptr inbounds %"$$fundef_166_env_224", %"$$fundef_166_env_224"* %"$$fundef_166_envp_1263", i32 0, i32 0
  %"$iter_nat_1268" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1268", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_166_env_iter_nat_1267", align 8
  %"$$fundef_166_env_one_1269" = getelementptr inbounds %"$$fundef_166_env_224", %"$$fundef_166_env_224"* %"$$fundef_166_envp_1263", i32 0, i32 1
  %"$one_1270" = load %TName_Nat*, %TName_Nat** %one, align 8
  store %TName_Nat* %"$one_1270", %TName_Nat** %"$$fundef_166_env_one_1269", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_166_cloval_1266", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8, !dbg !187
  %"$gasrem_1271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1272" = icmp ugt i64 1, %"$gasrem_1271"
  br i1 %"$gascmp_1272", label %"$out_of_gas_1273", label %"$have_gas_1274"

"$out_of_gas_1273":                               ; preds = %"$have_gas_1261"
  call void @_out_of_gas()
  br label %"$have_gas_1274"

"$have_gas_1274":                                 ; preds = %"$out_of_gas_1273", %"$have_gas_1261"
  %"$consume_1275" = sub i64 %"$gasrem_1271", 1
  store i64 %"$consume_1275", i64* @_gasrem, align 8
  %"$$fundef_170_envp_1276_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_170_envp_1276_salloc" = call i8* @_salloc(i8* %"$$fundef_170_envp_1276_load", i64 48)
  %"$$fundef_170_envp_1276" = bitcast i8* %"$$fundef_170_envp_1276_salloc" to %"$$fundef_170_env_222"*
  %"$$fundef_170_env_voidp_1278" = bitcast %"$$fundef_170_env_222"* %"$$fundef_170_envp_1276" to i8*
  %"$$fundef_170_cloval_1279" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_170_env_222"*, %TName_Nat*)* @"$fundef_170" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_170_env_voidp_1278", 1
  %"$$fundef_170_env_f_1280" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %"$$fundef_170_envp_1276", i32 0, i32 0
  %"$f_1281" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1281", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_170_env_f_1280", align 8
  %"$$fundef_170_env_iter_nat_nat_1282" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %"$$fundef_170_envp_1276", i32 0, i32 1
  %"$iter_nat_nat_1283" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1283", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_170_env_iter_nat_nat_1282", align 8
  %"$$fundef_170_env_nat_succ_1284" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %"$$fundef_170_envp_1276", i32 0, i32 2
  %"$nat_succ_1285" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1285", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_170_env_nat_succ_1284", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_170_cloval_1279", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8, !dbg !188
  %"$gasrem_1286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1287" = icmp ugt i64 1, %"$gasrem_1286"
  br i1 %"$gascmp_1287", label %"$out_of_gas_1288", label %"$have_gas_1289"

"$out_of_gas_1288":                               ; preds = %"$have_gas_1274"
  call void @_out_of_gas()
  br label %"$have_gas_1289"

"$have_gas_1289":                                 ; preds = %"$out_of_gas_1288", %"$have_gas_1274"
  %"$consume_1290" = sub i64 %"$gasrem_1286", 1
  store i64 %"$consume_1290", i64* @_gasrem, align 8
  %uint0 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %uint0, metadata !189, metadata !DIExpression()), !dbg !190
  %"$gasrem_1291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1292" = icmp ugt i64 1, %"$gasrem_1291"
  br i1 %"$gascmp_1292", label %"$out_of_gas_1293", label %"$have_gas_1294"

"$out_of_gas_1293":                               ; preds = %"$have_gas_1289"
  call void @_out_of_gas()
  br label %"$have_gas_1294"

"$have_gas_1294":                                 ; preds = %"$out_of_gas_1293", %"$have_gas_1289"
  %"$consume_1295" = sub i64 %"$gasrem_1291", 1
  store i64 %"$consume_1295", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %uint0, align 4, !dbg !191
  %"$gasrem_1296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1297" = icmp ugt i64 1, %"$gasrem_1296"
  br i1 %"$gascmp_1297", label %"$out_of_gas_1298", label %"$have_gas_1299"

"$out_of_gas_1298":                               ; preds = %"$have_gas_1294"
  call void @_out_of_gas()
  br label %"$have_gas_1299"

"$have_gas_1299":                                 ; preds = %"$out_of_gas_1298", %"$have_gas_1294"
  %"$consume_1300" = sub i64 %"$gasrem_1296", 1
  store i64 %"$consume_1300", i64* @_gasrem, align 8
  %uint1 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %uint1, metadata !192, metadata !DIExpression()), !dbg !193
  %"$gasrem_1301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1302" = icmp ugt i64 1, %"$gasrem_1301"
  br i1 %"$gascmp_1302", label %"$out_of_gas_1303", label %"$have_gas_1304"

"$out_of_gas_1303":                               ; preds = %"$have_gas_1299"
  call void @_out_of_gas()
  br label %"$have_gas_1304"

"$have_gas_1304":                                 ; preds = %"$out_of_gas_1303", %"$have_gas_1299"
  %"$consume_1305" = sub i64 %"$gasrem_1301", 1
  store i64 %"$consume_1305", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint1, align 4, !dbg !194
  %"$gasrem_1306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1307" = icmp ugt i64 1, %"$gasrem_1306"
  br i1 %"$gascmp_1307", label %"$out_of_gas_1308", label %"$have_gas_1309"

"$out_of_gas_1308":                               ; preds = %"$have_gas_1304"
  call void @_out_of_gas()
  br label %"$have_gas_1309"

"$have_gas_1309":                                 ; preds = %"$out_of_gas_1308", %"$have_gas_1304"
  %"$consume_1310" = sub i64 %"$gasrem_1306", 1
  store i64 %"$consume_1310", i64* @_gasrem, align 8
  %uint2 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %uint2, metadata !195, metadata !DIExpression()), !dbg !196
  %"$gasrem_1311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1312" = icmp ugt i64 1, %"$gasrem_1311"
  br i1 %"$gascmp_1312", label %"$out_of_gas_1313", label %"$have_gas_1314"

"$out_of_gas_1313":                               ; preds = %"$have_gas_1309"
  call void @_out_of_gas()
  br label %"$have_gas_1314"

"$have_gas_1314":                                 ; preds = %"$out_of_gas_1313", %"$have_gas_1309"
  %"$consume_1315" = sub i64 %"$gasrem_1311", 1
  store i64 %"$consume_1315", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %uint2, align 4, !dbg !197
  %"$gasrem_1316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1317" = icmp ugt i64 1, %"$gasrem_1316"
  br i1 %"$gascmp_1317", label %"$out_of_gas_1318", label %"$have_gas_1319"

"$out_of_gas_1318":                               ; preds = %"$have_gas_1314"
  call void @_out_of_gas()
  br label %"$have_gas_1319"

"$have_gas_1319":                                 ; preds = %"$out_of_gas_1318", %"$have_gas_1314"
  %"$consume_1320" = sub i64 %"$gasrem_1316", 1
  store i64 %"$consume_1320", i64* @_gasrem, align 8
  %uint3 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %uint3, metadata !198, metadata !DIExpression()), !dbg !199
  %"$gasrem_1321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1322" = icmp ugt i64 1, %"$gasrem_1321"
  br i1 %"$gascmp_1322", label %"$out_of_gas_1323", label %"$have_gas_1324"

"$out_of_gas_1323":                               ; preds = %"$have_gas_1319"
  call void @_out_of_gas()
  br label %"$have_gas_1324"

"$have_gas_1324":                                 ; preds = %"$out_of_gas_1323", %"$have_gas_1319"
  %"$consume_1325" = sub i64 %"$gasrem_1321", 1
  store i64 %"$consume_1325", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %uint3, align 4, !dbg !200
  %"$gasrem_1326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1327" = icmp ugt i64 1, %"$gasrem_1326"
  br i1 %"$gascmp_1327", label %"$out_of_gas_1328", label %"$have_gas_1329"

"$out_of_gas_1328":                               ; preds = %"$have_gas_1324"
  call void @_out_of_gas()
  br label %"$have_gas_1329"

"$have_gas_1329":                                 ; preds = %"$out_of_gas_1328", %"$have_gas_1324"
  %"$consume_1330" = sub i64 %"$gasrem_1326", 1
  store i64 %"$consume_1330", i64* @_gasrem, align 8
  %uint4 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %uint4, metadata !201, metadata !DIExpression()), !dbg !202
  %"$gasrem_1331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1332" = icmp ugt i64 1, %"$gasrem_1331"
  br i1 %"$gascmp_1332", label %"$out_of_gas_1333", label %"$have_gas_1334"

"$out_of_gas_1333":                               ; preds = %"$have_gas_1329"
  call void @_out_of_gas()
  br label %"$have_gas_1334"

"$have_gas_1334":                                 ; preds = %"$out_of_gas_1333", %"$have_gas_1329"
  %"$consume_1335" = sub i64 %"$gasrem_1331", 1
  store i64 %"$consume_1335", i64* @_gasrem, align 8
  store %Uint32 { i32 4 }, %Uint32* %uint4, align 4, !dbg !203
  %"$gasrem_1336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1337" = icmp ugt i64 1, %"$gasrem_1336"
  br i1 %"$gascmp_1337", label %"$out_of_gas_1338", label %"$have_gas_1339"

"$out_of_gas_1338":                               ; preds = %"$have_gas_1334"
  call void @_out_of_gas()
  br label %"$have_gas_1339"

"$have_gas_1339":                                 ; preds = %"$out_of_gas_1338", %"$have_gas_1334"
  %"$consume_1340" = sub i64 %"$gasrem_1336", 1
  store i64 %"$consume_1340", i64* @_gasrem, align 8
  %n0 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %n0, metadata !204, metadata !DIExpression()), !dbg !205
  %"$uint0_1341" = load %Uint32, %Uint32* %uint0, align 4
  %"$valueof_1342" = extractvalue %Uint32 %"$uint0_1341", 0
  %"$valueof_1343" = zext i32 %"$valueof_1342" to i64
  %"$gasrem_1344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1345" = icmp ugt i64 %"$valueof_1343", %"$gasrem_1344"
  br i1 %"$gascmp_1345", label %"$out_of_gas_1346", label %"$have_gas_1347"

"$out_of_gas_1346":                               ; preds = %"$have_gas_1339"
  call void @_out_of_gas()
  br label %"$have_gas_1347"

"$have_gas_1347":                                 ; preds = %"$out_of_gas_1346", %"$have_gas_1339"
  %"$consume_1348" = sub i64 %"$gasrem_1344", %"$valueof_1343"
  store i64 %"$consume_1348", i64* @_gasrem, align 8
  %"$execptr_load_1349" = load i8*, i8** @_execptr, align 8
  %"$uint0_1350" = load %Uint32, %Uint32* %uint0, align 4
  %"$to_nat_call_1351" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1349", %Uint32 %"$uint0_1350"), !dbg !206
  store %TName_Nat* %"$to_nat_call_1351", %TName_Nat** %n0, align 8, !dbg !206
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 1, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$have_gas_1347"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$have_gas_1347"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 1
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  %n1 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %n1, metadata !207, metadata !DIExpression()), !dbg !208
  %"$uint1_1358" = load %Uint32, %Uint32* %uint1, align 4
  %"$valueof_1359" = extractvalue %Uint32 %"$uint1_1358", 0
  %"$valueof_1360" = zext i32 %"$valueof_1359" to i64
  %"$gasrem_1361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1362" = icmp ugt i64 %"$valueof_1360", %"$gasrem_1361"
  br i1 %"$gascmp_1362", label %"$out_of_gas_1363", label %"$have_gas_1364"

"$out_of_gas_1363":                               ; preds = %"$have_gas_1356"
  call void @_out_of_gas()
  br label %"$have_gas_1364"

"$have_gas_1364":                                 ; preds = %"$out_of_gas_1363", %"$have_gas_1356"
  %"$consume_1365" = sub i64 %"$gasrem_1361", %"$valueof_1360"
  store i64 %"$consume_1365", i64* @_gasrem, align 8
  %"$execptr_load_1366" = load i8*, i8** @_execptr, align 8
  %"$uint1_1367" = load %Uint32, %Uint32* %uint1, align 4
  %"$to_nat_call_1368" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1366", %Uint32 %"$uint1_1367"), !dbg !209
  store %TName_Nat* %"$to_nat_call_1368", %TName_Nat** %n1, align 8, !dbg !209
  %"$gasrem_1370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1371" = icmp ugt i64 1, %"$gasrem_1370"
  br i1 %"$gascmp_1371", label %"$out_of_gas_1372", label %"$have_gas_1373"

"$out_of_gas_1372":                               ; preds = %"$have_gas_1364"
  call void @_out_of_gas()
  br label %"$have_gas_1373"

"$have_gas_1373":                                 ; preds = %"$out_of_gas_1372", %"$have_gas_1364"
  %"$consume_1374" = sub i64 %"$gasrem_1370", 1
  store i64 %"$consume_1374", i64* @_gasrem, align 8
  %n2 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %n2, metadata !210, metadata !DIExpression()), !dbg !211
  %"$uint2_1375" = load %Uint32, %Uint32* %uint2, align 4
  %"$valueof_1376" = extractvalue %Uint32 %"$uint2_1375", 0
  %"$valueof_1377" = zext i32 %"$valueof_1376" to i64
  %"$gasrem_1378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1379" = icmp ugt i64 %"$valueof_1377", %"$gasrem_1378"
  br i1 %"$gascmp_1379", label %"$out_of_gas_1380", label %"$have_gas_1381"

"$out_of_gas_1380":                               ; preds = %"$have_gas_1373"
  call void @_out_of_gas()
  br label %"$have_gas_1381"

"$have_gas_1381":                                 ; preds = %"$out_of_gas_1380", %"$have_gas_1373"
  %"$consume_1382" = sub i64 %"$gasrem_1378", %"$valueof_1377"
  store i64 %"$consume_1382", i64* @_gasrem, align 8
  %"$execptr_load_1383" = load i8*, i8** @_execptr, align 8
  %"$uint2_1384" = load %Uint32, %Uint32* %uint2, align 4
  %"$to_nat_call_1385" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1383", %Uint32 %"$uint2_1384"), !dbg !212
  store %TName_Nat* %"$to_nat_call_1385", %TName_Nat** %n2, align 8, !dbg !212
  %"$gasrem_1387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1388" = icmp ugt i64 1, %"$gasrem_1387"
  br i1 %"$gascmp_1388", label %"$out_of_gas_1389", label %"$have_gas_1390"

"$out_of_gas_1389":                               ; preds = %"$have_gas_1381"
  call void @_out_of_gas()
  br label %"$have_gas_1390"

"$have_gas_1390":                                 ; preds = %"$out_of_gas_1389", %"$have_gas_1381"
  %"$consume_1391" = sub i64 %"$gasrem_1387", 1
  store i64 %"$consume_1391", i64* @_gasrem, align 8
  %n3 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %n3, metadata !213, metadata !DIExpression()), !dbg !214
  %"$uint3_1392" = load %Uint32, %Uint32* %uint3, align 4
  %"$valueof_1393" = extractvalue %Uint32 %"$uint3_1392", 0
  %"$valueof_1394" = zext i32 %"$valueof_1393" to i64
  %"$gasrem_1395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1396" = icmp ugt i64 %"$valueof_1394", %"$gasrem_1395"
  br i1 %"$gascmp_1396", label %"$out_of_gas_1397", label %"$have_gas_1398"

"$out_of_gas_1397":                               ; preds = %"$have_gas_1390"
  call void @_out_of_gas()
  br label %"$have_gas_1398"

"$have_gas_1398":                                 ; preds = %"$out_of_gas_1397", %"$have_gas_1390"
  %"$consume_1399" = sub i64 %"$gasrem_1395", %"$valueof_1394"
  store i64 %"$consume_1399", i64* @_gasrem, align 8
  %"$execptr_load_1400" = load i8*, i8** @_execptr, align 8
  %"$uint3_1401" = load %Uint32, %Uint32* %uint3, align 4
  %"$to_nat_call_1402" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1400", %Uint32 %"$uint3_1401"), !dbg !215
  store %TName_Nat* %"$to_nat_call_1402", %TName_Nat** %n3, align 8, !dbg !215
  %"$gasrem_1404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1405" = icmp ugt i64 1, %"$gasrem_1404"
  br i1 %"$gascmp_1405", label %"$out_of_gas_1406", label %"$have_gas_1407"

"$out_of_gas_1406":                               ; preds = %"$have_gas_1398"
  call void @_out_of_gas()
  br label %"$have_gas_1407"

"$have_gas_1407":                                 ; preds = %"$out_of_gas_1406", %"$have_gas_1398"
  %"$consume_1408" = sub i64 %"$gasrem_1404", 1
  store i64 %"$consume_1408", i64* @_gasrem, align 8
  %n4 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %n4, metadata !216, metadata !DIExpression()), !dbg !217
  %"$uint4_1409" = load %Uint32, %Uint32* %uint4, align 4
  %"$valueof_1410" = extractvalue %Uint32 %"$uint4_1409", 0
  %"$valueof_1411" = zext i32 %"$valueof_1410" to i64
  %"$gasrem_1412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1413" = icmp ugt i64 %"$valueof_1411", %"$gasrem_1412"
  br i1 %"$gascmp_1413", label %"$out_of_gas_1414", label %"$have_gas_1415"

"$out_of_gas_1414":                               ; preds = %"$have_gas_1407"
  call void @_out_of_gas()
  br label %"$have_gas_1415"

"$have_gas_1415":                                 ; preds = %"$out_of_gas_1414", %"$have_gas_1407"
  %"$consume_1416" = sub i64 %"$gasrem_1412", %"$valueof_1411"
  store i64 %"$consume_1416", i64* @_gasrem, align 8
  %"$execptr_load_1417" = load i8*, i8** @_execptr, align 8
  %"$uint4_1418" = load %Uint32, %Uint32* %uint4, align 4
  %"$to_nat_call_1419" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1417", %Uint32 %"$uint4_1418"), !dbg !218
  store %TName_Nat* %"$to_nat_call_1419", %TName_Nat** %n4, align 8, !dbg !218
  %"$gasrem_1421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1422" = icmp ugt i64 1, %"$gasrem_1421"
  br i1 %"$gascmp_1422", label %"$out_of_gas_1423", label %"$have_gas_1424"

"$out_of_gas_1423":                               ; preds = %"$have_gas_1415"
  call void @_out_of_gas()
  br label %"$have_gas_1424"

"$have_gas_1424":                                 ; preds = %"$out_of_gas_1423", %"$have_gas_1415"
  %"$consume_1425" = sub i64 %"$gasrem_1421", 1
  store i64 %"$consume_1425", i64* @_gasrem, align 8
  %ack00 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack00, metadata !219, metadata !DIExpression()), !dbg !220
  %"$gasrem_1426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1427" = icmp ugt i64 1, %"$gasrem_1426"
  br i1 %"$gascmp_1427", label %"$out_of_gas_1428", label %"$have_gas_1429"

"$out_of_gas_1428":                               ; preds = %"$have_gas_1424"
  call void @_out_of_gas()
  br label %"$have_gas_1429"

"$have_gas_1429":                                 ; preds = %"$out_of_gas_1428", %"$have_gas_1424"
  %"$consume_1430" = sub i64 %"$gasrem_1426", 1
  store i64 %"$consume_1430", i64* @_gasrem, align 8
  %"$ackermann_47" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1431" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1432" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1431", 0
  %"$ackermann_envptr_1433" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1431", 1
  %"$n0_1434" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1435" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1432"(i8* %"$ackermann_envptr_1433", %TName_Nat* %"$n0_1434"), !dbg !221
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1435", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_47", align 8, !dbg !221
  %"$ackermann_48" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_48", metadata !222, metadata !DIExpression()), !dbg !221
  %"$$ackermann_47_1436" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_47", align 8
  %"$$ackermann_47_fptr_1437" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_47_1436", 0
  %"$$ackermann_47_envptr_1438" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_47_1436", 1
  %"$n0_1439" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_47_call_1440" = call %TName_Nat* %"$$ackermann_47_fptr_1437"(i8* %"$$ackermann_47_envptr_1438", %TName_Nat* %"$n0_1439"), !dbg !221
  store %TName_Nat* %"$$ackermann_47_call_1440", %TName_Nat** %"$ackermann_48", align 8, !dbg !221
  %"$$ackermann_48_1441" = load %TName_Nat*, %TName_Nat** %"$ackermann_48", align 8
  store %TName_Nat* %"$$ackermann_48_1441", %TName_Nat** %ack00, align 8, !dbg !221
  %"$gasrem_1442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1443" = icmp ugt i64 1, %"$gasrem_1442"
  br i1 %"$gascmp_1443", label %"$out_of_gas_1444", label %"$have_gas_1445"

"$out_of_gas_1444":                               ; preds = %"$have_gas_1429"
  call void @_out_of_gas()
  br label %"$have_gas_1445"

"$have_gas_1445":                                 ; preds = %"$out_of_gas_1444", %"$have_gas_1429"
  %"$consume_1446" = sub i64 %"$gasrem_1442", 1
  store i64 %"$consume_1446", i64* @_gasrem, align 8
  %ack01 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack01, metadata !223, metadata !DIExpression()), !dbg !224
  %"$gasrem_1447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1448" = icmp ugt i64 1, %"$gasrem_1447"
  br i1 %"$gascmp_1448", label %"$out_of_gas_1449", label %"$have_gas_1450"

"$out_of_gas_1449":                               ; preds = %"$have_gas_1445"
  call void @_out_of_gas()
  br label %"$have_gas_1450"

"$have_gas_1450":                                 ; preds = %"$out_of_gas_1449", %"$have_gas_1445"
  %"$consume_1451" = sub i64 %"$gasrem_1447", 1
  store i64 %"$consume_1451", i64* @_gasrem, align 8
  %"$ackermann_49" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1452" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1453" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1452", 0
  %"$ackermann_envptr_1454" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1452", 1
  %"$n0_1455" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1456" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1453"(i8* %"$ackermann_envptr_1454", %TName_Nat* %"$n0_1455"), !dbg !225
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1456", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_49", align 8, !dbg !225
  %"$ackermann_50" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_50", metadata !226, metadata !DIExpression()), !dbg !225
  %"$$ackermann_49_1457" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_49", align 8
  %"$$ackermann_49_fptr_1458" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_49_1457", 0
  %"$$ackermann_49_envptr_1459" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_49_1457", 1
  %"$n1_1460" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_49_call_1461" = call %TName_Nat* %"$$ackermann_49_fptr_1458"(i8* %"$$ackermann_49_envptr_1459", %TName_Nat* %"$n1_1460"), !dbg !225
  store %TName_Nat* %"$$ackermann_49_call_1461", %TName_Nat** %"$ackermann_50", align 8, !dbg !225
  %"$$ackermann_50_1462" = load %TName_Nat*, %TName_Nat** %"$ackermann_50", align 8
  store %TName_Nat* %"$$ackermann_50_1462", %TName_Nat** %ack01, align 8, !dbg !225
  %"$gasrem_1463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1464" = icmp ugt i64 1, %"$gasrem_1463"
  br i1 %"$gascmp_1464", label %"$out_of_gas_1465", label %"$have_gas_1466"

"$out_of_gas_1465":                               ; preds = %"$have_gas_1450"
  call void @_out_of_gas()
  br label %"$have_gas_1466"

"$have_gas_1466":                                 ; preds = %"$out_of_gas_1465", %"$have_gas_1450"
  %"$consume_1467" = sub i64 %"$gasrem_1463", 1
  store i64 %"$consume_1467", i64* @_gasrem, align 8
  %ack02 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack02, metadata !227, metadata !DIExpression()), !dbg !228
  %"$gasrem_1468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1469" = icmp ugt i64 1, %"$gasrem_1468"
  br i1 %"$gascmp_1469", label %"$out_of_gas_1470", label %"$have_gas_1471"

"$out_of_gas_1470":                               ; preds = %"$have_gas_1466"
  call void @_out_of_gas()
  br label %"$have_gas_1471"

"$have_gas_1471":                                 ; preds = %"$out_of_gas_1470", %"$have_gas_1466"
  %"$consume_1472" = sub i64 %"$gasrem_1468", 1
  store i64 %"$consume_1472", i64* @_gasrem, align 8
  %"$ackermann_51" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1473" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1474" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1473", 0
  %"$ackermann_envptr_1475" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1473", 1
  %"$n0_1476" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1477" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1474"(i8* %"$ackermann_envptr_1475", %TName_Nat* %"$n0_1476"), !dbg !229
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1477", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_51", align 8, !dbg !229
  %"$ackermann_52" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_52", metadata !230, metadata !DIExpression()), !dbg !229
  %"$$ackermann_51_1478" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_51", align 8
  %"$$ackermann_51_fptr_1479" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_51_1478", 0
  %"$$ackermann_51_envptr_1480" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_51_1478", 1
  %"$n2_1481" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_51_call_1482" = call %TName_Nat* %"$$ackermann_51_fptr_1479"(i8* %"$$ackermann_51_envptr_1480", %TName_Nat* %"$n2_1481"), !dbg !229
  store %TName_Nat* %"$$ackermann_51_call_1482", %TName_Nat** %"$ackermann_52", align 8, !dbg !229
  %"$$ackermann_52_1483" = load %TName_Nat*, %TName_Nat** %"$ackermann_52", align 8
  store %TName_Nat* %"$$ackermann_52_1483", %TName_Nat** %ack02, align 8, !dbg !229
  %"$gasrem_1484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1485" = icmp ugt i64 1, %"$gasrem_1484"
  br i1 %"$gascmp_1485", label %"$out_of_gas_1486", label %"$have_gas_1487"

"$out_of_gas_1486":                               ; preds = %"$have_gas_1471"
  call void @_out_of_gas()
  br label %"$have_gas_1487"

"$have_gas_1487":                                 ; preds = %"$out_of_gas_1486", %"$have_gas_1471"
  %"$consume_1488" = sub i64 %"$gasrem_1484", 1
  store i64 %"$consume_1488", i64* @_gasrem, align 8
  %ack03 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack03, metadata !231, metadata !DIExpression()), !dbg !232
  %"$gasrem_1489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1490" = icmp ugt i64 1, %"$gasrem_1489"
  br i1 %"$gascmp_1490", label %"$out_of_gas_1491", label %"$have_gas_1492"

"$out_of_gas_1491":                               ; preds = %"$have_gas_1487"
  call void @_out_of_gas()
  br label %"$have_gas_1492"

"$have_gas_1492":                                 ; preds = %"$out_of_gas_1491", %"$have_gas_1487"
  %"$consume_1493" = sub i64 %"$gasrem_1489", 1
  store i64 %"$consume_1493", i64* @_gasrem, align 8
  %"$ackermann_53" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1494" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1495" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1494", 0
  %"$ackermann_envptr_1496" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1494", 1
  %"$n0_1497" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1498" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1495"(i8* %"$ackermann_envptr_1496", %TName_Nat* %"$n0_1497"), !dbg !233
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1498", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_53", align 8, !dbg !233
  %"$ackermann_54" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_54", metadata !234, metadata !DIExpression()), !dbg !233
  %"$$ackermann_53_1499" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_53", align 8
  %"$$ackermann_53_fptr_1500" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_53_1499", 0
  %"$$ackermann_53_envptr_1501" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_53_1499", 1
  %"$n3_1502" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_53_call_1503" = call %TName_Nat* %"$$ackermann_53_fptr_1500"(i8* %"$$ackermann_53_envptr_1501", %TName_Nat* %"$n3_1502"), !dbg !233
  store %TName_Nat* %"$$ackermann_53_call_1503", %TName_Nat** %"$ackermann_54", align 8, !dbg !233
  %"$$ackermann_54_1504" = load %TName_Nat*, %TName_Nat** %"$ackermann_54", align 8
  store %TName_Nat* %"$$ackermann_54_1504", %TName_Nat** %ack03, align 8, !dbg !233
  %"$gasrem_1505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1506" = icmp ugt i64 1, %"$gasrem_1505"
  br i1 %"$gascmp_1506", label %"$out_of_gas_1507", label %"$have_gas_1508"

"$out_of_gas_1507":                               ; preds = %"$have_gas_1492"
  call void @_out_of_gas()
  br label %"$have_gas_1508"

"$have_gas_1508":                                 ; preds = %"$out_of_gas_1507", %"$have_gas_1492"
  %"$consume_1509" = sub i64 %"$gasrem_1505", 1
  store i64 %"$consume_1509", i64* @_gasrem, align 8
  %ack04 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack04, metadata !235, metadata !DIExpression()), !dbg !236
  %"$gasrem_1510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1511" = icmp ugt i64 1, %"$gasrem_1510"
  br i1 %"$gascmp_1511", label %"$out_of_gas_1512", label %"$have_gas_1513"

"$out_of_gas_1512":                               ; preds = %"$have_gas_1508"
  call void @_out_of_gas()
  br label %"$have_gas_1513"

"$have_gas_1513":                                 ; preds = %"$out_of_gas_1512", %"$have_gas_1508"
  %"$consume_1514" = sub i64 %"$gasrem_1510", 1
  store i64 %"$consume_1514", i64* @_gasrem, align 8
  %"$ackermann_55" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1515" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1516" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1515", 0
  %"$ackermann_envptr_1517" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1515", 1
  %"$n0_1518" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1519" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1516"(i8* %"$ackermann_envptr_1517", %TName_Nat* %"$n0_1518"), !dbg !237
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1519", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_55", align 8, !dbg !237
  %"$ackermann_56" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_56", metadata !238, metadata !DIExpression()), !dbg !237
  %"$$ackermann_55_1520" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_55", align 8
  %"$$ackermann_55_fptr_1521" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_55_1520", 0
  %"$$ackermann_55_envptr_1522" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_55_1520", 1
  %"$n4_1523" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_55_call_1524" = call %TName_Nat* %"$$ackermann_55_fptr_1521"(i8* %"$$ackermann_55_envptr_1522", %TName_Nat* %"$n4_1523"), !dbg !237
  store %TName_Nat* %"$$ackermann_55_call_1524", %TName_Nat** %"$ackermann_56", align 8, !dbg !237
  %"$$ackermann_56_1525" = load %TName_Nat*, %TName_Nat** %"$ackermann_56", align 8
  store %TName_Nat* %"$$ackermann_56_1525", %TName_Nat** %ack04, align 8, !dbg !237
  %"$gasrem_1526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1527" = icmp ugt i64 1, %"$gasrem_1526"
  br i1 %"$gascmp_1527", label %"$out_of_gas_1528", label %"$have_gas_1529"

"$out_of_gas_1528":                               ; preds = %"$have_gas_1513"
  call void @_out_of_gas()
  br label %"$have_gas_1529"

"$have_gas_1529":                                 ; preds = %"$out_of_gas_1528", %"$have_gas_1513"
  %"$consume_1530" = sub i64 %"$gasrem_1526", 1
  store i64 %"$consume_1530", i64* @_gasrem, align 8
  %ack10 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack10, metadata !239, metadata !DIExpression()), !dbg !240
  %"$gasrem_1531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1532" = icmp ugt i64 1, %"$gasrem_1531"
  br i1 %"$gascmp_1532", label %"$out_of_gas_1533", label %"$have_gas_1534"

"$out_of_gas_1533":                               ; preds = %"$have_gas_1529"
  call void @_out_of_gas()
  br label %"$have_gas_1534"

"$have_gas_1534":                                 ; preds = %"$out_of_gas_1533", %"$have_gas_1529"
  %"$consume_1535" = sub i64 %"$gasrem_1531", 1
  store i64 %"$consume_1535", i64* @_gasrem, align 8
  %"$ackermann_57" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1536" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1537" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1536", 0
  %"$ackermann_envptr_1538" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1536", 1
  %"$n1_1539" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1540" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1537"(i8* %"$ackermann_envptr_1538", %TName_Nat* %"$n1_1539"), !dbg !241
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1540", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_57", align 8, !dbg !241
  %"$ackermann_58" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_58", metadata !242, metadata !DIExpression()), !dbg !241
  %"$$ackermann_57_1541" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_57", align 8
  %"$$ackermann_57_fptr_1542" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_57_1541", 0
  %"$$ackermann_57_envptr_1543" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_57_1541", 1
  %"$n0_1544" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_57_call_1545" = call %TName_Nat* %"$$ackermann_57_fptr_1542"(i8* %"$$ackermann_57_envptr_1543", %TName_Nat* %"$n0_1544"), !dbg !241
  store %TName_Nat* %"$$ackermann_57_call_1545", %TName_Nat** %"$ackermann_58", align 8, !dbg !241
  %"$$ackermann_58_1546" = load %TName_Nat*, %TName_Nat** %"$ackermann_58", align 8
  store %TName_Nat* %"$$ackermann_58_1546", %TName_Nat** %ack10, align 8, !dbg !241
  %"$gasrem_1547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1548" = icmp ugt i64 1, %"$gasrem_1547"
  br i1 %"$gascmp_1548", label %"$out_of_gas_1549", label %"$have_gas_1550"

"$out_of_gas_1549":                               ; preds = %"$have_gas_1534"
  call void @_out_of_gas()
  br label %"$have_gas_1550"

"$have_gas_1550":                                 ; preds = %"$out_of_gas_1549", %"$have_gas_1534"
  %"$consume_1551" = sub i64 %"$gasrem_1547", 1
  store i64 %"$consume_1551", i64* @_gasrem, align 8
  %ack11 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack11, metadata !243, metadata !DIExpression()), !dbg !244
  %"$gasrem_1552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1553" = icmp ugt i64 1, %"$gasrem_1552"
  br i1 %"$gascmp_1553", label %"$out_of_gas_1554", label %"$have_gas_1555"

"$out_of_gas_1554":                               ; preds = %"$have_gas_1550"
  call void @_out_of_gas()
  br label %"$have_gas_1555"

"$have_gas_1555":                                 ; preds = %"$out_of_gas_1554", %"$have_gas_1550"
  %"$consume_1556" = sub i64 %"$gasrem_1552", 1
  store i64 %"$consume_1556", i64* @_gasrem, align 8
  %"$ackermann_59" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1557" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1558" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1557", 0
  %"$ackermann_envptr_1559" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1557", 1
  %"$n1_1560" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1561" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1558"(i8* %"$ackermann_envptr_1559", %TName_Nat* %"$n1_1560"), !dbg !245
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1561", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_59", align 8, !dbg !245
  %"$ackermann_60" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_60", metadata !246, metadata !DIExpression()), !dbg !245
  %"$$ackermann_59_1562" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_59", align 8
  %"$$ackermann_59_fptr_1563" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_59_1562", 0
  %"$$ackermann_59_envptr_1564" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_59_1562", 1
  %"$n1_1565" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_59_call_1566" = call %TName_Nat* %"$$ackermann_59_fptr_1563"(i8* %"$$ackermann_59_envptr_1564", %TName_Nat* %"$n1_1565"), !dbg !245
  store %TName_Nat* %"$$ackermann_59_call_1566", %TName_Nat** %"$ackermann_60", align 8, !dbg !245
  %"$$ackermann_60_1567" = load %TName_Nat*, %TName_Nat** %"$ackermann_60", align 8
  store %TName_Nat* %"$$ackermann_60_1567", %TName_Nat** %ack11, align 8, !dbg !245
  %"$gasrem_1568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1569" = icmp ugt i64 1, %"$gasrem_1568"
  br i1 %"$gascmp_1569", label %"$out_of_gas_1570", label %"$have_gas_1571"

"$out_of_gas_1570":                               ; preds = %"$have_gas_1555"
  call void @_out_of_gas()
  br label %"$have_gas_1571"

"$have_gas_1571":                                 ; preds = %"$out_of_gas_1570", %"$have_gas_1555"
  %"$consume_1572" = sub i64 %"$gasrem_1568", 1
  store i64 %"$consume_1572", i64* @_gasrem, align 8
  %ack12 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack12, metadata !247, metadata !DIExpression()), !dbg !248
  %"$gasrem_1573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1574" = icmp ugt i64 1, %"$gasrem_1573"
  br i1 %"$gascmp_1574", label %"$out_of_gas_1575", label %"$have_gas_1576"

"$out_of_gas_1575":                               ; preds = %"$have_gas_1571"
  call void @_out_of_gas()
  br label %"$have_gas_1576"

"$have_gas_1576":                                 ; preds = %"$out_of_gas_1575", %"$have_gas_1571"
  %"$consume_1577" = sub i64 %"$gasrem_1573", 1
  store i64 %"$consume_1577", i64* @_gasrem, align 8
  %"$ackermann_61" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1578" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1579" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1578", 0
  %"$ackermann_envptr_1580" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1578", 1
  %"$n1_1581" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1582" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1579"(i8* %"$ackermann_envptr_1580", %TName_Nat* %"$n1_1581"), !dbg !249
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1582", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_61", align 8, !dbg !249
  %"$ackermann_62" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_62", metadata !250, metadata !DIExpression()), !dbg !249
  %"$$ackermann_61_1583" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_61", align 8
  %"$$ackermann_61_fptr_1584" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_61_1583", 0
  %"$$ackermann_61_envptr_1585" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_61_1583", 1
  %"$n2_1586" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_61_call_1587" = call %TName_Nat* %"$$ackermann_61_fptr_1584"(i8* %"$$ackermann_61_envptr_1585", %TName_Nat* %"$n2_1586"), !dbg !249
  store %TName_Nat* %"$$ackermann_61_call_1587", %TName_Nat** %"$ackermann_62", align 8, !dbg !249
  %"$$ackermann_62_1588" = load %TName_Nat*, %TName_Nat** %"$ackermann_62", align 8
  store %TName_Nat* %"$$ackermann_62_1588", %TName_Nat** %ack12, align 8, !dbg !249
  %"$gasrem_1589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1590" = icmp ugt i64 1, %"$gasrem_1589"
  br i1 %"$gascmp_1590", label %"$out_of_gas_1591", label %"$have_gas_1592"

"$out_of_gas_1591":                               ; preds = %"$have_gas_1576"
  call void @_out_of_gas()
  br label %"$have_gas_1592"

"$have_gas_1592":                                 ; preds = %"$out_of_gas_1591", %"$have_gas_1576"
  %"$consume_1593" = sub i64 %"$gasrem_1589", 1
  store i64 %"$consume_1593", i64* @_gasrem, align 8
  %ack13 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack13, metadata !251, metadata !DIExpression()), !dbg !252
  %"$gasrem_1594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1595" = icmp ugt i64 1, %"$gasrem_1594"
  br i1 %"$gascmp_1595", label %"$out_of_gas_1596", label %"$have_gas_1597"

"$out_of_gas_1596":                               ; preds = %"$have_gas_1592"
  call void @_out_of_gas()
  br label %"$have_gas_1597"

"$have_gas_1597":                                 ; preds = %"$out_of_gas_1596", %"$have_gas_1592"
  %"$consume_1598" = sub i64 %"$gasrem_1594", 1
  store i64 %"$consume_1598", i64* @_gasrem, align 8
  %"$ackermann_63" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1599" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1600" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1599", 0
  %"$ackermann_envptr_1601" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1599", 1
  %"$n1_1602" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1603" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1600"(i8* %"$ackermann_envptr_1601", %TName_Nat* %"$n1_1602"), !dbg !253
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1603", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_63", align 8, !dbg !253
  %"$ackermann_64" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_64", metadata !254, metadata !DIExpression()), !dbg !253
  %"$$ackermann_63_1604" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_63", align 8
  %"$$ackermann_63_fptr_1605" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_63_1604", 0
  %"$$ackermann_63_envptr_1606" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_63_1604", 1
  %"$n3_1607" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_63_call_1608" = call %TName_Nat* %"$$ackermann_63_fptr_1605"(i8* %"$$ackermann_63_envptr_1606", %TName_Nat* %"$n3_1607"), !dbg !253
  store %TName_Nat* %"$$ackermann_63_call_1608", %TName_Nat** %"$ackermann_64", align 8, !dbg !253
  %"$$ackermann_64_1609" = load %TName_Nat*, %TName_Nat** %"$ackermann_64", align 8
  store %TName_Nat* %"$$ackermann_64_1609", %TName_Nat** %ack13, align 8, !dbg !253
  %"$gasrem_1610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1611" = icmp ugt i64 1, %"$gasrem_1610"
  br i1 %"$gascmp_1611", label %"$out_of_gas_1612", label %"$have_gas_1613"

"$out_of_gas_1612":                               ; preds = %"$have_gas_1597"
  call void @_out_of_gas()
  br label %"$have_gas_1613"

"$have_gas_1613":                                 ; preds = %"$out_of_gas_1612", %"$have_gas_1597"
  %"$consume_1614" = sub i64 %"$gasrem_1610", 1
  store i64 %"$consume_1614", i64* @_gasrem, align 8
  %ack14 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack14, metadata !255, metadata !DIExpression()), !dbg !256
  %"$gasrem_1615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1616" = icmp ugt i64 1, %"$gasrem_1615"
  br i1 %"$gascmp_1616", label %"$out_of_gas_1617", label %"$have_gas_1618"

"$out_of_gas_1617":                               ; preds = %"$have_gas_1613"
  call void @_out_of_gas()
  br label %"$have_gas_1618"

"$have_gas_1618":                                 ; preds = %"$out_of_gas_1617", %"$have_gas_1613"
  %"$consume_1619" = sub i64 %"$gasrem_1615", 1
  store i64 %"$consume_1619", i64* @_gasrem, align 8
  %"$ackermann_65" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1620" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1621" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1620", 0
  %"$ackermann_envptr_1622" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1620", 1
  %"$n1_1623" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1624" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1621"(i8* %"$ackermann_envptr_1622", %TName_Nat* %"$n1_1623"), !dbg !257
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1624", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_65", align 8, !dbg !257
  %"$ackermann_66" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_66", metadata !258, metadata !DIExpression()), !dbg !257
  %"$$ackermann_65_1625" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_65", align 8
  %"$$ackermann_65_fptr_1626" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_65_1625", 0
  %"$$ackermann_65_envptr_1627" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_65_1625", 1
  %"$n4_1628" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_65_call_1629" = call %TName_Nat* %"$$ackermann_65_fptr_1626"(i8* %"$$ackermann_65_envptr_1627", %TName_Nat* %"$n4_1628"), !dbg !257
  store %TName_Nat* %"$$ackermann_65_call_1629", %TName_Nat** %"$ackermann_66", align 8, !dbg !257
  %"$$ackermann_66_1630" = load %TName_Nat*, %TName_Nat** %"$ackermann_66", align 8
  store %TName_Nat* %"$$ackermann_66_1630", %TName_Nat** %ack14, align 8, !dbg !257
  %"$gasrem_1631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1632" = icmp ugt i64 1, %"$gasrem_1631"
  br i1 %"$gascmp_1632", label %"$out_of_gas_1633", label %"$have_gas_1634"

"$out_of_gas_1633":                               ; preds = %"$have_gas_1618"
  call void @_out_of_gas()
  br label %"$have_gas_1634"

"$have_gas_1634":                                 ; preds = %"$out_of_gas_1633", %"$have_gas_1618"
  %"$consume_1635" = sub i64 %"$gasrem_1631", 1
  store i64 %"$consume_1635", i64* @_gasrem, align 8
  %ack20 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack20, metadata !259, metadata !DIExpression()), !dbg !260
  %"$gasrem_1636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1637" = icmp ugt i64 1, %"$gasrem_1636"
  br i1 %"$gascmp_1637", label %"$out_of_gas_1638", label %"$have_gas_1639"

"$out_of_gas_1638":                               ; preds = %"$have_gas_1634"
  call void @_out_of_gas()
  br label %"$have_gas_1639"

"$have_gas_1639":                                 ; preds = %"$out_of_gas_1638", %"$have_gas_1634"
  %"$consume_1640" = sub i64 %"$gasrem_1636", 1
  store i64 %"$consume_1640", i64* @_gasrem, align 8
  %"$ackermann_67" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1641" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1642" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1641", 0
  %"$ackermann_envptr_1643" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1641", 1
  %"$n2_1644" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1645" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1642"(i8* %"$ackermann_envptr_1643", %TName_Nat* %"$n2_1644"), !dbg !261
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1645", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_67", align 8, !dbg !261
  %"$ackermann_68" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_68", metadata !262, metadata !DIExpression()), !dbg !261
  %"$$ackermann_67_1646" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_67", align 8
  %"$$ackermann_67_fptr_1647" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_67_1646", 0
  %"$$ackermann_67_envptr_1648" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_67_1646", 1
  %"$n0_1649" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_67_call_1650" = call %TName_Nat* %"$$ackermann_67_fptr_1647"(i8* %"$$ackermann_67_envptr_1648", %TName_Nat* %"$n0_1649"), !dbg !261
  store %TName_Nat* %"$$ackermann_67_call_1650", %TName_Nat** %"$ackermann_68", align 8, !dbg !261
  %"$$ackermann_68_1651" = load %TName_Nat*, %TName_Nat** %"$ackermann_68", align 8
  store %TName_Nat* %"$$ackermann_68_1651", %TName_Nat** %ack20, align 8, !dbg !261
  %"$gasrem_1652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1653" = icmp ugt i64 1, %"$gasrem_1652"
  br i1 %"$gascmp_1653", label %"$out_of_gas_1654", label %"$have_gas_1655"

"$out_of_gas_1654":                               ; preds = %"$have_gas_1639"
  call void @_out_of_gas()
  br label %"$have_gas_1655"

"$have_gas_1655":                                 ; preds = %"$out_of_gas_1654", %"$have_gas_1639"
  %"$consume_1656" = sub i64 %"$gasrem_1652", 1
  store i64 %"$consume_1656", i64* @_gasrem, align 8
  %ack21 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack21, metadata !263, metadata !DIExpression()), !dbg !264
  %"$gasrem_1657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1658" = icmp ugt i64 1, %"$gasrem_1657"
  br i1 %"$gascmp_1658", label %"$out_of_gas_1659", label %"$have_gas_1660"

"$out_of_gas_1659":                               ; preds = %"$have_gas_1655"
  call void @_out_of_gas()
  br label %"$have_gas_1660"

"$have_gas_1660":                                 ; preds = %"$out_of_gas_1659", %"$have_gas_1655"
  %"$consume_1661" = sub i64 %"$gasrem_1657", 1
  store i64 %"$consume_1661", i64* @_gasrem, align 8
  %"$ackermann_69" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1662" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1663" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1662", 0
  %"$ackermann_envptr_1664" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1662", 1
  %"$n2_1665" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1666" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1663"(i8* %"$ackermann_envptr_1664", %TName_Nat* %"$n2_1665"), !dbg !265
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1666", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_69", align 8, !dbg !265
  %"$ackermann_70" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_70", metadata !266, metadata !DIExpression()), !dbg !265
  %"$$ackermann_69_1667" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_69", align 8
  %"$$ackermann_69_fptr_1668" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_69_1667", 0
  %"$$ackermann_69_envptr_1669" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_69_1667", 1
  %"$n1_1670" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_69_call_1671" = call %TName_Nat* %"$$ackermann_69_fptr_1668"(i8* %"$$ackermann_69_envptr_1669", %TName_Nat* %"$n1_1670"), !dbg !265
  store %TName_Nat* %"$$ackermann_69_call_1671", %TName_Nat** %"$ackermann_70", align 8, !dbg !265
  %"$$ackermann_70_1672" = load %TName_Nat*, %TName_Nat** %"$ackermann_70", align 8
  store %TName_Nat* %"$$ackermann_70_1672", %TName_Nat** %ack21, align 8, !dbg !265
  %"$gasrem_1673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1674" = icmp ugt i64 1, %"$gasrem_1673"
  br i1 %"$gascmp_1674", label %"$out_of_gas_1675", label %"$have_gas_1676"

"$out_of_gas_1675":                               ; preds = %"$have_gas_1660"
  call void @_out_of_gas()
  br label %"$have_gas_1676"

"$have_gas_1676":                                 ; preds = %"$out_of_gas_1675", %"$have_gas_1660"
  %"$consume_1677" = sub i64 %"$gasrem_1673", 1
  store i64 %"$consume_1677", i64* @_gasrem, align 8
  %ack22 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack22, metadata !267, metadata !DIExpression()), !dbg !268
  %"$gasrem_1678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1679" = icmp ugt i64 1, %"$gasrem_1678"
  br i1 %"$gascmp_1679", label %"$out_of_gas_1680", label %"$have_gas_1681"

"$out_of_gas_1680":                               ; preds = %"$have_gas_1676"
  call void @_out_of_gas()
  br label %"$have_gas_1681"

"$have_gas_1681":                                 ; preds = %"$out_of_gas_1680", %"$have_gas_1676"
  %"$consume_1682" = sub i64 %"$gasrem_1678", 1
  store i64 %"$consume_1682", i64* @_gasrem, align 8
  %"$ackermann_71" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1683" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1684" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1683", 0
  %"$ackermann_envptr_1685" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1683", 1
  %"$n2_1686" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1687" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1684"(i8* %"$ackermann_envptr_1685", %TName_Nat* %"$n2_1686"), !dbg !269
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1687", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_71", align 8, !dbg !269
  %"$ackermann_72" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_72", metadata !270, metadata !DIExpression()), !dbg !269
  %"$$ackermann_71_1688" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_71", align 8
  %"$$ackermann_71_fptr_1689" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_71_1688", 0
  %"$$ackermann_71_envptr_1690" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_71_1688", 1
  %"$n2_1691" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_71_call_1692" = call %TName_Nat* %"$$ackermann_71_fptr_1689"(i8* %"$$ackermann_71_envptr_1690", %TName_Nat* %"$n2_1691"), !dbg !269
  store %TName_Nat* %"$$ackermann_71_call_1692", %TName_Nat** %"$ackermann_72", align 8, !dbg !269
  %"$$ackermann_72_1693" = load %TName_Nat*, %TName_Nat** %"$ackermann_72", align 8
  store %TName_Nat* %"$$ackermann_72_1693", %TName_Nat** %ack22, align 8, !dbg !269
  %"$gasrem_1694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1695" = icmp ugt i64 1, %"$gasrem_1694"
  br i1 %"$gascmp_1695", label %"$out_of_gas_1696", label %"$have_gas_1697"

"$out_of_gas_1696":                               ; preds = %"$have_gas_1681"
  call void @_out_of_gas()
  br label %"$have_gas_1697"

"$have_gas_1697":                                 ; preds = %"$out_of_gas_1696", %"$have_gas_1681"
  %"$consume_1698" = sub i64 %"$gasrem_1694", 1
  store i64 %"$consume_1698", i64* @_gasrem, align 8
  %ack23 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack23, metadata !271, metadata !DIExpression()), !dbg !272
  %"$gasrem_1699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1700" = icmp ugt i64 1, %"$gasrem_1699"
  br i1 %"$gascmp_1700", label %"$out_of_gas_1701", label %"$have_gas_1702"

"$out_of_gas_1701":                               ; preds = %"$have_gas_1697"
  call void @_out_of_gas()
  br label %"$have_gas_1702"

"$have_gas_1702":                                 ; preds = %"$out_of_gas_1701", %"$have_gas_1697"
  %"$consume_1703" = sub i64 %"$gasrem_1699", 1
  store i64 %"$consume_1703", i64* @_gasrem, align 8
  %"$ackermann_73" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1704" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1705" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1704", 0
  %"$ackermann_envptr_1706" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1704", 1
  %"$n2_1707" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1708" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1705"(i8* %"$ackermann_envptr_1706", %TName_Nat* %"$n2_1707"), !dbg !273
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1708", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_73", align 8, !dbg !273
  %"$ackermann_74" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_74", metadata !274, metadata !DIExpression()), !dbg !273
  %"$$ackermann_73_1709" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_73", align 8
  %"$$ackermann_73_fptr_1710" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_73_1709", 0
  %"$$ackermann_73_envptr_1711" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_73_1709", 1
  %"$n3_1712" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_73_call_1713" = call %TName_Nat* %"$$ackermann_73_fptr_1710"(i8* %"$$ackermann_73_envptr_1711", %TName_Nat* %"$n3_1712"), !dbg !273
  store %TName_Nat* %"$$ackermann_73_call_1713", %TName_Nat** %"$ackermann_74", align 8, !dbg !273
  %"$$ackermann_74_1714" = load %TName_Nat*, %TName_Nat** %"$ackermann_74", align 8
  store %TName_Nat* %"$$ackermann_74_1714", %TName_Nat** %ack23, align 8, !dbg !273
  %"$gasrem_1715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1716" = icmp ugt i64 1, %"$gasrem_1715"
  br i1 %"$gascmp_1716", label %"$out_of_gas_1717", label %"$have_gas_1718"

"$out_of_gas_1717":                               ; preds = %"$have_gas_1702"
  call void @_out_of_gas()
  br label %"$have_gas_1718"

"$have_gas_1718":                                 ; preds = %"$out_of_gas_1717", %"$have_gas_1702"
  %"$consume_1719" = sub i64 %"$gasrem_1715", 1
  store i64 %"$consume_1719", i64* @_gasrem, align 8
  %ack24 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack24, metadata !275, metadata !DIExpression()), !dbg !276
  %"$gasrem_1720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1721" = icmp ugt i64 1, %"$gasrem_1720"
  br i1 %"$gascmp_1721", label %"$out_of_gas_1722", label %"$have_gas_1723"

"$out_of_gas_1722":                               ; preds = %"$have_gas_1718"
  call void @_out_of_gas()
  br label %"$have_gas_1723"

"$have_gas_1723":                                 ; preds = %"$out_of_gas_1722", %"$have_gas_1718"
  %"$consume_1724" = sub i64 %"$gasrem_1720", 1
  store i64 %"$consume_1724", i64* @_gasrem, align 8
  %"$ackermann_75" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1725" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1726" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1725", 0
  %"$ackermann_envptr_1727" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1725", 1
  %"$n2_1728" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1729" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1726"(i8* %"$ackermann_envptr_1727", %TName_Nat* %"$n2_1728"), !dbg !277
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1729", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_75", align 8, !dbg !277
  %"$ackermann_76" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_76", metadata !278, metadata !DIExpression()), !dbg !277
  %"$$ackermann_75_1730" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_75", align 8
  %"$$ackermann_75_fptr_1731" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_75_1730", 0
  %"$$ackermann_75_envptr_1732" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_75_1730", 1
  %"$n4_1733" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_75_call_1734" = call %TName_Nat* %"$$ackermann_75_fptr_1731"(i8* %"$$ackermann_75_envptr_1732", %TName_Nat* %"$n4_1733"), !dbg !277
  store %TName_Nat* %"$$ackermann_75_call_1734", %TName_Nat** %"$ackermann_76", align 8, !dbg !277
  %"$$ackermann_76_1735" = load %TName_Nat*, %TName_Nat** %"$ackermann_76", align 8
  store %TName_Nat* %"$$ackermann_76_1735", %TName_Nat** %ack24, align 8, !dbg !277
  %"$gasrem_1736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1737" = icmp ugt i64 1, %"$gasrem_1736"
  br i1 %"$gascmp_1737", label %"$out_of_gas_1738", label %"$have_gas_1739"

"$out_of_gas_1738":                               ; preds = %"$have_gas_1723"
  call void @_out_of_gas()
  br label %"$have_gas_1739"

"$have_gas_1739":                                 ; preds = %"$out_of_gas_1738", %"$have_gas_1723"
  %"$consume_1740" = sub i64 %"$gasrem_1736", 1
  store i64 %"$consume_1740", i64* @_gasrem, align 8
  %ack30 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack30, metadata !279, metadata !DIExpression()), !dbg !280
  %"$gasrem_1741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1742" = icmp ugt i64 1, %"$gasrem_1741"
  br i1 %"$gascmp_1742", label %"$out_of_gas_1743", label %"$have_gas_1744"

"$out_of_gas_1743":                               ; preds = %"$have_gas_1739"
  call void @_out_of_gas()
  br label %"$have_gas_1744"

"$have_gas_1744":                                 ; preds = %"$out_of_gas_1743", %"$have_gas_1739"
  %"$consume_1745" = sub i64 %"$gasrem_1741", 1
  store i64 %"$consume_1745", i64* @_gasrem, align 8
  %"$ackermann_77" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1746" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1747" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1746", 0
  %"$ackermann_envptr_1748" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1746", 1
  %"$n3_1749" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1750" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1747"(i8* %"$ackermann_envptr_1748", %TName_Nat* %"$n3_1749"), !dbg !281
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1750", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_77", align 8, !dbg !281
  %"$ackermann_78" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_78", metadata !282, metadata !DIExpression()), !dbg !281
  %"$$ackermann_77_1751" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_77", align 8
  %"$$ackermann_77_fptr_1752" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_77_1751", 0
  %"$$ackermann_77_envptr_1753" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_77_1751", 1
  %"$n0_1754" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_77_call_1755" = call %TName_Nat* %"$$ackermann_77_fptr_1752"(i8* %"$$ackermann_77_envptr_1753", %TName_Nat* %"$n0_1754"), !dbg !281
  store %TName_Nat* %"$$ackermann_77_call_1755", %TName_Nat** %"$ackermann_78", align 8, !dbg !281
  %"$$ackermann_78_1756" = load %TName_Nat*, %TName_Nat** %"$ackermann_78", align 8
  store %TName_Nat* %"$$ackermann_78_1756", %TName_Nat** %ack30, align 8, !dbg !281
  %"$gasrem_1757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1758" = icmp ugt i64 1, %"$gasrem_1757"
  br i1 %"$gascmp_1758", label %"$out_of_gas_1759", label %"$have_gas_1760"

"$out_of_gas_1759":                               ; preds = %"$have_gas_1744"
  call void @_out_of_gas()
  br label %"$have_gas_1760"

"$have_gas_1760":                                 ; preds = %"$out_of_gas_1759", %"$have_gas_1744"
  %"$consume_1761" = sub i64 %"$gasrem_1757", 1
  store i64 %"$consume_1761", i64* @_gasrem, align 8
  %ack31 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack31, metadata !283, metadata !DIExpression()), !dbg !284
  %"$gasrem_1762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1763" = icmp ugt i64 1, %"$gasrem_1762"
  br i1 %"$gascmp_1763", label %"$out_of_gas_1764", label %"$have_gas_1765"

"$out_of_gas_1764":                               ; preds = %"$have_gas_1760"
  call void @_out_of_gas()
  br label %"$have_gas_1765"

"$have_gas_1765":                                 ; preds = %"$out_of_gas_1764", %"$have_gas_1760"
  %"$consume_1766" = sub i64 %"$gasrem_1762", 1
  store i64 %"$consume_1766", i64* @_gasrem, align 8
  %"$ackermann_79" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1767" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1768" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1767", 0
  %"$ackermann_envptr_1769" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1767", 1
  %"$n3_1770" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1771" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1768"(i8* %"$ackermann_envptr_1769", %TName_Nat* %"$n3_1770"), !dbg !285
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1771", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_79", align 8, !dbg !285
  %"$ackermann_80" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_80", metadata !286, metadata !DIExpression()), !dbg !285
  %"$$ackermann_79_1772" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_79", align 8
  %"$$ackermann_79_fptr_1773" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_79_1772", 0
  %"$$ackermann_79_envptr_1774" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_79_1772", 1
  %"$n1_1775" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_79_call_1776" = call %TName_Nat* %"$$ackermann_79_fptr_1773"(i8* %"$$ackermann_79_envptr_1774", %TName_Nat* %"$n1_1775"), !dbg !285
  store %TName_Nat* %"$$ackermann_79_call_1776", %TName_Nat** %"$ackermann_80", align 8, !dbg !285
  %"$$ackermann_80_1777" = load %TName_Nat*, %TName_Nat** %"$ackermann_80", align 8
  store %TName_Nat* %"$$ackermann_80_1777", %TName_Nat** %ack31, align 8, !dbg !285
  %"$gasrem_1778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1779" = icmp ugt i64 1, %"$gasrem_1778"
  br i1 %"$gascmp_1779", label %"$out_of_gas_1780", label %"$have_gas_1781"

"$out_of_gas_1780":                               ; preds = %"$have_gas_1765"
  call void @_out_of_gas()
  br label %"$have_gas_1781"

"$have_gas_1781":                                 ; preds = %"$out_of_gas_1780", %"$have_gas_1765"
  %"$consume_1782" = sub i64 %"$gasrem_1778", 1
  store i64 %"$consume_1782", i64* @_gasrem, align 8
  %ack32 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack32, metadata !287, metadata !DIExpression()), !dbg !288
  %"$gasrem_1783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1784" = icmp ugt i64 1, %"$gasrem_1783"
  br i1 %"$gascmp_1784", label %"$out_of_gas_1785", label %"$have_gas_1786"

"$out_of_gas_1785":                               ; preds = %"$have_gas_1781"
  call void @_out_of_gas()
  br label %"$have_gas_1786"

"$have_gas_1786":                                 ; preds = %"$out_of_gas_1785", %"$have_gas_1781"
  %"$consume_1787" = sub i64 %"$gasrem_1783", 1
  store i64 %"$consume_1787", i64* @_gasrem, align 8
  %"$ackermann_81" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1788" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1789" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1788", 0
  %"$ackermann_envptr_1790" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1788", 1
  %"$n3_1791" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1792" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1789"(i8* %"$ackermann_envptr_1790", %TName_Nat* %"$n3_1791"), !dbg !289
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1792", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_81", align 8, !dbg !289
  %"$ackermann_82" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_82", metadata !290, metadata !DIExpression()), !dbg !289
  %"$$ackermann_81_1793" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_81", align 8
  %"$$ackermann_81_fptr_1794" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_81_1793", 0
  %"$$ackermann_81_envptr_1795" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_81_1793", 1
  %"$n2_1796" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_81_call_1797" = call %TName_Nat* %"$$ackermann_81_fptr_1794"(i8* %"$$ackermann_81_envptr_1795", %TName_Nat* %"$n2_1796"), !dbg !289
  store %TName_Nat* %"$$ackermann_81_call_1797", %TName_Nat** %"$ackermann_82", align 8, !dbg !289
  %"$$ackermann_82_1798" = load %TName_Nat*, %TName_Nat** %"$ackermann_82", align 8
  store %TName_Nat* %"$$ackermann_82_1798", %TName_Nat** %ack32, align 8, !dbg !289
  %"$gasrem_1799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1800" = icmp ugt i64 1, %"$gasrem_1799"
  br i1 %"$gascmp_1800", label %"$out_of_gas_1801", label %"$have_gas_1802"

"$out_of_gas_1801":                               ; preds = %"$have_gas_1786"
  call void @_out_of_gas()
  br label %"$have_gas_1802"

"$have_gas_1802":                                 ; preds = %"$out_of_gas_1801", %"$have_gas_1786"
  %"$consume_1803" = sub i64 %"$gasrem_1799", 1
  store i64 %"$consume_1803", i64* @_gasrem, align 8
  %ack33 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack33, metadata !291, metadata !DIExpression()), !dbg !292
  %"$gasrem_1804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1805" = icmp ugt i64 1, %"$gasrem_1804"
  br i1 %"$gascmp_1805", label %"$out_of_gas_1806", label %"$have_gas_1807"

"$out_of_gas_1806":                               ; preds = %"$have_gas_1802"
  call void @_out_of_gas()
  br label %"$have_gas_1807"

"$have_gas_1807":                                 ; preds = %"$out_of_gas_1806", %"$have_gas_1802"
  %"$consume_1808" = sub i64 %"$gasrem_1804", 1
  store i64 %"$consume_1808", i64* @_gasrem, align 8
  %"$ackermann_83" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1809" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1810" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1809", 0
  %"$ackermann_envptr_1811" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1809", 1
  %"$n3_1812" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1813" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1810"(i8* %"$ackermann_envptr_1811", %TName_Nat* %"$n3_1812"), !dbg !293
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1813", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_83", align 8, !dbg !293
  %"$ackermann_84" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_84", metadata !294, metadata !DIExpression()), !dbg !293
  %"$$ackermann_83_1814" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_83", align 8
  %"$$ackermann_83_fptr_1815" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_83_1814", 0
  %"$$ackermann_83_envptr_1816" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_83_1814", 1
  %"$n3_1817" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_83_call_1818" = call %TName_Nat* %"$$ackermann_83_fptr_1815"(i8* %"$$ackermann_83_envptr_1816", %TName_Nat* %"$n3_1817"), !dbg !293
  store %TName_Nat* %"$$ackermann_83_call_1818", %TName_Nat** %"$ackermann_84", align 8, !dbg !293
  %"$$ackermann_84_1819" = load %TName_Nat*, %TName_Nat** %"$ackermann_84", align 8
  store %TName_Nat* %"$$ackermann_84_1819", %TName_Nat** %ack33, align 8, !dbg !293
  %"$gasrem_1820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1821" = icmp ugt i64 1, %"$gasrem_1820"
  br i1 %"$gascmp_1821", label %"$out_of_gas_1822", label %"$have_gas_1823"

"$out_of_gas_1822":                               ; preds = %"$have_gas_1807"
  call void @_out_of_gas()
  br label %"$have_gas_1823"

"$have_gas_1823":                                 ; preds = %"$out_of_gas_1822", %"$have_gas_1807"
  %"$consume_1824" = sub i64 %"$gasrem_1820", 1
  store i64 %"$consume_1824", i64* @_gasrem, align 8
  %ack34 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack34, metadata !295, metadata !DIExpression()), !dbg !296
  %"$gasrem_1825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1826" = icmp ugt i64 1, %"$gasrem_1825"
  br i1 %"$gascmp_1826", label %"$out_of_gas_1827", label %"$have_gas_1828"

"$out_of_gas_1827":                               ; preds = %"$have_gas_1823"
  call void @_out_of_gas()
  br label %"$have_gas_1828"

"$have_gas_1828":                                 ; preds = %"$out_of_gas_1827", %"$have_gas_1823"
  %"$consume_1829" = sub i64 %"$gasrem_1825", 1
  store i64 %"$consume_1829", i64* @_gasrem, align 8
  %"$ackermann_85" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1830" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1831" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1830", 0
  %"$ackermann_envptr_1832" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1830", 1
  %"$n3_1833" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1834" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1831"(i8* %"$ackermann_envptr_1832", %TName_Nat* %"$n3_1833"), !dbg !297
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1834", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_85", align 8, !dbg !297
  %"$ackermann_86" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_86", metadata !298, metadata !DIExpression()), !dbg !297
  %"$$ackermann_85_1835" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_85", align 8
  %"$$ackermann_85_fptr_1836" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_85_1835", 0
  %"$$ackermann_85_envptr_1837" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_85_1835", 1
  %"$n4_1838" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_85_call_1839" = call %TName_Nat* %"$$ackermann_85_fptr_1836"(i8* %"$$ackermann_85_envptr_1837", %TName_Nat* %"$n4_1838"), !dbg !297
  store %TName_Nat* %"$$ackermann_85_call_1839", %TName_Nat** %"$ackermann_86", align 8, !dbg !297
  %"$$ackermann_86_1840" = load %TName_Nat*, %TName_Nat** %"$ackermann_86", align 8
  store %TName_Nat* %"$$ackermann_86_1840", %TName_Nat** %ack34, align 8, !dbg !297
  %"$gasrem_1841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1842" = icmp ugt i64 1, %"$gasrem_1841"
  br i1 %"$gascmp_1842", label %"$out_of_gas_1843", label %"$have_gas_1844"

"$out_of_gas_1843":                               ; preds = %"$have_gas_1828"
  call void @_out_of_gas()
  br label %"$have_gas_1844"

"$have_gas_1844":                                 ; preds = %"$out_of_gas_1843", %"$have_gas_1828"
  %"$consume_1845" = sub i64 %"$gasrem_1841", 1
  store i64 %"$consume_1845", i64* @_gasrem, align 8
  %ack40 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack40, metadata !299, metadata !DIExpression()), !dbg !300
  %"$gasrem_1846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1847" = icmp ugt i64 1, %"$gasrem_1846"
  br i1 %"$gascmp_1847", label %"$out_of_gas_1848", label %"$have_gas_1849"

"$out_of_gas_1848":                               ; preds = %"$have_gas_1844"
  call void @_out_of_gas()
  br label %"$have_gas_1849"

"$have_gas_1849":                                 ; preds = %"$out_of_gas_1848", %"$have_gas_1844"
  %"$consume_1850" = sub i64 %"$gasrem_1846", 1
  store i64 %"$consume_1850", i64* @_gasrem, align 8
  %"$ackermann_87" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1851" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1852" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1851", 0
  %"$ackermann_envptr_1853" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1851", 1
  %"$n4_1854" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$ackermann_call_1855" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1852"(i8* %"$ackermann_envptr_1853", %TName_Nat* %"$n4_1854"), !dbg !301
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1855", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_87", align 8, !dbg !301
  %"$ackermann_88" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_88", metadata !302, metadata !DIExpression()), !dbg !301
  %"$$ackermann_87_1856" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_87", align 8
  %"$$ackermann_87_fptr_1857" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_87_1856", 0
  %"$$ackermann_87_envptr_1858" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_87_1856", 1
  %"$n0_1859" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_87_call_1860" = call %TName_Nat* %"$$ackermann_87_fptr_1857"(i8* %"$$ackermann_87_envptr_1858", %TName_Nat* %"$n0_1859"), !dbg !301
  store %TName_Nat* %"$$ackermann_87_call_1860", %TName_Nat** %"$ackermann_88", align 8, !dbg !301
  %"$$ackermann_88_1861" = load %TName_Nat*, %TName_Nat** %"$ackermann_88", align 8
  store %TName_Nat* %"$$ackermann_88_1861", %TName_Nat** %ack40, align 8, !dbg !301
  %"$gasrem_1862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1863" = icmp ugt i64 1, %"$gasrem_1862"
  br i1 %"$gascmp_1863", label %"$out_of_gas_1864", label %"$have_gas_1865"

"$out_of_gas_1864":                               ; preds = %"$have_gas_1849"
  call void @_out_of_gas()
  br label %"$have_gas_1865"

"$have_gas_1865":                                 ; preds = %"$out_of_gas_1864", %"$have_gas_1849"
  %"$consume_1866" = sub i64 %"$gasrem_1862", 1
  store i64 %"$consume_1866", i64* @_gasrem, align 8
  %int01 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int01, metadata !303, metadata !DIExpression()), !dbg !304
  %"$gasrem_1867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1868" = icmp ugt i64 1, %"$gasrem_1867"
  br i1 %"$gascmp_1868", label %"$out_of_gas_1869", label %"$have_gas_1870"

"$out_of_gas_1869":                               ; preds = %"$have_gas_1865"
  call void @_out_of_gas()
  br label %"$have_gas_1870"

"$have_gas_1870":                                 ; preds = %"$out_of_gas_1869", %"$have_gas_1865"
  %"$consume_1871" = sub i64 %"$gasrem_1867", 1
  store i64 %"$consume_1871", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_89" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_89", metadata !305, metadata !DIExpression()), !dbg !306
  %"$NatUtils.nat_to_int_1872" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1873" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1872", 0
  %"$NatUtils.nat_to_int_envptr_1874" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1872", 1
  %"$ack00_1875" = load %TName_Nat*, %TName_Nat** %ack00, align 8
  %"$NatUtils.nat_to_int_call_1876" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1873"(i8* %"$NatUtils.nat_to_int_envptr_1874", %TName_Nat* %"$ack00_1875"), !dbg !306
  store %Uint32 %"$NatUtils.nat_to_int_call_1876", %Uint32* %"$NatUtils.nat_to_int_89", align 4, !dbg !306
  %"$$NatUtils.nat_to_int_89_1877" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_89", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_89_1877", %Uint32* %int01, align 4, !dbg !306
  %"$gasrem_1878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1879" = icmp ugt i64 1, %"$gasrem_1878"
  br i1 %"$gascmp_1879", label %"$out_of_gas_1880", label %"$have_gas_1881"

"$out_of_gas_1880":                               ; preds = %"$have_gas_1870"
  call void @_out_of_gas()
  br label %"$have_gas_1881"

"$have_gas_1881":                                 ; preds = %"$out_of_gas_1880", %"$have_gas_1870"
  %"$consume_1882" = sub i64 %"$gasrem_1878", 1
  store i64 %"$consume_1882", i64* @_gasrem, align 8
  %int02 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int02, metadata !307, metadata !DIExpression()), !dbg !308
  %"$gasrem_1883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1884" = icmp ugt i64 1, %"$gasrem_1883"
  br i1 %"$gascmp_1884", label %"$out_of_gas_1885", label %"$have_gas_1886"

"$out_of_gas_1885":                               ; preds = %"$have_gas_1881"
  call void @_out_of_gas()
  br label %"$have_gas_1886"

"$have_gas_1886":                                 ; preds = %"$out_of_gas_1885", %"$have_gas_1881"
  %"$consume_1887" = sub i64 %"$gasrem_1883", 1
  store i64 %"$consume_1887", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_90" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_90", metadata !309, metadata !DIExpression()), !dbg !310
  %"$NatUtils.nat_to_int_1888" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1889" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1888", 0
  %"$NatUtils.nat_to_int_envptr_1890" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1888", 1
  %"$ack02_1891" = load %TName_Nat*, %TName_Nat** %ack02, align 8
  %"$NatUtils.nat_to_int_call_1892" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1889"(i8* %"$NatUtils.nat_to_int_envptr_1890", %TName_Nat* %"$ack02_1891"), !dbg !310
  store %Uint32 %"$NatUtils.nat_to_int_call_1892", %Uint32* %"$NatUtils.nat_to_int_90", align 4, !dbg !310
  %"$$NatUtils.nat_to_int_90_1893" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_90", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_90_1893", %Uint32* %int02, align 4, !dbg !310
  %"$gasrem_1894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1895" = icmp ugt i64 1, %"$gasrem_1894"
  br i1 %"$gascmp_1895", label %"$out_of_gas_1896", label %"$have_gas_1897"

"$out_of_gas_1896":                               ; preds = %"$have_gas_1886"
  call void @_out_of_gas()
  br label %"$have_gas_1897"

"$have_gas_1897":                                 ; preds = %"$out_of_gas_1896", %"$have_gas_1886"
  %"$consume_1898" = sub i64 %"$gasrem_1894", 1
  store i64 %"$consume_1898", i64* @_gasrem, align 8
  %int03 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int03, metadata !311, metadata !DIExpression()), !dbg !312
  %"$gasrem_1899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1900" = icmp ugt i64 1, %"$gasrem_1899"
  br i1 %"$gascmp_1900", label %"$out_of_gas_1901", label %"$have_gas_1902"

"$out_of_gas_1901":                               ; preds = %"$have_gas_1897"
  call void @_out_of_gas()
  br label %"$have_gas_1902"

"$have_gas_1902":                                 ; preds = %"$out_of_gas_1901", %"$have_gas_1897"
  %"$consume_1903" = sub i64 %"$gasrem_1899", 1
  store i64 %"$consume_1903", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_91" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_91", metadata !313, metadata !DIExpression()), !dbg !314
  %"$NatUtils.nat_to_int_1904" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1905" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1904", 0
  %"$NatUtils.nat_to_int_envptr_1906" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1904", 1
  %"$ack03_1907" = load %TName_Nat*, %TName_Nat** %ack03, align 8
  %"$NatUtils.nat_to_int_call_1908" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1905"(i8* %"$NatUtils.nat_to_int_envptr_1906", %TName_Nat* %"$ack03_1907"), !dbg !314
  store %Uint32 %"$NatUtils.nat_to_int_call_1908", %Uint32* %"$NatUtils.nat_to_int_91", align 4, !dbg !314
  %"$$NatUtils.nat_to_int_91_1909" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_91", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_91_1909", %Uint32* %int03, align 4, !dbg !314
  %"$gasrem_1910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1911" = icmp ugt i64 1, %"$gasrem_1910"
  br i1 %"$gascmp_1911", label %"$out_of_gas_1912", label %"$have_gas_1913"

"$out_of_gas_1912":                               ; preds = %"$have_gas_1902"
  call void @_out_of_gas()
  br label %"$have_gas_1913"

"$have_gas_1913":                                 ; preds = %"$out_of_gas_1912", %"$have_gas_1902"
  %"$consume_1914" = sub i64 %"$gasrem_1910", 1
  store i64 %"$consume_1914", i64* @_gasrem, align 8
  %int04 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int04, metadata !315, metadata !DIExpression()), !dbg !316
  %"$gasrem_1915" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1916" = icmp ugt i64 1, %"$gasrem_1915"
  br i1 %"$gascmp_1916", label %"$out_of_gas_1917", label %"$have_gas_1918"

"$out_of_gas_1917":                               ; preds = %"$have_gas_1913"
  call void @_out_of_gas()
  br label %"$have_gas_1918"

"$have_gas_1918":                                 ; preds = %"$out_of_gas_1917", %"$have_gas_1913"
  %"$consume_1919" = sub i64 %"$gasrem_1915", 1
  store i64 %"$consume_1919", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_92" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_92", metadata !317, metadata !DIExpression()), !dbg !318
  %"$NatUtils.nat_to_int_1920" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1921" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1920", 0
  %"$NatUtils.nat_to_int_envptr_1922" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1920", 1
  %"$ack04_1923" = load %TName_Nat*, %TName_Nat** %ack04, align 8
  %"$NatUtils.nat_to_int_call_1924" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1921"(i8* %"$NatUtils.nat_to_int_envptr_1922", %TName_Nat* %"$ack04_1923"), !dbg !318
  store %Uint32 %"$NatUtils.nat_to_int_call_1924", %Uint32* %"$NatUtils.nat_to_int_92", align 4, !dbg !318
  %"$$NatUtils.nat_to_int_92_1925" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_92", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_92_1925", %Uint32* %int04, align 4, !dbg !318
  %"$gasrem_1926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1927" = icmp ugt i64 1, %"$gasrem_1926"
  br i1 %"$gascmp_1927", label %"$out_of_gas_1928", label %"$have_gas_1929"

"$out_of_gas_1928":                               ; preds = %"$have_gas_1918"
  call void @_out_of_gas()
  br label %"$have_gas_1929"

"$have_gas_1929":                                 ; preds = %"$out_of_gas_1928", %"$have_gas_1918"
  %"$consume_1930" = sub i64 %"$gasrem_1926", 1
  store i64 %"$consume_1930", i64* @_gasrem, align 8
  %int10 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int10, metadata !319, metadata !DIExpression()), !dbg !320
  %"$gasrem_1931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1932" = icmp ugt i64 1, %"$gasrem_1931"
  br i1 %"$gascmp_1932", label %"$out_of_gas_1933", label %"$have_gas_1934"

"$out_of_gas_1933":                               ; preds = %"$have_gas_1929"
  call void @_out_of_gas()
  br label %"$have_gas_1934"

"$have_gas_1934":                                 ; preds = %"$out_of_gas_1933", %"$have_gas_1929"
  %"$consume_1935" = sub i64 %"$gasrem_1931", 1
  store i64 %"$consume_1935", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_93" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_93", metadata !321, metadata !DIExpression()), !dbg !322
  %"$NatUtils.nat_to_int_1936" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1937" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1936", 0
  %"$NatUtils.nat_to_int_envptr_1938" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1936", 1
  %"$ack10_1939" = load %TName_Nat*, %TName_Nat** %ack10, align 8
  %"$NatUtils.nat_to_int_call_1940" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1937"(i8* %"$NatUtils.nat_to_int_envptr_1938", %TName_Nat* %"$ack10_1939"), !dbg !322
  store %Uint32 %"$NatUtils.nat_to_int_call_1940", %Uint32* %"$NatUtils.nat_to_int_93", align 4, !dbg !322
  %"$$NatUtils.nat_to_int_93_1941" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_93", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_93_1941", %Uint32* %int10, align 4, !dbg !322
  %"$gasrem_1942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1943" = icmp ugt i64 1, %"$gasrem_1942"
  br i1 %"$gascmp_1943", label %"$out_of_gas_1944", label %"$have_gas_1945"

"$out_of_gas_1944":                               ; preds = %"$have_gas_1934"
  call void @_out_of_gas()
  br label %"$have_gas_1945"

"$have_gas_1945":                                 ; preds = %"$out_of_gas_1944", %"$have_gas_1934"
  %"$consume_1946" = sub i64 %"$gasrem_1942", 1
  store i64 %"$consume_1946", i64* @_gasrem, align 8
  %int11 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int11, metadata !323, metadata !DIExpression()), !dbg !324
  %"$gasrem_1947" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1948" = icmp ugt i64 1, %"$gasrem_1947"
  br i1 %"$gascmp_1948", label %"$out_of_gas_1949", label %"$have_gas_1950"

"$out_of_gas_1949":                               ; preds = %"$have_gas_1945"
  call void @_out_of_gas()
  br label %"$have_gas_1950"

"$have_gas_1950":                                 ; preds = %"$out_of_gas_1949", %"$have_gas_1945"
  %"$consume_1951" = sub i64 %"$gasrem_1947", 1
  store i64 %"$consume_1951", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_94" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_94", metadata !325, metadata !DIExpression()), !dbg !326
  %"$NatUtils.nat_to_int_1952" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1953" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1952", 0
  %"$NatUtils.nat_to_int_envptr_1954" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1952", 1
  %"$ack11_1955" = load %TName_Nat*, %TName_Nat** %ack11, align 8
  %"$NatUtils.nat_to_int_call_1956" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1953"(i8* %"$NatUtils.nat_to_int_envptr_1954", %TName_Nat* %"$ack11_1955"), !dbg !326
  store %Uint32 %"$NatUtils.nat_to_int_call_1956", %Uint32* %"$NatUtils.nat_to_int_94", align 4, !dbg !326
  %"$$NatUtils.nat_to_int_94_1957" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_94", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_94_1957", %Uint32* %int11, align 4, !dbg !326
  %"$gasrem_1958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1959" = icmp ugt i64 1, %"$gasrem_1958"
  br i1 %"$gascmp_1959", label %"$out_of_gas_1960", label %"$have_gas_1961"

"$out_of_gas_1960":                               ; preds = %"$have_gas_1950"
  call void @_out_of_gas()
  br label %"$have_gas_1961"

"$have_gas_1961":                                 ; preds = %"$out_of_gas_1960", %"$have_gas_1950"
  %"$consume_1962" = sub i64 %"$gasrem_1958", 1
  store i64 %"$consume_1962", i64* @_gasrem, align 8
  %int12 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int12, metadata !327, metadata !DIExpression()), !dbg !328
  %"$gasrem_1963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1964" = icmp ugt i64 1, %"$gasrem_1963"
  br i1 %"$gascmp_1964", label %"$out_of_gas_1965", label %"$have_gas_1966"

"$out_of_gas_1965":                               ; preds = %"$have_gas_1961"
  call void @_out_of_gas()
  br label %"$have_gas_1966"

"$have_gas_1966":                                 ; preds = %"$out_of_gas_1965", %"$have_gas_1961"
  %"$consume_1967" = sub i64 %"$gasrem_1963", 1
  store i64 %"$consume_1967", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_95" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_95", metadata !329, metadata !DIExpression()), !dbg !330
  %"$NatUtils.nat_to_int_1968" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1969" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1968", 0
  %"$NatUtils.nat_to_int_envptr_1970" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1968", 1
  %"$ack12_1971" = load %TName_Nat*, %TName_Nat** %ack12, align 8
  %"$NatUtils.nat_to_int_call_1972" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1969"(i8* %"$NatUtils.nat_to_int_envptr_1970", %TName_Nat* %"$ack12_1971"), !dbg !330
  store %Uint32 %"$NatUtils.nat_to_int_call_1972", %Uint32* %"$NatUtils.nat_to_int_95", align 4, !dbg !330
  %"$$NatUtils.nat_to_int_95_1973" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_95", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_95_1973", %Uint32* %int12, align 4, !dbg !330
  %"$gasrem_1974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1975" = icmp ugt i64 1, %"$gasrem_1974"
  br i1 %"$gascmp_1975", label %"$out_of_gas_1976", label %"$have_gas_1977"

"$out_of_gas_1976":                               ; preds = %"$have_gas_1966"
  call void @_out_of_gas()
  br label %"$have_gas_1977"

"$have_gas_1977":                                 ; preds = %"$out_of_gas_1976", %"$have_gas_1966"
  %"$consume_1978" = sub i64 %"$gasrem_1974", 1
  store i64 %"$consume_1978", i64* @_gasrem, align 8
  %int13 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int13, metadata !331, metadata !DIExpression()), !dbg !332
  %"$gasrem_1979" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1980" = icmp ugt i64 1, %"$gasrem_1979"
  br i1 %"$gascmp_1980", label %"$out_of_gas_1981", label %"$have_gas_1982"

"$out_of_gas_1981":                               ; preds = %"$have_gas_1977"
  call void @_out_of_gas()
  br label %"$have_gas_1982"

"$have_gas_1982":                                 ; preds = %"$out_of_gas_1981", %"$have_gas_1977"
  %"$consume_1983" = sub i64 %"$gasrem_1979", 1
  store i64 %"$consume_1983", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_96" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_96", metadata !333, metadata !DIExpression()), !dbg !334
  %"$NatUtils.nat_to_int_1984" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1985" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1984", 0
  %"$NatUtils.nat_to_int_envptr_1986" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1984", 1
  %"$ack13_1987" = load %TName_Nat*, %TName_Nat** %ack13, align 8
  %"$NatUtils.nat_to_int_call_1988" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1985"(i8* %"$NatUtils.nat_to_int_envptr_1986", %TName_Nat* %"$ack13_1987"), !dbg !334
  store %Uint32 %"$NatUtils.nat_to_int_call_1988", %Uint32* %"$NatUtils.nat_to_int_96", align 4, !dbg !334
  %"$$NatUtils.nat_to_int_96_1989" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_96", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_96_1989", %Uint32* %int13, align 4, !dbg !334
  %"$gasrem_1990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1991" = icmp ugt i64 1, %"$gasrem_1990"
  br i1 %"$gascmp_1991", label %"$out_of_gas_1992", label %"$have_gas_1993"

"$out_of_gas_1992":                               ; preds = %"$have_gas_1982"
  call void @_out_of_gas()
  br label %"$have_gas_1993"

"$have_gas_1993":                                 ; preds = %"$out_of_gas_1992", %"$have_gas_1982"
  %"$consume_1994" = sub i64 %"$gasrem_1990", 1
  store i64 %"$consume_1994", i64* @_gasrem, align 8
  %int14 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int14, metadata !335, metadata !DIExpression()), !dbg !336
  %"$gasrem_1995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1996" = icmp ugt i64 1, %"$gasrem_1995"
  br i1 %"$gascmp_1996", label %"$out_of_gas_1997", label %"$have_gas_1998"

"$out_of_gas_1997":                               ; preds = %"$have_gas_1993"
  call void @_out_of_gas()
  br label %"$have_gas_1998"

"$have_gas_1998":                                 ; preds = %"$out_of_gas_1997", %"$have_gas_1993"
  %"$consume_1999" = sub i64 %"$gasrem_1995", 1
  store i64 %"$consume_1999", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_97" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_97", metadata !337, metadata !DIExpression()), !dbg !338
  %"$NatUtils.nat_to_int_2000" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2001" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2000", 0
  %"$NatUtils.nat_to_int_envptr_2002" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2000", 1
  %"$ack14_2003" = load %TName_Nat*, %TName_Nat** %ack14, align 8
  %"$NatUtils.nat_to_int_call_2004" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2001"(i8* %"$NatUtils.nat_to_int_envptr_2002", %TName_Nat* %"$ack14_2003"), !dbg !338
  store %Uint32 %"$NatUtils.nat_to_int_call_2004", %Uint32* %"$NatUtils.nat_to_int_97", align 4, !dbg !338
  %"$$NatUtils.nat_to_int_97_2005" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_97", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_97_2005", %Uint32* %int14, align 4, !dbg !338
  %"$gasrem_2006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2007" = icmp ugt i64 1, %"$gasrem_2006"
  br i1 %"$gascmp_2007", label %"$out_of_gas_2008", label %"$have_gas_2009"

"$out_of_gas_2008":                               ; preds = %"$have_gas_1998"
  call void @_out_of_gas()
  br label %"$have_gas_2009"

"$have_gas_2009":                                 ; preds = %"$out_of_gas_2008", %"$have_gas_1998"
  %"$consume_2010" = sub i64 %"$gasrem_2006", 1
  store i64 %"$consume_2010", i64* @_gasrem, align 8
  %int20 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int20, metadata !339, metadata !DIExpression()), !dbg !340
  %"$gasrem_2011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2012" = icmp ugt i64 1, %"$gasrem_2011"
  br i1 %"$gascmp_2012", label %"$out_of_gas_2013", label %"$have_gas_2014"

"$out_of_gas_2013":                               ; preds = %"$have_gas_2009"
  call void @_out_of_gas()
  br label %"$have_gas_2014"

"$have_gas_2014":                                 ; preds = %"$out_of_gas_2013", %"$have_gas_2009"
  %"$consume_2015" = sub i64 %"$gasrem_2011", 1
  store i64 %"$consume_2015", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_98" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_98", metadata !341, metadata !DIExpression()), !dbg !342
  %"$NatUtils.nat_to_int_2016" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2017" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2016", 0
  %"$NatUtils.nat_to_int_envptr_2018" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2016", 1
  %"$ack20_2019" = load %TName_Nat*, %TName_Nat** %ack20, align 8
  %"$NatUtils.nat_to_int_call_2020" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2017"(i8* %"$NatUtils.nat_to_int_envptr_2018", %TName_Nat* %"$ack20_2019"), !dbg !342
  store %Uint32 %"$NatUtils.nat_to_int_call_2020", %Uint32* %"$NatUtils.nat_to_int_98", align 4, !dbg !342
  %"$$NatUtils.nat_to_int_98_2021" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_98", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_98_2021", %Uint32* %int20, align 4, !dbg !342
  %"$gasrem_2022" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2023" = icmp ugt i64 1, %"$gasrem_2022"
  br i1 %"$gascmp_2023", label %"$out_of_gas_2024", label %"$have_gas_2025"

"$out_of_gas_2024":                               ; preds = %"$have_gas_2014"
  call void @_out_of_gas()
  br label %"$have_gas_2025"

"$have_gas_2025":                                 ; preds = %"$out_of_gas_2024", %"$have_gas_2014"
  %"$consume_2026" = sub i64 %"$gasrem_2022", 1
  store i64 %"$consume_2026", i64* @_gasrem, align 8
  %int21 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int21, metadata !343, metadata !DIExpression()), !dbg !344
  %"$gasrem_2027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2028" = icmp ugt i64 1, %"$gasrem_2027"
  br i1 %"$gascmp_2028", label %"$out_of_gas_2029", label %"$have_gas_2030"

"$out_of_gas_2029":                               ; preds = %"$have_gas_2025"
  call void @_out_of_gas()
  br label %"$have_gas_2030"

"$have_gas_2030":                                 ; preds = %"$out_of_gas_2029", %"$have_gas_2025"
  %"$consume_2031" = sub i64 %"$gasrem_2027", 1
  store i64 %"$consume_2031", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_99" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_99", metadata !345, metadata !DIExpression()), !dbg !346
  %"$NatUtils.nat_to_int_2032" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2033" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2032", 0
  %"$NatUtils.nat_to_int_envptr_2034" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2032", 1
  %"$ack21_2035" = load %TName_Nat*, %TName_Nat** %ack21, align 8
  %"$NatUtils.nat_to_int_call_2036" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2033"(i8* %"$NatUtils.nat_to_int_envptr_2034", %TName_Nat* %"$ack21_2035"), !dbg !346
  store %Uint32 %"$NatUtils.nat_to_int_call_2036", %Uint32* %"$NatUtils.nat_to_int_99", align 4, !dbg !346
  %"$$NatUtils.nat_to_int_99_2037" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_99", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_99_2037", %Uint32* %int21, align 4, !dbg !346
  %"$gasrem_2038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2039" = icmp ugt i64 1, %"$gasrem_2038"
  br i1 %"$gascmp_2039", label %"$out_of_gas_2040", label %"$have_gas_2041"

"$out_of_gas_2040":                               ; preds = %"$have_gas_2030"
  call void @_out_of_gas()
  br label %"$have_gas_2041"

"$have_gas_2041":                                 ; preds = %"$out_of_gas_2040", %"$have_gas_2030"
  %"$consume_2042" = sub i64 %"$gasrem_2038", 1
  store i64 %"$consume_2042", i64* @_gasrem, align 8
  %int22 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int22, metadata !347, metadata !DIExpression()), !dbg !348
  %"$gasrem_2043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2044" = icmp ugt i64 1, %"$gasrem_2043"
  br i1 %"$gascmp_2044", label %"$out_of_gas_2045", label %"$have_gas_2046"

"$out_of_gas_2045":                               ; preds = %"$have_gas_2041"
  call void @_out_of_gas()
  br label %"$have_gas_2046"

"$have_gas_2046":                                 ; preds = %"$out_of_gas_2045", %"$have_gas_2041"
  %"$consume_2047" = sub i64 %"$gasrem_2043", 1
  store i64 %"$consume_2047", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_100" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_100", metadata !349, metadata !DIExpression()), !dbg !350
  %"$NatUtils.nat_to_int_2048" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2049" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2048", 0
  %"$NatUtils.nat_to_int_envptr_2050" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2048", 1
  %"$ack22_2051" = load %TName_Nat*, %TName_Nat** %ack22, align 8
  %"$NatUtils.nat_to_int_call_2052" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2049"(i8* %"$NatUtils.nat_to_int_envptr_2050", %TName_Nat* %"$ack22_2051"), !dbg !350
  store %Uint32 %"$NatUtils.nat_to_int_call_2052", %Uint32* %"$NatUtils.nat_to_int_100", align 4, !dbg !350
  %"$$NatUtils.nat_to_int_100_2053" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_100", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_100_2053", %Uint32* %int22, align 4, !dbg !350
  %"$gasrem_2054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2055" = icmp ugt i64 1, %"$gasrem_2054"
  br i1 %"$gascmp_2055", label %"$out_of_gas_2056", label %"$have_gas_2057"

"$out_of_gas_2056":                               ; preds = %"$have_gas_2046"
  call void @_out_of_gas()
  br label %"$have_gas_2057"

"$have_gas_2057":                                 ; preds = %"$out_of_gas_2056", %"$have_gas_2046"
  %"$consume_2058" = sub i64 %"$gasrem_2054", 1
  store i64 %"$consume_2058", i64* @_gasrem, align 8
  %int23 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int23, metadata !351, metadata !DIExpression()), !dbg !352
  %"$gasrem_2059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2060" = icmp ugt i64 1, %"$gasrem_2059"
  br i1 %"$gascmp_2060", label %"$out_of_gas_2061", label %"$have_gas_2062"

"$out_of_gas_2061":                               ; preds = %"$have_gas_2057"
  call void @_out_of_gas()
  br label %"$have_gas_2062"

"$have_gas_2062":                                 ; preds = %"$out_of_gas_2061", %"$have_gas_2057"
  %"$consume_2063" = sub i64 %"$gasrem_2059", 1
  store i64 %"$consume_2063", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_101" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_101", metadata !353, metadata !DIExpression()), !dbg !354
  %"$NatUtils.nat_to_int_2064" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2065" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2064", 0
  %"$NatUtils.nat_to_int_envptr_2066" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2064", 1
  %"$ack23_2067" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_2068" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2065"(i8* %"$NatUtils.nat_to_int_envptr_2066", %TName_Nat* %"$ack23_2067"), !dbg !354
  store %Uint32 %"$NatUtils.nat_to_int_call_2068", %Uint32* %"$NatUtils.nat_to_int_101", align 4, !dbg !354
  %"$$NatUtils.nat_to_int_101_2069" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_101", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_101_2069", %Uint32* %int23, align 4, !dbg !354
  %"$gasrem_2070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2071" = icmp ugt i64 1, %"$gasrem_2070"
  br i1 %"$gascmp_2071", label %"$out_of_gas_2072", label %"$have_gas_2073"

"$out_of_gas_2072":                               ; preds = %"$have_gas_2062"
  call void @_out_of_gas()
  br label %"$have_gas_2073"

"$have_gas_2073":                                 ; preds = %"$out_of_gas_2072", %"$have_gas_2062"
  %"$consume_2074" = sub i64 %"$gasrem_2070", 1
  store i64 %"$consume_2074", i64* @_gasrem, align 8
  %int24 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int24, metadata !355, metadata !DIExpression()), !dbg !356
  %"$gasrem_2075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2076" = icmp ugt i64 1, %"$gasrem_2075"
  br i1 %"$gascmp_2076", label %"$out_of_gas_2077", label %"$have_gas_2078"

"$out_of_gas_2077":                               ; preds = %"$have_gas_2073"
  call void @_out_of_gas()
  br label %"$have_gas_2078"

"$have_gas_2078":                                 ; preds = %"$out_of_gas_2077", %"$have_gas_2073"
  %"$consume_2079" = sub i64 %"$gasrem_2075", 1
  store i64 %"$consume_2079", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_102" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_102", metadata !357, metadata !DIExpression()), !dbg !358
  %"$NatUtils.nat_to_int_2080" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2081" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2080", 0
  %"$NatUtils.nat_to_int_envptr_2082" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2080", 1
  %"$ack23_2083" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_2084" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2081"(i8* %"$NatUtils.nat_to_int_envptr_2082", %TName_Nat* %"$ack23_2083"), !dbg !358
  store %Uint32 %"$NatUtils.nat_to_int_call_2084", %Uint32* %"$NatUtils.nat_to_int_102", align 4, !dbg !358
  %"$$NatUtils.nat_to_int_102_2085" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_102", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_102_2085", %Uint32* %int24, align 4, !dbg !358
  %"$gasrem_2086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2087" = icmp ugt i64 1, %"$gasrem_2086"
  br i1 %"$gascmp_2087", label %"$out_of_gas_2088", label %"$have_gas_2089"

"$out_of_gas_2088":                               ; preds = %"$have_gas_2078"
  call void @_out_of_gas()
  br label %"$have_gas_2089"

"$have_gas_2089":                                 ; preds = %"$out_of_gas_2088", %"$have_gas_2078"
  %"$consume_2090" = sub i64 %"$gasrem_2086", 1
  store i64 %"$consume_2090", i64* @_gasrem, align 8
  %int30 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int30, metadata !359, metadata !DIExpression()), !dbg !360
  %"$gasrem_2091" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2092" = icmp ugt i64 1, %"$gasrem_2091"
  br i1 %"$gascmp_2092", label %"$out_of_gas_2093", label %"$have_gas_2094"

"$out_of_gas_2093":                               ; preds = %"$have_gas_2089"
  call void @_out_of_gas()
  br label %"$have_gas_2094"

"$have_gas_2094":                                 ; preds = %"$out_of_gas_2093", %"$have_gas_2089"
  %"$consume_2095" = sub i64 %"$gasrem_2091", 1
  store i64 %"$consume_2095", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_103" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_103", metadata !361, metadata !DIExpression()), !dbg !362
  %"$NatUtils.nat_to_int_2096" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2097" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2096", 0
  %"$NatUtils.nat_to_int_envptr_2098" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2096", 1
  %"$ack30_2099" = load %TName_Nat*, %TName_Nat** %ack30, align 8
  %"$NatUtils.nat_to_int_call_2100" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2097"(i8* %"$NatUtils.nat_to_int_envptr_2098", %TName_Nat* %"$ack30_2099"), !dbg !362
  store %Uint32 %"$NatUtils.nat_to_int_call_2100", %Uint32* %"$NatUtils.nat_to_int_103", align 4, !dbg !362
  %"$$NatUtils.nat_to_int_103_2101" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_103", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_103_2101", %Uint32* %int30, align 4, !dbg !362
  %"$gasrem_2102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2103" = icmp ugt i64 1, %"$gasrem_2102"
  br i1 %"$gascmp_2103", label %"$out_of_gas_2104", label %"$have_gas_2105"

"$out_of_gas_2104":                               ; preds = %"$have_gas_2094"
  call void @_out_of_gas()
  br label %"$have_gas_2105"

"$have_gas_2105":                                 ; preds = %"$out_of_gas_2104", %"$have_gas_2094"
  %"$consume_2106" = sub i64 %"$gasrem_2102", 1
  store i64 %"$consume_2106", i64* @_gasrem, align 8
  %int31 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int31, metadata !363, metadata !DIExpression()), !dbg !364
  %"$gasrem_2107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2108" = icmp ugt i64 1, %"$gasrem_2107"
  br i1 %"$gascmp_2108", label %"$out_of_gas_2109", label %"$have_gas_2110"

"$out_of_gas_2109":                               ; preds = %"$have_gas_2105"
  call void @_out_of_gas()
  br label %"$have_gas_2110"

"$have_gas_2110":                                 ; preds = %"$out_of_gas_2109", %"$have_gas_2105"
  %"$consume_2111" = sub i64 %"$gasrem_2107", 1
  store i64 %"$consume_2111", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_104" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_104", metadata !365, metadata !DIExpression()), !dbg !366
  %"$NatUtils.nat_to_int_2112" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2113" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2112", 0
  %"$NatUtils.nat_to_int_envptr_2114" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2112", 1
  %"$ack31_2115" = load %TName_Nat*, %TName_Nat** %ack31, align 8
  %"$NatUtils.nat_to_int_call_2116" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2113"(i8* %"$NatUtils.nat_to_int_envptr_2114", %TName_Nat* %"$ack31_2115"), !dbg !366
  store %Uint32 %"$NatUtils.nat_to_int_call_2116", %Uint32* %"$NatUtils.nat_to_int_104", align 4, !dbg !366
  %"$$NatUtils.nat_to_int_104_2117" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_104", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_104_2117", %Uint32* %int31, align 4, !dbg !366
  %"$gasrem_2118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2119" = icmp ugt i64 1, %"$gasrem_2118"
  br i1 %"$gascmp_2119", label %"$out_of_gas_2120", label %"$have_gas_2121"

"$out_of_gas_2120":                               ; preds = %"$have_gas_2110"
  call void @_out_of_gas()
  br label %"$have_gas_2121"

"$have_gas_2121":                                 ; preds = %"$out_of_gas_2120", %"$have_gas_2110"
  %"$consume_2122" = sub i64 %"$gasrem_2118", 1
  store i64 %"$consume_2122", i64* @_gasrem, align 8
  %int32 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int32, metadata !367, metadata !DIExpression()), !dbg !368
  %"$gasrem_2123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2124" = icmp ugt i64 1, %"$gasrem_2123"
  br i1 %"$gascmp_2124", label %"$out_of_gas_2125", label %"$have_gas_2126"

"$out_of_gas_2125":                               ; preds = %"$have_gas_2121"
  call void @_out_of_gas()
  br label %"$have_gas_2126"

"$have_gas_2126":                                 ; preds = %"$out_of_gas_2125", %"$have_gas_2121"
  %"$consume_2127" = sub i64 %"$gasrem_2123", 1
  store i64 %"$consume_2127", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_105" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_105", metadata !369, metadata !DIExpression()), !dbg !370
  %"$NatUtils.nat_to_int_2128" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2129" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2128", 0
  %"$NatUtils.nat_to_int_envptr_2130" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2128", 1
  %"$ack32_2131" = load %TName_Nat*, %TName_Nat** %ack32, align 8
  %"$NatUtils.nat_to_int_call_2132" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2129"(i8* %"$NatUtils.nat_to_int_envptr_2130", %TName_Nat* %"$ack32_2131"), !dbg !370
  store %Uint32 %"$NatUtils.nat_to_int_call_2132", %Uint32* %"$NatUtils.nat_to_int_105", align 4, !dbg !370
  %"$$NatUtils.nat_to_int_105_2133" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_105", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_105_2133", %Uint32* %int32, align 4, !dbg !370
  %"$gasrem_2134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2135" = icmp ugt i64 1, %"$gasrem_2134"
  br i1 %"$gascmp_2135", label %"$out_of_gas_2136", label %"$have_gas_2137"

"$out_of_gas_2136":                               ; preds = %"$have_gas_2126"
  call void @_out_of_gas()
  br label %"$have_gas_2137"

"$have_gas_2137":                                 ; preds = %"$out_of_gas_2136", %"$have_gas_2126"
  %"$consume_2138" = sub i64 %"$gasrem_2134", 1
  store i64 %"$consume_2138", i64* @_gasrem, align 8
  %int33 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int33, metadata !371, metadata !DIExpression()), !dbg !372
  %"$gasrem_2139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2140" = icmp ugt i64 1, %"$gasrem_2139"
  br i1 %"$gascmp_2140", label %"$out_of_gas_2141", label %"$have_gas_2142"

"$out_of_gas_2141":                               ; preds = %"$have_gas_2137"
  call void @_out_of_gas()
  br label %"$have_gas_2142"

"$have_gas_2142":                                 ; preds = %"$out_of_gas_2141", %"$have_gas_2137"
  %"$consume_2143" = sub i64 %"$gasrem_2139", 1
  store i64 %"$consume_2143", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_106" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_106", metadata !373, metadata !DIExpression()), !dbg !374
  %"$NatUtils.nat_to_int_2144" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2145" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2144", 0
  %"$NatUtils.nat_to_int_envptr_2146" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2144", 1
  %"$ack33_2147" = load %TName_Nat*, %TName_Nat** %ack33, align 8
  %"$NatUtils.nat_to_int_call_2148" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2145"(i8* %"$NatUtils.nat_to_int_envptr_2146", %TName_Nat* %"$ack33_2147"), !dbg !374
  store %Uint32 %"$NatUtils.nat_to_int_call_2148", %Uint32* %"$NatUtils.nat_to_int_106", align 4, !dbg !374
  %"$$NatUtils.nat_to_int_106_2149" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_106", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_106_2149", %Uint32* %int33, align 4, !dbg !374
  %"$gasrem_2150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2151" = icmp ugt i64 1, %"$gasrem_2150"
  br i1 %"$gascmp_2151", label %"$out_of_gas_2152", label %"$have_gas_2153"

"$out_of_gas_2152":                               ; preds = %"$have_gas_2142"
  call void @_out_of_gas()
  br label %"$have_gas_2153"

"$have_gas_2153":                                 ; preds = %"$out_of_gas_2152", %"$have_gas_2142"
  %"$consume_2154" = sub i64 %"$gasrem_2150", 1
  store i64 %"$consume_2154", i64* @_gasrem, align 8
  %int34 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int34, metadata !375, metadata !DIExpression()), !dbg !376
  %"$gasrem_2155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2156" = icmp ugt i64 1, %"$gasrem_2155"
  br i1 %"$gascmp_2156", label %"$out_of_gas_2157", label %"$have_gas_2158"

"$out_of_gas_2157":                               ; preds = %"$have_gas_2153"
  call void @_out_of_gas()
  br label %"$have_gas_2158"

"$have_gas_2158":                                 ; preds = %"$out_of_gas_2157", %"$have_gas_2153"
  %"$consume_2159" = sub i64 %"$gasrem_2155", 1
  store i64 %"$consume_2159", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_107" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_107", metadata !377, metadata !DIExpression()), !dbg !378
  %"$NatUtils.nat_to_int_2160" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2161" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2160", 0
  %"$NatUtils.nat_to_int_envptr_2162" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2160", 1
  %"$ack34_2163" = load %TName_Nat*, %TName_Nat** %ack34, align 8
  %"$NatUtils.nat_to_int_call_2164" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2161"(i8* %"$NatUtils.nat_to_int_envptr_2162", %TName_Nat* %"$ack34_2163"), !dbg !378
  store %Uint32 %"$NatUtils.nat_to_int_call_2164", %Uint32* %"$NatUtils.nat_to_int_107", align 4, !dbg !378
  %"$$NatUtils.nat_to_int_107_2165" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_107", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_107_2165", %Uint32* %int34, align 4, !dbg !378
  %"$gasrem_2166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2167" = icmp ugt i64 1, %"$gasrem_2166"
  br i1 %"$gascmp_2167", label %"$out_of_gas_2168", label %"$have_gas_2169"

"$out_of_gas_2168":                               ; preds = %"$have_gas_2158"
  call void @_out_of_gas()
  br label %"$have_gas_2169"

"$have_gas_2169":                                 ; preds = %"$out_of_gas_2168", %"$have_gas_2158"
  %"$consume_2170" = sub i64 %"$gasrem_2166", 1
  store i64 %"$consume_2170", i64* @_gasrem, align 8
  %int40 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int40, metadata !379, metadata !DIExpression()), !dbg !380
  %"$gasrem_2171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2172" = icmp ugt i64 1, %"$gasrem_2171"
  br i1 %"$gascmp_2172", label %"$out_of_gas_2173", label %"$have_gas_2174"

"$out_of_gas_2173":                               ; preds = %"$have_gas_2169"
  call void @_out_of_gas()
  br label %"$have_gas_2174"

"$have_gas_2174":                                 ; preds = %"$out_of_gas_2173", %"$have_gas_2169"
  %"$consume_2175" = sub i64 %"$gasrem_2171", 1
  store i64 %"$consume_2175", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_108" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_108", metadata !381, metadata !DIExpression()), !dbg !382
  %"$NatUtils.nat_to_int_2176" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2177" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2176", 0
  %"$NatUtils.nat_to_int_envptr_2178" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2176", 1
  %"$ack40_2179" = load %TName_Nat*, %TName_Nat** %ack40, align 8
  %"$NatUtils.nat_to_int_call_2180" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2177"(i8* %"$NatUtils.nat_to_int_envptr_2178", %TName_Nat* %"$ack40_2179"), !dbg !382
  store %Uint32 %"$NatUtils.nat_to_int_call_2180", %Uint32* %"$NatUtils.nat_to_int_108", align 4, !dbg !382
  %"$$NatUtils.nat_to_int_108_2181" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_108", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_108_2181", %Uint32* %int40, align 4, !dbg !382
  %"$gasrem_2182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2183" = icmp ugt i64 1, %"$gasrem_2182"
  br i1 %"$gascmp_2183", label %"$out_of_gas_2184", label %"$have_gas_2185"

"$out_of_gas_2184":                               ; preds = %"$have_gas_2174"
  call void @_out_of_gas()
  br label %"$have_gas_2185"

"$have_gas_2185":                                 ; preds = %"$out_of_gas_2184", %"$have_gas_2174"
  %"$consume_2186" = sub i64 %"$gasrem_2182", 1
  store i64 %"$consume_2186", i64* @_gasrem, align 8
  %sum = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %sum, metadata !383, metadata !DIExpression()), !dbg !384
  %"$gasrem_2187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2188" = icmp ugt i64 4, %"$gasrem_2187"
  br i1 %"$gascmp_2188", label %"$out_of_gas_2189", label %"$have_gas_2190"

"$out_of_gas_2189":                               ; preds = %"$have_gas_2185"
  call void @_out_of_gas()
  br label %"$have_gas_2190"

"$have_gas_2190":                                 ; preds = %"$out_of_gas_2189", %"$have_gas_2185"
  %"$consume_2191" = sub i64 %"$gasrem_2187", 4
  store i64 %"$consume_2191", i64* @_gasrem, align 8
  %"$int01_2192" = load %Uint32, %Uint32* %int01, align 4
  %"$int02_2193" = load %Uint32, %Uint32* %int02, align 4
  %"$add_call_2194" = call %Uint32 @_add_Uint32(%Uint32 %"$int01_2192", %Uint32 %"$int02_2193"), !dbg !385
  store %Uint32 %"$add_call_2194", %Uint32* %sum, align 4, !dbg !385
  %"$gasrem_2195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2196" = icmp ugt i64 1, %"$gasrem_2195"
  br i1 %"$gascmp_2196", label %"$out_of_gas_2197", label %"$have_gas_2198"

"$out_of_gas_2197":                               ; preds = %"$have_gas_2190"
  call void @_out_of_gas()
  br label %"$have_gas_2198"

"$have_gas_2198":                                 ; preds = %"$out_of_gas_2197", %"$have_gas_2190"
  %"$consume_2199" = sub i64 %"$gasrem_2195", 1
  store i64 %"$consume_2199", i64* @_gasrem, align 8
  %"$sum_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_7", metadata !386, metadata !DIExpression()), !dbg !387
  %"$gasrem_2200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2201" = icmp ugt i64 4, %"$gasrem_2200"
  br i1 %"$gascmp_2201", label %"$out_of_gas_2202", label %"$have_gas_2203"

"$out_of_gas_2202":                               ; preds = %"$have_gas_2198"
  call void @_out_of_gas()
  br label %"$have_gas_2203"

"$have_gas_2203":                                 ; preds = %"$out_of_gas_2202", %"$have_gas_2198"
  %"$consume_2204" = sub i64 %"$gasrem_2200", 4
  store i64 %"$consume_2204", i64* @_gasrem, align 8
  %"$sum_2205" = load %Uint32, %Uint32* %sum, align 4
  %"$int03_2206" = load %Uint32, %Uint32* %int03, align 4
  %"$add_call_2207" = call %Uint32 @_add_Uint32(%Uint32 %"$sum_2205", %Uint32 %"$int03_2206"), !dbg !388
  store %Uint32 %"$add_call_2207", %Uint32* %"$sum_7", align 4, !dbg !388
  %"$gasrem_2208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2209" = icmp ugt i64 1, %"$gasrem_2208"
  br i1 %"$gascmp_2209", label %"$out_of_gas_2210", label %"$have_gas_2211"

"$out_of_gas_2210":                               ; preds = %"$have_gas_2203"
  call void @_out_of_gas()
  br label %"$have_gas_2211"

"$have_gas_2211":                                 ; preds = %"$out_of_gas_2210", %"$have_gas_2203"
  %"$consume_2212" = sub i64 %"$gasrem_2208", 1
  store i64 %"$consume_2212", i64* @_gasrem, align 8
  %"$sum_8" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_8", metadata !389, metadata !DIExpression()), !dbg !390
  %"$gasrem_2213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2214" = icmp ugt i64 4, %"$gasrem_2213"
  br i1 %"$gascmp_2214", label %"$out_of_gas_2215", label %"$have_gas_2216"

"$out_of_gas_2215":                               ; preds = %"$have_gas_2211"
  call void @_out_of_gas()
  br label %"$have_gas_2216"

"$have_gas_2216":                                 ; preds = %"$out_of_gas_2215", %"$have_gas_2211"
  %"$consume_2217" = sub i64 %"$gasrem_2213", 4
  store i64 %"$consume_2217", i64* @_gasrem, align 8
  %"$$sum_7_2218" = load %Uint32, %Uint32* %"$sum_7", align 4
  %"$int04_2219" = load %Uint32, %Uint32* %int04, align 4
  %"$add_call_2220" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_7_2218", %Uint32 %"$int04_2219"), !dbg !391
  store %Uint32 %"$add_call_2220", %Uint32* %"$sum_8", align 4, !dbg !391
  %"$gasrem_2221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2222" = icmp ugt i64 1, %"$gasrem_2221"
  br i1 %"$gascmp_2222", label %"$out_of_gas_2223", label %"$have_gas_2224"

"$out_of_gas_2223":                               ; preds = %"$have_gas_2216"
  call void @_out_of_gas()
  br label %"$have_gas_2224"

"$have_gas_2224":                                 ; preds = %"$out_of_gas_2223", %"$have_gas_2216"
  %"$consume_2225" = sub i64 %"$gasrem_2221", 1
  store i64 %"$consume_2225", i64* @_gasrem, align 8
  %"$sum_9" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_9", metadata !392, metadata !DIExpression()), !dbg !393
  %"$gasrem_2226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2227" = icmp ugt i64 4, %"$gasrem_2226"
  br i1 %"$gascmp_2227", label %"$out_of_gas_2228", label %"$have_gas_2229"

"$out_of_gas_2228":                               ; preds = %"$have_gas_2224"
  call void @_out_of_gas()
  br label %"$have_gas_2229"

"$have_gas_2229":                                 ; preds = %"$out_of_gas_2228", %"$have_gas_2224"
  %"$consume_2230" = sub i64 %"$gasrem_2226", 4
  store i64 %"$consume_2230", i64* @_gasrem, align 8
  %"$$sum_8_2231" = load %Uint32, %Uint32* %"$sum_8", align 4
  %"$int10_2232" = load %Uint32, %Uint32* %int10, align 4
  %"$add_call_2233" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_8_2231", %Uint32 %"$int10_2232"), !dbg !394
  store %Uint32 %"$add_call_2233", %Uint32* %"$sum_9", align 4, !dbg !394
  %"$gasrem_2234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2235" = icmp ugt i64 1, %"$gasrem_2234"
  br i1 %"$gascmp_2235", label %"$out_of_gas_2236", label %"$have_gas_2237"

"$out_of_gas_2236":                               ; preds = %"$have_gas_2229"
  call void @_out_of_gas()
  br label %"$have_gas_2237"

"$have_gas_2237":                                 ; preds = %"$out_of_gas_2236", %"$have_gas_2229"
  %"$consume_2238" = sub i64 %"$gasrem_2234", 1
  store i64 %"$consume_2238", i64* @_gasrem, align 8
  %"$sum_10" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_10", metadata !395, metadata !DIExpression()), !dbg !396
  %"$gasrem_2239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2240" = icmp ugt i64 4, %"$gasrem_2239"
  br i1 %"$gascmp_2240", label %"$out_of_gas_2241", label %"$have_gas_2242"

"$out_of_gas_2241":                               ; preds = %"$have_gas_2237"
  call void @_out_of_gas()
  br label %"$have_gas_2242"

"$have_gas_2242":                                 ; preds = %"$out_of_gas_2241", %"$have_gas_2237"
  %"$consume_2243" = sub i64 %"$gasrem_2239", 4
  store i64 %"$consume_2243", i64* @_gasrem, align 8
  %"$$sum_9_2244" = load %Uint32, %Uint32* %"$sum_9", align 4
  %"$int11_2245" = load %Uint32, %Uint32* %int11, align 4
  %"$add_call_2246" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_9_2244", %Uint32 %"$int11_2245"), !dbg !397
  store %Uint32 %"$add_call_2246", %Uint32* %"$sum_10", align 4, !dbg !397
  %"$gasrem_2247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2248" = icmp ugt i64 1, %"$gasrem_2247"
  br i1 %"$gascmp_2248", label %"$out_of_gas_2249", label %"$have_gas_2250"

"$out_of_gas_2249":                               ; preds = %"$have_gas_2242"
  call void @_out_of_gas()
  br label %"$have_gas_2250"

"$have_gas_2250":                                 ; preds = %"$out_of_gas_2249", %"$have_gas_2242"
  %"$consume_2251" = sub i64 %"$gasrem_2247", 1
  store i64 %"$consume_2251", i64* @_gasrem, align 8
  %"$sum_11" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_11", metadata !398, metadata !DIExpression()), !dbg !399
  %"$gasrem_2252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2253" = icmp ugt i64 4, %"$gasrem_2252"
  br i1 %"$gascmp_2253", label %"$out_of_gas_2254", label %"$have_gas_2255"

"$out_of_gas_2254":                               ; preds = %"$have_gas_2250"
  call void @_out_of_gas()
  br label %"$have_gas_2255"

"$have_gas_2255":                                 ; preds = %"$out_of_gas_2254", %"$have_gas_2250"
  %"$consume_2256" = sub i64 %"$gasrem_2252", 4
  store i64 %"$consume_2256", i64* @_gasrem, align 8
  %"$$sum_10_2257" = load %Uint32, %Uint32* %"$sum_10", align 4
  %"$int12_2258" = load %Uint32, %Uint32* %int12, align 4
  %"$add_call_2259" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_10_2257", %Uint32 %"$int12_2258"), !dbg !400
  store %Uint32 %"$add_call_2259", %Uint32* %"$sum_11", align 4, !dbg !400
  %"$gasrem_2260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2261" = icmp ugt i64 1, %"$gasrem_2260"
  br i1 %"$gascmp_2261", label %"$out_of_gas_2262", label %"$have_gas_2263"

"$out_of_gas_2262":                               ; preds = %"$have_gas_2255"
  call void @_out_of_gas()
  br label %"$have_gas_2263"

"$have_gas_2263":                                 ; preds = %"$out_of_gas_2262", %"$have_gas_2255"
  %"$consume_2264" = sub i64 %"$gasrem_2260", 1
  store i64 %"$consume_2264", i64* @_gasrem, align 8
  %"$sum_12" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_12", metadata !401, metadata !DIExpression()), !dbg !402
  %"$gasrem_2265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2266" = icmp ugt i64 4, %"$gasrem_2265"
  br i1 %"$gascmp_2266", label %"$out_of_gas_2267", label %"$have_gas_2268"

"$out_of_gas_2267":                               ; preds = %"$have_gas_2263"
  call void @_out_of_gas()
  br label %"$have_gas_2268"

"$have_gas_2268":                                 ; preds = %"$out_of_gas_2267", %"$have_gas_2263"
  %"$consume_2269" = sub i64 %"$gasrem_2265", 4
  store i64 %"$consume_2269", i64* @_gasrem, align 8
  %"$$sum_11_2270" = load %Uint32, %Uint32* %"$sum_11", align 4
  %"$int13_2271" = load %Uint32, %Uint32* %int13, align 4
  %"$add_call_2272" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_11_2270", %Uint32 %"$int13_2271"), !dbg !403
  store %Uint32 %"$add_call_2272", %Uint32* %"$sum_12", align 4, !dbg !403
  %"$gasrem_2273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2274" = icmp ugt i64 1, %"$gasrem_2273"
  br i1 %"$gascmp_2274", label %"$out_of_gas_2275", label %"$have_gas_2276"

"$out_of_gas_2275":                               ; preds = %"$have_gas_2268"
  call void @_out_of_gas()
  br label %"$have_gas_2276"

"$have_gas_2276":                                 ; preds = %"$out_of_gas_2275", %"$have_gas_2268"
  %"$consume_2277" = sub i64 %"$gasrem_2273", 1
  store i64 %"$consume_2277", i64* @_gasrem, align 8
  %"$sum_13" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_13", metadata !404, metadata !DIExpression()), !dbg !405
  %"$gasrem_2278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2279" = icmp ugt i64 4, %"$gasrem_2278"
  br i1 %"$gascmp_2279", label %"$out_of_gas_2280", label %"$have_gas_2281"

"$out_of_gas_2280":                               ; preds = %"$have_gas_2276"
  call void @_out_of_gas()
  br label %"$have_gas_2281"

"$have_gas_2281":                                 ; preds = %"$out_of_gas_2280", %"$have_gas_2276"
  %"$consume_2282" = sub i64 %"$gasrem_2278", 4
  store i64 %"$consume_2282", i64* @_gasrem, align 8
  %"$$sum_12_2283" = load %Uint32, %Uint32* %"$sum_12", align 4
  %"$int14_2284" = load %Uint32, %Uint32* %int14, align 4
  %"$add_call_2285" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_12_2283", %Uint32 %"$int14_2284"), !dbg !406
  store %Uint32 %"$add_call_2285", %Uint32* %"$sum_13", align 4, !dbg !406
  %"$gasrem_2286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2287" = icmp ugt i64 1, %"$gasrem_2286"
  br i1 %"$gascmp_2287", label %"$out_of_gas_2288", label %"$have_gas_2289"

"$out_of_gas_2288":                               ; preds = %"$have_gas_2281"
  call void @_out_of_gas()
  br label %"$have_gas_2289"

"$have_gas_2289":                                 ; preds = %"$out_of_gas_2288", %"$have_gas_2281"
  %"$consume_2290" = sub i64 %"$gasrem_2286", 1
  store i64 %"$consume_2290", i64* @_gasrem, align 8
  %"$sum_14" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_14", metadata !407, metadata !DIExpression()), !dbg !408
  %"$gasrem_2291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2292" = icmp ugt i64 4, %"$gasrem_2291"
  br i1 %"$gascmp_2292", label %"$out_of_gas_2293", label %"$have_gas_2294"

"$out_of_gas_2293":                               ; preds = %"$have_gas_2289"
  call void @_out_of_gas()
  br label %"$have_gas_2294"

"$have_gas_2294":                                 ; preds = %"$out_of_gas_2293", %"$have_gas_2289"
  %"$consume_2295" = sub i64 %"$gasrem_2291", 4
  store i64 %"$consume_2295", i64* @_gasrem, align 8
  %"$$sum_13_2296" = load %Uint32, %Uint32* %"$sum_13", align 4
  %"$int20_2297" = load %Uint32, %Uint32* %int20, align 4
  %"$add_call_2298" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_13_2296", %Uint32 %"$int20_2297"), !dbg !409
  store %Uint32 %"$add_call_2298", %Uint32* %"$sum_14", align 4, !dbg !409
  %"$gasrem_2299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2300" = icmp ugt i64 1, %"$gasrem_2299"
  br i1 %"$gascmp_2300", label %"$out_of_gas_2301", label %"$have_gas_2302"

"$out_of_gas_2301":                               ; preds = %"$have_gas_2294"
  call void @_out_of_gas()
  br label %"$have_gas_2302"

"$have_gas_2302":                                 ; preds = %"$out_of_gas_2301", %"$have_gas_2294"
  %"$consume_2303" = sub i64 %"$gasrem_2299", 1
  store i64 %"$consume_2303", i64* @_gasrem, align 8
  %"$sum_15" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_15", metadata !410, metadata !DIExpression()), !dbg !411
  %"$gasrem_2304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2305" = icmp ugt i64 4, %"$gasrem_2304"
  br i1 %"$gascmp_2305", label %"$out_of_gas_2306", label %"$have_gas_2307"

"$out_of_gas_2306":                               ; preds = %"$have_gas_2302"
  call void @_out_of_gas()
  br label %"$have_gas_2307"

"$have_gas_2307":                                 ; preds = %"$out_of_gas_2306", %"$have_gas_2302"
  %"$consume_2308" = sub i64 %"$gasrem_2304", 4
  store i64 %"$consume_2308", i64* @_gasrem, align 8
  %"$$sum_14_2309" = load %Uint32, %Uint32* %"$sum_14", align 4
  %"$int21_2310" = load %Uint32, %Uint32* %int21, align 4
  %"$add_call_2311" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_14_2309", %Uint32 %"$int21_2310"), !dbg !412
  store %Uint32 %"$add_call_2311", %Uint32* %"$sum_15", align 4, !dbg !412
  %"$gasrem_2312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2313" = icmp ugt i64 1, %"$gasrem_2312"
  br i1 %"$gascmp_2313", label %"$out_of_gas_2314", label %"$have_gas_2315"

"$out_of_gas_2314":                               ; preds = %"$have_gas_2307"
  call void @_out_of_gas()
  br label %"$have_gas_2315"

"$have_gas_2315":                                 ; preds = %"$out_of_gas_2314", %"$have_gas_2307"
  %"$consume_2316" = sub i64 %"$gasrem_2312", 1
  store i64 %"$consume_2316", i64* @_gasrem, align 8
  %"$sum_16" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_16", metadata !413, metadata !DIExpression()), !dbg !414
  %"$gasrem_2317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2318" = icmp ugt i64 4, %"$gasrem_2317"
  br i1 %"$gascmp_2318", label %"$out_of_gas_2319", label %"$have_gas_2320"

"$out_of_gas_2319":                               ; preds = %"$have_gas_2315"
  call void @_out_of_gas()
  br label %"$have_gas_2320"

"$have_gas_2320":                                 ; preds = %"$out_of_gas_2319", %"$have_gas_2315"
  %"$consume_2321" = sub i64 %"$gasrem_2317", 4
  store i64 %"$consume_2321", i64* @_gasrem, align 8
  %"$$sum_15_2322" = load %Uint32, %Uint32* %"$sum_15", align 4
  %"$int22_2323" = load %Uint32, %Uint32* %int22, align 4
  %"$add_call_2324" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_15_2322", %Uint32 %"$int22_2323"), !dbg !415
  store %Uint32 %"$add_call_2324", %Uint32* %"$sum_16", align 4, !dbg !415
  %"$gasrem_2325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2326" = icmp ugt i64 1, %"$gasrem_2325"
  br i1 %"$gascmp_2326", label %"$out_of_gas_2327", label %"$have_gas_2328"

"$out_of_gas_2327":                               ; preds = %"$have_gas_2320"
  call void @_out_of_gas()
  br label %"$have_gas_2328"

"$have_gas_2328":                                 ; preds = %"$out_of_gas_2327", %"$have_gas_2320"
  %"$consume_2329" = sub i64 %"$gasrem_2325", 1
  store i64 %"$consume_2329", i64* @_gasrem, align 8
  %"$sum_17" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_17", metadata !416, metadata !DIExpression()), !dbg !417
  %"$gasrem_2330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2331" = icmp ugt i64 4, %"$gasrem_2330"
  br i1 %"$gascmp_2331", label %"$out_of_gas_2332", label %"$have_gas_2333"

"$out_of_gas_2332":                               ; preds = %"$have_gas_2328"
  call void @_out_of_gas()
  br label %"$have_gas_2333"

"$have_gas_2333":                                 ; preds = %"$out_of_gas_2332", %"$have_gas_2328"
  %"$consume_2334" = sub i64 %"$gasrem_2330", 4
  store i64 %"$consume_2334", i64* @_gasrem, align 8
  %"$$sum_16_2335" = load %Uint32, %Uint32* %"$sum_16", align 4
  %"$int23_2336" = load %Uint32, %Uint32* %int23, align 4
  %"$add_call_2337" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_16_2335", %Uint32 %"$int23_2336"), !dbg !418
  store %Uint32 %"$add_call_2337", %Uint32* %"$sum_17", align 4, !dbg !418
  %"$gasrem_2338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2339" = icmp ugt i64 1, %"$gasrem_2338"
  br i1 %"$gascmp_2339", label %"$out_of_gas_2340", label %"$have_gas_2341"

"$out_of_gas_2340":                               ; preds = %"$have_gas_2333"
  call void @_out_of_gas()
  br label %"$have_gas_2341"

"$have_gas_2341":                                 ; preds = %"$out_of_gas_2340", %"$have_gas_2333"
  %"$consume_2342" = sub i64 %"$gasrem_2338", 1
  store i64 %"$consume_2342", i64* @_gasrem, align 8
  %"$sum_18" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_18", metadata !419, metadata !DIExpression()), !dbg !420
  %"$gasrem_2343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2344" = icmp ugt i64 4, %"$gasrem_2343"
  br i1 %"$gascmp_2344", label %"$out_of_gas_2345", label %"$have_gas_2346"

"$out_of_gas_2345":                               ; preds = %"$have_gas_2341"
  call void @_out_of_gas()
  br label %"$have_gas_2346"

"$have_gas_2346":                                 ; preds = %"$out_of_gas_2345", %"$have_gas_2341"
  %"$consume_2347" = sub i64 %"$gasrem_2343", 4
  store i64 %"$consume_2347", i64* @_gasrem, align 8
  %"$$sum_17_2348" = load %Uint32, %Uint32* %"$sum_17", align 4
  %"$int24_2349" = load %Uint32, %Uint32* %int24, align 4
  %"$add_call_2350" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_17_2348", %Uint32 %"$int24_2349"), !dbg !421
  store %Uint32 %"$add_call_2350", %Uint32* %"$sum_18", align 4, !dbg !421
  %"$gasrem_2351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2352" = icmp ugt i64 1, %"$gasrem_2351"
  br i1 %"$gascmp_2352", label %"$out_of_gas_2353", label %"$have_gas_2354"

"$out_of_gas_2353":                               ; preds = %"$have_gas_2346"
  call void @_out_of_gas()
  br label %"$have_gas_2354"

"$have_gas_2354":                                 ; preds = %"$out_of_gas_2353", %"$have_gas_2346"
  %"$consume_2355" = sub i64 %"$gasrem_2351", 1
  store i64 %"$consume_2355", i64* @_gasrem, align 8
  %"$sum_19" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_19", metadata !422, metadata !DIExpression()), !dbg !423
  %"$gasrem_2356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2357" = icmp ugt i64 4, %"$gasrem_2356"
  br i1 %"$gascmp_2357", label %"$out_of_gas_2358", label %"$have_gas_2359"

"$out_of_gas_2358":                               ; preds = %"$have_gas_2354"
  call void @_out_of_gas()
  br label %"$have_gas_2359"

"$have_gas_2359":                                 ; preds = %"$out_of_gas_2358", %"$have_gas_2354"
  %"$consume_2360" = sub i64 %"$gasrem_2356", 4
  store i64 %"$consume_2360", i64* @_gasrem, align 8
  %"$$sum_18_2361" = load %Uint32, %Uint32* %"$sum_18", align 4
  %"$int30_2362" = load %Uint32, %Uint32* %int30, align 4
  %"$add_call_2363" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_18_2361", %Uint32 %"$int30_2362"), !dbg !424
  store %Uint32 %"$add_call_2363", %Uint32* %"$sum_19", align 4, !dbg !424
  %"$gasrem_2364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2365" = icmp ugt i64 1, %"$gasrem_2364"
  br i1 %"$gascmp_2365", label %"$out_of_gas_2366", label %"$have_gas_2367"

"$out_of_gas_2366":                               ; preds = %"$have_gas_2359"
  call void @_out_of_gas()
  br label %"$have_gas_2367"

"$have_gas_2367":                                 ; preds = %"$out_of_gas_2366", %"$have_gas_2359"
  %"$consume_2368" = sub i64 %"$gasrem_2364", 1
  store i64 %"$consume_2368", i64* @_gasrem, align 8
  %"$sum_20" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_20", metadata !425, metadata !DIExpression()), !dbg !426
  %"$gasrem_2369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2370" = icmp ugt i64 4, %"$gasrem_2369"
  br i1 %"$gascmp_2370", label %"$out_of_gas_2371", label %"$have_gas_2372"

"$out_of_gas_2371":                               ; preds = %"$have_gas_2367"
  call void @_out_of_gas()
  br label %"$have_gas_2372"

"$have_gas_2372":                                 ; preds = %"$out_of_gas_2371", %"$have_gas_2367"
  %"$consume_2373" = sub i64 %"$gasrem_2369", 4
  store i64 %"$consume_2373", i64* @_gasrem, align 8
  %"$$sum_19_2374" = load %Uint32, %Uint32* %"$sum_19", align 4
  %"$int31_2375" = load %Uint32, %Uint32* %int31, align 4
  %"$add_call_2376" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_19_2374", %Uint32 %"$int31_2375"), !dbg !427
  store %Uint32 %"$add_call_2376", %Uint32* %"$sum_20", align 4, !dbg !427
  %"$gasrem_2377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2378" = icmp ugt i64 1, %"$gasrem_2377"
  br i1 %"$gascmp_2378", label %"$out_of_gas_2379", label %"$have_gas_2380"

"$out_of_gas_2379":                               ; preds = %"$have_gas_2372"
  call void @_out_of_gas()
  br label %"$have_gas_2380"

"$have_gas_2380":                                 ; preds = %"$out_of_gas_2379", %"$have_gas_2372"
  %"$consume_2381" = sub i64 %"$gasrem_2377", 1
  store i64 %"$consume_2381", i64* @_gasrem, align 8
  %"$sum_21" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_21", metadata !428, metadata !DIExpression()), !dbg !429
  %"$gasrem_2382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2383" = icmp ugt i64 4, %"$gasrem_2382"
  br i1 %"$gascmp_2383", label %"$out_of_gas_2384", label %"$have_gas_2385"

"$out_of_gas_2384":                               ; preds = %"$have_gas_2380"
  call void @_out_of_gas()
  br label %"$have_gas_2385"

"$have_gas_2385":                                 ; preds = %"$out_of_gas_2384", %"$have_gas_2380"
  %"$consume_2386" = sub i64 %"$gasrem_2382", 4
  store i64 %"$consume_2386", i64* @_gasrem, align 8
  %"$$sum_20_2387" = load %Uint32, %Uint32* %"$sum_20", align 4
  %"$int32_2388" = load %Uint32, %Uint32* %int32, align 4
  %"$add_call_2389" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_20_2387", %Uint32 %"$int32_2388"), !dbg !430
  store %Uint32 %"$add_call_2389", %Uint32* %"$sum_21", align 4, !dbg !430
  %"$gasrem_2390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2391" = icmp ugt i64 1, %"$gasrem_2390"
  br i1 %"$gascmp_2391", label %"$out_of_gas_2392", label %"$have_gas_2393"

"$out_of_gas_2392":                               ; preds = %"$have_gas_2385"
  call void @_out_of_gas()
  br label %"$have_gas_2393"

"$have_gas_2393":                                 ; preds = %"$out_of_gas_2392", %"$have_gas_2385"
  %"$consume_2394" = sub i64 %"$gasrem_2390", 1
  store i64 %"$consume_2394", i64* @_gasrem, align 8
  %"$sum_22" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_22", metadata !431, metadata !DIExpression()), !dbg !432
  %"$gasrem_2395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2396" = icmp ugt i64 4, %"$gasrem_2395"
  br i1 %"$gascmp_2396", label %"$out_of_gas_2397", label %"$have_gas_2398"

"$out_of_gas_2397":                               ; preds = %"$have_gas_2393"
  call void @_out_of_gas()
  br label %"$have_gas_2398"

"$have_gas_2398":                                 ; preds = %"$out_of_gas_2397", %"$have_gas_2393"
  %"$consume_2399" = sub i64 %"$gasrem_2395", 4
  store i64 %"$consume_2399", i64* @_gasrem, align 8
  %"$$sum_21_2400" = load %Uint32, %Uint32* %"$sum_21", align 4
  %"$int33_2401" = load %Uint32, %Uint32* %int33, align 4
  %"$add_call_2402" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_21_2400", %Uint32 %"$int33_2401"), !dbg !433
  store %Uint32 %"$add_call_2402", %Uint32* %"$sum_22", align 4, !dbg !433
  %"$gasrem_2403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2404" = icmp ugt i64 1, %"$gasrem_2403"
  br i1 %"$gascmp_2404", label %"$out_of_gas_2405", label %"$have_gas_2406"

"$out_of_gas_2405":                               ; preds = %"$have_gas_2398"
  call void @_out_of_gas()
  br label %"$have_gas_2406"

"$have_gas_2406":                                 ; preds = %"$out_of_gas_2405", %"$have_gas_2398"
  %"$consume_2407" = sub i64 %"$gasrem_2403", 1
  store i64 %"$consume_2407", i64* @_gasrem, align 8
  %"$sum_23" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_23", metadata !434, metadata !DIExpression()), !dbg !435
  %"$gasrem_2408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2409" = icmp ugt i64 4, %"$gasrem_2408"
  br i1 %"$gascmp_2409", label %"$out_of_gas_2410", label %"$have_gas_2411"

"$out_of_gas_2410":                               ; preds = %"$have_gas_2406"
  call void @_out_of_gas()
  br label %"$have_gas_2411"

"$have_gas_2411":                                 ; preds = %"$out_of_gas_2410", %"$have_gas_2406"
  %"$consume_2412" = sub i64 %"$gasrem_2408", 4
  store i64 %"$consume_2412", i64* @_gasrem, align 8
  %"$$sum_22_2413" = load %Uint32, %Uint32* %"$sum_22", align 4
  %"$int34_2414" = load %Uint32, %Uint32* %int34, align 4
  %"$add_call_2415" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_22_2413", %Uint32 %"$int34_2414"), !dbg !436
  store %Uint32 %"$add_call_2415", %Uint32* %"$sum_23", align 4, !dbg !436
  %"$gasrem_2416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2417" = icmp ugt i64 1, %"$gasrem_2416"
  br i1 %"$gascmp_2417", label %"$out_of_gas_2418", label %"$have_gas_2419"

"$out_of_gas_2418":                               ; preds = %"$have_gas_2411"
  call void @_out_of_gas()
  br label %"$have_gas_2419"

"$have_gas_2419":                                 ; preds = %"$out_of_gas_2418", %"$have_gas_2411"
  %"$consume_2420" = sub i64 %"$gasrem_2416", 1
  store i64 %"$consume_2420", i64* @_gasrem, align 8
  %"$sum_24" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$sum_24", metadata !437, metadata !DIExpression()), !dbg !438
  %"$gasrem_2421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2422" = icmp ugt i64 4, %"$gasrem_2421"
  br i1 %"$gascmp_2422", label %"$out_of_gas_2423", label %"$have_gas_2424"

"$out_of_gas_2423":                               ; preds = %"$have_gas_2419"
  call void @_out_of_gas()
  br label %"$have_gas_2424"

"$have_gas_2424":                                 ; preds = %"$out_of_gas_2423", %"$have_gas_2419"
  %"$consume_2425" = sub i64 %"$gasrem_2421", 4
  store i64 %"$consume_2425", i64* @_gasrem, align 8
  %"$$sum_23_2426" = load %Uint32, %Uint32* %"$sum_23", align 4
  %"$int40_2427" = load %Uint32, %Uint32* %int40, align 4
  %"$add_call_2428" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_23_2426", %Uint32 %"$int40_2427"), !dbg !439
  store %Uint32 %"$add_call_2428", %Uint32* %"$sum_24", align 4, !dbg !439
  %"$gasrem_2429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2430" = icmp ugt i64 1, %"$gasrem_2429"
  br i1 %"$gascmp_2430", label %"$out_of_gas_2431", label %"$have_gas_2432"

"$out_of_gas_2431":                               ; preds = %"$have_gas_2424"
  call void @_out_of_gas()
  br label %"$have_gas_2432"

"$have_gas_2432":                                 ; preds = %"$out_of_gas_2431", %"$have_gas_2424"
  %"$consume_2433" = sub i64 %"$gasrem_2429", 1
  store i64 %"$consume_2433", i64* @_gasrem, align 8
  %"$$sum_24_2434" = load %Uint32, %Uint32* %"$sum_24", align 4
  store %Uint32 %"$$sum_24_2434", %Uint32* %"$expr_139", align 4, !dbg !440
  %"$$expr_139_2435" = load %Uint32, %Uint32* %"$expr_139", align 4
  ret %Uint32 %"$$expr_139_2435"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_2436" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_2437" = alloca %Uint32, align 8
  %"$memvoidcast_2438" = bitcast %Uint32* %"$pval_2437" to i8*
  store %Uint32 %"$exprval_2436", %Uint32* %"$pval_2437", align 4
  %"$execptr_load_2439" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2439", %_TyDescrTy_Typ* @"$TyDescr_Uint32_176", i8* %"$memvoidcast_2438")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "ackermann.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_170", linkageName: "$fundef_170", scope: !2, file: !2, line: 25, type: !4, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "n", scope: !3, file: !2, line: 25, type: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Nat", baseType: !10, size: 8, align: 8, dwarfAddressSpace: 0)
!10 = !DIBasicType(name: "Nat", size: 8)
!11 = !DILocation(line: 25, column: 11, scope: !3)
!12 = !DILocation(line: 25, column: 23, scope: !3)
!13 = distinct !DISubprogram(name: "$fundef_168", linkageName: "$fundef_168", scope: !2, file: !2, line: 24, type: !4, scopeLine: 24, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!14 = !DILocalVariable(name: "n", scope: !13, file: !2, line: 24, type: !9)
!15 = !DILocation(line: 24, column: 10, scope: !13)
!16 = !DILocalVariable(name: "$retval_169", scope: !13, file: !2, line: 24, type: !9)
!17 = !DILocation(line: 24, column: 22, scope: !13)
!18 = !DILocalVariable(name: "$iter_nat_43", scope: !13, file: !2, line: 24, type: !9)
!19 = distinct !DISubprogram(name: "$fundef_166", linkageName: "$fundef_166", scope: !2, file: !2, line: 23, type: !4, scopeLine: 23, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!20 = !DILocalVariable(name: "x0", scope: !19, file: !2, line: 23, type: !9)
!21 = !DILocation(line: 23, column: 9, scope: !19)
!22 = !DILocalVariable(name: "$ack_40", scope: !19, file: !2, line: 23, type: !9)
!23 = !DILocation(line: 23, column: 14, scope: !19)
!24 = !DILocation(line: 24, column: 22, scope: !19)
!25 = distinct !DISubprogram(name: "$fundef_164", linkageName: "$fundef_164", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!26 = !DILocalVariable(name: "unused", scope: !25, file: !2, line: 13, type: !9)
!27 = !DILocation(line: 13, column: 35, scope: !25)
!28 = !DILocalVariable(name: "$retval_165", scope: !25, file: !2, line: 13, type: !9)
!29 = !DILocation(line: 13, column: 52, scope: !25)
!30 = !DILocalVariable(name: "$f_36", scope: !25, file: !2, line: 13, type: !9)
!31 = distinct !DISubprogram(name: "$fundef_162", linkageName: "$fundef_162", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!32 = !DILocalVariable(name: "x", scope: !31, file: !2, line: 13, type: !9)
!33 = !DILocation(line: 13, column: 19, scope: !31)
!34 = !DILocation(line: 13, column: 52, scope: !31)
!35 = distinct !DISubprogram(name: "$fundef_160", linkageName: "$fundef_160", scope: !2, file: !2, line: 12, type: !4, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!36 = !DILocalVariable(name: "x0", scope: !35, file: !2, line: 11, type: !9)
!37 = !DILocation(line: 11, column: 8, scope: !35)
!38 = !DILocalVariable(name: "$retval_161", scope: !35, file: !2, line: 12, type: !9)
!39 = !DILocation(line: 12, column: 3, scope: !35)
!40 = !DILocation(line: 12, column: 17, scope: !35)
!41 = !DILocation(line: 12, column: 16, scope: !35)
!42 = !DILocation(line: 13, column: 30, scope: !35)
!43 = !DILocation(line: 14, column: 3, scope: !35)
!44 = !DILocalVariable(name: "$folder_39", scope: !35, file: !2, line: 14, type: !9)
!45 = distinct !DISubprogram(name: "$fundef_158", linkageName: "$fundef_158", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!46 = !DILocalVariable(name: "n", scope: !45, file: !2, line: 10, type: !9)
!47 = !DILocation(line: 10, column: 8, scope: !45)
!48 = !DILocation(line: 12, column: 3, scope: !45)
!49 = distinct !DISubprogram(name: "$fundef_156", linkageName: "$fundef_156", scope: !2, file: !2, line: 10, type: !4, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!50 = !DILocation(line: 11, column: 3, scope: !49)
!51 = distinct !DISubprogram(name: "$fundef_154", linkageName: "$fundef_154", scope: !2, file: !2, line: 10, type: !4, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!52 = !DILocation(line: 10, column: 3, scope: !51)
!53 = distinct !DISubprogram(name: "$fundef_152", linkageName: "$fundef_152", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!54 = !DILocalVariable(name: "unused", scope: !53, file: !2, line: 13, type: !9)
!55 = !DILocation(line: 13, column: 35, scope: !53)
!56 = !DILocation(line: 13, column: 52, scope: !53)
!57 = distinct !DISubprogram(name: "$fundef_150", linkageName: "$fundef_150", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!58 = !DILocation(line: 13, column: 52, scope: !57)
!59 = distinct !DISubprogram(name: "$fundef_148", linkageName: "$fundef_148", scope: !2, file: !2, line: 12, type: !4, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!60 = !DILocation(line: 12, column: 17, scope: !59)
!61 = !DILocation(line: 12, column: 16, scope: !59)
!62 = !DILocation(line: 13, column: 30, scope: !59)
!63 = !DILocation(line: 14, column: 3, scope: !59)
!64 = distinct !DISubprogram(name: "$fundef_146", linkageName: "$fundef_146", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!65 = !DILocalVariable(name: "n", scope: !64, file: !2, line: 10, type: !9)
!66 = !DILocation(line: 10, column: 8, scope: !64)
!67 = !DILocation(line: 12, column: 3, scope: !64)
!68 = distinct !DISubprogram(name: "$fundef_144", linkageName: "$fundef_144", scope: !2, file: !2, line: 10, type: !4, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!69 = !DILocation(line: 11, column: 3, scope: !68)
!70 = distinct !DISubprogram(name: "$fundef_142", linkageName: "$fundef_142", scope: !2, file: !2, line: 10, type: !4, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!71 = !DILocation(line: 10, column: 3, scope: !70)
!72 = distinct !DISubprogram(name: "$fundef_140", linkageName: "$fundef_140", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!73 = !DILocalVariable(name: "n", scope: !72, file: !2, line: 3, type: !9)
!74 = !DILocation(line: 3, column: 8, scope: !72)
!75 = !DILocalVariable(name: "$retval_141", scope: !72, file: !2, line: 3, type: !9)
!76 = !DILocation(line: 3, column: 20, scope: !72)
!77 = distinct !DISubprogram(name: "$fundef_137", linkageName: "$fundef_137", scope: !78, file: !78, line: 55, type: !4, scopeLine: 55, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!78 = !DIFile(filename: "NatUtils.scillib", directory: "../src/stdlib")
!79 = !DILocalVariable(name: "ignore", scope: !77, file: !78, line: 54, type: !9)
!80 = !DILocation(line: 54, column: 38, scope: !77)
!81 = !DILocalVariable(name: "$retval_138", scope: !77, file: !78, line: 55, type: !82)
!82 = !DIBasicType(name: "Uint32", size: 4)
!83 = !DILocation(line: 55, column: 7, scope: !77)
!84 = distinct !DISubprogram(name: "$fundef_135", linkageName: "$fundef_135", scope: !78, file: !78, line: 54, type: !4, scopeLine: 54, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!85 = !DILocalVariable(name: "z", scope: !84, file: !78, line: 54, type: !82)
!86 = !DILocation(line: 54, column: 18, scope: !84)
!87 = !DILocation(line: 55, column: 7, scope: !84)
!88 = distinct !DISubprogram(name: "$fundef_133", linkageName: "$fundef_133", scope: !78, file: !78, line: 52, type: !4, scopeLine: 52, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!89 = !DILocalVariable(name: "n", scope: !88, file: !78, line: 51, type: !9)
!90 = !DILocation(line: 51, column: 8, scope: !88)
!91 = !DILocalVariable(name: "$retval_134", scope: !88, file: !78, line: 52, type: !82)
!92 = !DILocation(line: 52, column: 5, scope: !88)
!93 = !DILocation(line: 52, column: 17, scope: !88)
!94 = !DILocation(line: 52, column: 16, scope: !88)
!95 = !DILocalVariable(name: "one_int", scope: !88, file: !78, line: 53, type: !82)
!96 = !DILocation(line: 53, column: 9, scope: !88)
!97 = !DILocation(line: 53, column: 19, scope: !88)
!98 = !DILocation(line: 54, column: 33, scope: !88)
!99 = !DILocalVariable(name: "zero_int", scope: !88, file: !78, line: 56, type: !82)
!100 = !DILocation(line: 56, column: 9, scope: !88)
!101 = !DILocation(line: 56, column: 20, scope: !88)
!102 = !DILocation(line: 57, column: 5, scope: !88)
!103 = !DILocalVariable(name: "$fold_35", scope: !88, file: !78, line: 57, type: !82)
!104 = distinct !DISubprogram(name: "$fundef_131", linkageName: "$fundef_131", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!105 = !DIFile(filename: "Prelude", directory: ".")
!106 = !DILocalVariable(name: "n", scope: !104, file: !105, line: 1, type: !9)
!107 = !DILocation(line: 1, column: 23, scope: !104)
!108 = !DILocalVariable(name: "$retval_132", scope: !104, file: !105, line: 1, type: !82)
!109 = !DILocation(line: 1, column: 34, scope: !104)
!110 = !DILocalVariable(name: "res", scope: !111, file: !105, line: 1, type: !82)
!111 = distinct !DILexicalBlock(scope: !112, file: !105, line: 1, column: 50)
!112 = distinct !DILexicalBlock(scope: !104, file: !105, line: 1, column: 34)
!113 = !DILocation(line: 1, column: 65, scope: !111)
!114 = !DILocation(line: 1, column: 71, scope: !111)
!115 = !DILocalVariable(name: "$fn_30", scope: !111, file: !105, line: 1, type: !82)
!116 = !DILocation(line: 1, column: 86, scope: !111)
!117 = !DILocalVariable(name: "$g_32", scope: !111, file: !105, line: 1, type: !82)
!118 = !DILocation(line: 1, column: 106, scope: !119)
!119 = distinct !DILexicalBlock(scope: !112, file: !105, line: 1, column: 98)
!120 = distinct !DISubprogram(name: "$fundef_129", linkageName: "$fundef_129", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!121 = !DILocalVariable(name: "f0", scope: !120, file: !105, line: 1, type: !82)
!122 = !DILocation(line: 1, column: 6, scope: !120)
!123 = !DILocation(line: 1, column: 34, scope: !120)
!124 = distinct !DISubprogram(name: "$fundef_127", linkageName: "$fundef_127", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!125 = !DILocation(line: 1, column: 18, scope: !124)
!126 = distinct !DISubprogram(name: "$fundef_125", linkageName: "$fundef_125", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!127 = !DILocation(line: 1, column: 18, scope: !126)
!128 = distinct !DISubprogram(name: "$fundef_123", linkageName: "$fundef_123", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!129 = !DILocalVariable(name: "n", scope: !128, file: !105, line: 1, type: !9)
!130 = !DILocation(line: 1, column: 23, scope: !128)
!131 = !DILocalVariable(name: "$retval_124", scope: !128, file: !105, line: 1, type: !9)
!132 = !DILocation(line: 1, column: 34, scope: !128)
!133 = !DILocalVariable(name: "res", scope: !134, file: !105, line: 1, type: !9)
!134 = distinct !DILexicalBlock(scope: !135, file: !105, line: 1, column: 50)
!135 = distinct !DILexicalBlock(scope: !128, file: !105, line: 1, column: 34)
!136 = !DILocation(line: 1, column: 65, scope: !134)
!137 = !DILocation(line: 1, column: 71, scope: !134)
!138 = !DILocalVariable(name: "$fn_26", scope: !134, file: !105, line: 1, type: !9)
!139 = !DILocation(line: 1, column: 86, scope: !134)
!140 = !DILocalVariable(name: "$g_28", scope: !134, file: !105, line: 1, type: !9)
!141 = !DILocation(line: 1, column: 106, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !105, line: 1, column: 98)
!143 = distinct !DISubprogram(name: "$fundef_121", linkageName: "$fundef_121", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!144 = !DILocalVariable(name: "f0", scope: !143, file: !105, line: 1, type: !9)
!145 = !DILocation(line: 1, column: 6, scope: !143)
!146 = !DILocation(line: 1, column: 34, scope: !143)
!147 = distinct !DISubprogram(name: "$fundef_119", linkageName: "$fundef_119", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!148 = !DILocation(line: 1, column: 18, scope: !147)
!149 = distinct !DISubprogram(name: "$fundef_117", linkageName: "$fundef_117", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!150 = !DILocation(line: 1, column: 18, scope: !149)
!151 = distinct !DISubprogram(name: "$fundef_115", linkageName: "$fundef_115", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!152 = !DILocalVariable(name: "n", scope: !151, file: !105, line: 1, type: !9)
!153 = !DILocation(line: 1, column: 23, scope: !151)
!154 = !DILocation(line: 1, column: 34, scope: !151)
!155 = !DILocation(line: 1, column: 71, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !105, line: 1, column: 50)
!157 = distinct !DILexicalBlock(scope: !151, file: !105, line: 1, column: 34)
!158 = !DILocation(line: 1, column: 86, scope: !156)
!159 = !DILocation(line: 1, column: 106, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !105, line: 1, column: 98)
!161 = distinct !DISubprogram(name: "$fundef_113", linkageName: "$fundef_113", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!162 = !DILocation(line: 1, column: 34, scope: !161)
!163 = distinct !DISubprogram(name: "$fundef_111", linkageName: "$fundef_111", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!164 = !DILocation(line: 1, column: 18, scope: !163)
!165 = distinct !DISubprogram(name: "$fundef_109", linkageName: "$fundef_109", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!166 = !DILocation(line: 1, column: 18, scope: !165)
!167 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !168, file: !168, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!168 = !DIFile(filename: ".", directory: ".")
!169 = !DILocation(line: 0, scope: !167)
!170 = !DILocation(line: 1, column: 18, scope: !167)
!171 = !DILocation(line: 52, column: 5, scope: !167)
!172 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!173 = !DILocalVariable(name: "$expr_139", scope: !172, file: !2, line: 3, type: !82)
!174 = !DILocation(line: 3, column: 3, scope: !172)
!175 = !DILocation(line: 3, column: 20, scope: !172)
!176 = !DILocation(line: 8, column: 3, scope: !172)
!177 = !DILocation(line: 18, column: 19, scope: !172)
!178 = !DILocation(line: 18, column: 18, scope: !172)
!179 = !DILocation(line: 19, column: 23, scope: !172)
!180 = !DILocation(line: 19, column: 22, scope: !172)
!181 = !DILocalVariable(name: "zero", scope: !172, file: !2, line: 20, type: !9)
!182 = !DILocation(line: 20, column: 7, scope: !172)
!183 = !DILocation(line: 20, column: 14, scope: !172)
!184 = !DILocalVariable(name: "one", scope: !172, file: !2, line: 21, type: !9)
!185 = !DILocation(line: 21, column: 7, scope: !172)
!186 = !DILocation(line: 21, column: 13, scope: !172)
!187 = !DILocation(line: 23, column: 5, scope: !172)
!188 = !DILocation(line: 25, column: 23, scope: !172)
!189 = !DILocalVariable(name: "uint0", scope: !172, file: !2, line: 29, type: !82)
!190 = !DILocation(line: 29, column: 5, scope: !172)
!191 = !DILocation(line: 29, column: 13, scope: !172)
!192 = !DILocalVariable(name: "uint1", scope: !172, file: !2, line: 30, type: !82)
!193 = !DILocation(line: 30, column: 5, scope: !172)
!194 = !DILocation(line: 30, column: 13, scope: !172)
!195 = !DILocalVariable(name: "uint2", scope: !172, file: !2, line: 31, type: !82)
!196 = !DILocation(line: 31, column: 5, scope: !172)
!197 = !DILocation(line: 31, column: 13, scope: !172)
!198 = !DILocalVariable(name: "uint3", scope: !172, file: !2, line: 32, type: !82)
!199 = !DILocation(line: 32, column: 5, scope: !172)
!200 = !DILocation(line: 32, column: 13, scope: !172)
!201 = !DILocalVariable(name: "uint4", scope: !172, file: !2, line: 33, type: !82)
!202 = !DILocation(line: 33, column: 5, scope: !172)
!203 = !DILocation(line: 33, column: 13, scope: !172)
!204 = !DILocalVariable(name: "n0", scope: !172, file: !2, line: 35, type: !9)
!205 = !DILocation(line: 35, column: 5, scope: !172)
!206 = !DILocation(line: 35, column: 10, scope: !172)
!207 = !DILocalVariable(name: "n1", scope: !172, file: !2, line: 36, type: !9)
!208 = !DILocation(line: 36, column: 5, scope: !172)
!209 = !DILocation(line: 36, column: 10, scope: !172)
!210 = !DILocalVariable(name: "n2", scope: !172, file: !2, line: 37, type: !9)
!211 = !DILocation(line: 37, column: 5, scope: !172)
!212 = !DILocation(line: 37, column: 10, scope: !172)
!213 = !DILocalVariable(name: "n3", scope: !172, file: !2, line: 38, type: !9)
!214 = !DILocation(line: 38, column: 5, scope: !172)
!215 = !DILocation(line: 38, column: 10, scope: !172)
!216 = !DILocalVariable(name: "n4", scope: !172, file: !2, line: 39, type: !9)
!217 = !DILocation(line: 39, column: 5, scope: !172)
!218 = !DILocation(line: 39, column: 10, scope: !172)
!219 = !DILocalVariable(name: "ack00", scope: !172, file: !2, line: 41, type: !9)
!220 = !DILocation(line: 41, column: 5, scope: !172)
!221 = !DILocation(line: 41, column: 13, scope: !172)
!222 = !DILocalVariable(name: "$ackermann_48", scope: !172, file: !2, line: 41, type: !9)
!223 = !DILocalVariable(name: "ack01", scope: !172, file: !2, line: 42, type: !9)
!224 = !DILocation(line: 42, column: 5, scope: !172)
!225 = !DILocation(line: 42, column: 13, scope: !172)
!226 = !DILocalVariable(name: "$ackermann_50", scope: !172, file: !2, line: 42, type: !9)
!227 = !DILocalVariable(name: "ack02", scope: !172, file: !2, line: 43, type: !9)
!228 = !DILocation(line: 43, column: 5, scope: !172)
!229 = !DILocation(line: 43, column: 13, scope: !172)
!230 = !DILocalVariable(name: "$ackermann_52", scope: !172, file: !2, line: 43, type: !9)
!231 = !DILocalVariable(name: "ack03", scope: !172, file: !2, line: 44, type: !9)
!232 = !DILocation(line: 44, column: 5, scope: !172)
!233 = !DILocation(line: 44, column: 13, scope: !172)
!234 = !DILocalVariable(name: "$ackermann_54", scope: !172, file: !2, line: 44, type: !9)
!235 = !DILocalVariable(name: "ack04", scope: !172, file: !2, line: 45, type: !9)
!236 = !DILocation(line: 45, column: 5, scope: !172)
!237 = !DILocation(line: 45, column: 13, scope: !172)
!238 = !DILocalVariable(name: "$ackermann_56", scope: !172, file: !2, line: 45, type: !9)
!239 = !DILocalVariable(name: "ack10", scope: !172, file: !2, line: 46, type: !9)
!240 = !DILocation(line: 46, column: 5, scope: !172)
!241 = !DILocation(line: 46, column: 13, scope: !172)
!242 = !DILocalVariable(name: "$ackermann_58", scope: !172, file: !2, line: 46, type: !9)
!243 = !DILocalVariable(name: "ack11", scope: !172, file: !2, line: 47, type: !9)
!244 = !DILocation(line: 47, column: 5, scope: !172)
!245 = !DILocation(line: 47, column: 13, scope: !172)
!246 = !DILocalVariable(name: "$ackermann_60", scope: !172, file: !2, line: 47, type: !9)
!247 = !DILocalVariable(name: "ack12", scope: !172, file: !2, line: 48, type: !9)
!248 = !DILocation(line: 48, column: 5, scope: !172)
!249 = !DILocation(line: 48, column: 13, scope: !172)
!250 = !DILocalVariable(name: "$ackermann_62", scope: !172, file: !2, line: 48, type: !9)
!251 = !DILocalVariable(name: "ack13", scope: !172, file: !2, line: 49, type: !9)
!252 = !DILocation(line: 49, column: 5, scope: !172)
!253 = !DILocation(line: 49, column: 13, scope: !172)
!254 = !DILocalVariable(name: "$ackermann_64", scope: !172, file: !2, line: 49, type: !9)
!255 = !DILocalVariable(name: "ack14", scope: !172, file: !2, line: 50, type: !9)
!256 = !DILocation(line: 50, column: 5, scope: !172)
!257 = !DILocation(line: 50, column: 13, scope: !172)
!258 = !DILocalVariable(name: "$ackermann_66", scope: !172, file: !2, line: 50, type: !9)
!259 = !DILocalVariable(name: "ack20", scope: !172, file: !2, line: 51, type: !9)
!260 = !DILocation(line: 51, column: 5, scope: !172)
!261 = !DILocation(line: 51, column: 13, scope: !172)
!262 = !DILocalVariable(name: "$ackermann_68", scope: !172, file: !2, line: 51, type: !9)
!263 = !DILocalVariable(name: "ack21", scope: !172, file: !2, line: 52, type: !9)
!264 = !DILocation(line: 52, column: 5, scope: !172)
!265 = !DILocation(line: 52, column: 13, scope: !172)
!266 = !DILocalVariable(name: "$ackermann_70", scope: !172, file: !2, line: 52, type: !9)
!267 = !DILocalVariable(name: "ack22", scope: !172, file: !2, line: 53, type: !9)
!268 = !DILocation(line: 53, column: 5, scope: !172)
!269 = !DILocation(line: 53, column: 13, scope: !172)
!270 = !DILocalVariable(name: "$ackermann_72", scope: !172, file: !2, line: 53, type: !9)
!271 = !DILocalVariable(name: "ack23", scope: !172, file: !2, line: 54, type: !9)
!272 = !DILocation(line: 54, column: 5, scope: !172)
!273 = !DILocation(line: 54, column: 13, scope: !172)
!274 = !DILocalVariable(name: "$ackermann_74", scope: !172, file: !2, line: 54, type: !9)
!275 = !DILocalVariable(name: "ack24", scope: !172, file: !2, line: 55, type: !9)
!276 = !DILocation(line: 55, column: 5, scope: !172)
!277 = !DILocation(line: 55, column: 13, scope: !172)
!278 = !DILocalVariable(name: "$ackermann_76", scope: !172, file: !2, line: 55, type: !9)
!279 = !DILocalVariable(name: "ack30", scope: !172, file: !2, line: 56, type: !9)
!280 = !DILocation(line: 56, column: 5, scope: !172)
!281 = !DILocation(line: 56, column: 13, scope: !172)
!282 = !DILocalVariable(name: "$ackermann_78", scope: !172, file: !2, line: 56, type: !9)
!283 = !DILocalVariable(name: "ack31", scope: !172, file: !2, line: 57, type: !9)
!284 = !DILocation(line: 57, column: 5, scope: !172)
!285 = !DILocation(line: 57, column: 13, scope: !172)
!286 = !DILocalVariable(name: "$ackermann_80", scope: !172, file: !2, line: 57, type: !9)
!287 = !DILocalVariable(name: "ack32", scope: !172, file: !2, line: 58, type: !9)
!288 = !DILocation(line: 58, column: 5, scope: !172)
!289 = !DILocation(line: 58, column: 13, scope: !172)
!290 = !DILocalVariable(name: "$ackermann_82", scope: !172, file: !2, line: 58, type: !9)
!291 = !DILocalVariable(name: "ack33", scope: !172, file: !2, line: 59, type: !9)
!292 = !DILocation(line: 59, column: 5, scope: !172)
!293 = !DILocation(line: 59, column: 13, scope: !172)
!294 = !DILocalVariable(name: "$ackermann_84", scope: !172, file: !2, line: 59, type: !9)
!295 = !DILocalVariable(name: "ack34", scope: !172, file: !2, line: 60, type: !9)
!296 = !DILocation(line: 60, column: 5, scope: !172)
!297 = !DILocation(line: 60, column: 13, scope: !172)
!298 = !DILocalVariable(name: "$ackermann_86", scope: !172, file: !2, line: 60, type: !9)
!299 = !DILocalVariable(name: "ack40", scope: !172, file: !2, line: 61, type: !9)
!300 = !DILocation(line: 61, column: 5, scope: !172)
!301 = !DILocation(line: 61, column: 13, scope: !172)
!302 = !DILocalVariable(name: "$ackermann_88", scope: !172, file: !2, line: 61, type: !9)
!303 = !DILocalVariable(name: "int01", scope: !172, file: !2, line: 63, type: !82)
!304 = !DILocation(line: 63, column: 5, scope: !172)
!305 = !DILocalVariable(name: "$NatUtils.nat_to_int_89", scope: !172, file: !2, line: 63, type: !82)
!306 = !DILocation(line: 63, column: 13, scope: !172)
!307 = !DILocalVariable(name: "int02", scope: !172, file: !2, line: 64, type: !82)
!308 = !DILocation(line: 64, column: 5, scope: !172)
!309 = !DILocalVariable(name: "$NatUtils.nat_to_int_90", scope: !172, file: !2, line: 64, type: !82)
!310 = !DILocation(line: 64, column: 13, scope: !172)
!311 = !DILocalVariable(name: "int03", scope: !172, file: !2, line: 65, type: !82)
!312 = !DILocation(line: 65, column: 5, scope: !172)
!313 = !DILocalVariable(name: "$NatUtils.nat_to_int_91", scope: !172, file: !2, line: 65, type: !82)
!314 = !DILocation(line: 65, column: 13, scope: !172)
!315 = !DILocalVariable(name: "int04", scope: !172, file: !2, line: 66, type: !82)
!316 = !DILocation(line: 66, column: 5, scope: !172)
!317 = !DILocalVariable(name: "$NatUtils.nat_to_int_92", scope: !172, file: !2, line: 66, type: !82)
!318 = !DILocation(line: 66, column: 13, scope: !172)
!319 = !DILocalVariable(name: "int10", scope: !172, file: !2, line: 67, type: !82)
!320 = !DILocation(line: 67, column: 5, scope: !172)
!321 = !DILocalVariable(name: "$NatUtils.nat_to_int_93", scope: !172, file: !2, line: 67, type: !82)
!322 = !DILocation(line: 67, column: 13, scope: !172)
!323 = !DILocalVariable(name: "int11", scope: !172, file: !2, line: 68, type: !82)
!324 = !DILocation(line: 68, column: 5, scope: !172)
!325 = !DILocalVariable(name: "$NatUtils.nat_to_int_94", scope: !172, file: !2, line: 68, type: !82)
!326 = !DILocation(line: 68, column: 13, scope: !172)
!327 = !DILocalVariable(name: "int12", scope: !172, file: !2, line: 69, type: !82)
!328 = !DILocation(line: 69, column: 5, scope: !172)
!329 = !DILocalVariable(name: "$NatUtils.nat_to_int_95", scope: !172, file: !2, line: 69, type: !82)
!330 = !DILocation(line: 69, column: 13, scope: !172)
!331 = !DILocalVariable(name: "int13", scope: !172, file: !2, line: 70, type: !82)
!332 = !DILocation(line: 70, column: 5, scope: !172)
!333 = !DILocalVariable(name: "$NatUtils.nat_to_int_96", scope: !172, file: !2, line: 70, type: !82)
!334 = !DILocation(line: 70, column: 13, scope: !172)
!335 = !DILocalVariable(name: "int14", scope: !172, file: !2, line: 71, type: !82)
!336 = !DILocation(line: 71, column: 5, scope: !172)
!337 = !DILocalVariable(name: "$NatUtils.nat_to_int_97", scope: !172, file: !2, line: 71, type: !82)
!338 = !DILocation(line: 71, column: 13, scope: !172)
!339 = !DILocalVariable(name: "int20", scope: !172, file: !2, line: 72, type: !82)
!340 = !DILocation(line: 72, column: 5, scope: !172)
!341 = !DILocalVariable(name: "$NatUtils.nat_to_int_98", scope: !172, file: !2, line: 72, type: !82)
!342 = !DILocation(line: 72, column: 13, scope: !172)
!343 = !DILocalVariable(name: "int21", scope: !172, file: !2, line: 73, type: !82)
!344 = !DILocation(line: 73, column: 5, scope: !172)
!345 = !DILocalVariable(name: "$NatUtils.nat_to_int_99", scope: !172, file: !2, line: 73, type: !82)
!346 = !DILocation(line: 73, column: 13, scope: !172)
!347 = !DILocalVariable(name: "int22", scope: !172, file: !2, line: 74, type: !82)
!348 = !DILocation(line: 74, column: 5, scope: !172)
!349 = !DILocalVariable(name: "$NatUtils.nat_to_int_100", scope: !172, file: !2, line: 74, type: !82)
!350 = !DILocation(line: 74, column: 13, scope: !172)
!351 = !DILocalVariable(name: "int23", scope: !172, file: !2, line: 75, type: !82)
!352 = !DILocation(line: 75, column: 5, scope: !172)
!353 = !DILocalVariable(name: "$NatUtils.nat_to_int_101", scope: !172, file: !2, line: 75, type: !82)
!354 = !DILocation(line: 75, column: 13, scope: !172)
!355 = !DILocalVariable(name: "int24", scope: !172, file: !2, line: 76, type: !82)
!356 = !DILocation(line: 76, column: 5, scope: !172)
!357 = !DILocalVariable(name: "$NatUtils.nat_to_int_102", scope: !172, file: !2, line: 76, type: !82)
!358 = !DILocation(line: 76, column: 13, scope: !172)
!359 = !DILocalVariable(name: "int30", scope: !172, file: !2, line: 77, type: !82)
!360 = !DILocation(line: 77, column: 5, scope: !172)
!361 = !DILocalVariable(name: "$NatUtils.nat_to_int_103", scope: !172, file: !2, line: 77, type: !82)
!362 = !DILocation(line: 77, column: 13, scope: !172)
!363 = !DILocalVariable(name: "int31", scope: !172, file: !2, line: 78, type: !82)
!364 = !DILocation(line: 78, column: 5, scope: !172)
!365 = !DILocalVariable(name: "$NatUtils.nat_to_int_104", scope: !172, file: !2, line: 78, type: !82)
!366 = !DILocation(line: 78, column: 13, scope: !172)
!367 = !DILocalVariable(name: "int32", scope: !172, file: !2, line: 79, type: !82)
!368 = !DILocation(line: 79, column: 5, scope: !172)
!369 = !DILocalVariable(name: "$NatUtils.nat_to_int_105", scope: !172, file: !2, line: 79, type: !82)
!370 = !DILocation(line: 79, column: 13, scope: !172)
!371 = !DILocalVariable(name: "int33", scope: !172, file: !2, line: 80, type: !82)
!372 = !DILocation(line: 80, column: 5, scope: !172)
!373 = !DILocalVariable(name: "$NatUtils.nat_to_int_106", scope: !172, file: !2, line: 80, type: !82)
!374 = !DILocation(line: 80, column: 13, scope: !172)
!375 = !DILocalVariable(name: "int34", scope: !172, file: !2, line: 81, type: !82)
!376 = !DILocation(line: 81, column: 5, scope: !172)
!377 = !DILocalVariable(name: "$NatUtils.nat_to_int_107", scope: !172, file: !2, line: 81, type: !82)
!378 = !DILocation(line: 81, column: 13, scope: !172)
!379 = !DILocalVariable(name: "int40", scope: !172, file: !2, line: 82, type: !82)
!380 = !DILocation(line: 82, column: 5, scope: !172)
!381 = !DILocalVariable(name: "$NatUtils.nat_to_int_108", scope: !172, file: !2, line: 82, type: !82)
!382 = !DILocation(line: 82, column: 13, scope: !172)
!383 = !DILocalVariable(name: "sum", scope: !172, file: !2, line: 84, type: !82)
!384 = !DILocation(line: 84, column: 5, scope: !172)
!385 = !DILocation(line: 84, column: 11, scope: !172)
!386 = !DILocalVariable(name: "$sum_7", scope: !172, file: !2, line: 85, type: !82)
!387 = !DILocation(line: 85, column: 5, scope: !172)
!388 = !DILocation(line: 85, column: 11, scope: !172)
!389 = !DILocalVariable(name: "$sum_8", scope: !172, file: !2, line: 86, type: !82)
!390 = !DILocation(line: 86, column: 5, scope: !172)
!391 = !DILocation(line: 86, column: 11, scope: !172)
!392 = !DILocalVariable(name: "$sum_9", scope: !172, file: !2, line: 87, type: !82)
!393 = !DILocation(line: 87, column: 5, scope: !172)
!394 = !DILocation(line: 87, column: 11, scope: !172)
!395 = !DILocalVariable(name: "$sum_10", scope: !172, file: !2, line: 88, type: !82)
!396 = !DILocation(line: 88, column: 5, scope: !172)
!397 = !DILocation(line: 88, column: 11, scope: !172)
!398 = !DILocalVariable(name: "$sum_11", scope: !172, file: !2, line: 89, type: !82)
!399 = !DILocation(line: 89, column: 5, scope: !172)
!400 = !DILocation(line: 89, column: 11, scope: !172)
!401 = !DILocalVariable(name: "$sum_12", scope: !172, file: !2, line: 90, type: !82)
!402 = !DILocation(line: 90, column: 5, scope: !172)
!403 = !DILocation(line: 90, column: 11, scope: !172)
!404 = !DILocalVariable(name: "$sum_13", scope: !172, file: !2, line: 91, type: !82)
!405 = !DILocation(line: 91, column: 5, scope: !172)
!406 = !DILocation(line: 91, column: 11, scope: !172)
!407 = !DILocalVariable(name: "$sum_14", scope: !172, file: !2, line: 92, type: !82)
!408 = !DILocation(line: 92, column: 5, scope: !172)
!409 = !DILocation(line: 92, column: 11, scope: !172)
!410 = !DILocalVariable(name: "$sum_15", scope: !172, file: !2, line: 93, type: !82)
!411 = !DILocation(line: 93, column: 5, scope: !172)
!412 = !DILocation(line: 93, column: 11, scope: !172)
!413 = !DILocalVariable(name: "$sum_16", scope: !172, file: !2, line: 94, type: !82)
!414 = !DILocation(line: 94, column: 5, scope: !172)
!415 = !DILocation(line: 94, column: 11, scope: !172)
!416 = !DILocalVariable(name: "$sum_17", scope: !172, file: !2, line: 95, type: !82)
!417 = !DILocation(line: 95, column: 5, scope: !172)
!418 = !DILocation(line: 95, column: 11, scope: !172)
!419 = !DILocalVariable(name: "$sum_18", scope: !172, file: !2, line: 96, type: !82)
!420 = !DILocation(line: 96, column: 5, scope: !172)
!421 = !DILocation(line: 96, column: 11, scope: !172)
!422 = !DILocalVariable(name: "$sum_19", scope: !172, file: !2, line: 97, type: !82)
!423 = !DILocation(line: 97, column: 5, scope: !172)
!424 = !DILocation(line: 97, column: 11, scope: !172)
!425 = !DILocalVariable(name: "$sum_20", scope: !172, file: !2, line: 98, type: !82)
!426 = !DILocation(line: 98, column: 5, scope: !172)
!427 = !DILocation(line: 98, column: 11, scope: !172)
!428 = !DILocalVariable(name: "$sum_21", scope: !172, file: !2, line: 99, type: !82)
!429 = !DILocation(line: 99, column: 5, scope: !172)
!430 = !DILocation(line: 99, column: 11, scope: !172)
!431 = !DILocalVariable(name: "$sum_22", scope: !172, file: !2, line: 100, type: !82)
!432 = !DILocation(line: 100, column: 5, scope: !172)
!433 = !DILocation(line: 100, column: 11, scope: !172)
!434 = !DILocalVariable(name: "$sum_23", scope: !172, file: !2, line: 101, type: !82)
!435 = !DILocation(line: 101, column: 5, scope: !172)
!436 = !DILocation(line: 101, column: 11, scope: !172)
!437 = !DILocalVariable(name: "$sum_24", scope: !172, file: !2, line: 102, type: !82)
!438 = !DILocation(line: 102, column: 5, scope: !172)
!439 = !DILocation(line: 102, column: 11, scope: !172)
!440 = !DILocation(line: 104, column: 1, scope: !172)
