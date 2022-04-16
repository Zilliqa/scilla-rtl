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
%"$ParamDescr_2423" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2424" = type { %ParamDescrString, i32, %"$ParamDescr_2423"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_2423"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2424"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_170"(%"$$fundef_170_env_222"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_170_env_f_1042" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %0, i32 0, i32 0
  %"$f_envload_1043" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_170_env_f_1042", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_1043", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_170_env_iter_nat_nat_1044" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_1045" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_170_env_iter_nat_nat_1044", align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_1045", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$$fundef_170_env_nat_succ_1046" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %0, i32 0, i32 2
  %"$nat_succ_envload_1047" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_170_env_nat_succ_1046", align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_1047", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$retval_171" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1049" = icmp ugt i64 1, %"$gasrem_1048"
  br i1 %"$gascmp_1049", label %"$out_of_gas_1050", label %"$have_gas_1051"

"$out_of_gas_1050":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1051"

"$have_gas_1051":                                 ; preds = %"$out_of_gas_1050", %entry
  %"$consume_1052" = sub i64 %"$gasrem_1048", 1
  store i64 %"$consume_1052", i64* @_gasrem, align 8
  %"$iter_nat_nat_44" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_nat_1053" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$iter_nat_nat_fptr_1054" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1053", 0
  %"$iter_nat_nat_envptr_1055" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1053", 1
  %"$f_1056" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$iter_nat_nat_call_1057" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_1054"(i8* %"$iter_nat_nat_envptr_1055", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1056")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_1057", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_44", align 8
  %"$iter_nat_nat_45" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$$iter_nat_nat_44_1058" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_44", align 8
  %"$$iter_nat_nat_44_fptr_1059" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_44_1058", 0
  %"$$iter_nat_nat_44_envptr_1060" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_44_1058", 1
  %"$$iter_nat_nat_44_call_1061" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_44_fptr_1059"(i8* %"$$iter_nat_nat_44_envptr_1060", %TName_Nat* %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_44_call_1061", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_45", align 8
  %"$iter_nat_nat_46" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_nat_45_1062" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_45", align 8
  %"$$iter_nat_nat_45_fptr_1063" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_45_1062", 0
  %"$$iter_nat_nat_45_envptr_1064" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_45_1062", 1
  %"$nat_succ_1065" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$$iter_nat_nat_45_call_1066" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_45_fptr_1063"(i8* %"$$iter_nat_nat_45_envptr_1064", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1065")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_45_call_1066", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_46", align 8
  %"$$iter_nat_nat_46_1067" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_46", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_46_1067", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_171", align 8
  %"$$retval_171_1068" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_171", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_171_1068"
}

define internal %TName_Nat* @"$fundef_168"(%"$$fundef_168_env_223"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_168_env_ack_1015" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %0, i32 0, i32 0
  %"$ack_envload_1016" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_168_env_ack_1015", align 8
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_1016", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$$fundef_168_env_iter_nat_1017" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %0, i32 0, i32 1
  %"$iter_nat_envload_1018" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_168_env_iter_nat_1017", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_1018", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_168_env_x0_1019" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %0, i32 0, i32 2
  %"$x0_envload_1020" = load %TName_Nat*, %TName_Nat** %"$$fundef_168_env_x0_1019", align 8
  %x0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x0_envload_1020", %TName_Nat** %x0, align 8
  %"$retval_169" = alloca %TName_Nat*, align 8
  %"$gasrem_1021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1022" = icmp ugt i64 1, %"$gasrem_1021"
  br i1 %"$gascmp_1022", label %"$out_of_gas_1023", label %"$have_gas_1024"

"$out_of_gas_1023":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1024"

"$have_gas_1024":                                 ; preds = %"$out_of_gas_1023", %entry
  %"$consume_1025" = sub i64 %"$gasrem_1021", 1
  store i64 %"$consume_1025", i64* @_gasrem, align 8
  %"$iter_nat_41" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_1026" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$iter_nat_fptr_1027" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1026", 0
  %"$iter_nat_envptr_1028" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1026", 1
  %"$ack_1029" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$iter_nat_call_1030" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_1027"(i8* %"$iter_nat_envptr_1028", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_1029")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_1030", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_41", align 8
  %"$iter_nat_42" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_41_1031" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_41", align 8
  %"$$iter_nat_41_fptr_1032" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_1031", 0
  %"$$iter_nat_41_envptr_1033" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_1031", 1
  %"$$iter_nat_41_call_1034" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_fptr_1032"(i8* %"$$iter_nat_41_envptr_1033", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_call_1034", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_42", align 8
  %"$iter_nat_43" = alloca %TName_Nat*, align 8
  %"$$iter_nat_42_1035" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_42", align 8
  %"$$iter_nat_42_fptr_1036" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_42_1035", 0
  %"$$iter_nat_42_envptr_1037" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_42_1035", 1
  %"$x0_1038" = load %TName_Nat*, %TName_Nat** %x0, align 8
  %"$$iter_nat_42_call_1039" = call %TName_Nat* %"$$iter_nat_42_fptr_1036"(i8* %"$$iter_nat_42_envptr_1037", %TName_Nat* %"$x0_1038")
  store %TName_Nat* %"$$iter_nat_42_call_1039", %TName_Nat** %"$iter_nat_43", align 8
  %"$$iter_nat_43_1040" = load %TName_Nat*, %TName_Nat** %"$iter_nat_43", align 8
  store %TName_Nat* %"$$iter_nat_43_1040", %TName_Nat** %"$retval_169", align 8
  %"$$retval_169_1041" = load %TName_Nat*, %TName_Nat** %"$retval_169", align 8
  ret %TName_Nat* %"$$retval_169_1041"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_166"(%"$$fundef_166_env_224"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_166_env_iter_nat_981" = getelementptr inbounds %"$$fundef_166_env_224", %"$$fundef_166_env_224"* %0, i32 0, i32 0
  %"$iter_nat_envload_982" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_166_env_iter_nat_981", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_982", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_166_env_one_983" = getelementptr inbounds %"$$fundef_166_env_224", %"$$fundef_166_env_224"* %0, i32 0, i32 1
  %"$one_envload_984" = load %TName_Nat*, %TName_Nat** %"$$fundef_166_env_one_983", align 8
  %one = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$one_envload_984", %TName_Nat** %one, align 8
  %"$retval_167" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_986" = icmp ugt i64 1, %"$gasrem_985"
  br i1 %"$gascmp_986", label %"$out_of_gas_987", label %"$have_gas_988"

"$out_of_gas_987":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_988"

"$have_gas_988":                                  ; preds = %"$out_of_gas_987", %entry
  %"$consume_989" = sub i64 %"$gasrem_985", 1
  store i64 %"$consume_989", i64* @_gasrem, align 8
  %x0 = alloca %TName_Nat*, align 8
  %"$gasrem_990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_991" = icmp ugt i64 1, %"$gasrem_990"
  br i1 %"$gascmp_991", label %"$out_of_gas_992", label %"$have_gas_993"

"$out_of_gas_992":                                ; preds = %"$have_gas_988"
  call void @_out_of_gas()
  br label %"$have_gas_993"

"$have_gas_993":                                  ; preds = %"$out_of_gas_992", %"$have_gas_988"
  %"$consume_994" = sub i64 %"$gasrem_990", 1
  store i64 %"$consume_994", i64* @_gasrem, align 8
  %"$ack_40" = alloca %TName_Nat*, align 8
  %"$ack_fptr_995" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_996" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_997" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$ack_call_998" = call %TName_Nat* %"$ack_fptr_995"(i8* %"$ack_envptr_996", %TName_Nat* %"$one_997")
  store %TName_Nat* %"$ack_call_998", %TName_Nat** %"$ack_40", align 8
  %"$$ack_40_999" = load %TName_Nat*, %TName_Nat** %"$ack_40", align 8
  store %TName_Nat* %"$$ack_40_999", %TName_Nat** %x0, align 8
  %"$gasrem_1000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1001" = icmp ugt i64 1, %"$gasrem_1000"
  br i1 %"$gascmp_1001", label %"$out_of_gas_1002", label %"$have_gas_1003"

"$out_of_gas_1002":                               ; preds = %"$have_gas_993"
  call void @_out_of_gas()
  br label %"$have_gas_1003"

"$have_gas_1003":                                 ; preds = %"$out_of_gas_1002", %"$have_gas_993"
  %"$consume_1004" = sub i64 %"$gasrem_1000", 1
  store i64 %"$consume_1004", i64* @_gasrem, align 8
  %"$$fundef_168_envp_1005_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_168_envp_1005_salloc" = call i8* @_salloc(i8* %"$$fundef_168_envp_1005_load", i64 40)
  %"$$fundef_168_envp_1005" = bitcast i8* %"$$fundef_168_envp_1005_salloc" to %"$$fundef_168_env_223"*
  %"$$fundef_168_env_voidp_1007" = bitcast %"$$fundef_168_env_223"* %"$$fundef_168_envp_1005" to i8*
  %"$$fundef_168_cloval_1008" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_168_env_223"*, %TName_Nat*)* @"$fundef_168" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_168_env_voidp_1007", 1
  %"$$fundef_168_env_ack_1009" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %"$$fundef_168_envp_1005", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_168_env_ack_1009", align 8
  %"$$fundef_168_env_iter_nat_1010" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %"$$fundef_168_envp_1005", i32 0, i32 1
  %"$iter_nat_1011" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1011", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_168_env_iter_nat_1010", align 8
  %"$$fundef_168_env_x0_1012" = getelementptr inbounds %"$$fundef_168_env_223", %"$$fundef_168_env_223"* %"$$fundef_168_envp_1005", i32 0, i32 2
  %"$x0_1013" = load %TName_Nat*, %TName_Nat** %x0, align 8
  store %TName_Nat* %"$x0_1013", %TName_Nat** %"$$fundef_168_env_x0_1012", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_168_cloval_1008", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_167", align 8
  %"$$retval_167_1014" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_167", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_167_1014"
}

define internal %TName_Nat* @"$fundef_164"(%"$$fundef_164_env_225"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_164_env_f_965" = getelementptr inbounds %"$$fundef_164_env_225", %"$$fundef_164_env_225"* %0, i32 0, i32 0
  %"$f_envload_966" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_164_env_f_965", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_966", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_164_env_x_967" = getelementptr inbounds %"$$fundef_164_env_225", %"$$fundef_164_env_225"* %0, i32 0, i32 1
  %"$x_envload_968" = load %TName_Nat*, %TName_Nat** %"$$fundef_164_env_x_967", align 8
  %x = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x_envload_968", %TName_Nat** %x, align 8
  %"$retval_165" = alloca %TName_Nat*, align 8
  %"$gasrem_969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_970" = icmp ugt i64 1, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %entry
  %"$consume_973" = sub i64 %"$gasrem_969", 1
  store i64 %"$consume_973", i64* @_gasrem, align 8
  %"$f_36" = alloca %TName_Nat*, align 8
  %"$f_974" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$f_fptr_975" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_974", 0
  %"$f_envptr_976" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_974", 1
  %"$x_977" = load %TName_Nat*, %TName_Nat** %x, align 8
  %"$f_call_978" = call %TName_Nat* %"$f_fptr_975"(i8* %"$f_envptr_976", %TName_Nat* %"$x_977")
  store %TName_Nat* %"$f_call_978", %TName_Nat** %"$f_36", align 8
  %"$$f_36_979" = load %TName_Nat*, %TName_Nat** %"$f_36", align 8
  store %TName_Nat* %"$$f_36_979", %TName_Nat** %"$retval_165", align 8
  %"$$retval_165_980" = load %TName_Nat*, %TName_Nat** %"$retval_165", align 8
  ret %TName_Nat* %"$$retval_165_980"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_162"(%"$$fundef_162_env_226"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_162_env_f_950" = getelementptr inbounds %"$$fundef_162_env_226", %"$$fundef_162_env_226"* %0, i32 0, i32 0
  %"$f_envload_951" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_162_env_f_950", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_951", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$retval_163" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_953" = icmp ugt i64 1, %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %entry
  %"$consume_956" = sub i64 %"$gasrem_952", 1
  store i64 %"$consume_956", i64* @_gasrem, align 8
  %"$$fundef_164_envp_957_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_164_envp_957_salloc" = call i8* @_salloc(i8* %"$$fundef_164_envp_957_load", i64 24)
  %"$$fundef_164_envp_957" = bitcast i8* %"$$fundef_164_envp_957_salloc" to %"$$fundef_164_env_225"*
  %"$$fundef_164_env_voidp_959" = bitcast %"$$fundef_164_env_225"* %"$$fundef_164_envp_957" to i8*
  %"$$fundef_164_cloval_960" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_164_env_225"*, %TName_Nat*)* @"$fundef_164" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_164_env_voidp_959", 1
  %"$$fundef_164_env_f_961" = getelementptr inbounds %"$$fundef_164_env_225", %"$$fundef_164_env_225"* %"$$fundef_164_envp_957", i32 0, i32 0
  %"$f_962" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_962", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_164_env_f_961", align 8
  %"$$fundef_164_env_x_963" = getelementptr inbounds %"$$fundef_164_env_225", %"$$fundef_164_env_225"* %"$$fundef_164_envp_957", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_164_env_x_963", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_164_cloval_960", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_163", align 8
  %"$$retval_163_964" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_163", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_163_964"
}

define internal %TName_Nat* @"$fundef_160"(%"$$fundef_160_env_227"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_160_env_f_890" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %0, i32 0, i32 0
  %"$f_envload_891" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_160_env_f_890", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_891", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_160_env_n_892" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %0, i32 0, i32 1
  %"$n_envload_893" = load %TName_Nat*, %TName_Nat** %"$$fundef_160_env_n_892", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_893", %TName_Nat** %n, align 8
  %"$$fundef_160_env_nat_fold_894" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %0, i32 0, i32 2
  %"$nat_fold_envload_895" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_160_env_nat_fold_894", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_895", { i8*, i8* }** %nat_fold, align 8
  %"$retval_161" = alloca %TName_Nat*, align 8
  %"$gasrem_896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_897" = icmp ugt i64 1, %"$gasrem_896"
  br i1 %"$gascmp_897", label %"$out_of_gas_898", label %"$have_gas_899"

"$out_of_gas_898":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_899"

"$have_gas_899":                                  ; preds = %"$out_of_gas_898", %entry
  %"$consume_900" = sub i64 %"$gasrem_896", 1
  store i64 %"$consume_900", i64* @_gasrem, align 8
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_902" = icmp ugt i64 1, %"$gasrem_901"
  br i1 %"$gascmp_902", label %"$out_of_gas_903", label %"$have_gas_904"

"$out_of_gas_903":                                ; preds = %"$have_gas_899"
  call void @_out_of_gas()
  br label %"$have_gas_904"

"$have_gas_904":                                  ; preds = %"$out_of_gas_903", %"$have_gas_899"
  %"$consume_905" = sub i64 %"$gasrem_901", 1
  store i64 %"$consume_905", i64* @_gasrem, align 8
  %"$nat_fold_906" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_907" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_906", i32 2
  %"$nat_fold_908" = bitcast { i8*, i8* }* %"$nat_fold_907" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_909" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_908", align 8
  %"$nat_fold_fptr_910" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_909", 0
  %"$nat_fold_envptr_911" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_909", 1
  %"$nat_fold_call_912" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_910"(i8* %"$nat_fold_envptr_911")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_912", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$gasrem_913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_914" = icmp ugt i64 1, %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$have_gas_904"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$have_gas_904"
  %"$consume_917" = sub i64 %"$gasrem_913", 1
  store i64 %"$consume_917", i64* @_gasrem, align 8
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_919" = icmp ugt i64 1, %"$gasrem_918"
  br i1 %"$gascmp_919", label %"$out_of_gas_920", label %"$have_gas_921"

"$out_of_gas_920":                                ; preds = %"$have_gas_916"
  call void @_out_of_gas()
  br label %"$have_gas_921"

"$have_gas_921":                                  ; preds = %"$out_of_gas_920", %"$have_gas_916"
  %"$consume_922" = sub i64 %"$gasrem_918", 1
  store i64 %"$consume_922", i64* @_gasrem, align 8
  %"$$fundef_162_envp_923_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_162_envp_923_salloc" = call i8* @_salloc(i8* %"$$fundef_162_envp_923_load", i64 16)
  %"$$fundef_162_envp_923" = bitcast i8* %"$$fundef_162_envp_923_salloc" to %"$$fundef_162_env_226"*
  %"$$fundef_162_env_voidp_925" = bitcast %"$$fundef_162_env_226"* %"$$fundef_162_envp_923" to i8*
  %"$$fundef_162_cloval_926" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_162_env_226"*, %TName_Nat*)* @"$fundef_162" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_162_env_voidp_925", 1
  %"$$fundef_162_env_f_927" = getelementptr inbounds %"$$fundef_162_env_226", %"$$fundef_162_env_226"* %"$$fundef_162_envp_923", i32 0, i32 0
  %"$f_928" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_928", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_162_env_f_927", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_162_cloval_926", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$gasrem_929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_930" = icmp ugt i64 1, %"$gasrem_929"
  br i1 %"$gascmp_930", label %"$out_of_gas_931", label %"$have_gas_932"

"$out_of_gas_931":                                ; preds = %"$have_gas_921"
  call void @_out_of_gas()
  br label %"$have_gas_932"

"$have_gas_932":                                  ; preds = %"$out_of_gas_931", %"$have_gas_921"
  %"$consume_933" = sub i64 %"$gasrem_929", 1
  store i64 %"$consume_933", i64* @_gasrem, align 8
  %"$folder_37" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$folder_934" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_935" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_934", 0
  %"$folder_envptr_936" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_934", 1
  %"$step_937" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$folder_call_938" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_935"(i8* %"$folder_envptr_936", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_937")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_938", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_37", align 8
  %"$folder_38" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_37_939" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_37", align 8
  %"$$folder_37_fptr_940" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_939", 0
  %"$$folder_37_envptr_941" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_939", 1
  %"$$folder_37_call_942" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_37_fptr_940"(i8* %"$$folder_37_envptr_941", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_37_call_942", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8
  %"$folder_39" = alloca %TName_Nat*, align 8
  %"$$folder_38_943" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8
  %"$$folder_38_fptr_944" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_943", 0
  %"$$folder_38_envptr_945" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_943", 1
  %"$n_946" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_38_call_947" = call %TName_Nat* %"$$folder_38_fptr_944"(i8* %"$$folder_38_envptr_945", %TName_Nat* %"$n_946")
  store %TName_Nat* %"$$folder_38_call_947", %TName_Nat** %"$folder_39", align 8
  %"$$folder_39_948" = load %TName_Nat*, %TName_Nat** %"$folder_39", align 8
  store %TName_Nat* %"$$folder_39_948", %TName_Nat** %"$retval_161", align 8
  %"$$retval_161_949" = load %TName_Nat*, %TName_Nat** %"$retval_161", align 8
  ret %TName_Nat* %"$$retval_161_949"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_158"(%"$$fundef_158_env_228"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_158_env_f_871" = getelementptr inbounds %"$$fundef_158_env_228", %"$$fundef_158_env_228"* %0, i32 0, i32 0
  %"$f_envload_872" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_158_env_f_871", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_872", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_158_env_nat_fold_873" = getelementptr inbounds %"$$fundef_158_env_228", %"$$fundef_158_env_228"* %0, i32 0, i32 1
  %"$nat_fold_envload_874" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_158_env_nat_fold_873", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_874", { i8*, i8* }** %nat_fold, align 8
  %"$retval_159" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_876" = icmp ugt i64 1, %"$gasrem_875"
  br i1 %"$gascmp_876", label %"$out_of_gas_877", label %"$have_gas_878"

"$out_of_gas_877":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_878"

"$have_gas_878":                                  ; preds = %"$out_of_gas_877", %entry
  %"$consume_879" = sub i64 %"$gasrem_875", 1
  store i64 %"$consume_879", i64* @_gasrem, align 8
  %"$$fundef_160_envp_880_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_160_envp_880_salloc" = call i8* @_salloc(i8* %"$$fundef_160_envp_880_load", i64 32)
  %"$$fundef_160_envp_880" = bitcast i8* %"$$fundef_160_envp_880_salloc" to %"$$fundef_160_env_227"*
  %"$$fundef_160_env_voidp_882" = bitcast %"$$fundef_160_env_227"* %"$$fundef_160_envp_880" to i8*
  %"$$fundef_160_cloval_883" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_160_env_227"*, %TName_Nat*)* @"$fundef_160" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_160_env_voidp_882", 1
  %"$$fundef_160_env_f_884" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %"$$fundef_160_envp_880", i32 0, i32 0
  %"$f_885" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_885", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_160_env_f_884", align 8
  %"$$fundef_160_env_n_886" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %"$$fundef_160_envp_880", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_160_env_n_886", align 8
  %"$$fundef_160_env_nat_fold_887" = getelementptr inbounds %"$$fundef_160_env_227", %"$$fundef_160_env_227"* %"$$fundef_160_envp_880", i32 0, i32 2
  %"$nat_fold_888" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_888", { i8*, i8* }** %"$$fundef_160_env_nat_fold_887", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_160_cloval_883", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_159", align 8
  %"$$retval_159_889" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_159", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_159_889"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_156"(%"$$fundef_156_env_229"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_156_env_nat_fold_856" = getelementptr inbounds %"$$fundef_156_env_229", %"$$fundef_156_env_229"* %0, i32 0, i32 0
  %"$nat_fold_envload_857" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_156_env_nat_fold_856", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_857", { i8*, i8* }** %nat_fold, align 8
  %"$retval_157" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 1, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %entry
  %"$consume_862" = sub i64 %"$gasrem_858", 1
  store i64 %"$consume_862", i64* @_gasrem, align 8
  %"$$fundef_158_envp_863_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_158_envp_863_salloc" = call i8* @_salloc(i8* %"$$fundef_158_envp_863_load", i64 24)
  %"$$fundef_158_envp_863" = bitcast i8* %"$$fundef_158_envp_863_salloc" to %"$$fundef_158_env_228"*
  %"$$fundef_158_env_voidp_865" = bitcast %"$$fundef_158_env_228"* %"$$fundef_158_envp_863" to i8*
  %"$$fundef_158_cloval_866" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_158_env_228"*, %TName_Nat*)* @"$fundef_158" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_158_env_voidp_865", 1
  %"$$fundef_158_env_f_867" = getelementptr inbounds %"$$fundef_158_env_228", %"$$fundef_158_env_228"* %"$$fundef_158_envp_863", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_158_env_f_867", align 8
  %"$$fundef_158_env_nat_fold_868" = getelementptr inbounds %"$$fundef_158_env_228", %"$$fundef_158_env_228"* %"$$fundef_158_envp_863", i32 0, i32 1
  %"$nat_fold_869" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_869", { i8*, i8* }** %"$$fundef_158_env_nat_fold_868", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_158_cloval_866", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_157", align 8
  %"$$retval_157_870" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_157", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_157_870"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_154"(%"$$fundef_154_env_230"* %0) {
entry:
  %"$$fundef_154_env_nat_fold_842" = getelementptr inbounds %"$$fundef_154_env_230", %"$$fundef_154_env_230"* %0, i32 0, i32 0
  %"$nat_fold_envload_843" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_154_env_nat_fold_842", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_843", { i8*, i8* }** %nat_fold, align 8
  %"$retval_155" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 1, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %entry
  %"$consume_848" = sub i64 %"$gasrem_844", 1
  store i64 %"$consume_848", i64* @_gasrem, align 8
  %"$$fundef_156_envp_849_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_156_envp_849_salloc" = call i8* @_salloc(i8* %"$$fundef_156_envp_849_load", i64 8)
  %"$$fundef_156_envp_849" = bitcast i8* %"$$fundef_156_envp_849_salloc" to %"$$fundef_156_env_229"*
  %"$$fundef_156_env_voidp_851" = bitcast %"$$fundef_156_env_229"* %"$$fundef_156_envp_849" to i8*
  %"$$fundef_156_cloval_852" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_156_env_229"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_156" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_156_env_voidp_851", 1
  %"$$fundef_156_env_nat_fold_853" = getelementptr inbounds %"$$fundef_156_env_229", %"$$fundef_156_env_229"* %"$$fundef_156_envp_849", i32 0, i32 0
  %"$nat_fold_854" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_854", { i8*, i8* }** %"$$fundef_156_env_nat_fold_853", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_156_cloval_852", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_155", align 8
  %"$$retval_155_855" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_155", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_155_855"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_152"(%"$$fundef_152_env_231"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_152_env_f_826" = getelementptr inbounds %"$$fundef_152_env_231", %"$$fundef_152_env_231"* %0, i32 0, i32 0
  %"$f_envload_827" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_152_env_f_826", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_827", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_152_env_x_828" = getelementptr inbounds %"$$fundef_152_env_231", %"$$fundef_152_env_231"* %0, i32 0, i32 1
  %"$x_envload_829" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_152_env_x_828", align 8
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_829", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$retval_153" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_830" = load i64, i64* @_gasrem, align 8
  %"$gascmp_831" = icmp ugt i64 1, %"$gasrem_830"
  br i1 %"$gascmp_831", label %"$out_of_gas_832", label %"$have_gas_833"

"$out_of_gas_832":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_833"

"$have_gas_833":                                  ; preds = %"$out_of_gas_832", %entry
  %"$consume_834" = sub i64 %"$gasrem_830", 1
  store i64 %"$consume_834", i64* @_gasrem, align 8
  %"$f_36" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$f_835" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$f_fptr_836" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_835", 0
  %"$f_envptr_837" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_835", 1
  %"$x_838" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$f_call_839" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_836"(i8* %"$f_envptr_837", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_838")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_839", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_36", align 8
  %"$$f_36_840" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_36", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_36_840", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_153", align 8
  %"$$retval_153_841" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_153", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_153_841"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_150"(%"$$fundef_150_env_232"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_150_env_f_811" = getelementptr inbounds %"$$fundef_150_env_232", %"$$fundef_150_env_232"* %0, i32 0, i32 0
  %"$f_envload_812" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_150_env_f_811", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_812", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$retval_151" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_814" = icmp ugt i64 1, %"$gasrem_813"
  br i1 %"$gascmp_814", label %"$out_of_gas_815", label %"$have_gas_816"

"$out_of_gas_815":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_816"

"$have_gas_816":                                  ; preds = %"$out_of_gas_815", %entry
  %"$consume_817" = sub i64 %"$gasrem_813", 1
  store i64 %"$consume_817", i64* @_gasrem, align 8
  %"$$fundef_152_envp_818_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_152_envp_818_salloc" = call i8* @_salloc(i8* %"$$fundef_152_envp_818_load", i64 32)
  %"$$fundef_152_envp_818" = bitcast i8* %"$$fundef_152_envp_818_salloc" to %"$$fundef_152_env_231"*
  %"$$fundef_152_env_voidp_820" = bitcast %"$$fundef_152_env_231"* %"$$fundef_152_envp_818" to i8*
  %"$$fundef_152_cloval_821" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_152_env_231"*, %TName_Nat*)* @"$fundef_152" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_152_env_voidp_820", 1
  %"$$fundef_152_env_f_822" = getelementptr inbounds %"$$fundef_152_env_231", %"$$fundef_152_env_231"* %"$$fundef_152_envp_818", i32 0, i32 0
  %"$f_823" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_823", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_152_env_f_822", align 8
  %"$$fundef_152_env_x_824" = getelementptr inbounds %"$$fundef_152_env_231", %"$$fundef_152_env_231"* %"$$fundef_152_envp_818", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_152_env_x_824", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_152_cloval_821", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_151", align 8
  %"$$retval_151_825" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_151", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_151_825"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_148"(%"$$fundef_148_env_233"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_148_env_f_751" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %0, i32 0, i32 0
  %"$f_envload_752" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_148_env_f_751", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_752", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_148_env_n_753" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %0, i32 0, i32 1
  %"$n_envload_754" = load %TName_Nat*, %TName_Nat** %"$$fundef_148_env_n_753", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_754", %TName_Nat** %n, align 8
  %"$$fundef_148_env_nat_fold_755" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %0, i32 0, i32 2
  %"$nat_fold_envload_756" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_148_env_nat_fold_755", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_756", { i8*, i8* }** %nat_fold, align 8
  %"$retval_149" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_758" = icmp ugt i64 1, %"$gasrem_757"
  br i1 %"$gascmp_758", label %"$out_of_gas_759", label %"$have_gas_760"

"$out_of_gas_759":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_760"

"$have_gas_760":                                  ; preds = %"$out_of_gas_759", %entry
  %"$consume_761" = sub i64 %"$gasrem_757", 1
  store i64 %"$consume_761", i64* @_gasrem, align 8
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_760"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_760"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$nat_fold_767" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_768" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_767", i32 1
  %"$nat_fold_769" = bitcast { i8*, i8* }* %"$nat_fold_768" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_770" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_769", align 8
  %"$nat_fold_fptr_771" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_770", 0
  %"$nat_fold_envptr_772" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_770", 1
  %"$nat_fold_call_773" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_771"(i8* %"$nat_fold_envptr_772")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_773", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$gasrem_774" = load i64, i64* @_gasrem, align 8
  %"$gascmp_775" = icmp ugt i64 1, %"$gasrem_774"
  br i1 %"$gascmp_775", label %"$out_of_gas_776", label %"$have_gas_777"

"$out_of_gas_776":                                ; preds = %"$have_gas_765"
  call void @_out_of_gas()
  br label %"$have_gas_777"

"$have_gas_777":                                  ; preds = %"$out_of_gas_776", %"$have_gas_765"
  %"$consume_778" = sub i64 %"$gasrem_774", 1
  store i64 %"$consume_778", i64* @_gasrem, align 8
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_780" = icmp ugt i64 1, %"$gasrem_779"
  br i1 %"$gascmp_780", label %"$out_of_gas_781", label %"$have_gas_782"

"$out_of_gas_781":                                ; preds = %"$have_gas_777"
  call void @_out_of_gas()
  br label %"$have_gas_782"

"$have_gas_782":                                  ; preds = %"$out_of_gas_781", %"$have_gas_777"
  %"$consume_783" = sub i64 %"$gasrem_779", 1
  store i64 %"$consume_783", i64* @_gasrem, align 8
  %"$$fundef_150_envp_784_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_150_envp_784_salloc" = call i8* @_salloc(i8* %"$$fundef_150_envp_784_load", i64 16)
  %"$$fundef_150_envp_784" = bitcast i8* %"$$fundef_150_envp_784_salloc" to %"$$fundef_150_env_232"*
  %"$$fundef_150_env_voidp_786" = bitcast %"$$fundef_150_env_232"* %"$$fundef_150_envp_784" to i8*
  %"$$fundef_150_cloval_787" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_150_env_232"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_150" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_150_env_voidp_786", 1
  %"$$fundef_150_env_f_788" = getelementptr inbounds %"$$fundef_150_env_232", %"$$fundef_150_env_232"* %"$$fundef_150_envp_784", i32 0, i32 0
  %"$f_789" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_789", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_150_env_f_788", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_150_cloval_787", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$gasrem_790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_791" = icmp ugt i64 1, %"$gasrem_790"
  br i1 %"$gascmp_791", label %"$out_of_gas_792", label %"$have_gas_793"

"$out_of_gas_792":                                ; preds = %"$have_gas_782"
  call void @_out_of_gas()
  br label %"$have_gas_793"

"$have_gas_793":                                  ; preds = %"$out_of_gas_792", %"$have_gas_782"
  %"$consume_794" = sub i64 %"$gasrem_790", 1
  store i64 %"$consume_794", i64* @_gasrem, align 8
  %"$folder_37" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$folder_795" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_796" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_795", 0
  %"$folder_envptr_797" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_795", 1
  %"$step_798" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$folder_call_799" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_796"(i8* %"$folder_envptr_797", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_798")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_799", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_37", align 8
  %"$folder_38" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_37_800" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_37", align 8
  %"$$folder_37_fptr_801" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_37_800", 0
  %"$$folder_37_envptr_802" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_37_800", 1
  %"$$folder_37_call_803" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_fptr_801"(i8* %"$$folder_37_envptr_802", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_call_803", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8
  %"$folder_39" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_38_804" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8
  %"$$folder_38_fptr_805" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_38_804", 0
  %"$$folder_38_envptr_806" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_38_804", 1
  %"$n_807" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_38_call_808" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_fptr_805"(i8* %"$$folder_38_envptr_806", %TName_Nat* %"$n_807")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_call_808", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_39", align 8
  %"$$folder_39_809" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_39", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_39_809", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_149", align 8
  %"$$retval_149_810" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_149", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_149_810"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_146"(%"$$fundef_146_env_234"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_146_env_f_732" = getelementptr inbounds %"$$fundef_146_env_234", %"$$fundef_146_env_234"* %0, i32 0, i32 0
  %"$f_envload_733" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_146_env_f_732", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_733", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_146_env_nat_fold_734" = getelementptr inbounds %"$$fundef_146_env_234", %"$$fundef_146_env_234"* %0, i32 0, i32 1
  %"$nat_fold_envload_735" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_146_env_nat_fold_734", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_735", { i8*, i8* }** %nat_fold, align 8
  %"$retval_147" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_737" = icmp ugt i64 1, %"$gasrem_736"
  br i1 %"$gascmp_737", label %"$out_of_gas_738", label %"$have_gas_739"

"$out_of_gas_738":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_739"

"$have_gas_739":                                  ; preds = %"$out_of_gas_738", %entry
  %"$consume_740" = sub i64 %"$gasrem_736", 1
  store i64 %"$consume_740", i64* @_gasrem, align 8
  %"$$fundef_148_envp_741_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_148_envp_741_salloc" = call i8* @_salloc(i8* %"$$fundef_148_envp_741_load", i64 32)
  %"$$fundef_148_envp_741" = bitcast i8* %"$$fundef_148_envp_741_salloc" to %"$$fundef_148_env_233"*
  %"$$fundef_148_env_voidp_743" = bitcast %"$$fundef_148_env_233"* %"$$fundef_148_envp_741" to i8*
  %"$$fundef_148_cloval_744" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_148_env_233"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_148" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_148_env_voidp_743", 1
  %"$$fundef_148_env_f_745" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %"$$fundef_148_envp_741", i32 0, i32 0
  %"$f_746" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_746", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_148_env_f_745", align 8
  %"$$fundef_148_env_n_747" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %"$$fundef_148_envp_741", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_148_env_n_747", align 8
  %"$$fundef_148_env_nat_fold_748" = getelementptr inbounds %"$$fundef_148_env_233", %"$$fundef_148_env_233"* %"$$fundef_148_envp_741", i32 0, i32 2
  %"$nat_fold_749" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_749", { i8*, i8* }** %"$$fundef_148_env_nat_fold_748", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_148_cloval_744", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_147", align 8
  %"$$retval_147_750" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_147", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_147_750"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_144"(%"$$fundef_144_env_235"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_144_env_nat_fold_717" = getelementptr inbounds %"$$fundef_144_env_235", %"$$fundef_144_env_235"* %0, i32 0, i32 0
  %"$nat_fold_envload_718" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_144_env_nat_fold_717", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_718", { i8*, i8* }** %nat_fold, align 8
  %"$retval_145" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %entry
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$$fundef_146_envp_724_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_146_envp_724_salloc" = call i8* @_salloc(i8* %"$$fundef_146_envp_724_load", i64 24)
  %"$$fundef_146_envp_724" = bitcast i8* %"$$fundef_146_envp_724_salloc" to %"$$fundef_146_env_234"*
  %"$$fundef_146_env_voidp_726" = bitcast %"$$fundef_146_env_234"* %"$$fundef_146_envp_724" to i8*
  %"$$fundef_146_cloval_727" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_146_env_234"*, %TName_Nat*)* @"$fundef_146" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_146_env_voidp_726", 1
  %"$$fundef_146_env_f_728" = getelementptr inbounds %"$$fundef_146_env_234", %"$$fundef_146_env_234"* %"$$fundef_146_envp_724", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_146_env_f_728", align 8
  %"$$fundef_146_env_nat_fold_729" = getelementptr inbounds %"$$fundef_146_env_234", %"$$fundef_146_env_234"* %"$$fundef_146_envp_724", i32 0, i32 1
  %"$nat_fold_730" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_730", { i8*, i8* }** %"$$fundef_146_env_nat_fold_729", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_146_cloval_727", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_145", align 8
  %"$$retval_145_731" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_145", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_145_731"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_142"(%"$$fundef_142_env_236"* %0) {
entry:
  %"$$fundef_142_env_nat_fold_703" = getelementptr inbounds %"$$fundef_142_env_236", %"$$fundef_142_env_236"* %0, i32 0, i32 0
  %"$nat_fold_envload_704" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_142_env_nat_fold_703", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_704", { i8*, i8* }** %nat_fold, align 8
  %"$retval_143" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_706" = icmp ugt i64 1, %"$gasrem_705"
  br i1 %"$gascmp_706", label %"$out_of_gas_707", label %"$have_gas_708"

"$out_of_gas_707":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_708"

"$have_gas_708":                                  ; preds = %"$out_of_gas_707", %entry
  %"$consume_709" = sub i64 %"$gasrem_705", 1
  store i64 %"$consume_709", i64* @_gasrem, align 8
  %"$$fundef_144_envp_710_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_144_envp_710_salloc" = call i8* @_salloc(i8* %"$$fundef_144_envp_710_load", i64 8)
  %"$$fundef_144_envp_710" = bitcast i8* %"$$fundef_144_envp_710_salloc" to %"$$fundef_144_env_235"*
  %"$$fundef_144_env_voidp_712" = bitcast %"$$fundef_144_env_235"* %"$$fundef_144_envp_710" to i8*
  %"$$fundef_144_cloval_713" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_144_env_235"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_144" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_144_env_voidp_712", 1
  %"$$fundef_144_env_nat_fold_714" = getelementptr inbounds %"$$fundef_144_env_235", %"$$fundef_144_env_235"* %"$$fundef_144_envp_710", i32 0, i32 0
  %"$nat_fold_715" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_715", { i8*, i8* }** %"$$fundef_144_env_nat_fold_714", align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_144_cloval_713", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_143", align 8
  %"$$retval_143_716" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_143", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_143_716"
}

define internal %TName_Nat* @"$fundef_140"(%"$$fundef_140_env_237"* %0, %TName_Nat* %1) {
entry:
  %"$retval_141" = alloca %TName_Nat*, align 8
  %"$gasrem_693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_694" = icmp ugt i64 1, %"$gasrem_693"
  br i1 %"$gascmp_694", label %"$out_of_gas_695", label %"$have_gas_696"

"$out_of_gas_695":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_696"

"$have_gas_696":                                  ; preds = %"$out_of_gas_695", %entry
  %"$consume_697" = sub i64 %"$gasrem_693", 1
  store i64 %"$consume_697", i64* @_gasrem, align 8
  %"$adtval_698_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_698_salloc" = call i8* @_salloc(i8* %"$adtval_698_load", i64 9)
  %"$adtval_698" = bitcast i8* %"$adtval_698_salloc" to %CName_Succ*
  %"$adtgep_699" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_698", i32 0, i32 0
  store i8 1, i8* %"$adtgep_699", align 1
  %"$adtgep_700" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_698", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_700", align 8
  %"$adtptr_701" = bitcast %CName_Succ* %"$adtval_698" to %TName_Nat*
  store %TName_Nat* %"$adtptr_701", %TName_Nat** %"$retval_141", align 8
  %"$$retval_141_702" = load %TName_Nat*, %TName_Nat** %"$retval_141", align 8
  ret %TName_Nat* %"$$retval_141_702"
}

define internal %Uint32 @"$fundef_137"(%"$$fundef_137_env_238"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_137_env_one_int_680" = getelementptr inbounds %"$$fundef_137_env_238", %"$$fundef_137_env_238"* %0, i32 0, i32 0
  %"$one_int_envload_681" = load %Uint32, %Uint32* %"$$fundef_137_env_one_int_680", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_681", %Uint32* %one_int, align 4
  %"$$fundef_137_env_z_682" = getelementptr inbounds %"$$fundef_137_env_238", %"$$fundef_137_env_238"* %0, i32 0, i32 1
  %"$z_envload_683" = load %Uint32, %Uint32* %"$$fundef_137_env_z_682", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_683", %Uint32* %z, align 4
  %"$retval_138" = alloca %Uint32, align 8
  %"$gasrem_684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_685" = icmp ugt i64 4, %"$gasrem_684"
  br i1 %"$gascmp_685", label %"$out_of_gas_686", label %"$have_gas_687"

"$out_of_gas_686":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_687"

"$have_gas_687":                                  ; preds = %"$out_of_gas_686", %entry
  %"$consume_688" = sub i64 %"$gasrem_684", 4
  store i64 %"$consume_688", i64* @_gasrem, align 8
  %"$z_689" = load %Uint32, %Uint32* %z, align 4
  %"$one_int_690" = load %Uint32, %Uint32* %one_int, align 4
  %"$add_call_691" = call %Uint32 @_add_Uint32(%Uint32 %"$z_689", %Uint32 %"$one_int_690")
  store %Uint32 %"$add_call_691", %Uint32* %"$retval_138", align 4
  %"$$retval_138_692" = load %Uint32, %Uint32* %"$retval_138", align 4
  ret %Uint32 %"$$retval_138_692"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_135"(%"$$fundef_135_env_239"* %0, %Uint32 %1) {
entry:
  %"$$fundef_135_env_one_int_665" = getelementptr inbounds %"$$fundef_135_env_239", %"$$fundef_135_env_239"* %0, i32 0, i32 0
  %"$one_int_envload_666" = load %Uint32, %Uint32* %"$$fundef_135_env_one_int_665", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_666", %Uint32* %one_int, align 4
  %"$retval_136" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_668" = icmp ugt i64 1, %"$gasrem_667"
  br i1 %"$gascmp_668", label %"$out_of_gas_669", label %"$have_gas_670"

"$out_of_gas_669":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_670"

"$have_gas_670":                                  ; preds = %"$out_of_gas_669", %entry
  %"$consume_671" = sub i64 %"$gasrem_667", 1
  store i64 %"$consume_671", i64* @_gasrem, align 8
  %"$$fundef_137_envp_672_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_137_envp_672_salloc" = call i8* @_salloc(i8* %"$$fundef_137_envp_672_load", i64 8)
  %"$$fundef_137_envp_672" = bitcast i8* %"$$fundef_137_envp_672_salloc" to %"$$fundef_137_env_238"*
  %"$$fundef_137_env_voidp_674" = bitcast %"$$fundef_137_env_238"* %"$$fundef_137_envp_672" to i8*
  %"$$fundef_137_cloval_675" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_137_env_238"*, %TName_Nat*)* @"$fundef_137" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_137_env_voidp_674", 1
  %"$$fundef_137_env_one_int_676" = getelementptr inbounds %"$$fundef_137_env_238", %"$$fundef_137_env_238"* %"$$fundef_137_envp_672", i32 0, i32 0
  %"$one_int_677" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_677", %Uint32* %"$$fundef_137_env_one_int_676", align 4
  %"$$fundef_137_env_z_678" = getelementptr inbounds %"$$fundef_137_env_238", %"$$fundef_137_env_238"* %"$$fundef_137_envp_672", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_137_env_z_678", align 4
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_137_cloval_675", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8
  %"$$retval_136_679" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_136_679"
}

define internal %Uint32 @"$fundef_133"(%"$$fundef_133_env_240"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_133_env_$nat_fold_6_589" = getelementptr inbounds %"$$fundef_133_env_240", %"$$fundef_133_env_240"* %0, i32 0, i32 0
  %"$$nat_fold_6_envload_590" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_133_env_$nat_fold_6_589", align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$$nat_fold_6_envload_590", { i8*, i8* }** %"$nat_fold_6", align 8
  %"$retval_134" = alloca %Uint32, align 8
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %entry
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 1, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_594"
  %"$consume_600" = sub i64 %"$gasrem_596", 1
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %"$$nat_fold_6_601" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  %"$$nat_fold_6_602" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$$nat_fold_6_601", i32 0
  %"$$nat_fold_6_603" = bitcast { i8*, i8* }* %"$$nat_fold_6_602" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$$nat_fold_6_604" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$$nat_fold_6_603", align 8
  %"$$nat_fold_6_fptr_605" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_604", 0
  %"$$nat_fold_6_envptr_606" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_604", 1
  %"$$nat_fold_6_call_607" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_fptr_605"(i8* %"$$nat_fold_6_envptr_606")
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_call_607", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 1, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_599"
  %"$consume_612" = sub i64 %"$gasrem_608", 1
  store i64 %"$consume_612", i64* @_gasrem, align 8
  %one_int = alloca %Uint32, align 8
  %"$gasrem_613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_614" = icmp ugt i64 1, %"$gasrem_613"
  br i1 %"$gascmp_614", label %"$out_of_gas_615", label %"$have_gas_616"

"$out_of_gas_615":                                ; preds = %"$have_gas_611"
  call void @_out_of_gas()
  br label %"$have_gas_616"

"$have_gas_616":                                  ; preds = %"$out_of_gas_615", %"$have_gas_611"
  %"$consume_617" = sub i64 %"$gasrem_613", 1
  store i64 %"$consume_617", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one_int, align 4
  %"$gasrem_618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_619" = icmp ugt i64 1, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %"$have_gas_616"
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %"$have_gas_616"
  %"$consume_622" = sub i64 %"$gasrem_618", 1
  store i64 %"$consume_622", i64* @_gasrem, align 8
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_624" = icmp ugt i64 1, %"$gasrem_623"
  br i1 %"$gascmp_624", label %"$out_of_gas_625", label %"$have_gas_626"

"$out_of_gas_625":                                ; preds = %"$have_gas_621"
  call void @_out_of_gas()
  br label %"$have_gas_626"

"$have_gas_626":                                  ; preds = %"$out_of_gas_625", %"$have_gas_621"
  %"$consume_627" = sub i64 %"$gasrem_623", 1
  store i64 %"$consume_627", i64* @_gasrem, align 8
  %"$$fundef_135_envp_628_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_135_envp_628_salloc" = call i8* @_salloc(i8* %"$$fundef_135_envp_628_load", i64 4)
  %"$$fundef_135_envp_628" = bitcast i8* %"$$fundef_135_envp_628_salloc" to %"$$fundef_135_env_239"*
  %"$$fundef_135_env_voidp_630" = bitcast %"$$fundef_135_env_239"* %"$$fundef_135_envp_628" to i8*
  %"$$fundef_135_cloval_631" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_135_env_239"*, %Uint32)* @"$fundef_135" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_135_env_voidp_630", 1
  %"$$fundef_135_env_one_int_632" = getelementptr inbounds %"$$fundef_135_env_239", %"$$fundef_135_env_239"* %"$$fundef_135_envp_628", i32 0, i32 0
  %"$one_int_633" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_633", %Uint32* %"$$fundef_135_env_one_int_632", align 4
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_135_cloval_631", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$gasrem_634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_635" = icmp ugt i64 1, %"$gasrem_634"
  br i1 %"$gascmp_635", label %"$out_of_gas_636", label %"$have_gas_637"

"$out_of_gas_636":                                ; preds = %"$have_gas_626"
  call void @_out_of_gas()
  br label %"$have_gas_637"

"$have_gas_637":                                  ; preds = %"$out_of_gas_636", %"$have_gas_626"
  %"$consume_638" = sub i64 %"$gasrem_634", 1
  store i64 %"$consume_638", i64* @_gasrem, align 8
  %zero_int = alloca %Uint32, align 8
  %"$gasrem_639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_640" = icmp ugt i64 1, %"$gasrem_639"
  br i1 %"$gascmp_640", label %"$out_of_gas_641", label %"$have_gas_642"

"$out_of_gas_641":                                ; preds = %"$have_gas_637"
  call void @_out_of_gas()
  br label %"$have_gas_642"

"$have_gas_642":                                  ; preds = %"$out_of_gas_641", %"$have_gas_637"
  %"$consume_643" = sub i64 %"$gasrem_639", 1
  store i64 %"$consume_643", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero_int, align 4
  %"$gasrem_644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_645" = icmp ugt i64 1, %"$gasrem_644"
  br i1 %"$gascmp_645", label %"$out_of_gas_646", label %"$have_gas_647"

"$out_of_gas_646":                                ; preds = %"$have_gas_642"
  call void @_out_of_gas()
  br label %"$have_gas_647"

"$have_gas_647":                                  ; preds = %"$out_of_gas_646", %"$have_gas_642"
  %"$consume_648" = sub i64 %"$gasrem_644", 1
  store i64 %"$consume_648", i64* @_gasrem, align 8
  %"$fold_33" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$fold_649" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$fold_fptr_650" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_649", 0
  %"$fold_envptr_651" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_649", 1
  %"$f_652" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$fold_call_653" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_650"(i8* %"$fold_envptr_651", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_652")
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_653", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_33", align 8
  %"$fold_34" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fold_33_654" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_33", align 8
  %"$$fold_33_fptr_655" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_33_654", 0
  %"$$fold_33_envptr_656" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_33_654", 1
  %"$zero_int_657" = load %Uint32, %Uint32* %zero_int, align 4
  %"$$fold_33_call_658" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_33_fptr_655"(i8* %"$$fold_33_envptr_656", %Uint32 %"$zero_int_657")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_33_call_658", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_34", align 8
  %"$fold_35" = alloca %Uint32, align 8
  %"$$fold_34_659" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_34", align 8
  %"$$fold_34_fptr_660" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_34_659", 0
  %"$$fold_34_envptr_661" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_34_659", 1
  %"$$fold_34_call_662" = call %Uint32 %"$$fold_34_fptr_660"(i8* %"$$fold_34_envptr_661", %TName_Nat* %1)
  store %Uint32 %"$$fold_34_call_662", %Uint32* %"$fold_35", align 4
  %"$$fold_35_663" = load %Uint32, %Uint32* %"$fold_35", align 4
  store %Uint32 %"$$fold_35_663", %Uint32* %"$retval_134", align 4
  %"$$retval_134_664" = load %Uint32, %Uint32* %"$retval_134", align 4
  ret %Uint32 %"$$retval_134_664"
}

define internal %Uint32 @"$fundef_131"(%"$$fundef_131_env_241"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_131_env_f0_524" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %0, i32 0, i32 0
  %"$f0_envload_525" = load %Uint32, %Uint32* %"$$fundef_131_env_f0_524", align 4
  %f0 = alloca %Uint32, align 8
  store %Uint32 %"$f0_envload_525", %Uint32* %f0, align 4
  %"$$fundef_131_env_fn_526" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %0, i32 0, i32 1
  %"$fn_envload_527" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_fn_526", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_527", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_131_env_g_528" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %0, i32 0, i32 2
  %"$g_envload_529" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_g_528", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_529", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_132" = alloca %Uint32, align 8
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 2, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %entry
  %"$consume_534" = sub i64 %"$gasrem_530", 2
  store i64 %"$consume_534", i64* @_gasrem, align 8
  %"$n_tag_536" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_537" = load i8, i8* %"$n_tag_536", align 1
  switch i8 %"$n_tag_537", label %"$empty_default_538" [
    i8 1, label %"$Succ_539"
    i8 0, label %"$Zero_580"
  ]

"$Succ_539":                                      ; preds = %"$have_gas_533"
  %"$n_540" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_541" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_540", i32 0, i32 1
  %"$n1_load_542" = load %TName_Nat*, %TName_Nat** %"$n1_gep_541", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_542", %TName_Nat** %n1, align 8
  %"$gasrem_543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_544" = icmp ugt i64 1, %"$gasrem_543"
  br i1 %"$gascmp_544", label %"$out_of_gas_545", label %"$have_gas_546"

"$out_of_gas_545":                                ; preds = %"$Succ_539"
  call void @_out_of_gas()
  br label %"$have_gas_546"

"$have_gas_546":                                  ; preds = %"$out_of_gas_545", %"$Succ_539"
  %"$consume_547" = sub i64 %"$gasrem_543", 1
  store i64 %"$consume_547", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 1, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$have_gas_546"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$have_gas_546"
  %"$consume_552" = sub i64 %"$gasrem_548", 1
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %"$fn_29" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_553" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$fn_fptr_554" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_553", 0
  %"$fn_envptr_555" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_553", 1
  %"$f0_556" = load %Uint32, %Uint32* %f0, align 4
  %"$fn_call_557" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_554"(i8* %"$fn_envptr_555", %Uint32 %"$f0_556")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_557", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_29", align 8
  %"$fn_30" = alloca %Uint32, align 8
  %"$$fn_29_558" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_29", align 8
  %"$$fn_29_fptr_559" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_29_558", 0
  %"$$fn_29_envptr_560" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_29_558", 1
  %"$n1_561" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_29_call_562" = call %Uint32 %"$$fn_29_fptr_559"(i8* %"$$fn_29_envptr_560", %TName_Nat* %"$n1_561")
  store %Uint32 %"$$fn_29_call_562", %Uint32* %"$fn_30", align 4
  %"$$fn_30_563" = load %Uint32, %Uint32* %"$fn_30", align 4
  store %Uint32 %"$$fn_30_563", %Uint32* %res, align 4
  %"$gasrem_564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_565" = icmp ugt i64 1, %"$gasrem_564"
  br i1 %"$gascmp_565", label %"$out_of_gas_566", label %"$have_gas_567"

"$out_of_gas_566":                                ; preds = %"$have_gas_551"
  call void @_out_of_gas()
  br label %"$have_gas_567"

"$have_gas_567":                                  ; preds = %"$out_of_gas_566", %"$have_gas_551"
  %"$consume_568" = sub i64 %"$gasrem_564", 1
  store i64 %"$consume_568", i64* @_gasrem, align 8
  %"$g_31" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_569" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_570" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_569", 0
  %"$g_envptr_571" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_569", 1
  %"$res_572" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_573" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_570"(i8* %"$g_envptr_571", %Uint32 %"$res_572")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_573", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_31", align 8
  %"$g_32" = alloca %Uint32, align 8
  %"$$g_31_574" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_31", align 8
  %"$$g_31_fptr_575" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_31_574", 0
  %"$$g_31_envptr_576" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_31_574", 1
  %"$n1_577" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_31_call_578" = call %Uint32 %"$$g_31_fptr_575"(i8* %"$$g_31_envptr_576", %TName_Nat* %"$n1_577")
  store %Uint32 %"$$g_31_call_578", %Uint32* %"$g_32", align 4
  %"$$g_32_579" = load %Uint32, %Uint32* %"$g_32", align 4
  store %Uint32 %"$$g_32_579", %Uint32* %"$retval_132", align 4
  br label %"$matchsucc_535"

"$Zero_580":                                      ; preds = %"$have_gas_533"
  %"$n_581" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_583" = icmp ugt i64 1, %"$gasrem_582"
  br i1 %"$gascmp_583", label %"$out_of_gas_584", label %"$have_gas_585"

"$out_of_gas_584":                                ; preds = %"$Zero_580"
  call void @_out_of_gas()
  br label %"$have_gas_585"

"$have_gas_585":                                  ; preds = %"$out_of_gas_584", %"$Zero_580"
  %"$consume_586" = sub i64 %"$gasrem_582", 1
  store i64 %"$consume_586", i64* @_gasrem, align 8
  %"$f0_587" = load %Uint32, %Uint32* %f0, align 4
  store %Uint32 %"$f0_587", %Uint32* %"$retval_132", align 4
  br label %"$matchsucc_535"

"$empty_default_538":                             ; preds = %"$have_gas_533"
  br label %"$matchsucc_535"

"$matchsucc_535":                                 ; preds = %"$have_gas_585", %"$have_gas_567", %"$empty_default_538"
  %"$$retval_132_588" = load %Uint32, %Uint32* %"$retval_132", align 4
  ret %Uint32 %"$$retval_132_588"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_129"(%"$$fundef_129_env_242"* %0, %Uint32 %1) {
entry:
  %"$$fundef_129_env_fn_500" = getelementptr inbounds %"$$fundef_129_env_242", %"$$fundef_129_env_242"* %0, i32 0, i32 0
  %"$fn_envload_501" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_fn_500", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_501", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_129_env_g_502" = getelementptr inbounds %"$$fundef_129_env_242", %"$$fundef_129_env_242"* %0, i32 0, i32 1
  %"$g_envload_503" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_g_502", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_503", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_130" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 1, %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %entry
  %"$consume_508" = sub i64 %"$gasrem_504", 1
  store i64 %"$consume_508", i64* @_gasrem, align 8
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_507"
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$$fundef_131_envp_514_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_131_envp_514_salloc" = call i8* @_salloc(i8* %"$$fundef_131_envp_514_load", i64 40)
  %"$$fundef_131_envp_514" = bitcast i8* %"$$fundef_131_envp_514_salloc" to %"$$fundef_131_env_241"*
  %"$$fundef_131_env_voidp_516" = bitcast %"$$fundef_131_env_241"* %"$$fundef_131_envp_514" to i8*
  %"$$fundef_131_cloval_517" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_131_env_241"*, %TName_Nat*)* @"$fundef_131" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_131_env_voidp_516", 1
  %"$$fundef_131_env_f0_518" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %"$$fundef_131_envp_514", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_131_env_f0_518", align 4
  %"$$fundef_131_env_fn_519" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %"$$fundef_131_envp_514", i32 0, i32 1
  %"$fn_520" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_520", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_fn_519", align 8
  %"$$fundef_131_env_g_521" = getelementptr inbounds %"$$fundef_131_env_241", %"$$fundef_131_env_241"* %"$$fundef_131_envp_514", i32 0, i32 2
  %"$g_522" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_522", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_g_521", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_131_cloval_517", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8
  %"$$retval_130_523" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_130_523"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_127"(%"$$fundef_127_env_243"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_128" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %entry
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  %"$$fundef_129_envp_491_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_129_envp_491_salloc" = call i8* @_salloc(i8* %"$$fundef_129_envp_491_load", i64 32)
  %"$$fundef_129_envp_491" = bitcast i8* %"$$fundef_129_envp_491_salloc" to %"$$fundef_129_env_242"*
  %"$$fundef_129_env_voidp_493" = bitcast %"$$fundef_129_env_242"* %"$$fundef_129_envp_491" to i8*
  %"$$fundef_129_cloval_494" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_129_env_242"*, %Uint32)* @"$fundef_129" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_129_env_voidp_493", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_129_cloval_494", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_129_env_fn_495" = getelementptr inbounds %"$$fundef_129_env_242", %"$$fundef_129_env_242"* %"$$fundef_129_envp_491", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_fn_495", align 8
  %"$$fundef_129_env_g_496" = getelementptr inbounds %"$$fundef_129_env_242", %"$$fundef_129_env_242"* %"$$fundef_129_envp_491", i32 0, i32 1
  %"$g_497" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_497", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_g_496", align 8
  %"$g_498" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_498", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_128", align 8
  %"$$retval_128_499" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_128", align 8
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_128_499"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_125"(%"$$fundef_125_env_244"* %0) {
entry:
  %"$retval_126" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %entry
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_127_env_243"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_127" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_126", align 8
  %"$$retval_126_485" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_126", align 8
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_126_485"
}

define internal %TName_Nat* @"$fundef_123"(%"$$fundef_123_env_245"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_123_env_f0_412" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %0, i32 0, i32 0
  %"$f0_envload_413" = load %TName_Nat*, %TName_Nat** %"$$fundef_123_env_f0_412", align 8
  %f0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$f0_envload_413", %TName_Nat** %f0, align 8
  %"$$fundef_123_env_fn_414" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %0, i32 0, i32 1
  %"$fn_envload_415" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_fn_414", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_415", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_123_env_g_416" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %0, i32 0, i32 2
  %"$g_envload_417" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_g_416", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_417", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_124" = alloca %TName_Nat*, align 8
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 2, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %entry
  %"$consume_422" = sub i64 %"$gasrem_418", 2
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %"$n_tag_424" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_425" = load i8, i8* %"$n_tag_424", align 1
  switch i8 %"$n_tag_425", label %"$empty_default_426" [
    i8 1, label %"$Succ_427"
    i8 0, label %"$Zero_468"
  ]

"$Succ_427":                                      ; preds = %"$have_gas_421"
  %"$n_428" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_429" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_428", i32 0, i32 1
  %"$n1_load_430" = load %TName_Nat*, %TName_Nat** %"$n1_gep_429", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_430", %TName_Nat** %n1, align 8
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$Succ_427"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$Succ_427"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %res = alloca %TName_Nat*, align 8
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_434"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$fn_25" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_441" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$fn_fptr_442" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_441", 0
  %"$fn_envptr_443" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_441", 1
  %"$f0_444" = load %TName_Nat*, %TName_Nat** %f0, align 8
  %"$fn_call_445" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_442"(i8* %"$fn_envptr_443", %TName_Nat* %"$f0_444")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_445", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8
  %"$fn_26" = alloca %TName_Nat*, align 8
  %"$$fn_25_446" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8
  %"$$fn_25_fptr_447" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_446", 0
  %"$$fn_25_envptr_448" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_446", 1
  %"$n1_449" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_25_call_450" = call %TName_Nat* %"$$fn_25_fptr_447"(i8* %"$$fn_25_envptr_448", %TName_Nat* %"$n1_449")
  store %TName_Nat* %"$$fn_25_call_450", %TName_Nat** %"$fn_26", align 8
  %"$$fn_26_451" = load %TName_Nat*, %TName_Nat** %"$fn_26", align 8
  store %TName_Nat* %"$$fn_26_451", %TName_Nat** %res, align 8
  %"$gasrem_452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_453" = icmp ugt i64 1, %"$gasrem_452"
  br i1 %"$gascmp_453", label %"$out_of_gas_454", label %"$have_gas_455"

"$out_of_gas_454":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_455"

"$have_gas_455":                                  ; preds = %"$out_of_gas_454", %"$have_gas_439"
  %"$consume_456" = sub i64 %"$gasrem_452", 1
  store i64 %"$consume_456", i64* @_gasrem, align 8
  %"$g_27" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_457" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$g_fptr_458" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_457", 0
  %"$g_envptr_459" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_457", 1
  %"$res_460" = load %TName_Nat*, %TName_Nat** %res, align 8
  %"$g_call_461" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_458"(i8* %"$g_envptr_459", %TName_Nat* %"$res_460")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_461", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8
  %"$g_28" = alloca %TName_Nat*, align 8
  %"$$g_27_462" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8
  %"$$g_27_fptr_463" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_462", 0
  %"$$g_27_envptr_464" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_462", 1
  %"$n1_465" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_27_call_466" = call %TName_Nat* %"$$g_27_fptr_463"(i8* %"$$g_27_envptr_464", %TName_Nat* %"$n1_465")
  store %TName_Nat* %"$$g_27_call_466", %TName_Nat** %"$g_28", align 8
  %"$$g_28_467" = load %TName_Nat*, %TName_Nat** %"$g_28", align 8
  store %TName_Nat* %"$$g_28_467", %TName_Nat** %"$retval_124", align 8
  br label %"$matchsucc_423"

"$Zero_468":                                      ; preds = %"$have_gas_421"
  %"$n_469" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$Zero_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$Zero_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %"$f0_475" = load %TName_Nat*, %TName_Nat** %f0, align 8
  store %TName_Nat* %"$f0_475", %TName_Nat** %"$retval_124", align 8
  br label %"$matchsucc_423"

"$empty_default_426":                             ; preds = %"$have_gas_421"
  br label %"$matchsucc_423"

"$matchsucc_423":                                 ; preds = %"$have_gas_473", %"$have_gas_455", %"$empty_default_426"
  %"$$retval_124_476" = load %TName_Nat*, %TName_Nat** %"$retval_124", align 8
  ret %TName_Nat* %"$$retval_124_476"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_121"(%"$$fundef_121_env_246"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_121_env_fn_388" = getelementptr inbounds %"$$fundef_121_env_246", %"$$fundef_121_env_246"* %0, i32 0, i32 0
  %"$fn_envload_389" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_fn_388", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_389", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_121_env_g_390" = getelementptr inbounds %"$$fundef_121_env_246", %"$$fundef_121_env_246"* %0, i32 0, i32 1
  %"$g_envload_391" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_g_390", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_391", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_122" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %entry
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$$fundef_123_envp_402_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_123_envp_402_salloc" = call i8* @_salloc(i8* %"$$fundef_123_envp_402_load", i64 40)
  %"$$fundef_123_envp_402" = bitcast i8* %"$$fundef_123_envp_402_salloc" to %"$$fundef_123_env_245"*
  %"$$fundef_123_env_voidp_404" = bitcast %"$$fundef_123_env_245"* %"$$fundef_123_envp_402" to i8*
  %"$$fundef_123_cloval_405" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_123_env_245"*, %TName_Nat*)* @"$fundef_123" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_123_env_voidp_404", 1
  %"$$fundef_123_env_f0_406" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %"$$fundef_123_envp_402", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_123_env_f0_406", align 8
  %"$$fundef_123_env_fn_407" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %"$$fundef_123_envp_402", i32 0, i32 1
  %"$fn_408" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_408", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_fn_407", align 8
  %"$$fundef_123_env_g_409" = getelementptr inbounds %"$$fundef_123_env_245", %"$$fundef_123_env_245"* %"$$fundef_123_envp_402", i32 0, i32 2
  %"$g_410" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_410", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_g_409", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_123_cloval_405", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_122", align 8
  %"$$retval_122_411" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_122", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_122_411"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_119"(%"$$fundef_119_env_247"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$retval_120" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %entry
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %"$$fundef_121_envp_379_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_121_envp_379_salloc" = call i8* @_salloc(i8* %"$$fundef_121_envp_379_load", i64 32)
  %"$$fundef_121_envp_379" = bitcast i8* %"$$fundef_121_envp_379_salloc" to %"$$fundef_121_env_246"*
  %"$$fundef_121_env_voidp_381" = bitcast %"$$fundef_121_env_246"* %"$$fundef_121_envp_379" to i8*
  %"$$fundef_121_cloval_382" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_121_env_246"*, %TName_Nat*)* @"$fundef_121" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_121_env_voidp_381", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_121_cloval_382", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$$fundef_121_env_fn_383" = getelementptr inbounds %"$$fundef_121_env_246", %"$$fundef_121_env_246"* %"$$fundef_121_envp_379", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_fn_383", align 8
  %"$$fundef_121_env_g_384" = getelementptr inbounds %"$$fundef_121_env_246", %"$$fundef_121_env_246"* %"$$fundef_121_envp_379", i32 0, i32 1
  %"$g_385" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_385", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_g_384", align 8
  %"$g_386" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_386", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_120", align 8
  %"$$retval_120_387" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_120", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_120_387"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_117"(%"$$fundef_117_env_248"* %0) {
entry:
  %"$retval_118" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %entry
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_119_env_247"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_119" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_118", align 8
  %"$$retval_118_373" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_118", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_118_373"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_115"(%"$$fundef_115_env_249"* %0, %TName_Nat* %1) {
entry:
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
  ]

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
  %"$fn_call_333" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_330"(i8* %"$fn_envptr_331", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_332")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_333", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8
  %"$fn_26" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fn_25_334" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8
  %"$$fn_25_fptr_335" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_25_334", 0
  %"$$fn_25_envptr_336" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_25_334", 1
  %"$n1_337" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_25_call_338" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_fptr_335"(i8* %"$$fn_25_envptr_336", %TName_Nat* %"$n1_337")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_call_338", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_26", align 8
  %"$$fn_26_339" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_26", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_26_339", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8
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
  %"$g_call_349" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_346"(i8* %"$g_envptr_347", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_348")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_349", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8
  %"$g_28" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$g_27_350" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8
  %"$$g_27_fptr_351" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_27_350", 0
  %"$$g_27_envptr_352" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_27_350", 1
  %"$n1_353" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_27_call_354" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_fptr_351"(i8* %"$$g_27_envptr_352", %TName_Nat* %"$n1_353")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_call_354", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_28", align 8
  %"$$g_28_355" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_28", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_28_355", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_116", align 8
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
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_363", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_116", align 8
  br label %"$matchsucc_311"

"$empty_default_314":                             ; preds = %"$have_gas_309"
  br label %"$matchsucc_311"

"$matchsucc_311":                                 ; preds = %"$have_gas_361", %"$have_gas_343", %"$empty_default_314"
  %"$$retval_116_364" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_116", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_116_364"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_113"(%"$$fundef_113_env_250"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
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
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_115_cloval_293", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_114", align 8
  %"$$retval_114_299" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_114", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_114_299"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_111"(%"$$fundef_111_env_251"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
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
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_113_cloval_270", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$$fundef_113_env_fn_271" = getelementptr inbounds %"$$fundef_113_env_250", %"$$fundef_113_env_250"* %"$$fundef_113_envp_267", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_113_env_fn_271", align 8
  %"$$fundef_113_env_g_272" = getelementptr inbounds %"$$fundef_113_env_250", %"$$fundef_113_env_250"* %"$$fundef_113_envp_267", i32 0, i32 1
  %"$g_273" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_273", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_113_env_g_272", align 8
  %"$g_274" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_274", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_112", align 8
  %"$$retval_112_275" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_112", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_112_275"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_109"(%"$$fundef_109_env_252"* %0) {
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
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_111_env_251"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_111" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_110", align 8
  %"$$retval_110_261" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_110", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_110_261"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  %"$gasrem_1069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1070" = icmp ugt i64 4, %"$gasrem_1069"
  br i1 %"$gascmp_1070", label %"$out_of_gas_1071", label %"$have_gas_1072"

"$out_of_gas_1071":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1072"

"$have_gas_1072":                                 ; preds = %"$out_of_gas_1071", %entry
  %"$consume_1073" = sub i64 %"$gasrem_1069", 4
  store i64 %"$consume_1073", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_1074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1075" = icmp ugt i64 1, %"$gasrem_1074"
  br i1 %"$gascmp_1075", label %"$out_of_gas_1076", label %"$have_gas_1077"

"$out_of_gas_1076":                               ; preds = %"$have_gas_1072"
  call void @_out_of_gas()
  br label %"$have_gas_1077"

"$have_gas_1077":                                 ; preds = %"$out_of_gas_1076", %"$have_gas_1072"
  %"$consume_1078" = sub i64 %"$gasrem_1074", 1
  store i64 %"$consume_1078", i64* @_gasrem, align 8
  %"$dyndisp_table_1085_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1085_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1085_salloc_load", i64 48)
  %"$dyndisp_table_1085_salloc" = bitcast i8* %"$dyndisp_table_1085_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1085" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1085_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1086" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1085", i32 1
  %"$dyndisp_pcast_1087" = bitcast { i8*, i8* }* %"$dyndisp_gep_1086" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_109_env_252"*)* @"$fundef_109" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1087", align 8
  %"$dyndisp_gep_1088" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1085", i32 2
  %"$dyndisp_pcast_1089" = bitcast { i8*, i8* }* %"$dyndisp_gep_1088" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_117_env_248"*)* @"$fundef_117" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1089", align 8
  store { i8*, i8* }* %"$dyndisp_table_1085", { i8*, i8* }** @nat_fold, align 8
  %"$gasrem_1090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1091" = icmp ugt i64 8, %"$gasrem_1090"
  br i1 %"$gascmp_1091", label %"$out_of_gas_1092", label %"$have_gas_1093"

"$out_of_gas_1092":                               ; preds = %"$have_gas_1077"
  call void @_out_of_gas()
  br label %"$have_gas_1093"

"$have_gas_1093":                                 ; preds = %"$out_of_gas_1092", %"$have_gas_1077"
  %"$consume_1094" = sub i64 %"$gasrem_1090", 8
  store i64 %"$consume_1094", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_1095" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1096" = icmp ugt i64 196, %"$gasrem_1095"
  br i1 %"$gascmp_1096", label %"$out_of_gas_1097", label %"$have_gas_1098"

"$out_of_gas_1097":                               ; preds = %"$have_gas_1093"
  call void @_out_of_gas()
  br label %"$have_gas_1098"

"$have_gas_1098":                                 ; preds = %"$out_of_gas_1097", %"$have_gas_1093"
  %"$consume_1099" = sub i64 %"$gasrem_1095", 196
  store i64 %"$consume_1099", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_1100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1101" = icmp ugt i64 20, %"$gasrem_1100"
  br i1 %"$gascmp_1101", label %"$out_of_gas_1102", label %"$have_gas_1103"

"$out_of_gas_1102":                               ; preds = %"$have_gas_1098"
  call void @_out_of_gas()
  br label %"$have_gas_1103"

"$have_gas_1103":                                 ; preds = %"$out_of_gas_1102", %"$have_gas_1098"
  %"$consume_1104" = sub i64 %"$gasrem_1100", 20
  store i64 %"$consume_1104", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_1105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1106" = icmp ugt i64 11, %"$gasrem_1105"
  br i1 %"$gascmp_1106", label %"$out_of_gas_1107", label %"$have_gas_1108"

"$out_of_gas_1107":                               ; preds = %"$have_gas_1103"
  call void @_out_of_gas()
  br label %"$have_gas_1108"

"$have_gas_1108":                                 ; preds = %"$out_of_gas_1107", %"$have_gas_1103"
  %"$consume_1109" = sub i64 %"$gasrem_1105", 11
  store i64 %"$consume_1109", i64* @_gasrem, align 8
  store %Int32 { i32 11 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_1110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1111" = icmp ugt i64 1, %"$gasrem_1110"
  br i1 %"$gascmp_1111", label %"$out_of_gas_1112", label %"$have_gas_1113"

"$out_of_gas_1112":                               ; preds = %"$have_gas_1108"
  call void @_out_of_gas()
  br label %"$have_gas_1113"

"$have_gas_1113":                                 ; preds = %"$out_of_gas_1112", %"$have_gas_1108"
  %"$consume_1114" = sub i64 %"$gasrem_1110", 1
  store i64 %"$consume_1114", i64* @_gasrem, align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_1118_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1118_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1118_salloc_load", i64 48)
  %"$dyndisp_table_1118_salloc" = bitcast i8* %"$dyndisp_table_1118_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1118" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1118_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1119" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1118", i32 0
  %"$dyndisp_pcast_1120" = bitcast { i8*, i8* }* %"$dyndisp_gep_1119" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_125_env_244"*)* @"$fundef_125" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1120", align 8
  store { i8*, i8* }* %"$dyndisp_table_1118", { i8*, i8* }** %"$nat_fold_6", align 8
  %"$$fundef_133_envp_1121_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_133_envp_1121_salloc" = call i8* @_salloc(i8* %"$$fundef_133_envp_1121_load", i64 8)
  %"$$fundef_133_envp_1121" = bitcast i8* %"$$fundef_133_envp_1121_salloc" to %"$$fundef_133_env_240"*
  %"$$fundef_133_env_voidp_1123" = bitcast %"$$fundef_133_env_240"* %"$$fundef_133_envp_1121" to i8*
  %"$$fundef_133_cloval_1124" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_133_env_240"*, %TName_Nat*)* @"$fundef_133" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_133_env_voidp_1123", 1
  %"$$fundef_133_env_$nat_fold_6_1125" = getelementptr inbounds %"$$fundef_133_env_240", %"$$fundef_133_env_240"* %"$$fundef_133_envp_1121", i32 0, i32 0
  %"$$nat_fold_6_1126" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  store { i8*, i8* }* %"$$nat_fold_6_1126", { i8*, i8* }** %"$$fundef_133_env_$nat_fold_6_1125", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_133_cloval_1124", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$gasrem_1127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1128" = icmp ugt i64 2, %"$gasrem_1127"
  br i1 %"$gascmp_1128", label %"$out_of_gas_1129", label %"$have_gas_1130"

"$out_of_gas_1129":                               ; preds = %"$have_gas_1113"
  call void @_out_of_gas()
  br label %"$have_gas_1130"

"$have_gas_1130":                                 ; preds = %"$out_of_gas_1129", %"$have_gas_1113"
  %"$consume_1131" = sub i64 %"$gasrem_1127", 2
  store i64 %"$consume_1131", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_139" = alloca %Uint32, align 8
  %"$gasrem_1132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1133" = icmp ugt i64 1, %"$gasrem_1132"
  br i1 %"$gascmp_1133", label %"$out_of_gas_1134", label %"$have_gas_1135"

"$out_of_gas_1134":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1135"

"$have_gas_1135":                                 ; preds = %"$out_of_gas_1134", %entry
  %"$consume_1136" = sub i64 %"$gasrem_1132", 1
  store i64 %"$consume_1136", i64* @_gasrem, align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1138" = icmp ugt i64 1, %"$gasrem_1137"
  br i1 %"$gascmp_1138", label %"$out_of_gas_1139", label %"$have_gas_1140"

"$out_of_gas_1139":                               ; preds = %"$have_gas_1135"
  call void @_out_of_gas()
  br label %"$have_gas_1140"

"$have_gas_1140":                                 ; preds = %"$out_of_gas_1139", %"$have_gas_1135"
  %"$consume_1141" = sub i64 %"$gasrem_1137", 1
  store i64 %"$consume_1141", i64* @_gasrem, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_140_env_237"*, %TName_Nat*)* @"$fundef_140" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$gasrem_1145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1146" = icmp ugt i64 1, %"$gasrem_1145"
  br i1 %"$gascmp_1146", label %"$out_of_gas_1147", label %"$have_gas_1148"

"$out_of_gas_1147":                               ; preds = %"$have_gas_1140"
  call void @_out_of_gas()
  br label %"$have_gas_1148"

"$have_gas_1148":                                 ; preds = %"$out_of_gas_1147", %"$have_gas_1140"
  %"$consume_1149" = sub i64 %"$gasrem_1145", 1
  store i64 %"$consume_1149", i64* @_gasrem, align 8
  %nat_iter = alloca { i8*, i8* }*, align 8
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 1, %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1148"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1148"
  %"$consume_1154" = sub i64 %"$gasrem_1150", 1
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  %"$$fundef_142_envp_1155_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_142_envp_1155_salloc" = call i8* @_salloc(i8* %"$$fundef_142_envp_1155_load", i64 8)
  %"$$fundef_142_envp_1155" = bitcast i8* %"$$fundef_142_envp_1155_salloc" to %"$$fundef_142_env_236"*
  %"$$fundef_142_env_voidp_1157" = bitcast %"$$fundef_142_env_236"* %"$$fundef_142_envp_1155" to i8*
  %"$$fundef_142_cloval_1158" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_142_env_236"*)* @"$fundef_142" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_142_env_voidp_1157", 1
  %"$$fundef_142_env_nat_fold_1159" = getelementptr inbounds %"$$fundef_142_env_236", %"$$fundef_142_env_236"* %"$$fundef_142_envp_1155", i32 0, i32 0
  %"$nat_fold_1160" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1160", { i8*, i8* }** %"$$fundef_142_env_nat_fold_1159", align 8
  %"$$fundef_154_env_voidp_1162" = bitcast %"$$fundef_142_env_236"* %"$$fundef_142_envp_1155" to i8*
  %"$$fundef_154_cloval_1163" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_154_env_230"*)* @"$fundef_154" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_154_env_voidp_1162", 1
  %"$dyndisp_table_1164_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1164_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1164_salloc_load", i64 48)
  %"$dyndisp_table_1164_salloc" = bitcast i8* %"$dyndisp_table_1164_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1164" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1164_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1165" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1164", i32 1
  %"$dyndisp_pcast_1166" = bitcast { i8*, i8* }* %"$dyndisp_gep_1165" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_142_cloval_1158", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1166", align 8
  %"$dyndisp_gep_1167" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1164", i32 2
  %"$dyndisp_pcast_1168" = bitcast { i8*, i8* }* %"$dyndisp_gep_1167" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_154_cloval_1163", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1168", align 8
  store { i8*, i8* }* %"$dyndisp_table_1164", { i8*, i8* }** %nat_iter, align 8
  %"$gasrem_1169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1170" = icmp ugt i64 1, %"$gasrem_1169"
  br i1 %"$gascmp_1170", label %"$out_of_gas_1171", label %"$have_gas_1172"

"$out_of_gas_1171":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1172"

"$have_gas_1172":                                 ; preds = %"$out_of_gas_1171", %"$have_gas_1153"
  %"$consume_1173" = sub i64 %"$gasrem_1169", 1
  store i64 %"$consume_1173", i64* @_gasrem, align 8
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1175" = icmp ugt i64 1, %"$gasrem_1174"
  br i1 %"$gascmp_1175", label %"$out_of_gas_1176", label %"$have_gas_1177"

"$out_of_gas_1176":                               ; preds = %"$have_gas_1172"
  call void @_out_of_gas()
  br label %"$have_gas_1177"

"$have_gas_1177":                                 ; preds = %"$out_of_gas_1176", %"$have_gas_1172"
  %"$consume_1178" = sub i64 %"$gasrem_1174", 1
  store i64 %"$consume_1178", i64* @_gasrem, align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1180" = icmp ugt i64 1, %"$gasrem_1179"
  br i1 %"$gascmp_1180", label %"$out_of_gas_1181", label %"$have_gas_1182"

"$out_of_gas_1181":                               ; preds = %"$have_gas_1177"
  call void @_out_of_gas()
  br label %"$have_gas_1182"

"$have_gas_1182":                                 ; preds = %"$out_of_gas_1181", %"$have_gas_1177"
  %"$consume_1183" = sub i64 %"$gasrem_1179", 1
  store i64 %"$consume_1183", i64* @_gasrem, align 8
  %"$nat_iter_1184" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1185" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1184", i32 2
  %"$nat_iter_1186" = bitcast { i8*, i8* }* %"$nat_iter_1185" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1187" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1186", align 8
  %"$nat_iter_fptr_1188" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1187", 0
  %"$nat_iter_envptr_1189" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1187", 1
  %"$nat_iter_call_1190" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1188"(i8* %"$nat_iter_envptr_1189")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1190", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$gasrem_1191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1192" = icmp ugt i64 1, %"$gasrem_1191"
  br i1 %"$gascmp_1192", label %"$out_of_gas_1193", label %"$have_gas_1194"

"$out_of_gas_1193":                               ; preds = %"$have_gas_1182"
  call void @_out_of_gas()
  br label %"$have_gas_1194"

"$have_gas_1194":                                 ; preds = %"$out_of_gas_1193", %"$have_gas_1182"
  %"$consume_1195" = sub i64 %"$gasrem_1191", 1
  store i64 %"$consume_1195", i64* @_gasrem, align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
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
  %"$nat_iter_1202" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1201", i32 1
  %"$nat_iter_1203" = bitcast { i8*, i8* }* %"$nat_iter_1202" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1204" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1203", align 8
  %"$nat_iter_fptr_1205" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1204", 0
  %"$nat_iter_envptr_1206" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1204", 1
  %"$nat_iter_call_1207" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1205"(i8* %"$nat_iter_envptr_1206")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1207", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$gasrem_1208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1209" = icmp ugt i64 1, %"$gasrem_1208"
  br i1 %"$gascmp_1209", label %"$out_of_gas_1210", label %"$have_gas_1211"

"$out_of_gas_1210":                               ; preds = %"$have_gas_1199"
  call void @_out_of_gas()
  br label %"$have_gas_1211"

"$have_gas_1211":                                 ; preds = %"$out_of_gas_1210", %"$have_gas_1199"
  %"$consume_1212" = sub i64 %"$gasrem_1208", 1
  store i64 %"$consume_1212", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_1213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1214" = icmp ugt i64 1, %"$gasrem_1213"
  br i1 %"$gascmp_1214", label %"$out_of_gas_1215", label %"$have_gas_1216"

"$out_of_gas_1215":                               ; preds = %"$have_gas_1211"
  call void @_out_of_gas()
  br label %"$have_gas_1216"

"$have_gas_1216":                                 ; preds = %"$out_of_gas_1215", %"$have_gas_1211"
  %"$consume_1217" = sub i64 %"$gasrem_1213", 1
  store i64 %"$consume_1217", i64* @_gasrem, align 8
  %"$adtval_1218_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1218_salloc" = call i8* @_salloc(i8* %"$adtval_1218_load", i64 1)
  %"$adtval_1218" = bitcast i8* %"$adtval_1218_salloc" to %CName_Zero*
  %"$adtgep_1219" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1218", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1219", align 1
  %"$adtptr_1220" = bitcast %CName_Zero* %"$adtval_1218" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1220", %TName_Nat** %zero, align 8
  %"$gasrem_1221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1222" = icmp ugt i64 1, %"$gasrem_1221"
  br i1 %"$gascmp_1222", label %"$out_of_gas_1223", label %"$have_gas_1224"

"$out_of_gas_1223":                               ; preds = %"$have_gas_1216"
  call void @_out_of_gas()
  br label %"$have_gas_1224"

"$have_gas_1224":                                 ; preds = %"$out_of_gas_1223", %"$have_gas_1216"
  %"$consume_1225" = sub i64 %"$gasrem_1221", 1
  store i64 %"$consume_1225", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_1226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1227" = icmp ugt i64 1, %"$gasrem_1226"
  br i1 %"$gascmp_1227", label %"$out_of_gas_1228", label %"$have_gas_1229"

"$out_of_gas_1228":                               ; preds = %"$have_gas_1224"
  call void @_out_of_gas()
  br label %"$have_gas_1229"

"$have_gas_1229":                                 ; preds = %"$out_of_gas_1228", %"$have_gas_1224"
  %"$consume_1230" = sub i64 %"$gasrem_1226", 1
  store i64 %"$consume_1230", i64* @_gasrem, align 8
  %"$zero_1231" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_1232_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1232_salloc" = call i8* @_salloc(i8* %"$adtval_1232_load", i64 9)
  %"$adtval_1232" = bitcast i8* %"$adtval_1232_salloc" to %CName_Succ*
  %"$adtgep_1233" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1232", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1233", align 1
  %"$adtgep_1234" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1232", i32 0, i32 1
  store %TName_Nat* %"$zero_1231", %TName_Nat** %"$adtgep_1234", align 8
  %"$adtptr_1235" = bitcast %CName_Succ* %"$adtval_1232" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1235", %TName_Nat** %one, align 8
  %"$gasrem_1236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1237" = icmp ugt i64 1, %"$gasrem_1236"
  br i1 %"$gascmp_1237", label %"$out_of_gas_1238", label %"$have_gas_1239"

"$out_of_gas_1238":                               ; preds = %"$have_gas_1229"
  call void @_out_of_gas()
  br label %"$have_gas_1239"

"$have_gas_1239":                                 ; preds = %"$out_of_gas_1238", %"$have_gas_1229"
  %"$consume_1240" = sub i64 %"$gasrem_1236", 1
  store i64 %"$consume_1240", i64* @_gasrem, align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1242" = icmp ugt i64 1, %"$gasrem_1241"
  br i1 %"$gascmp_1242", label %"$out_of_gas_1243", label %"$have_gas_1244"

"$out_of_gas_1243":                               ; preds = %"$have_gas_1239"
  call void @_out_of_gas()
  br label %"$have_gas_1244"

"$have_gas_1244":                                 ; preds = %"$out_of_gas_1243", %"$have_gas_1239"
  %"$consume_1245" = sub i64 %"$gasrem_1241", 1
  store i64 %"$consume_1245", i64* @_gasrem, align 8
  %"$$fundef_166_envp_1246_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_166_envp_1246_salloc" = call i8* @_salloc(i8* %"$$fundef_166_envp_1246_load", i64 24)
  %"$$fundef_166_envp_1246" = bitcast i8* %"$$fundef_166_envp_1246_salloc" to %"$$fundef_166_env_224"*
  %"$$fundef_166_env_voidp_1248" = bitcast %"$$fundef_166_env_224"* %"$$fundef_166_envp_1246" to i8*
  %"$$fundef_166_cloval_1249" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_166_env_224"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_166" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_166_env_voidp_1248", 1
  %"$$fundef_166_env_iter_nat_1250" = getelementptr inbounds %"$$fundef_166_env_224", %"$$fundef_166_env_224"* %"$$fundef_166_envp_1246", i32 0, i32 0
  %"$iter_nat_1251" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1251", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_166_env_iter_nat_1250", align 8
  %"$$fundef_166_env_one_1252" = getelementptr inbounds %"$$fundef_166_env_224", %"$$fundef_166_env_224"* %"$$fundef_166_envp_1246", i32 0, i32 1
  %"$one_1253" = load %TName_Nat*, %TName_Nat** %one, align 8
  store %TName_Nat* %"$one_1253", %TName_Nat** %"$$fundef_166_env_one_1252", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_166_cloval_1249", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$gasrem_1254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1255" = icmp ugt i64 1, %"$gasrem_1254"
  br i1 %"$gascmp_1255", label %"$out_of_gas_1256", label %"$have_gas_1257"

"$out_of_gas_1256":                               ; preds = %"$have_gas_1244"
  call void @_out_of_gas()
  br label %"$have_gas_1257"

"$have_gas_1257":                                 ; preds = %"$out_of_gas_1256", %"$have_gas_1244"
  %"$consume_1258" = sub i64 %"$gasrem_1254", 1
  store i64 %"$consume_1258", i64* @_gasrem, align 8
  %"$$fundef_170_envp_1259_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_170_envp_1259_salloc" = call i8* @_salloc(i8* %"$$fundef_170_envp_1259_load", i64 48)
  %"$$fundef_170_envp_1259" = bitcast i8* %"$$fundef_170_envp_1259_salloc" to %"$$fundef_170_env_222"*
  %"$$fundef_170_env_voidp_1261" = bitcast %"$$fundef_170_env_222"* %"$$fundef_170_envp_1259" to i8*
  %"$$fundef_170_cloval_1262" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_170_env_222"*, %TName_Nat*)* @"$fundef_170" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_170_env_voidp_1261", 1
  %"$$fundef_170_env_f_1263" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %"$$fundef_170_envp_1259", i32 0, i32 0
  %"$f_1264" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1264", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_170_env_f_1263", align 8
  %"$$fundef_170_env_iter_nat_nat_1265" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %"$$fundef_170_envp_1259", i32 0, i32 1
  %"$iter_nat_nat_1266" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1266", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_170_env_iter_nat_nat_1265", align 8
  %"$$fundef_170_env_nat_succ_1267" = getelementptr inbounds %"$$fundef_170_env_222", %"$$fundef_170_env_222"* %"$$fundef_170_envp_1259", i32 0, i32 2
  %"$nat_succ_1268" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1268", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_170_env_nat_succ_1267", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_170_cloval_1262", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$gasrem_1269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1270" = icmp ugt i64 1, %"$gasrem_1269"
  br i1 %"$gascmp_1270", label %"$out_of_gas_1271", label %"$have_gas_1272"

"$out_of_gas_1271":                               ; preds = %"$have_gas_1257"
  call void @_out_of_gas()
  br label %"$have_gas_1272"

"$have_gas_1272":                                 ; preds = %"$out_of_gas_1271", %"$have_gas_1257"
  %"$consume_1273" = sub i64 %"$gasrem_1269", 1
  store i64 %"$consume_1273", i64* @_gasrem, align 8
  %uint0 = alloca %Uint32, align 8
  %"$gasrem_1274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1275" = icmp ugt i64 1, %"$gasrem_1274"
  br i1 %"$gascmp_1275", label %"$out_of_gas_1276", label %"$have_gas_1277"

"$out_of_gas_1276":                               ; preds = %"$have_gas_1272"
  call void @_out_of_gas()
  br label %"$have_gas_1277"

"$have_gas_1277":                                 ; preds = %"$out_of_gas_1276", %"$have_gas_1272"
  %"$consume_1278" = sub i64 %"$gasrem_1274", 1
  store i64 %"$consume_1278", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %uint0, align 4
  %"$gasrem_1279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1280" = icmp ugt i64 1, %"$gasrem_1279"
  br i1 %"$gascmp_1280", label %"$out_of_gas_1281", label %"$have_gas_1282"

"$out_of_gas_1281":                               ; preds = %"$have_gas_1277"
  call void @_out_of_gas()
  br label %"$have_gas_1282"

"$have_gas_1282":                                 ; preds = %"$out_of_gas_1281", %"$have_gas_1277"
  %"$consume_1283" = sub i64 %"$gasrem_1279", 1
  store i64 %"$consume_1283", i64* @_gasrem, align 8
  %uint1 = alloca %Uint32, align 8
  %"$gasrem_1284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1285" = icmp ugt i64 1, %"$gasrem_1284"
  br i1 %"$gascmp_1285", label %"$out_of_gas_1286", label %"$have_gas_1287"

"$out_of_gas_1286":                               ; preds = %"$have_gas_1282"
  call void @_out_of_gas()
  br label %"$have_gas_1287"

"$have_gas_1287":                                 ; preds = %"$out_of_gas_1286", %"$have_gas_1282"
  %"$consume_1288" = sub i64 %"$gasrem_1284", 1
  store i64 %"$consume_1288", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint1, align 4
  %"$gasrem_1289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1290" = icmp ugt i64 1, %"$gasrem_1289"
  br i1 %"$gascmp_1290", label %"$out_of_gas_1291", label %"$have_gas_1292"

"$out_of_gas_1291":                               ; preds = %"$have_gas_1287"
  call void @_out_of_gas()
  br label %"$have_gas_1292"

"$have_gas_1292":                                 ; preds = %"$out_of_gas_1291", %"$have_gas_1287"
  %"$consume_1293" = sub i64 %"$gasrem_1289", 1
  store i64 %"$consume_1293", i64* @_gasrem, align 8
  %uint2 = alloca %Uint32, align 8
  %"$gasrem_1294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1295" = icmp ugt i64 1, %"$gasrem_1294"
  br i1 %"$gascmp_1295", label %"$out_of_gas_1296", label %"$have_gas_1297"

"$out_of_gas_1296":                               ; preds = %"$have_gas_1292"
  call void @_out_of_gas()
  br label %"$have_gas_1297"

"$have_gas_1297":                                 ; preds = %"$out_of_gas_1296", %"$have_gas_1292"
  %"$consume_1298" = sub i64 %"$gasrem_1294", 1
  store i64 %"$consume_1298", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %uint2, align 4
  %"$gasrem_1299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1300" = icmp ugt i64 1, %"$gasrem_1299"
  br i1 %"$gascmp_1300", label %"$out_of_gas_1301", label %"$have_gas_1302"

"$out_of_gas_1301":                               ; preds = %"$have_gas_1297"
  call void @_out_of_gas()
  br label %"$have_gas_1302"

"$have_gas_1302":                                 ; preds = %"$out_of_gas_1301", %"$have_gas_1297"
  %"$consume_1303" = sub i64 %"$gasrem_1299", 1
  store i64 %"$consume_1303", i64* @_gasrem, align 8
  %uint3 = alloca %Uint32, align 8
  %"$gasrem_1304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1305" = icmp ugt i64 1, %"$gasrem_1304"
  br i1 %"$gascmp_1305", label %"$out_of_gas_1306", label %"$have_gas_1307"

"$out_of_gas_1306":                               ; preds = %"$have_gas_1302"
  call void @_out_of_gas()
  br label %"$have_gas_1307"

"$have_gas_1307":                                 ; preds = %"$out_of_gas_1306", %"$have_gas_1302"
  %"$consume_1308" = sub i64 %"$gasrem_1304", 1
  store i64 %"$consume_1308", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %uint3, align 4
  %"$gasrem_1309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1310" = icmp ugt i64 1, %"$gasrem_1309"
  br i1 %"$gascmp_1310", label %"$out_of_gas_1311", label %"$have_gas_1312"

"$out_of_gas_1311":                               ; preds = %"$have_gas_1307"
  call void @_out_of_gas()
  br label %"$have_gas_1312"

"$have_gas_1312":                                 ; preds = %"$out_of_gas_1311", %"$have_gas_1307"
  %"$consume_1313" = sub i64 %"$gasrem_1309", 1
  store i64 %"$consume_1313", i64* @_gasrem, align 8
  %uint4 = alloca %Uint32, align 8
  %"$gasrem_1314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1315" = icmp ugt i64 1, %"$gasrem_1314"
  br i1 %"$gascmp_1315", label %"$out_of_gas_1316", label %"$have_gas_1317"

"$out_of_gas_1316":                               ; preds = %"$have_gas_1312"
  call void @_out_of_gas()
  br label %"$have_gas_1317"

"$have_gas_1317":                                 ; preds = %"$out_of_gas_1316", %"$have_gas_1312"
  %"$consume_1318" = sub i64 %"$gasrem_1314", 1
  store i64 %"$consume_1318", i64* @_gasrem, align 8
  store %Uint32 { i32 4 }, %Uint32* %uint4, align 4
  %"$gasrem_1319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1320" = icmp ugt i64 1, %"$gasrem_1319"
  br i1 %"$gascmp_1320", label %"$out_of_gas_1321", label %"$have_gas_1322"

"$out_of_gas_1321":                               ; preds = %"$have_gas_1317"
  call void @_out_of_gas()
  br label %"$have_gas_1322"

"$have_gas_1322":                                 ; preds = %"$out_of_gas_1321", %"$have_gas_1317"
  %"$consume_1323" = sub i64 %"$gasrem_1319", 1
  store i64 %"$consume_1323", i64* @_gasrem, align 8
  %n0 = alloca %TName_Nat*, align 8
  %"$uint0_1324" = load %Uint32, %Uint32* %uint0, align 4
  %"$valueof_1325" = extractvalue %Uint32 %"$uint0_1324", 0
  %"$valueof_1326" = zext i32 %"$valueof_1325" to i64
  %"$gasrem_1327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1328" = icmp ugt i64 %"$valueof_1326", %"$gasrem_1327"
  br i1 %"$gascmp_1328", label %"$out_of_gas_1329", label %"$have_gas_1330"

"$out_of_gas_1329":                               ; preds = %"$have_gas_1322"
  call void @_out_of_gas()
  br label %"$have_gas_1330"

"$have_gas_1330":                                 ; preds = %"$out_of_gas_1329", %"$have_gas_1322"
  %"$consume_1331" = sub i64 %"$gasrem_1327", %"$valueof_1326"
  store i64 %"$consume_1331", i64* @_gasrem, align 8
  %"$execptr_load_1332" = load i8*, i8** @_execptr, align 8
  %"$uint0_1333" = load %Uint32, %Uint32* %uint0, align 4
  %"$to_nat_call_1334" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1332", %Uint32 %"$uint0_1333")
  store %TName_Nat* %"$to_nat_call_1334", %TName_Nat** %n0, align 8
  %"$gasrem_1336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1337" = icmp ugt i64 1, %"$gasrem_1336"
  br i1 %"$gascmp_1337", label %"$out_of_gas_1338", label %"$have_gas_1339"

"$out_of_gas_1338":                               ; preds = %"$have_gas_1330"
  call void @_out_of_gas()
  br label %"$have_gas_1339"

"$have_gas_1339":                                 ; preds = %"$out_of_gas_1338", %"$have_gas_1330"
  %"$consume_1340" = sub i64 %"$gasrem_1336", 1
  store i64 %"$consume_1340", i64* @_gasrem, align 8
  %n1 = alloca %TName_Nat*, align 8
  %"$uint1_1341" = load %Uint32, %Uint32* %uint1, align 4
  %"$valueof_1342" = extractvalue %Uint32 %"$uint1_1341", 0
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
  %"$uint1_1350" = load %Uint32, %Uint32* %uint1, align 4
  %"$to_nat_call_1351" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1349", %Uint32 %"$uint1_1350")
  store %TName_Nat* %"$to_nat_call_1351", %TName_Nat** %n1, align 8
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 1, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$have_gas_1347"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$have_gas_1347"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 1
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  %n2 = alloca %TName_Nat*, align 8
  %"$uint2_1358" = load %Uint32, %Uint32* %uint2, align 4
  %"$valueof_1359" = extractvalue %Uint32 %"$uint2_1358", 0
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
  %"$uint2_1367" = load %Uint32, %Uint32* %uint2, align 4
  %"$to_nat_call_1368" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1366", %Uint32 %"$uint2_1367")
  store %TName_Nat* %"$to_nat_call_1368", %TName_Nat** %n2, align 8
  %"$gasrem_1370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1371" = icmp ugt i64 1, %"$gasrem_1370"
  br i1 %"$gascmp_1371", label %"$out_of_gas_1372", label %"$have_gas_1373"

"$out_of_gas_1372":                               ; preds = %"$have_gas_1364"
  call void @_out_of_gas()
  br label %"$have_gas_1373"

"$have_gas_1373":                                 ; preds = %"$out_of_gas_1372", %"$have_gas_1364"
  %"$consume_1374" = sub i64 %"$gasrem_1370", 1
  store i64 %"$consume_1374", i64* @_gasrem, align 8
  %n3 = alloca %TName_Nat*, align 8
  %"$uint3_1375" = load %Uint32, %Uint32* %uint3, align 4
  %"$valueof_1376" = extractvalue %Uint32 %"$uint3_1375", 0
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
  %"$uint3_1384" = load %Uint32, %Uint32* %uint3, align 4
  %"$to_nat_call_1385" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1383", %Uint32 %"$uint3_1384")
  store %TName_Nat* %"$to_nat_call_1385", %TName_Nat** %n3, align 8
  %"$gasrem_1387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1388" = icmp ugt i64 1, %"$gasrem_1387"
  br i1 %"$gascmp_1388", label %"$out_of_gas_1389", label %"$have_gas_1390"

"$out_of_gas_1389":                               ; preds = %"$have_gas_1381"
  call void @_out_of_gas()
  br label %"$have_gas_1390"

"$have_gas_1390":                                 ; preds = %"$out_of_gas_1389", %"$have_gas_1381"
  %"$consume_1391" = sub i64 %"$gasrem_1387", 1
  store i64 %"$consume_1391", i64* @_gasrem, align 8
  %n4 = alloca %TName_Nat*, align 8
  %"$uint4_1392" = load %Uint32, %Uint32* %uint4, align 4
  %"$valueof_1393" = extractvalue %Uint32 %"$uint4_1392", 0
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
  %"$uint4_1401" = load %Uint32, %Uint32* %uint4, align 4
  %"$to_nat_call_1402" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1400", %Uint32 %"$uint4_1401")
  store %TName_Nat* %"$to_nat_call_1402", %TName_Nat** %n4, align 8
  %"$gasrem_1404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1405" = icmp ugt i64 1, %"$gasrem_1404"
  br i1 %"$gascmp_1405", label %"$out_of_gas_1406", label %"$have_gas_1407"

"$out_of_gas_1406":                               ; preds = %"$have_gas_1398"
  call void @_out_of_gas()
  br label %"$have_gas_1407"

"$have_gas_1407":                                 ; preds = %"$out_of_gas_1406", %"$have_gas_1398"
  %"$consume_1408" = sub i64 %"$gasrem_1404", 1
  store i64 %"$consume_1408", i64* @_gasrem, align 8
  %ack00 = alloca %TName_Nat*, align 8
  %"$gasrem_1409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1410" = icmp ugt i64 1, %"$gasrem_1409"
  br i1 %"$gascmp_1410", label %"$out_of_gas_1411", label %"$have_gas_1412"

"$out_of_gas_1411":                               ; preds = %"$have_gas_1407"
  call void @_out_of_gas()
  br label %"$have_gas_1412"

"$have_gas_1412":                                 ; preds = %"$out_of_gas_1411", %"$have_gas_1407"
  %"$consume_1413" = sub i64 %"$gasrem_1409", 1
  store i64 %"$consume_1413", i64* @_gasrem, align 8
  %"$ackermann_47" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1414" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1415" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1414", 0
  %"$ackermann_envptr_1416" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1414", 1
  %"$n0_1417" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1418" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1415"(i8* %"$ackermann_envptr_1416", %TName_Nat* %"$n0_1417")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1418", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_47", align 8
  %"$ackermann_48" = alloca %TName_Nat*, align 8
  %"$$ackermann_47_1419" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_47", align 8
  %"$$ackermann_47_fptr_1420" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_47_1419", 0
  %"$$ackermann_47_envptr_1421" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_47_1419", 1
  %"$n0_1422" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_47_call_1423" = call %TName_Nat* %"$$ackermann_47_fptr_1420"(i8* %"$$ackermann_47_envptr_1421", %TName_Nat* %"$n0_1422")
  store %TName_Nat* %"$$ackermann_47_call_1423", %TName_Nat** %"$ackermann_48", align 8
  %"$$ackermann_48_1424" = load %TName_Nat*, %TName_Nat** %"$ackermann_48", align 8
  store %TName_Nat* %"$$ackermann_48_1424", %TName_Nat** %ack00, align 8
  %"$gasrem_1425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1426" = icmp ugt i64 1, %"$gasrem_1425"
  br i1 %"$gascmp_1426", label %"$out_of_gas_1427", label %"$have_gas_1428"

"$out_of_gas_1427":                               ; preds = %"$have_gas_1412"
  call void @_out_of_gas()
  br label %"$have_gas_1428"

"$have_gas_1428":                                 ; preds = %"$out_of_gas_1427", %"$have_gas_1412"
  %"$consume_1429" = sub i64 %"$gasrem_1425", 1
  store i64 %"$consume_1429", i64* @_gasrem, align 8
  %ack01 = alloca %TName_Nat*, align 8
  %"$gasrem_1430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1431" = icmp ugt i64 1, %"$gasrem_1430"
  br i1 %"$gascmp_1431", label %"$out_of_gas_1432", label %"$have_gas_1433"

"$out_of_gas_1432":                               ; preds = %"$have_gas_1428"
  call void @_out_of_gas()
  br label %"$have_gas_1433"

"$have_gas_1433":                                 ; preds = %"$out_of_gas_1432", %"$have_gas_1428"
  %"$consume_1434" = sub i64 %"$gasrem_1430", 1
  store i64 %"$consume_1434", i64* @_gasrem, align 8
  %"$ackermann_49" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1435" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1436" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1435", 0
  %"$ackermann_envptr_1437" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1435", 1
  %"$n0_1438" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1439" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1436"(i8* %"$ackermann_envptr_1437", %TName_Nat* %"$n0_1438")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1439", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_49", align 8
  %"$ackermann_50" = alloca %TName_Nat*, align 8
  %"$$ackermann_49_1440" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_49", align 8
  %"$$ackermann_49_fptr_1441" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_49_1440", 0
  %"$$ackermann_49_envptr_1442" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_49_1440", 1
  %"$n1_1443" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_49_call_1444" = call %TName_Nat* %"$$ackermann_49_fptr_1441"(i8* %"$$ackermann_49_envptr_1442", %TName_Nat* %"$n1_1443")
  store %TName_Nat* %"$$ackermann_49_call_1444", %TName_Nat** %"$ackermann_50", align 8
  %"$$ackermann_50_1445" = load %TName_Nat*, %TName_Nat** %"$ackermann_50", align 8
  store %TName_Nat* %"$$ackermann_50_1445", %TName_Nat** %ack01, align 8
  %"$gasrem_1446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1447" = icmp ugt i64 1, %"$gasrem_1446"
  br i1 %"$gascmp_1447", label %"$out_of_gas_1448", label %"$have_gas_1449"

"$out_of_gas_1448":                               ; preds = %"$have_gas_1433"
  call void @_out_of_gas()
  br label %"$have_gas_1449"

"$have_gas_1449":                                 ; preds = %"$out_of_gas_1448", %"$have_gas_1433"
  %"$consume_1450" = sub i64 %"$gasrem_1446", 1
  store i64 %"$consume_1450", i64* @_gasrem, align 8
  %ack02 = alloca %TName_Nat*, align 8
  %"$gasrem_1451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1452" = icmp ugt i64 1, %"$gasrem_1451"
  br i1 %"$gascmp_1452", label %"$out_of_gas_1453", label %"$have_gas_1454"

"$out_of_gas_1453":                               ; preds = %"$have_gas_1449"
  call void @_out_of_gas()
  br label %"$have_gas_1454"

"$have_gas_1454":                                 ; preds = %"$out_of_gas_1453", %"$have_gas_1449"
  %"$consume_1455" = sub i64 %"$gasrem_1451", 1
  store i64 %"$consume_1455", i64* @_gasrem, align 8
  %"$ackermann_51" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1456" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1457" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1456", 0
  %"$ackermann_envptr_1458" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1456", 1
  %"$n0_1459" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1460" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1457"(i8* %"$ackermann_envptr_1458", %TName_Nat* %"$n0_1459")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1460", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_51", align 8
  %"$ackermann_52" = alloca %TName_Nat*, align 8
  %"$$ackermann_51_1461" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_51", align 8
  %"$$ackermann_51_fptr_1462" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_51_1461", 0
  %"$$ackermann_51_envptr_1463" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_51_1461", 1
  %"$n2_1464" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_51_call_1465" = call %TName_Nat* %"$$ackermann_51_fptr_1462"(i8* %"$$ackermann_51_envptr_1463", %TName_Nat* %"$n2_1464")
  store %TName_Nat* %"$$ackermann_51_call_1465", %TName_Nat** %"$ackermann_52", align 8
  %"$$ackermann_52_1466" = load %TName_Nat*, %TName_Nat** %"$ackermann_52", align 8
  store %TName_Nat* %"$$ackermann_52_1466", %TName_Nat** %ack02, align 8
  %"$gasrem_1467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1468" = icmp ugt i64 1, %"$gasrem_1467"
  br i1 %"$gascmp_1468", label %"$out_of_gas_1469", label %"$have_gas_1470"

"$out_of_gas_1469":                               ; preds = %"$have_gas_1454"
  call void @_out_of_gas()
  br label %"$have_gas_1470"

"$have_gas_1470":                                 ; preds = %"$out_of_gas_1469", %"$have_gas_1454"
  %"$consume_1471" = sub i64 %"$gasrem_1467", 1
  store i64 %"$consume_1471", i64* @_gasrem, align 8
  %ack03 = alloca %TName_Nat*, align 8
  %"$gasrem_1472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1473" = icmp ugt i64 1, %"$gasrem_1472"
  br i1 %"$gascmp_1473", label %"$out_of_gas_1474", label %"$have_gas_1475"

"$out_of_gas_1474":                               ; preds = %"$have_gas_1470"
  call void @_out_of_gas()
  br label %"$have_gas_1475"

"$have_gas_1475":                                 ; preds = %"$out_of_gas_1474", %"$have_gas_1470"
  %"$consume_1476" = sub i64 %"$gasrem_1472", 1
  store i64 %"$consume_1476", i64* @_gasrem, align 8
  %"$ackermann_53" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1477" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1478" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1477", 0
  %"$ackermann_envptr_1479" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1477", 1
  %"$n0_1480" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1481" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1478"(i8* %"$ackermann_envptr_1479", %TName_Nat* %"$n0_1480")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1481", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_53", align 8
  %"$ackermann_54" = alloca %TName_Nat*, align 8
  %"$$ackermann_53_1482" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_53", align 8
  %"$$ackermann_53_fptr_1483" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_53_1482", 0
  %"$$ackermann_53_envptr_1484" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_53_1482", 1
  %"$n3_1485" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_53_call_1486" = call %TName_Nat* %"$$ackermann_53_fptr_1483"(i8* %"$$ackermann_53_envptr_1484", %TName_Nat* %"$n3_1485")
  store %TName_Nat* %"$$ackermann_53_call_1486", %TName_Nat** %"$ackermann_54", align 8
  %"$$ackermann_54_1487" = load %TName_Nat*, %TName_Nat** %"$ackermann_54", align 8
  store %TName_Nat* %"$$ackermann_54_1487", %TName_Nat** %ack03, align 8
  %"$gasrem_1488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1489" = icmp ugt i64 1, %"$gasrem_1488"
  br i1 %"$gascmp_1489", label %"$out_of_gas_1490", label %"$have_gas_1491"

"$out_of_gas_1490":                               ; preds = %"$have_gas_1475"
  call void @_out_of_gas()
  br label %"$have_gas_1491"

"$have_gas_1491":                                 ; preds = %"$out_of_gas_1490", %"$have_gas_1475"
  %"$consume_1492" = sub i64 %"$gasrem_1488", 1
  store i64 %"$consume_1492", i64* @_gasrem, align 8
  %ack04 = alloca %TName_Nat*, align 8
  %"$gasrem_1493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1494" = icmp ugt i64 1, %"$gasrem_1493"
  br i1 %"$gascmp_1494", label %"$out_of_gas_1495", label %"$have_gas_1496"

"$out_of_gas_1495":                               ; preds = %"$have_gas_1491"
  call void @_out_of_gas()
  br label %"$have_gas_1496"

"$have_gas_1496":                                 ; preds = %"$out_of_gas_1495", %"$have_gas_1491"
  %"$consume_1497" = sub i64 %"$gasrem_1493", 1
  store i64 %"$consume_1497", i64* @_gasrem, align 8
  %"$ackermann_55" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1498" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1499" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1498", 0
  %"$ackermann_envptr_1500" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1498", 1
  %"$n0_1501" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1502" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1499"(i8* %"$ackermann_envptr_1500", %TName_Nat* %"$n0_1501")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1502", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_55", align 8
  %"$ackermann_56" = alloca %TName_Nat*, align 8
  %"$$ackermann_55_1503" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_55", align 8
  %"$$ackermann_55_fptr_1504" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_55_1503", 0
  %"$$ackermann_55_envptr_1505" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_55_1503", 1
  %"$n4_1506" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_55_call_1507" = call %TName_Nat* %"$$ackermann_55_fptr_1504"(i8* %"$$ackermann_55_envptr_1505", %TName_Nat* %"$n4_1506")
  store %TName_Nat* %"$$ackermann_55_call_1507", %TName_Nat** %"$ackermann_56", align 8
  %"$$ackermann_56_1508" = load %TName_Nat*, %TName_Nat** %"$ackermann_56", align 8
  store %TName_Nat* %"$$ackermann_56_1508", %TName_Nat** %ack04, align 8
  %"$gasrem_1509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1510" = icmp ugt i64 1, %"$gasrem_1509"
  br i1 %"$gascmp_1510", label %"$out_of_gas_1511", label %"$have_gas_1512"

"$out_of_gas_1511":                               ; preds = %"$have_gas_1496"
  call void @_out_of_gas()
  br label %"$have_gas_1512"

"$have_gas_1512":                                 ; preds = %"$out_of_gas_1511", %"$have_gas_1496"
  %"$consume_1513" = sub i64 %"$gasrem_1509", 1
  store i64 %"$consume_1513", i64* @_gasrem, align 8
  %ack10 = alloca %TName_Nat*, align 8
  %"$gasrem_1514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1515" = icmp ugt i64 1, %"$gasrem_1514"
  br i1 %"$gascmp_1515", label %"$out_of_gas_1516", label %"$have_gas_1517"

"$out_of_gas_1516":                               ; preds = %"$have_gas_1512"
  call void @_out_of_gas()
  br label %"$have_gas_1517"

"$have_gas_1517":                                 ; preds = %"$out_of_gas_1516", %"$have_gas_1512"
  %"$consume_1518" = sub i64 %"$gasrem_1514", 1
  store i64 %"$consume_1518", i64* @_gasrem, align 8
  %"$ackermann_57" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1519" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1520" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1519", 0
  %"$ackermann_envptr_1521" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1519", 1
  %"$n1_1522" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1523" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1520"(i8* %"$ackermann_envptr_1521", %TName_Nat* %"$n1_1522")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1523", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_57", align 8
  %"$ackermann_58" = alloca %TName_Nat*, align 8
  %"$$ackermann_57_1524" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_57", align 8
  %"$$ackermann_57_fptr_1525" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_57_1524", 0
  %"$$ackermann_57_envptr_1526" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_57_1524", 1
  %"$n0_1527" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_57_call_1528" = call %TName_Nat* %"$$ackermann_57_fptr_1525"(i8* %"$$ackermann_57_envptr_1526", %TName_Nat* %"$n0_1527")
  store %TName_Nat* %"$$ackermann_57_call_1528", %TName_Nat** %"$ackermann_58", align 8
  %"$$ackermann_58_1529" = load %TName_Nat*, %TName_Nat** %"$ackermann_58", align 8
  store %TName_Nat* %"$$ackermann_58_1529", %TName_Nat** %ack10, align 8
  %"$gasrem_1530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1531" = icmp ugt i64 1, %"$gasrem_1530"
  br i1 %"$gascmp_1531", label %"$out_of_gas_1532", label %"$have_gas_1533"

"$out_of_gas_1532":                               ; preds = %"$have_gas_1517"
  call void @_out_of_gas()
  br label %"$have_gas_1533"

"$have_gas_1533":                                 ; preds = %"$out_of_gas_1532", %"$have_gas_1517"
  %"$consume_1534" = sub i64 %"$gasrem_1530", 1
  store i64 %"$consume_1534", i64* @_gasrem, align 8
  %ack11 = alloca %TName_Nat*, align 8
  %"$gasrem_1535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1536" = icmp ugt i64 1, %"$gasrem_1535"
  br i1 %"$gascmp_1536", label %"$out_of_gas_1537", label %"$have_gas_1538"

"$out_of_gas_1537":                               ; preds = %"$have_gas_1533"
  call void @_out_of_gas()
  br label %"$have_gas_1538"

"$have_gas_1538":                                 ; preds = %"$out_of_gas_1537", %"$have_gas_1533"
  %"$consume_1539" = sub i64 %"$gasrem_1535", 1
  store i64 %"$consume_1539", i64* @_gasrem, align 8
  %"$ackermann_59" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1540" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1541" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1540", 0
  %"$ackermann_envptr_1542" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1540", 1
  %"$n1_1543" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1544" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1541"(i8* %"$ackermann_envptr_1542", %TName_Nat* %"$n1_1543")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1544", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_59", align 8
  %"$ackermann_60" = alloca %TName_Nat*, align 8
  %"$$ackermann_59_1545" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_59", align 8
  %"$$ackermann_59_fptr_1546" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_59_1545", 0
  %"$$ackermann_59_envptr_1547" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_59_1545", 1
  %"$n1_1548" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_59_call_1549" = call %TName_Nat* %"$$ackermann_59_fptr_1546"(i8* %"$$ackermann_59_envptr_1547", %TName_Nat* %"$n1_1548")
  store %TName_Nat* %"$$ackermann_59_call_1549", %TName_Nat** %"$ackermann_60", align 8
  %"$$ackermann_60_1550" = load %TName_Nat*, %TName_Nat** %"$ackermann_60", align 8
  store %TName_Nat* %"$$ackermann_60_1550", %TName_Nat** %ack11, align 8
  %"$gasrem_1551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1552" = icmp ugt i64 1, %"$gasrem_1551"
  br i1 %"$gascmp_1552", label %"$out_of_gas_1553", label %"$have_gas_1554"

"$out_of_gas_1553":                               ; preds = %"$have_gas_1538"
  call void @_out_of_gas()
  br label %"$have_gas_1554"

"$have_gas_1554":                                 ; preds = %"$out_of_gas_1553", %"$have_gas_1538"
  %"$consume_1555" = sub i64 %"$gasrem_1551", 1
  store i64 %"$consume_1555", i64* @_gasrem, align 8
  %ack12 = alloca %TName_Nat*, align 8
  %"$gasrem_1556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1557" = icmp ugt i64 1, %"$gasrem_1556"
  br i1 %"$gascmp_1557", label %"$out_of_gas_1558", label %"$have_gas_1559"

"$out_of_gas_1558":                               ; preds = %"$have_gas_1554"
  call void @_out_of_gas()
  br label %"$have_gas_1559"

"$have_gas_1559":                                 ; preds = %"$out_of_gas_1558", %"$have_gas_1554"
  %"$consume_1560" = sub i64 %"$gasrem_1556", 1
  store i64 %"$consume_1560", i64* @_gasrem, align 8
  %"$ackermann_61" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1561" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1562" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1561", 0
  %"$ackermann_envptr_1563" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1561", 1
  %"$n1_1564" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1565" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1562"(i8* %"$ackermann_envptr_1563", %TName_Nat* %"$n1_1564")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1565", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_61", align 8
  %"$ackermann_62" = alloca %TName_Nat*, align 8
  %"$$ackermann_61_1566" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_61", align 8
  %"$$ackermann_61_fptr_1567" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_61_1566", 0
  %"$$ackermann_61_envptr_1568" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_61_1566", 1
  %"$n2_1569" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_61_call_1570" = call %TName_Nat* %"$$ackermann_61_fptr_1567"(i8* %"$$ackermann_61_envptr_1568", %TName_Nat* %"$n2_1569")
  store %TName_Nat* %"$$ackermann_61_call_1570", %TName_Nat** %"$ackermann_62", align 8
  %"$$ackermann_62_1571" = load %TName_Nat*, %TName_Nat** %"$ackermann_62", align 8
  store %TName_Nat* %"$$ackermann_62_1571", %TName_Nat** %ack12, align 8
  %"$gasrem_1572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1573" = icmp ugt i64 1, %"$gasrem_1572"
  br i1 %"$gascmp_1573", label %"$out_of_gas_1574", label %"$have_gas_1575"

"$out_of_gas_1574":                               ; preds = %"$have_gas_1559"
  call void @_out_of_gas()
  br label %"$have_gas_1575"

"$have_gas_1575":                                 ; preds = %"$out_of_gas_1574", %"$have_gas_1559"
  %"$consume_1576" = sub i64 %"$gasrem_1572", 1
  store i64 %"$consume_1576", i64* @_gasrem, align 8
  %ack13 = alloca %TName_Nat*, align 8
  %"$gasrem_1577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1578" = icmp ugt i64 1, %"$gasrem_1577"
  br i1 %"$gascmp_1578", label %"$out_of_gas_1579", label %"$have_gas_1580"

"$out_of_gas_1579":                               ; preds = %"$have_gas_1575"
  call void @_out_of_gas()
  br label %"$have_gas_1580"

"$have_gas_1580":                                 ; preds = %"$out_of_gas_1579", %"$have_gas_1575"
  %"$consume_1581" = sub i64 %"$gasrem_1577", 1
  store i64 %"$consume_1581", i64* @_gasrem, align 8
  %"$ackermann_63" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1582" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1583" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1582", 0
  %"$ackermann_envptr_1584" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1582", 1
  %"$n1_1585" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1586" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1583"(i8* %"$ackermann_envptr_1584", %TName_Nat* %"$n1_1585")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1586", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_63", align 8
  %"$ackermann_64" = alloca %TName_Nat*, align 8
  %"$$ackermann_63_1587" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_63", align 8
  %"$$ackermann_63_fptr_1588" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_63_1587", 0
  %"$$ackermann_63_envptr_1589" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_63_1587", 1
  %"$n3_1590" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_63_call_1591" = call %TName_Nat* %"$$ackermann_63_fptr_1588"(i8* %"$$ackermann_63_envptr_1589", %TName_Nat* %"$n3_1590")
  store %TName_Nat* %"$$ackermann_63_call_1591", %TName_Nat** %"$ackermann_64", align 8
  %"$$ackermann_64_1592" = load %TName_Nat*, %TName_Nat** %"$ackermann_64", align 8
  store %TName_Nat* %"$$ackermann_64_1592", %TName_Nat** %ack13, align 8
  %"$gasrem_1593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1594" = icmp ugt i64 1, %"$gasrem_1593"
  br i1 %"$gascmp_1594", label %"$out_of_gas_1595", label %"$have_gas_1596"

"$out_of_gas_1595":                               ; preds = %"$have_gas_1580"
  call void @_out_of_gas()
  br label %"$have_gas_1596"

"$have_gas_1596":                                 ; preds = %"$out_of_gas_1595", %"$have_gas_1580"
  %"$consume_1597" = sub i64 %"$gasrem_1593", 1
  store i64 %"$consume_1597", i64* @_gasrem, align 8
  %ack14 = alloca %TName_Nat*, align 8
  %"$gasrem_1598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1599" = icmp ugt i64 1, %"$gasrem_1598"
  br i1 %"$gascmp_1599", label %"$out_of_gas_1600", label %"$have_gas_1601"

"$out_of_gas_1600":                               ; preds = %"$have_gas_1596"
  call void @_out_of_gas()
  br label %"$have_gas_1601"

"$have_gas_1601":                                 ; preds = %"$out_of_gas_1600", %"$have_gas_1596"
  %"$consume_1602" = sub i64 %"$gasrem_1598", 1
  store i64 %"$consume_1602", i64* @_gasrem, align 8
  %"$ackermann_65" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1603" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1604" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1603", 0
  %"$ackermann_envptr_1605" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1603", 1
  %"$n1_1606" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1607" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1604"(i8* %"$ackermann_envptr_1605", %TName_Nat* %"$n1_1606")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1607", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_65", align 8
  %"$ackermann_66" = alloca %TName_Nat*, align 8
  %"$$ackermann_65_1608" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_65", align 8
  %"$$ackermann_65_fptr_1609" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_65_1608", 0
  %"$$ackermann_65_envptr_1610" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_65_1608", 1
  %"$n4_1611" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_65_call_1612" = call %TName_Nat* %"$$ackermann_65_fptr_1609"(i8* %"$$ackermann_65_envptr_1610", %TName_Nat* %"$n4_1611")
  store %TName_Nat* %"$$ackermann_65_call_1612", %TName_Nat** %"$ackermann_66", align 8
  %"$$ackermann_66_1613" = load %TName_Nat*, %TName_Nat** %"$ackermann_66", align 8
  store %TName_Nat* %"$$ackermann_66_1613", %TName_Nat** %ack14, align 8
  %"$gasrem_1614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1615" = icmp ugt i64 1, %"$gasrem_1614"
  br i1 %"$gascmp_1615", label %"$out_of_gas_1616", label %"$have_gas_1617"

"$out_of_gas_1616":                               ; preds = %"$have_gas_1601"
  call void @_out_of_gas()
  br label %"$have_gas_1617"

"$have_gas_1617":                                 ; preds = %"$out_of_gas_1616", %"$have_gas_1601"
  %"$consume_1618" = sub i64 %"$gasrem_1614", 1
  store i64 %"$consume_1618", i64* @_gasrem, align 8
  %ack20 = alloca %TName_Nat*, align 8
  %"$gasrem_1619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1620" = icmp ugt i64 1, %"$gasrem_1619"
  br i1 %"$gascmp_1620", label %"$out_of_gas_1621", label %"$have_gas_1622"

"$out_of_gas_1621":                               ; preds = %"$have_gas_1617"
  call void @_out_of_gas()
  br label %"$have_gas_1622"

"$have_gas_1622":                                 ; preds = %"$out_of_gas_1621", %"$have_gas_1617"
  %"$consume_1623" = sub i64 %"$gasrem_1619", 1
  store i64 %"$consume_1623", i64* @_gasrem, align 8
  %"$ackermann_67" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1624" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1625" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1624", 0
  %"$ackermann_envptr_1626" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1624", 1
  %"$n2_1627" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1628" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1625"(i8* %"$ackermann_envptr_1626", %TName_Nat* %"$n2_1627")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1628", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_67", align 8
  %"$ackermann_68" = alloca %TName_Nat*, align 8
  %"$$ackermann_67_1629" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_67", align 8
  %"$$ackermann_67_fptr_1630" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_67_1629", 0
  %"$$ackermann_67_envptr_1631" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_67_1629", 1
  %"$n0_1632" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_67_call_1633" = call %TName_Nat* %"$$ackermann_67_fptr_1630"(i8* %"$$ackermann_67_envptr_1631", %TName_Nat* %"$n0_1632")
  store %TName_Nat* %"$$ackermann_67_call_1633", %TName_Nat** %"$ackermann_68", align 8
  %"$$ackermann_68_1634" = load %TName_Nat*, %TName_Nat** %"$ackermann_68", align 8
  store %TName_Nat* %"$$ackermann_68_1634", %TName_Nat** %ack20, align 8
  %"$gasrem_1635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1636" = icmp ugt i64 1, %"$gasrem_1635"
  br i1 %"$gascmp_1636", label %"$out_of_gas_1637", label %"$have_gas_1638"

"$out_of_gas_1637":                               ; preds = %"$have_gas_1622"
  call void @_out_of_gas()
  br label %"$have_gas_1638"

"$have_gas_1638":                                 ; preds = %"$out_of_gas_1637", %"$have_gas_1622"
  %"$consume_1639" = sub i64 %"$gasrem_1635", 1
  store i64 %"$consume_1639", i64* @_gasrem, align 8
  %ack21 = alloca %TName_Nat*, align 8
  %"$gasrem_1640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1641" = icmp ugt i64 1, %"$gasrem_1640"
  br i1 %"$gascmp_1641", label %"$out_of_gas_1642", label %"$have_gas_1643"

"$out_of_gas_1642":                               ; preds = %"$have_gas_1638"
  call void @_out_of_gas()
  br label %"$have_gas_1643"

"$have_gas_1643":                                 ; preds = %"$out_of_gas_1642", %"$have_gas_1638"
  %"$consume_1644" = sub i64 %"$gasrem_1640", 1
  store i64 %"$consume_1644", i64* @_gasrem, align 8
  %"$ackermann_69" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1645" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1646" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1645", 0
  %"$ackermann_envptr_1647" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1645", 1
  %"$n2_1648" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1649" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1646"(i8* %"$ackermann_envptr_1647", %TName_Nat* %"$n2_1648")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1649", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_69", align 8
  %"$ackermann_70" = alloca %TName_Nat*, align 8
  %"$$ackermann_69_1650" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_69", align 8
  %"$$ackermann_69_fptr_1651" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_69_1650", 0
  %"$$ackermann_69_envptr_1652" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_69_1650", 1
  %"$n1_1653" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_69_call_1654" = call %TName_Nat* %"$$ackermann_69_fptr_1651"(i8* %"$$ackermann_69_envptr_1652", %TName_Nat* %"$n1_1653")
  store %TName_Nat* %"$$ackermann_69_call_1654", %TName_Nat** %"$ackermann_70", align 8
  %"$$ackermann_70_1655" = load %TName_Nat*, %TName_Nat** %"$ackermann_70", align 8
  store %TName_Nat* %"$$ackermann_70_1655", %TName_Nat** %ack21, align 8
  %"$gasrem_1656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1657" = icmp ugt i64 1, %"$gasrem_1656"
  br i1 %"$gascmp_1657", label %"$out_of_gas_1658", label %"$have_gas_1659"

"$out_of_gas_1658":                               ; preds = %"$have_gas_1643"
  call void @_out_of_gas()
  br label %"$have_gas_1659"

"$have_gas_1659":                                 ; preds = %"$out_of_gas_1658", %"$have_gas_1643"
  %"$consume_1660" = sub i64 %"$gasrem_1656", 1
  store i64 %"$consume_1660", i64* @_gasrem, align 8
  %ack22 = alloca %TName_Nat*, align 8
  %"$gasrem_1661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1662" = icmp ugt i64 1, %"$gasrem_1661"
  br i1 %"$gascmp_1662", label %"$out_of_gas_1663", label %"$have_gas_1664"

"$out_of_gas_1663":                               ; preds = %"$have_gas_1659"
  call void @_out_of_gas()
  br label %"$have_gas_1664"

"$have_gas_1664":                                 ; preds = %"$out_of_gas_1663", %"$have_gas_1659"
  %"$consume_1665" = sub i64 %"$gasrem_1661", 1
  store i64 %"$consume_1665", i64* @_gasrem, align 8
  %"$ackermann_71" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1666" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1667" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1666", 0
  %"$ackermann_envptr_1668" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1666", 1
  %"$n2_1669" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1670" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1667"(i8* %"$ackermann_envptr_1668", %TName_Nat* %"$n2_1669")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1670", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_71", align 8
  %"$ackermann_72" = alloca %TName_Nat*, align 8
  %"$$ackermann_71_1671" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_71", align 8
  %"$$ackermann_71_fptr_1672" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_71_1671", 0
  %"$$ackermann_71_envptr_1673" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_71_1671", 1
  %"$n2_1674" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_71_call_1675" = call %TName_Nat* %"$$ackermann_71_fptr_1672"(i8* %"$$ackermann_71_envptr_1673", %TName_Nat* %"$n2_1674")
  store %TName_Nat* %"$$ackermann_71_call_1675", %TName_Nat** %"$ackermann_72", align 8
  %"$$ackermann_72_1676" = load %TName_Nat*, %TName_Nat** %"$ackermann_72", align 8
  store %TName_Nat* %"$$ackermann_72_1676", %TName_Nat** %ack22, align 8
  %"$gasrem_1677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1678" = icmp ugt i64 1, %"$gasrem_1677"
  br i1 %"$gascmp_1678", label %"$out_of_gas_1679", label %"$have_gas_1680"

"$out_of_gas_1679":                               ; preds = %"$have_gas_1664"
  call void @_out_of_gas()
  br label %"$have_gas_1680"

"$have_gas_1680":                                 ; preds = %"$out_of_gas_1679", %"$have_gas_1664"
  %"$consume_1681" = sub i64 %"$gasrem_1677", 1
  store i64 %"$consume_1681", i64* @_gasrem, align 8
  %ack23 = alloca %TName_Nat*, align 8
  %"$gasrem_1682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1683" = icmp ugt i64 1, %"$gasrem_1682"
  br i1 %"$gascmp_1683", label %"$out_of_gas_1684", label %"$have_gas_1685"

"$out_of_gas_1684":                               ; preds = %"$have_gas_1680"
  call void @_out_of_gas()
  br label %"$have_gas_1685"

"$have_gas_1685":                                 ; preds = %"$out_of_gas_1684", %"$have_gas_1680"
  %"$consume_1686" = sub i64 %"$gasrem_1682", 1
  store i64 %"$consume_1686", i64* @_gasrem, align 8
  %"$ackermann_73" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1687" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1688" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1687", 0
  %"$ackermann_envptr_1689" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1687", 1
  %"$n2_1690" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1691" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1688"(i8* %"$ackermann_envptr_1689", %TName_Nat* %"$n2_1690")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1691", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_73", align 8
  %"$ackermann_74" = alloca %TName_Nat*, align 8
  %"$$ackermann_73_1692" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_73", align 8
  %"$$ackermann_73_fptr_1693" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_73_1692", 0
  %"$$ackermann_73_envptr_1694" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_73_1692", 1
  %"$n3_1695" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_73_call_1696" = call %TName_Nat* %"$$ackermann_73_fptr_1693"(i8* %"$$ackermann_73_envptr_1694", %TName_Nat* %"$n3_1695")
  store %TName_Nat* %"$$ackermann_73_call_1696", %TName_Nat** %"$ackermann_74", align 8
  %"$$ackermann_74_1697" = load %TName_Nat*, %TName_Nat** %"$ackermann_74", align 8
  store %TName_Nat* %"$$ackermann_74_1697", %TName_Nat** %ack23, align 8
  %"$gasrem_1698" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1699" = icmp ugt i64 1, %"$gasrem_1698"
  br i1 %"$gascmp_1699", label %"$out_of_gas_1700", label %"$have_gas_1701"

"$out_of_gas_1700":                               ; preds = %"$have_gas_1685"
  call void @_out_of_gas()
  br label %"$have_gas_1701"

"$have_gas_1701":                                 ; preds = %"$out_of_gas_1700", %"$have_gas_1685"
  %"$consume_1702" = sub i64 %"$gasrem_1698", 1
  store i64 %"$consume_1702", i64* @_gasrem, align 8
  %ack24 = alloca %TName_Nat*, align 8
  %"$gasrem_1703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1704" = icmp ugt i64 1, %"$gasrem_1703"
  br i1 %"$gascmp_1704", label %"$out_of_gas_1705", label %"$have_gas_1706"

"$out_of_gas_1705":                               ; preds = %"$have_gas_1701"
  call void @_out_of_gas()
  br label %"$have_gas_1706"

"$have_gas_1706":                                 ; preds = %"$out_of_gas_1705", %"$have_gas_1701"
  %"$consume_1707" = sub i64 %"$gasrem_1703", 1
  store i64 %"$consume_1707", i64* @_gasrem, align 8
  %"$ackermann_75" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1708" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1709" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1708", 0
  %"$ackermann_envptr_1710" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1708", 1
  %"$n2_1711" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1712" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1709"(i8* %"$ackermann_envptr_1710", %TName_Nat* %"$n2_1711")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1712", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_75", align 8
  %"$ackermann_76" = alloca %TName_Nat*, align 8
  %"$$ackermann_75_1713" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_75", align 8
  %"$$ackermann_75_fptr_1714" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_75_1713", 0
  %"$$ackermann_75_envptr_1715" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_75_1713", 1
  %"$n4_1716" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_75_call_1717" = call %TName_Nat* %"$$ackermann_75_fptr_1714"(i8* %"$$ackermann_75_envptr_1715", %TName_Nat* %"$n4_1716")
  store %TName_Nat* %"$$ackermann_75_call_1717", %TName_Nat** %"$ackermann_76", align 8
  %"$$ackermann_76_1718" = load %TName_Nat*, %TName_Nat** %"$ackermann_76", align 8
  store %TName_Nat* %"$$ackermann_76_1718", %TName_Nat** %ack24, align 8
  %"$gasrem_1719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1720" = icmp ugt i64 1, %"$gasrem_1719"
  br i1 %"$gascmp_1720", label %"$out_of_gas_1721", label %"$have_gas_1722"

"$out_of_gas_1721":                               ; preds = %"$have_gas_1706"
  call void @_out_of_gas()
  br label %"$have_gas_1722"

"$have_gas_1722":                                 ; preds = %"$out_of_gas_1721", %"$have_gas_1706"
  %"$consume_1723" = sub i64 %"$gasrem_1719", 1
  store i64 %"$consume_1723", i64* @_gasrem, align 8
  %ack30 = alloca %TName_Nat*, align 8
  %"$gasrem_1724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1725" = icmp ugt i64 1, %"$gasrem_1724"
  br i1 %"$gascmp_1725", label %"$out_of_gas_1726", label %"$have_gas_1727"

"$out_of_gas_1726":                               ; preds = %"$have_gas_1722"
  call void @_out_of_gas()
  br label %"$have_gas_1727"

"$have_gas_1727":                                 ; preds = %"$out_of_gas_1726", %"$have_gas_1722"
  %"$consume_1728" = sub i64 %"$gasrem_1724", 1
  store i64 %"$consume_1728", i64* @_gasrem, align 8
  %"$ackermann_77" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1729" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1730" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1729", 0
  %"$ackermann_envptr_1731" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1729", 1
  %"$n3_1732" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1733" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1730"(i8* %"$ackermann_envptr_1731", %TName_Nat* %"$n3_1732")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1733", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_77", align 8
  %"$ackermann_78" = alloca %TName_Nat*, align 8
  %"$$ackermann_77_1734" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_77", align 8
  %"$$ackermann_77_fptr_1735" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_77_1734", 0
  %"$$ackermann_77_envptr_1736" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_77_1734", 1
  %"$n0_1737" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_77_call_1738" = call %TName_Nat* %"$$ackermann_77_fptr_1735"(i8* %"$$ackermann_77_envptr_1736", %TName_Nat* %"$n0_1737")
  store %TName_Nat* %"$$ackermann_77_call_1738", %TName_Nat** %"$ackermann_78", align 8
  %"$$ackermann_78_1739" = load %TName_Nat*, %TName_Nat** %"$ackermann_78", align 8
  store %TName_Nat* %"$$ackermann_78_1739", %TName_Nat** %ack30, align 8
  %"$gasrem_1740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1741" = icmp ugt i64 1, %"$gasrem_1740"
  br i1 %"$gascmp_1741", label %"$out_of_gas_1742", label %"$have_gas_1743"

"$out_of_gas_1742":                               ; preds = %"$have_gas_1727"
  call void @_out_of_gas()
  br label %"$have_gas_1743"

"$have_gas_1743":                                 ; preds = %"$out_of_gas_1742", %"$have_gas_1727"
  %"$consume_1744" = sub i64 %"$gasrem_1740", 1
  store i64 %"$consume_1744", i64* @_gasrem, align 8
  %ack31 = alloca %TName_Nat*, align 8
  %"$gasrem_1745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1746" = icmp ugt i64 1, %"$gasrem_1745"
  br i1 %"$gascmp_1746", label %"$out_of_gas_1747", label %"$have_gas_1748"

"$out_of_gas_1747":                               ; preds = %"$have_gas_1743"
  call void @_out_of_gas()
  br label %"$have_gas_1748"

"$have_gas_1748":                                 ; preds = %"$out_of_gas_1747", %"$have_gas_1743"
  %"$consume_1749" = sub i64 %"$gasrem_1745", 1
  store i64 %"$consume_1749", i64* @_gasrem, align 8
  %"$ackermann_79" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1750" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1751" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1750", 0
  %"$ackermann_envptr_1752" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1750", 1
  %"$n3_1753" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1754" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1751"(i8* %"$ackermann_envptr_1752", %TName_Nat* %"$n3_1753")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1754", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_79", align 8
  %"$ackermann_80" = alloca %TName_Nat*, align 8
  %"$$ackermann_79_1755" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_79", align 8
  %"$$ackermann_79_fptr_1756" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_79_1755", 0
  %"$$ackermann_79_envptr_1757" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_79_1755", 1
  %"$n1_1758" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_79_call_1759" = call %TName_Nat* %"$$ackermann_79_fptr_1756"(i8* %"$$ackermann_79_envptr_1757", %TName_Nat* %"$n1_1758")
  store %TName_Nat* %"$$ackermann_79_call_1759", %TName_Nat** %"$ackermann_80", align 8
  %"$$ackermann_80_1760" = load %TName_Nat*, %TName_Nat** %"$ackermann_80", align 8
  store %TName_Nat* %"$$ackermann_80_1760", %TName_Nat** %ack31, align 8
  %"$gasrem_1761" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1762" = icmp ugt i64 1, %"$gasrem_1761"
  br i1 %"$gascmp_1762", label %"$out_of_gas_1763", label %"$have_gas_1764"

"$out_of_gas_1763":                               ; preds = %"$have_gas_1748"
  call void @_out_of_gas()
  br label %"$have_gas_1764"

"$have_gas_1764":                                 ; preds = %"$out_of_gas_1763", %"$have_gas_1748"
  %"$consume_1765" = sub i64 %"$gasrem_1761", 1
  store i64 %"$consume_1765", i64* @_gasrem, align 8
  %ack32 = alloca %TName_Nat*, align 8
  %"$gasrem_1766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1767" = icmp ugt i64 1, %"$gasrem_1766"
  br i1 %"$gascmp_1767", label %"$out_of_gas_1768", label %"$have_gas_1769"

"$out_of_gas_1768":                               ; preds = %"$have_gas_1764"
  call void @_out_of_gas()
  br label %"$have_gas_1769"

"$have_gas_1769":                                 ; preds = %"$out_of_gas_1768", %"$have_gas_1764"
  %"$consume_1770" = sub i64 %"$gasrem_1766", 1
  store i64 %"$consume_1770", i64* @_gasrem, align 8
  %"$ackermann_81" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1771" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1772" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1771", 0
  %"$ackermann_envptr_1773" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1771", 1
  %"$n3_1774" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1775" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1772"(i8* %"$ackermann_envptr_1773", %TName_Nat* %"$n3_1774")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1775", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_81", align 8
  %"$ackermann_82" = alloca %TName_Nat*, align 8
  %"$$ackermann_81_1776" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_81", align 8
  %"$$ackermann_81_fptr_1777" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_81_1776", 0
  %"$$ackermann_81_envptr_1778" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_81_1776", 1
  %"$n2_1779" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_81_call_1780" = call %TName_Nat* %"$$ackermann_81_fptr_1777"(i8* %"$$ackermann_81_envptr_1778", %TName_Nat* %"$n2_1779")
  store %TName_Nat* %"$$ackermann_81_call_1780", %TName_Nat** %"$ackermann_82", align 8
  %"$$ackermann_82_1781" = load %TName_Nat*, %TName_Nat** %"$ackermann_82", align 8
  store %TName_Nat* %"$$ackermann_82_1781", %TName_Nat** %ack32, align 8
  %"$gasrem_1782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1783" = icmp ugt i64 1, %"$gasrem_1782"
  br i1 %"$gascmp_1783", label %"$out_of_gas_1784", label %"$have_gas_1785"

"$out_of_gas_1784":                               ; preds = %"$have_gas_1769"
  call void @_out_of_gas()
  br label %"$have_gas_1785"

"$have_gas_1785":                                 ; preds = %"$out_of_gas_1784", %"$have_gas_1769"
  %"$consume_1786" = sub i64 %"$gasrem_1782", 1
  store i64 %"$consume_1786", i64* @_gasrem, align 8
  %ack33 = alloca %TName_Nat*, align 8
  %"$gasrem_1787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1788" = icmp ugt i64 1, %"$gasrem_1787"
  br i1 %"$gascmp_1788", label %"$out_of_gas_1789", label %"$have_gas_1790"

"$out_of_gas_1789":                               ; preds = %"$have_gas_1785"
  call void @_out_of_gas()
  br label %"$have_gas_1790"

"$have_gas_1790":                                 ; preds = %"$out_of_gas_1789", %"$have_gas_1785"
  %"$consume_1791" = sub i64 %"$gasrem_1787", 1
  store i64 %"$consume_1791", i64* @_gasrem, align 8
  %"$ackermann_83" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1792" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1793" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1792", 0
  %"$ackermann_envptr_1794" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1792", 1
  %"$n3_1795" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1796" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1793"(i8* %"$ackermann_envptr_1794", %TName_Nat* %"$n3_1795")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1796", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_83", align 8
  %"$ackermann_84" = alloca %TName_Nat*, align 8
  %"$$ackermann_83_1797" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_83", align 8
  %"$$ackermann_83_fptr_1798" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_83_1797", 0
  %"$$ackermann_83_envptr_1799" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_83_1797", 1
  %"$n3_1800" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_83_call_1801" = call %TName_Nat* %"$$ackermann_83_fptr_1798"(i8* %"$$ackermann_83_envptr_1799", %TName_Nat* %"$n3_1800")
  store %TName_Nat* %"$$ackermann_83_call_1801", %TName_Nat** %"$ackermann_84", align 8
  %"$$ackermann_84_1802" = load %TName_Nat*, %TName_Nat** %"$ackermann_84", align 8
  store %TName_Nat* %"$$ackermann_84_1802", %TName_Nat** %ack33, align 8
  %"$gasrem_1803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1804" = icmp ugt i64 1, %"$gasrem_1803"
  br i1 %"$gascmp_1804", label %"$out_of_gas_1805", label %"$have_gas_1806"

"$out_of_gas_1805":                               ; preds = %"$have_gas_1790"
  call void @_out_of_gas()
  br label %"$have_gas_1806"

"$have_gas_1806":                                 ; preds = %"$out_of_gas_1805", %"$have_gas_1790"
  %"$consume_1807" = sub i64 %"$gasrem_1803", 1
  store i64 %"$consume_1807", i64* @_gasrem, align 8
  %ack34 = alloca %TName_Nat*, align 8
  %"$gasrem_1808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1809" = icmp ugt i64 1, %"$gasrem_1808"
  br i1 %"$gascmp_1809", label %"$out_of_gas_1810", label %"$have_gas_1811"

"$out_of_gas_1810":                               ; preds = %"$have_gas_1806"
  call void @_out_of_gas()
  br label %"$have_gas_1811"

"$have_gas_1811":                                 ; preds = %"$out_of_gas_1810", %"$have_gas_1806"
  %"$consume_1812" = sub i64 %"$gasrem_1808", 1
  store i64 %"$consume_1812", i64* @_gasrem, align 8
  %"$ackermann_85" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1813" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1814" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1813", 0
  %"$ackermann_envptr_1815" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1813", 1
  %"$n3_1816" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1817" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1814"(i8* %"$ackermann_envptr_1815", %TName_Nat* %"$n3_1816")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1817", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_85", align 8
  %"$ackermann_86" = alloca %TName_Nat*, align 8
  %"$$ackermann_85_1818" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_85", align 8
  %"$$ackermann_85_fptr_1819" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_85_1818", 0
  %"$$ackermann_85_envptr_1820" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_85_1818", 1
  %"$n4_1821" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_85_call_1822" = call %TName_Nat* %"$$ackermann_85_fptr_1819"(i8* %"$$ackermann_85_envptr_1820", %TName_Nat* %"$n4_1821")
  store %TName_Nat* %"$$ackermann_85_call_1822", %TName_Nat** %"$ackermann_86", align 8
  %"$$ackermann_86_1823" = load %TName_Nat*, %TName_Nat** %"$ackermann_86", align 8
  store %TName_Nat* %"$$ackermann_86_1823", %TName_Nat** %ack34, align 8
  %"$gasrem_1824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1825" = icmp ugt i64 1, %"$gasrem_1824"
  br i1 %"$gascmp_1825", label %"$out_of_gas_1826", label %"$have_gas_1827"

"$out_of_gas_1826":                               ; preds = %"$have_gas_1811"
  call void @_out_of_gas()
  br label %"$have_gas_1827"

"$have_gas_1827":                                 ; preds = %"$out_of_gas_1826", %"$have_gas_1811"
  %"$consume_1828" = sub i64 %"$gasrem_1824", 1
  store i64 %"$consume_1828", i64* @_gasrem, align 8
  %ack40 = alloca %TName_Nat*, align 8
  %"$gasrem_1829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1830" = icmp ugt i64 1, %"$gasrem_1829"
  br i1 %"$gascmp_1830", label %"$out_of_gas_1831", label %"$have_gas_1832"

"$out_of_gas_1831":                               ; preds = %"$have_gas_1827"
  call void @_out_of_gas()
  br label %"$have_gas_1832"

"$have_gas_1832":                                 ; preds = %"$out_of_gas_1831", %"$have_gas_1827"
  %"$consume_1833" = sub i64 %"$gasrem_1829", 1
  store i64 %"$consume_1833", i64* @_gasrem, align 8
  %"$ackermann_87" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1834" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1835" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1834", 0
  %"$ackermann_envptr_1836" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1834", 1
  %"$n4_1837" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$ackermann_call_1838" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1835"(i8* %"$ackermann_envptr_1836", %TName_Nat* %"$n4_1837")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1838", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_87", align 8
  %"$ackermann_88" = alloca %TName_Nat*, align 8
  %"$$ackermann_87_1839" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_87", align 8
  %"$$ackermann_87_fptr_1840" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_87_1839", 0
  %"$$ackermann_87_envptr_1841" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_87_1839", 1
  %"$n0_1842" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_87_call_1843" = call %TName_Nat* %"$$ackermann_87_fptr_1840"(i8* %"$$ackermann_87_envptr_1841", %TName_Nat* %"$n0_1842")
  store %TName_Nat* %"$$ackermann_87_call_1843", %TName_Nat** %"$ackermann_88", align 8
  %"$$ackermann_88_1844" = load %TName_Nat*, %TName_Nat** %"$ackermann_88", align 8
  store %TName_Nat* %"$$ackermann_88_1844", %TName_Nat** %ack40, align 8
  %"$gasrem_1845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1846" = icmp ugt i64 1, %"$gasrem_1845"
  br i1 %"$gascmp_1846", label %"$out_of_gas_1847", label %"$have_gas_1848"

"$out_of_gas_1847":                               ; preds = %"$have_gas_1832"
  call void @_out_of_gas()
  br label %"$have_gas_1848"

"$have_gas_1848":                                 ; preds = %"$out_of_gas_1847", %"$have_gas_1832"
  %"$consume_1849" = sub i64 %"$gasrem_1845", 1
  store i64 %"$consume_1849", i64* @_gasrem, align 8
  %int01 = alloca %Uint32, align 8
  %"$gasrem_1850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1851" = icmp ugt i64 1, %"$gasrem_1850"
  br i1 %"$gascmp_1851", label %"$out_of_gas_1852", label %"$have_gas_1853"

"$out_of_gas_1852":                               ; preds = %"$have_gas_1848"
  call void @_out_of_gas()
  br label %"$have_gas_1853"

"$have_gas_1853":                                 ; preds = %"$out_of_gas_1852", %"$have_gas_1848"
  %"$consume_1854" = sub i64 %"$gasrem_1850", 1
  store i64 %"$consume_1854", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_89" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1855" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1856" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1855", 0
  %"$NatUtils.nat_to_int_envptr_1857" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1855", 1
  %"$ack00_1858" = load %TName_Nat*, %TName_Nat** %ack00, align 8
  %"$NatUtils.nat_to_int_call_1859" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1856"(i8* %"$NatUtils.nat_to_int_envptr_1857", %TName_Nat* %"$ack00_1858")
  store %Uint32 %"$NatUtils.nat_to_int_call_1859", %Uint32* %"$NatUtils.nat_to_int_89", align 4
  %"$$NatUtils.nat_to_int_89_1860" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_89", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_89_1860", %Uint32* %int01, align 4
  %"$gasrem_1861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1862" = icmp ugt i64 1, %"$gasrem_1861"
  br i1 %"$gascmp_1862", label %"$out_of_gas_1863", label %"$have_gas_1864"

"$out_of_gas_1863":                               ; preds = %"$have_gas_1853"
  call void @_out_of_gas()
  br label %"$have_gas_1864"

"$have_gas_1864":                                 ; preds = %"$out_of_gas_1863", %"$have_gas_1853"
  %"$consume_1865" = sub i64 %"$gasrem_1861", 1
  store i64 %"$consume_1865", i64* @_gasrem, align 8
  %int02 = alloca %Uint32, align 8
  %"$gasrem_1866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1867" = icmp ugt i64 1, %"$gasrem_1866"
  br i1 %"$gascmp_1867", label %"$out_of_gas_1868", label %"$have_gas_1869"

"$out_of_gas_1868":                               ; preds = %"$have_gas_1864"
  call void @_out_of_gas()
  br label %"$have_gas_1869"

"$have_gas_1869":                                 ; preds = %"$out_of_gas_1868", %"$have_gas_1864"
  %"$consume_1870" = sub i64 %"$gasrem_1866", 1
  store i64 %"$consume_1870", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_90" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1871" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1872" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1871", 0
  %"$NatUtils.nat_to_int_envptr_1873" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1871", 1
  %"$ack02_1874" = load %TName_Nat*, %TName_Nat** %ack02, align 8
  %"$NatUtils.nat_to_int_call_1875" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1872"(i8* %"$NatUtils.nat_to_int_envptr_1873", %TName_Nat* %"$ack02_1874")
  store %Uint32 %"$NatUtils.nat_to_int_call_1875", %Uint32* %"$NatUtils.nat_to_int_90", align 4
  %"$$NatUtils.nat_to_int_90_1876" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_90", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_90_1876", %Uint32* %int02, align 4
  %"$gasrem_1877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1878" = icmp ugt i64 1, %"$gasrem_1877"
  br i1 %"$gascmp_1878", label %"$out_of_gas_1879", label %"$have_gas_1880"

"$out_of_gas_1879":                               ; preds = %"$have_gas_1869"
  call void @_out_of_gas()
  br label %"$have_gas_1880"

"$have_gas_1880":                                 ; preds = %"$out_of_gas_1879", %"$have_gas_1869"
  %"$consume_1881" = sub i64 %"$gasrem_1877", 1
  store i64 %"$consume_1881", i64* @_gasrem, align 8
  %int03 = alloca %Uint32, align 8
  %"$gasrem_1882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1883" = icmp ugt i64 1, %"$gasrem_1882"
  br i1 %"$gascmp_1883", label %"$out_of_gas_1884", label %"$have_gas_1885"

"$out_of_gas_1884":                               ; preds = %"$have_gas_1880"
  call void @_out_of_gas()
  br label %"$have_gas_1885"

"$have_gas_1885":                                 ; preds = %"$out_of_gas_1884", %"$have_gas_1880"
  %"$consume_1886" = sub i64 %"$gasrem_1882", 1
  store i64 %"$consume_1886", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_91" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1887" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1888" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1887", 0
  %"$NatUtils.nat_to_int_envptr_1889" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1887", 1
  %"$ack03_1890" = load %TName_Nat*, %TName_Nat** %ack03, align 8
  %"$NatUtils.nat_to_int_call_1891" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1888"(i8* %"$NatUtils.nat_to_int_envptr_1889", %TName_Nat* %"$ack03_1890")
  store %Uint32 %"$NatUtils.nat_to_int_call_1891", %Uint32* %"$NatUtils.nat_to_int_91", align 4
  %"$$NatUtils.nat_to_int_91_1892" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_91", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_91_1892", %Uint32* %int03, align 4
  %"$gasrem_1893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1894" = icmp ugt i64 1, %"$gasrem_1893"
  br i1 %"$gascmp_1894", label %"$out_of_gas_1895", label %"$have_gas_1896"

"$out_of_gas_1895":                               ; preds = %"$have_gas_1885"
  call void @_out_of_gas()
  br label %"$have_gas_1896"

"$have_gas_1896":                                 ; preds = %"$out_of_gas_1895", %"$have_gas_1885"
  %"$consume_1897" = sub i64 %"$gasrem_1893", 1
  store i64 %"$consume_1897", i64* @_gasrem, align 8
  %int04 = alloca %Uint32, align 8
  %"$gasrem_1898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1899" = icmp ugt i64 1, %"$gasrem_1898"
  br i1 %"$gascmp_1899", label %"$out_of_gas_1900", label %"$have_gas_1901"

"$out_of_gas_1900":                               ; preds = %"$have_gas_1896"
  call void @_out_of_gas()
  br label %"$have_gas_1901"

"$have_gas_1901":                                 ; preds = %"$out_of_gas_1900", %"$have_gas_1896"
  %"$consume_1902" = sub i64 %"$gasrem_1898", 1
  store i64 %"$consume_1902", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_92" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1903" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1904" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1903", 0
  %"$NatUtils.nat_to_int_envptr_1905" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1903", 1
  %"$ack04_1906" = load %TName_Nat*, %TName_Nat** %ack04, align 8
  %"$NatUtils.nat_to_int_call_1907" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1904"(i8* %"$NatUtils.nat_to_int_envptr_1905", %TName_Nat* %"$ack04_1906")
  store %Uint32 %"$NatUtils.nat_to_int_call_1907", %Uint32* %"$NatUtils.nat_to_int_92", align 4
  %"$$NatUtils.nat_to_int_92_1908" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_92", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_92_1908", %Uint32* %int04, align 4
  %"$gasrem_1909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1910" = icmp ugt i64 1, %"$gasrem_1909"
  br i1 %"$gascmp_1910", label %"$out_of_gas_1911", label %"$have_gas_1912"

"$out_of_gas_1911":                               ; preds = %"$have_gas_1901"
  call void @_out_of_gas()
  br label %"$have_gas_1912"

"$have_gas_1912":                                 ; preds = %"$out_of_gas_1911", %"$have_gas_1901"
  %"$consume_1913" = sub i64 %"$gasrem_1909", 1
  store i64 %"$consume_1913", i64* @_gasrem, align 8
  %int10 = alloca %Uint32, align 8
  %"$gasrem_1914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1915" = icmp ugt i64 1, %"$gasrem_1914"
  br i1 %"$gascmp_1915", label %"$out_of_gas_1916", label %"$have_gas_1917"

"$out_of_gas_1916":                               ; preds = %"$have_gas_1912"
  call void @_out_of_gas()
  br label %"$have_gas_1917"

"$have_gas_1917":                                 ; preds = %"$out_of_gas_1916", %"$have_gas_1912"
  %"$consume_1918" = sub i64 %"$gasrem_1914", 1
  store i64 %"$consume_1918", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_93" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1919" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1920" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1919", 0
  %"$NatUtils.nat_to_int_envptr_1921" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1919", 1
  %"$ack10_1922" = load %TName_Nat*, %TName_Nat** %ack10, align 8
  %"$NatUtils.nat_to_int_call_1923" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1920"(i8* %"$NatUtils.nat_to_int_envptr_1921", %TName_Nat* %"$ack10_1922")
  store %Uint32 %"$NatUtils.nat_to_int_call_1923", %Uint32* %"$NatUtils.nat_to_int_93", align 4
  %"$$NatUtils.nat_to_int_93_1924" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_93", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_93_1924", %Uint32* %int10, align 4
  %"$gasrem_1925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1926" = icmp ugt i64 1, %"$gasrem_1925"
  br i1 %"$gascmp_1926", label %"$out_of_gas_1927", label %"$have_gas_1928"

"$out_of_gas_1927":                               ; preds = %"$have_gas_1917"
  call void @_out_of_gas()
  br label %"$have_gas_1928"

"$have_gas_1928":                                 ; preds = %"$out_of_gas_1927", %"$have_gas_1917"
  %"$consume_1929" = sub i64 %"$gasrem_1925", 1
  store i64 %"$consume_1929", i64* @_gasrem, align 8
  %int11 = alloca %Uint32, align 8
  %"$gasrem_1930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1931" = icmp ugt i64 1, %"$gasrem_1930"
  br i1 %"$gascmp_1931", label %"$out_of_gas_1932", label %"$have_gas_1933"

"$out_of_gas_1932":                               ; preds = %"$have_gas_1928"
  call void @_out_of_gas()
  br label %"$have_gas_1933"

"$have_gas_1933":                                 ; preds = %"$out_of_gas_1932", %"$have_gas_1928"
  %"$consume_1934" = sub i64 %"$gasrem_1930", 1
  store i64 %"$consume_1934", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_94" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1935" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1936" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1935", 0
  %"$NatUtils.nat_to_int_envptr_1937" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1935", 1
  %"$ack11_1938" = load %TName_Nat*, %TName_Nat** %ack11, align 8
  %"$NatUtils.nat_to_int_call_1939" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1936"(i8* %"$NatUtils.nat_to_int_envptr_1937", %TName_Nat* %"$ack11_1938")
  store %Uint32 %"$NatUtils.nat_to_int_call_1939", %Uint32* %"$NatUtils.nat_to_int_94", align 4
  %"$$NatUtils.nat_to_int_94_1940" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_94", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_94_1940", %Uint32* %int11, align 4
  %"$gasrem_1941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1942" = icmp ugt i64 1, %"$gasrem_1941"
  br i1 %"$gascmp_1942", label %"$out_of_gas_1943", label %"$have_gas_1944"

"$out_of_gas_1943":                               ; preds = %"$have_gas_1933"
  call void @_out_of_gas()
  br label %"$have_gas_1944"

"$have_gas_1944":                                 ; preds = %"$out_of_gas_1943", %"$have_gas_1933"
  %"$consume_1945" = sub i64 %"$gasrem_1941", 1
  store i64 %"$consume_1945", i64* @_gasrem, align 8
  %int12 = alloca %Uint32, align 8
  %"$gasrem_1946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1947" = icmp ugt i64 1, %"$gasrem_1946"
  br i1 %"$gascmp_1947", label %"$out_of_gas_1948", label %"$have_gas_1949"

"$out_of_gas_1948":                               ; preds = %"$have_gas_1944"
  call void @_out_of_gas()
  br label %"$have_gas_1949"

"$have_gas_1949":                                 ; preds = %"$out_of_gas_1948", %"$have_gas_1944"
  %"$consume_1950" = sub i64 %"$gasrem_1946", 1
  store i64 %"$consume_1950", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_95" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1951" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1952" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1951", 0
  %"$NatUtils.nat_to_int_envptr_1953" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1951", 1
  %"$ack12_1954" = load %TName_Nat*, %TName_Nat** %ack12, align 8
  %"$NatUtils.nat_to_int_call_1955" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1952"(i8* %"$NatUtils.nat_to_int_envptr_1953", %TName_Nat* %"$ack12_1954")
  store %Uint32 %"$NatUtils.nat_to_int_call_1955", %Uint32* %"$NatUtils.nat_to_int_95", align 4
  %"$$NatUtils.nat_to_int_95_1956" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_95", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_95_1956", %Uint32* %int12, align 4
  %"$gasrem_1957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1958" = icmp ugt i64 1, %"$gasrem_1957"
  br i1 %"$gascmp_1958", label %"$out_of_gas_1959", label %"$have_gas_1960"

"$out_of_gas_1959":                               ; preds = %"$have_gas_1949"
  call void @_out_of_gas()
  br label %"$have_gas_1960"

"$have_gas_1960":                                 ; preds = %"$out_of_gas_1959", %"$have_gas_1949"
  %"$consume_1961" = sub i64 %"$gasrem_1957", 1
  store i64 %"$consume_1961", i64* @_gasrem, align 8
  %int13 = alloca %Uint32, align 8
  %"$gasrem_1962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1963" = icmp ugt i64 1, %"$gasrem_1962"
  br i1 %"$gascmp_1963", label %"$out_of_gas_1964", label %"$have_gas_1965"

"$out_of_gas_1964":                               ; preds = %"$have_gas_1960"
  call void @_out_of_gas()
  br label %"$have_gas_1965"

"$have_gas_1965":                                 ; preds = %"$out_of_gas_1964", %"$have_gas_1960"
  %"$consume_1966" = sub i64 %"$gasrem_1962", 1
  store i64 %"$consume_1966", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_96" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1967" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1968" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1967", 0
  %"$NatUtils.nat_to_int_envptr_1969" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1967", 1
  %"$ack13_1970" = load %TName_Nat*, %TName_Nat** %ack13, align 8
  %"$NatUtils.nat_to_int_call_1971" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1968"(i8* %"$NatUtils.nat_to_int_envptr_1969", %TName_Nat* %"$ack13_1970")
  store %Uint32 %"$NatUtils.nat_to_int_call_1971", %Uint32* %"$NatUtils.nat_to_int_96", align 4
  %"$$NatUtils.nat_to_int_96_1972" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_96", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_96_1972", %Uint32* %int13, align 4
  %"$gasrem_1973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1974" = icmp ugt i64 1, %"$gasrem_1973"
  br i1 %"$gascmp_1974", label %"$out_of_gas_1975", label %"$have_gas_1976"

"$out_of_gas_1975":                               ; preds = %"$have_gas_1965"
  call void @_out_of_gas()
  br label %"$have_gas_1976"

"$have_gas_1976":                                 ; preds = %"$out_of_gas_1975", %"$have_gas_1965"
  %"$consume_1977" = sub i64 %"$gasrem_1973", 1
  store i64 %"$consume_1977", i64* @_gasrem, align 8
  %int14 = alloca %Uint32, align 8
  %"$gasrem_1978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1979" = icmp ugt i64 1, %"$gasrem_1978"
  br i1 %"$gascmp_1979", label %"$out_of_gas_1980", label %"$have_gas_1981"

"$out_of_gas_1980":                               ; preds = %"$have_gas_1976"
  call void @_out_of_gas()
  br label %"$have_gas_1981"

"$have_gas_1981":                                 ; preds = %"$out_of_gas_1980", %"$have_gas_1976"
  %"$consume_1982" = sub i64 %"$gasrem_1978", 1
  store i64 %"$consume_1982", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_97" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1983" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1984" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1983", 0
  %"$NatUtils.nat_to_int_envptr_1985" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1983", 1
  %"$ack14_1986" = load %TName_Nat*, %TName_Nat** %ack14, align 8
  %"$NatUtils.nat_to_int_call_1987" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1984"(i8* %"$NatUtils.nat_to_int_envptr_1985", %TName_Nat* %"$ack14_1986")
  store %Uint32 %"$NatUtils.nat_to_int_call_1987", %Uint32* %"$NatUtils.nat_to_int_97", align 4
  %"$$NatUtils.nat_to_int_97_1988" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_97", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_97_1988", %Uint32* %int14, align 4
  %"$gasrem_1989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1990" = icmp ugt i64 1, %"$gasrem_1989"
  br i1 %"$gascmp_1990", label %"$out_of_gas_1991", label %"$have_gas_1992"

"$out_of_gas_1991":                               ; preds = %"$have_gas_1981"
  call void @_out_of_gas()
  br label %"$have_gas_1992"

"$have_gas_1992":                                 ; preds = %"$out_of_gas_1991", %"$have_gas_1981"
  %"$consume_1993" = sub i64 %"$gasrem_1989", 1
  store i64 %"$consume_1993", i64* @_gasrem, align 8
  %int20 = alloca %Uint32, align 8
  %"$gasrem_1994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1995" = icmp ugt i64 1, %"$gasrem_1994"
  br i1 %"$gascmp_1995", label %"$out_of_gas_1996", label %"$have_gas_1997"

"$out_of_gas_1996":                               ; preds = %"$have_gas_1992"
  call void @_out_of_gas()
  br label %"$have_gas_1997"

"$have_gas_1997":                                 ; preds = %"$out_of_gas_1996", %"$have_gas_1992"
  %"$consume_1998" = sub i64 %"$gasrem_1994", 1
  store i64 %"$consume_1998", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_98" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1999" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2000" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1999", 0
  %"$NatUtils.nat_to_int_envptr_2001" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1999", 1
  %"$ack20_2002" = load %TName_Nat*, %TName_Nat** %ack20, align 8
  %"$NatUtils.nat_to_int_call_2003" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2000"(i8* %"$NatUtils.nat_to_int_envptr_2001", %TName_Nat* %"$ack20_2002")
  store %Uint32 %"$NatUtils.nat_to_int_call_2003", %Uint32* %"$NatUtils.nat_to_int_98", align 4
  %"$$NatUtils.nat_to_int_98_2004" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_98", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_98_2004", %Uint32* %int20, align 4
  %"$gasrem_2005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2006" = icmp ugt i64 1, %"$gasrem_2005"
  br i1 %"$gascmp_2006", label %"$out_of_gas_2007", label %"$have_gas_2008"

"$out_of_gas_2007":                               ; preds = %"$have_gas_1997"
  call void @_out_of_gas()
  br label %"$have_gas_2008"

"$have_gas_2008":                                 ; preds = %"$out_of_gas_2007", %"$have_gas_1997"
  %"$consume_2009" = sub i64 %"$gasrem_2005", 1
  store i64 %"$consume_2009", i64* @_gasrem, align 8
  %int21 = alloca %Uint32, align 8
  %"$gasrem_2010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2011" = icmp ugt i64 1, %"$gasrem_2010"
  br i1 %"$gascmp_2011", label %"$out_of_gas_2012", label %"$have_gas_2013"

"$out_of_gas_2012":                               ; preds = %"$have_gas_2008"
  call void @_out_of_gas()
  br label %"$have_gas_2013"

"$have_gas_2013":                                 ; preds = %"$out_of_gas_2012", %"$have_gas_2008"
  %"$consume_2014" = sub i64 %"$gasrem_2010", 1
  store i64 %"$consume_2014", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_99" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2015" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2016" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2015", 0
  %"$NatUtils.nat_to_int_envptr_2017" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2015", 1
  %"$ack21_2018" = load %TName_Nat*, %TName_Nat** %ack21, align 8
  %"$NatUtils.nat_to_int_call_2019" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2016"(i8* %"$NatUtils.nat_to_int_envptr_2017", %TName_Nat* %"$ack21_2018")
  store %Uint32 %"$NatUtils.nat_to_int_call_2019", %Uint32* %"$NatUtils.nat_to_int_99", align 4
  %"$$NatUtils.nat_to_int_99_2020" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_99", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_99_2020", %Uint32* %int21, align 4
  %"$gasrem_2021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2022" = icmp ugt i64 1, %"$gasrem_2021"
  br i1 %"$gascmp_2022", label %"$out_of_gas_2023", label %"$have_gas_2024"

"$out_of_gas_2023":                               ; preds = %"$have_gas_2013"
  call void @_out_of_gas()
  br label %"$have_gas_2024"

"$have_gas_2024":                                 ; preds = %"$out_of_gas_2023", %"$have_gas_2013"
  %"$consume_2025" = sub i64 %"$gasrem_2021", 1
  store i64 %"$consume_2025", i64* @_gasrem, align 8
  %int22 = alloca %Uint32, align 8
  %"$gasrem_2026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2027" = icmp ugt i64 1, %"$gasrem_2026"
  br i1 %"$gascmp_2027", label %"$out_of_gas_2028", label %"$have_gas_2029"

"$out_of_gas_2028":                               ; preds = %"$have_gas_2024"
  call void @_out_of_gas()
  br label %"$have_gas_2029"

"$have_gas_2029":                                 ; preds = %"$out_of_gas_2028", %"$have_gas_2024"
  %"$consume_2030" = sub i64 %"$gasrem_2026", 1
  store i64 %"$consume_2030", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_100" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2031" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2032" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2031", 0
  %"$NatUtils.nat_to_int_envptr_2033" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2031", 1
  %"$ack22_2034" = load %TName_Nat*, %TName_Nat** %ack22, align 8
  %"$NatUtils.nat_to_int_call_2035" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2032"(i8* %"$NatUtils.nat_to_int_envptr_2033", %TName_Nat* %"$ack22_2034")
  store %Uint32 %"$NatUtils.nat_to_int_call_2035", %Uint32* %"$NatUtils.nat_to_int_100", align 4
  %"$$NatUtils.nat_to_int_100_2036" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_100", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_100_2036", %Uint32* %int22, align 4
  %"$gasrem_2037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2038" = icmp ugt i64 1, %"$gasrem_2037"
  br i1 %"$gascmp_2038", label %"$out_of_gas_2039", label %"$have_gas_2040"

"$out_of_gas_2039":                               ; preds = %"$have_gas_2029"
  call void @_out_of_gas()
  br label %"$have_gas_2040"

"$have_gas_2040":                                 ; preds = %"$out_of_gas_2039", %"$have_gas_2029"
  %"$consume_2041" = sub i64 %"$gasrem_2037", 1
  store i64 %"$consume_2041", i64* @_gasrem, align 8
  %int23 = alloca %Uint32, align 8
  %"$gasrem_2042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2043" = icmp ugt i64 1, %"$gasrem_2042"
  br i1 %"$gascmp_2043", label %"$out_of_gas_2044", label %"$have_gas_2045"

"$out_of_gas_2044":                               ; preds = %"$have_gas_2040"
  call void @_out_of_gas()
  br label %"$have_gas_2045"

"$have_gas_2045":                                 ; preds = %"$out_of_gas_2044", %"$have_gas_2040"
  %"$consume_2046" = sub i64 %"$gasrem_2042", 1
  store i64 %"$consume_2046", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_101" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2047" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2048" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2047", 0
  %"$NatUtils.nat_to_int_envptr_2049" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2047", 1
  %"$ack23_2050" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_2051" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2048"(i8* %"$NatUtils.nat_to_int_envptr_2049", %TName_Nat* %"$ack23_2050")
  store %Uint32 %"$NatUtils.nat_to_int_call_2051", %Uint32* %"$NatUtils.nat_to_int_101", align 4
  %"$$NatUtils.nat_to_int_101_2052" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_101", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_101_2052", %Uint32* %int23, align 4
  %"$gasrem_2053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2054" = icmp ugt i64 1, %"$gasrem_2053"
  br i1 %"$gascmp_2054", label %"$out_of_gas_2055", label %"$have_gas_2056"

"$out_of_gas_2055":                               ; preds = %"$have_gas_2045"
  call void @_out_of_gas()
  br label %"$have_gas_2056"

"$have_gas_2056":                                 ; preds = %"$out_of_gas_2055", %"$have_gas_2045"
  %"$consume_2057" = sub i64 %"$gasrem_2053", 1
  store i64 %"$consume_2057", i64* @_gasrem, align 8
  %int24 = alloca %Uint32, align 8
  %"$gasrem_2058" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2059" = icmp ugt i64 1, %"$gasrem_2058"
  br i1 %"$gascmp_2059", label %"$out_of_gas_2060", label %"$have_gas_2061"

"$out_of_gas_2060":                               ; preds = %"$have_gas_2056"
  call void @_out_of_gas()
  br label %"$have_gas_2061"

"$have_gas_2061":                                 ; preds = %"$out_of_gas_2060", %"$have_gas_2056"
  %"$consume_2062" = sub i64 %"$gasrem_2058", 1
  store i64 %"$consume_2062", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_102" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2063" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2064" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2063", 0
  %"$NatUtils.nat_to_int_envptr_2065" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2063", 1
  %"$ack23_2066" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_2067" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2064"(i8* %"$NatUtils.nat_to_int_envptr_2065", %TName_Nat* %"$ack23_2066")
  store %Uint32 %"$NatUtils.nat_to_int_call_2067", %Uint32* %"$NatUtils.nat_to_int_102", align 4
  %"$$NatUtils.nat_to_int_102_2068" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_102", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_102_2068", %Uint32* %int24, align 4
  %"$gasrem_2069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2070" = icmp ugt i64 1, %"$gasrem_2069"
  br i1 %"$gascmp_2070", label %"$out_of_gas_2071", label %"$have_gas_2072"

"$out_of_gas_2071":                               ; preds = %"$have_gas_2061"
  call void @_out_of_gas()
  br label %"$have_gas_2072"

"$have_gas_2072":                                 ; preds = %"$out_of_gas_2071", %"$have_gas_2061"
  %"$consume_2073" = sub i64 %"$gasrem_2069", 1
  store i64 %"$consume_2073", i64* @_gasrem, align 8
  %int30 = alloca %Uint32, align 8
  %"$gasrem_2074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2075" = icmp ugt i64 1, %"$gasrem_2074"
  br i1 %"$gascmp_2075", label %"$out_of_gas_2076", label %"$have_gas_2077"

"$out_of_gas_2076":                               ; preds = %"$have_gas_2072"
  call void @_out_of_gas()
  br label %"$have_gas_2077"

"$have_gas_2077":                                 ; preds = %"$out_of_gas_2076", %"$have_gas_2072"
  %"$consume_2078" = sub i64 %"$gasrem_2074", 1
  store i64 %"$consume_2078", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_103" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2079" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2080" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2079", 0
  %"$NatUtils.nat_to_int_envptr_2081" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2079", 1
  %"$ack30_2082" = load %TName_Nat*, %TName_Nat** %ack30, align 8
  %"$NatUtils.nat_to_int_call_2083" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2080"(i8* %"$NatUtils.nat_to_int_envptr_2081", %TName_Nat* %"$ack30_2082")
  store %Uint32 %"$NatUtils.nat_to_int_call_2083", %Uint32* %"$NatUtils.nat_to_int_103", align 4
  %"$$NatUtils.nat_to_int_103_2084" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_103", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_103_2084", %Uint32* %int30, align 4
  %"$gasrem_2085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2086" = icmp ugt i64 1, %"$gasrem_2085"
  br i1 %"$gascmp_2086", label %"$out_of_gas_2087", label %"$have_gas_2088"

"$out_of_gas_2087":                               ; preds = %"$have_gas_2077"
  call void @_out_of_gas()
  br label %"$have_gas_2088"

"$have_gas_2088":                                 ; preds = %"$out_of_gas_2087", %"$have_gas_2077"
  %"$consume_2089" = sub i64 %"$gasrem_2085", 1
  store i64 %"$consume_2089", i64* @_gasrem, align 8
  %int31 = alloca %Uint32, align 8
  %"$gasrem_2090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2091" = icmp ugt i64 1, %"$gasrem_2090"
  br i1 %"$gascmp_2091", label %"$out_of_gas_2092", label %"$have_gas_2093"

"$out_of_gas_2092":                               ; preds = %"$have_gas_2088"
  call void @_out_of_gas()
  br label %"$have_gas_2093"

"$have_gas_2093":                                 ; preds = %"$out_of_gas_2092", %"$have_gas_2088"
  %"$consume_2094" = sub i64 %"$gasrem_2090", 1
  store i64 %"$consume_2094", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_104" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2095" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2096" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2095", 0
  %"$NatUtils.nat_to_int_envptr_2097" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2095", 1
  %"$ack31_2098" = load %TName_Nat*, %TName_Nat** %ack31, align 8
  %"$NatUtils.nat_to_int_call_2099" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2096"(i8* %"$NatUtils.nat_to_int_envptr_2097", %TName_Nat* %"$ack31_2098")
  store %Uint32 %"$NatUtils.nat_to_int_call_2099", %Uint32* %"$NatUtils.nat_to_int_104", align 4
  %"$$NatUtils.nat_to_int_104_2100" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_104", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_104_2100", %Uint32* %int31, align 4
  %"$gasrem_2101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2102" = icmp ugt i64 1, %"$gasrem_2101"
  br i1 %"$gascmp_2102", label %"$out_of_gas_2103", label %"$have_gas_2104"

"$out_of_gas_2103":                               ; preds = %"$have_gas_2093"
  call void @_out_of_gas()
  br label %"$have_gas_2104"

"$have_gas_2104":                                 ; preds = %"$out_of_gas_2103", %"$have_gas_2093"
  %"$consume_2105" = sub i64 %"$gasrem_2101", 1
  store i64 %"$consume_2105", i64* @_gasrem, align 8
  %int32 = alloca %Uint32, align 8
  %"$gasrem_2106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2107" = icmp ugt i64 1, %"$gasrem_2106"
  br i1 %"$gascmp_2107", label %"$out_of_gas_2108", label %"$have_gas_2109"

"$out_of_gas_2108":                               ; preds = %"$have_gas_2104"
  call void @_out_of_gas()
  br label %"$have_gas_2109"

"$have_gas_2109":                                 ; preds = %"$out_of_gas_2108", %"$have_gas_2104"
  %"$consume_2110" = sub i64 %"$gasrem_2106", 1
  store i64 %"$consume_2110", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_105" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2111" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2112" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2111", 0
  %"$NatUtils.nat_to_int_envptr_2113" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2111", 1
  %"$ack32_2114" = load %TName_Nat*, %TName_Nat** %ack32, align 8
  %"$NatUtils.nat_to_int_call_2115" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2112"(i8* %"$NatUtils.nat_to_int_envptr_2113", %TName_Nat* %"$ack32_2114")
  store %Uint32 %"$NatUtils.nat_to_int_call_2115", %Uint32* %"$NatUtils.nat_to_int_105", align 4
  %"$$NatUtils.nat_to_int_105_2116" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_105", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_105_2116", %Uint32* %int32, align 4
  %"$gasrem_2117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2118" = icmp ugt i64 1, %"$gasrem_2117"
  br i1 %"$gascmp_2118", label %"$out_of_gas_2119", label %"$have_gas_2120"

"$out_of_gas_2119":                               ; preds = %"$have_gas_2109"
  call void @_out_of_gas()
  br label %"$have_gas_2120"

"$have_gas_2120":                                 ; preds = %"$out_of_gas_2119", %"$have_gas_2109"
  %"$consume_2121" = sub i64 %"$gasrem_2117", 1
  store i64 %"$consume_2121", i64* @_gasrem, align 8
  %int33 = alloca %Uint32, align 8
  %"$gasrem_2122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2123" = icmp ugt i64 1, %"$gasrem_2122"
  br i1 %"$gascmp_2123", label %"$out_of_gas_2124", label %"$have_gas_2125"

"$out_of_gas_2124":                               ; preds = %"$have_gas_2120"
  call void @_out_of_gas()
  br label %"$have_gas_2125"

"$have_gas_2125":                                 ; preds = %"$out_of_gas_2124", %"$have_gas_2120"
  %"$consume_2126" = sub i64 %"$gasrem_2122", 1
  store i64 %"$consume_2126", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_106" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2127" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2128" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2127", 0
  %"$NatUtils.nat_to_int_envptr_2129" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2127", 1
  %"$ack33_2130" = load %TName_Nat*, %TName_Nat** %ack33, align 8
  %"$NatUtils.nat_to_int_call_2131" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2128"(i8* %"$NatUtils.nat_to_int_envptr_2129", %TName_Nat* %"$ack33_2130")
  store %Uint32 %"$NatUtils.nat_to_int_call_2131", %Uint32* %"$NatUtils.nat_to_int_106", align 4
  %"$$NatUtils.nat_to_int_106_2132" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_106", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_106_2132", %Uint32* %int33, align 4
  %"$gasrem_2133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2134" = icmp ugt i64 1, %"$gasrem_2133"
  br i1 %"$gascmp_2134", label %"$out_of_gas_2135", label %"$have_gas_2136"

"$out_of_gas_2135":                               ; preds = %"$have_gas_2125"
  call void @_out_of_gas()
  br label %"$have_gas_2136"

"$have_gas_2136":                                 ; preds = %"$out_of_gas_2135", %"$have_gas_2125"
  %"$consume_2137" = sub i64 %"$gasrem_2133", 1
  store i64 %"$consume_2137", i64* @_gasrem, align 8
  %int34 = alloca %Uint32, align 8
  %"$gasrem_2138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2139" = icmp ugt i64 1, %"$gasrem_2138"
  br i1 %"$gascmp_2139", label %"$out_of_gas_2140", label %"$have_gas_2141"

"$out_of_gas_2140":                               ; preds = %"$have_gas_2136"
  call void @_out_of_gas()
  br label %"$have_gas_2141"

"$have_gas_2141":                                 ; preds = %"$out_of_gas_2140", %"$have_gas_2136"
  %"$consume_2142" = sub i64 %"$gasrem_2138", 1
  store i64 %"$consume_2142", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_107" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2143" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2144" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2143", 0
  %"$NatUtils.nat_to_int_envptr_2145" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2143", 1
  %"$ack34_2146" = load %TName_Nat*, %TName_Nat** %ack34, align 8
  %"$NatUtils.nat_to_int_call_2147" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2144"(i8* %"$NatUtils.nat_to_int_envptr_2145", %TName_Nat* %"$ack34_2146")
  store %Uint32 %"$NatUtils.nat_to_int_call_2147", %Uint32* %"$NatUtils.nat_to_int_107", align 4
  %"$$NatUtils.nat_to_int_107_2148" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_107", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_107_2148", %Uint32* %int34, align 4
  %"$gasrem_2149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2150" = icmp ugt i64 1, %"$gasrem_2149"
  br i1 %"$gascmp_2150", label %"$out_of_gas_2151", label %"$have_gas_2152"

"$out_of_gas_2151":                               ; preds = %"$have_gas_2141"
  call void @_out_of_gas()
  br label %"$have_gas_2152"

"$have_gas_2152":                                 ; preds = %"$out_of_gas_2151", %"$have_gas_2141"
  %"$consume_2153" = sub i64 %"$gasrem_2149", 1
  store i64 %"$consume_2153", i64* @_gasrem, align 8
  %int40 = alloca %Uint32, align 8
  %"$gasrem_2154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2155" = icmp ugt i64 1, %"$gasrem_2154"
  br i1 %"$gascmp_2155", label %"$out_of_gas_2156", label %"$have_gas_2157"

"$out_of_gas_2156":                               ; preds = %"$have_gas_2152"
  call void @_out_of_gas()
  br label %"$have_gas_2157"

"$have_gas_2157":                                 ; preds = %"$out_of_gas_2156", %"$have_gas_2152"
  %"$consume_2158" = sub i64 %"$gasrem_2154", 1
  store i64 %"$consume_2158", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_108" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2159" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2160" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2159", 0
  %"$NatUtils.nat_to_int_envptr_2161" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2159", 1
  %"$ack40_2162" = load %TName_Nat*, %TName_Nat** %ack40, align 8
  %"$NatUtils.nat_to_int_call_2163" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2160"(i8* %"$NatUtils.nat_to_int_envptr_2161", %TName_Nat* %"$ack40_2162")
  store %Uint32 %"$NatUtils.nat_to_int_call_2163", %Uint32* %"$NatUtils.nat_to_int_108", align 4
  %"$$NatUtils.nat_to_int_108_2164" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_108", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_108_2164", %Uint32* %int40, align 4
  %"$gasrem_2165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2166" = icmp ugt i64 1, %"$gasrem_2165"
  br i1 %"$gascmp_2166", label %"$out_of_gas_2167", label %"$have_gas_2168"

"$out_of_gas_2167":                               ; preds = %"$have_gas_2157"
  call void @_out_of_gas()
  br label %"$have_gas_2168"

"$have_gas_2168":                                 ; preds = %"$out_of_gas_2167", %"$have_gas_2157"
  %"$consume_2169" = sub i64 %"$gasrem_2165", 1
  store i64 %"$consume_2169", i64* @_gasrem, align 8
  %sum = alloca %Uint32, align 8
  %"$gasrem_2170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2171" = icmp ugt i64 4, %"$gasrem_2170"
  br i1 %"$gascmp_2171", label %"$out_of_gas_2172", label %"$have_gas_2173"

"$out_of_gas_2172":                               ; preds = %"$have_gas_2168"
  call void @_out_of_gas()
  br label %"$have_gas_2173"

"$have_gas_2173":                                 ; preds = %"$out_of_gas_2172", %"$have_gas_2168"
  %"$consume_2174" = sub i64 %"$gasrem_2170", 4
  store i64 %"$consume_2174", i64* @_gasrem, align 8
  %"$int01_2175" = load %Uint32, %Uint32* %int01, align 4
  %"$int02_2176" = load %Uint32, %Uint32* %int02, align 4
  %"$add_call_2177" = call %Uint32 @_add_Uint32(%Uint32 %"$int01_2175", %Uint32 %"$int02_2176")
  store %Uint32 %"$add_call_2177", %Uint32* %sum, align 4
  %"$gasrem_2178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2179" = icmp ugt i64 1, %"$gasrem_2178"
  br i1 %"$gascmp_2179", label %"$out_of_gas_2180", label %"$have_gas_2181"

"$out_of_gas_2180":                               ; preds = %"$have_gas_2173"
  call void @_out_of_gas()
  br label %"$have_gas_2181"

"$have_gas_2181":                                 ; preds = %"$out_of_gas_2180", %"$have_gas_2173"
  %"$consume_2182" = sub i64 %"$gasrem_2178", 1
  store i64 %"$consume_2182", i64* @_gasrem, align 8
  %"$sum_7" = alloca %Uint32, align 8
  %"$gasrem_2183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2184" = icmp ugt i64 4, %"$gasrem_2183"
  br i1 %"$gascmp_2184", label %"$out_of_gas_2185", label %"$have_gas_2186"

"$out_of_gas_2185":                               ; preds = %"$have_gas_2181"
  call void @_out_of_gas()
  br label %"$have_gas_2186"

"$have_gas_2186":                                 ; preds = %"$out_of_gas_2185", %"$have_gas_2181"
  %"$consume_2187" = sub i64 %"$gasrem_2183", 4
  store i64 %"$consume_2187", i64* @_gasrem, align 8
  %"$sum_2188" = load %Uint32, %Uint32* %sum, align 4
  %"$int03_2189" = load %Uint32, %Uint32* %int03, align 4
  %"$add_call_2190" = call %Uint32 @_add_Uint32(%Uint32 %"$sum_2188", %Uint32 %"$int03_2189")
  store %Uint32 %"$add_call_2190", %Uint32* %"$sum_7", align 4
  %"$gasrem_2191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2192" = icmp ugt i64 1, %"$gasrem_2191"
  br i1 %"$gascmp_2192", label %"$out_of_gas_2193", label %"$have_gas_2194"

"$out_of_gas_2193":                               ; preds = %"$have_gas_2186"
  call void @_out_of_gas()
  br label %"$have_gas_2194"

"$have_gas_2194":                                 ; preds = %"$out_of_gas_2193", %"$have_gas_2186"
  %"$consume_2195" = sub i64 %"$gasrem_2191", 1
  store i64 %"$consume_2195", i64* @_gasrem, align 8
  %"$sum_8" = alloca %Uint32, align 8
  %"$gasrem_2196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2197" = icmp ugt i64 4, %"$gasrem_2196"
  br i1 %"$gascmp_2197", label %"$out_of_gas_2198", label %"$have_gas_2199"

"$out_of_gas_2198":                               ; preds = %"$have_gas_2194"
  call void @_out_of_gas()
  br label %"$have_gas_2199"

"$have_gas_2199":                                 ; preds = %"$out_of_gas_2198", %"$have_gas_2194"
  %"$consume_2200" = sub i64 %"$gasrem_2196", 4
  store i64 %"$consume_2200", i64* @_gasrem, align 8
  %"$$sum_7_2201" = load %Uint32, %Uint32* %"$sum_7", align 4
  %"$int04_2202" = load %Uint32, %Uint32* %int04, align 4
  %"$add_call_2203" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_7_2201", %Uint32 %"$int04_2202")
  store %Uint32 %"$add_call_2203", %Uint32* %"$sum_8", align 4
  %"$gasrem_2204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2205" = icmp ugt i64 1, %"$gasrem_2204"
  br i1 %"$gascmp_2205", label %"$out_of_gas_2206", label %"$have_gas_2207"

"$out_of_gas_2206":                               ; preds = %"$have_gas_2199"
  call void @_out_of_gas()
  br label %"$have_gas_2207"

"$have_gas_2207":                                 ; preds = %"$out_of_gas_2206", %"$have_gas_2199"
  %"$consume_2208" = sub i64 %"$gasrem_2204", 1
  store i64 %"$consume_2208", i64* @_gasrem, align 8
  %"$sum_9" = alloca %Uint32, align 8
  %"$gasrem_2209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2210" = icmp ugt i64 4, %"$gasrem_2209"
  br i1 %"$gascmp_2210", label %"$out_of_gas_2211", label %"$have_gas_2212"

"$out_of_gas_2211":                               ; preds = %"$have_gas_2207"
  call void @_out_of_gas()
  br label %"$have_gas_2212"

"$have_gas_2212":                                 ; preds = %"$out_of_gas_2211", %"$have_gas_2207"
  %"$consume_2213" = sub i64 %"$gasrem_2209", 4
  store i64 %"$consume_2213", i64* @_gasrem, align 8
  %"$$sum_8_2214" = load %Uint32, %Uint32* %"$sum_8", align 4
  %"$int10_2215" = load %Uint32, %Uint32* %int10, align 4
  %"$add_call_2216" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_8_2214", %Uint32 %"$int10_2215")
  store %Uint32 %"$add_call_2216", %Uint32* %"$sum_9", align 4
  %"$gasrem_2217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2218" = icmp ugt i64 1, %"$gasrem_2217"
  br i1 %"$gascmp_2218", label %"$out_of_gas_2219", label %"$have_gas_2220"

"$out_of_gas_2219":                               ; preds = %"$have_gas_2212"
  call void @_out_of_gas()
  br label %"$have_gas_2220"

"$have_gas_2220":                                 ; preds = %"$out_of_gas_2219", %"$have_gas_2212"
  %"$consume_2221" = sub i64 %"$gasrem_2217", 1
  store i64 %"$consume_2221", i64* @_gasrem, align 8
  %"$sum_10" = alloca %Uint32, align 8
  %"$gasrem_2222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2223" = icmp ugt i64 4, %"$gasrem_2222"
  br i1 %"$gascmp_2223", label %"$out_of_gas_2224", label %"$have_gas_2225"

"$out_of_gas_2224":                               ; preds = %"$have_gas_2220"
  call void @_out_of_gas()
  br label %"$have_gas_2225"

"$have_gas_2225":                                 ; preds = %"$out_of_gas_2224", %"$have_gas_2220"
  %"$consume_2226" = sub i64 %"$gasrem_2222", 4
  store i64 %"$consume_2226", i64* @_gasrem, align 8
  %"$$sum_9_2227" = load %Uint32, %Uint32* %"$sum_9", align 4
  %"$int11_2228" = load %Uint32, %Uint32* %int11, align 4
  %"$add_call_2229" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_9_2227", %Uint32 %"$int11_2228")
  store %Uint32 %"$add_call_2229", %Uint32* %"$sum_10", align 4
  %"$gasrem_2230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2231" = icmp ugt i64 1, %"$gasrem_2230"
  br i1 %"$gascmp_2231", label %"$out_of_gas_2232", label %"$have_gas_2233"

"$out_of_gas_2232":                               ; preds = %"$have_gas_2225"
  call void @_out_of_gas()
  br label %"$have_gas_2233"

"$have_gas_2233":                                 ; preds = %"$out_of_gas_2232", %"$have_gas_2225"
  %"$consume_2234" = sub i64 %"$gasrem_2230", 1
  store i64 %"$consume_2234", i64* @_gasrem, align 8
  %"$sum_11" = alloca %Uint32, align 8
  %"$gasrem_2235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2236" = icmp ugt i64 4, %"$gasrem_2235"
  br i1 %"$gascmp_2236", label %"$out_of_gas_2237", label %"$have_gas_2238"

"$out_of_gas_2237":                               ; preds = %"$have_gas_2233"
  call void @_out_of_gas()
  br label %"$have_gas_2238"

"$have_gas_2238":                                 ; preds = %"$out_of_gas_2237", %"$have_gas_2233"
  %"$consume_2239" = sub i64 %"$gasrem_2235", 4
  store i64 %"$consume_2239", i64* @_gasrem, align 8
  %"$$sum_10_2240" = load %Uint32, %Uint32* %"$sum_10", align 4
  %"$int12_2241" = load %Uint32, %Uint32* %int12, align 4
  %"$add_call_2242" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_10_2240", %Uint32 %"$int12_2241")
  store %Uint32 %"$add_call_2242", %Uint32* %"$sum_11", align 4
  %"$gasrem_2243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2244" = icmp ugt i64 1, %"$gasrem_2243"
  br i1 %"$gascmp_2244", label %"$out_of_gas_2245", label %"$have_gas_2246"

"$out_of_gas_2245":                               ; preds = %"$have_gas_2238"
  call void @_out_of_gas()
  br label %"$have_gas_2246"

"$have_gas_2246":                                 ; preds = %"$out_of_gas_2245", %"$have_gas_2238"
  %"$consume_2247" = sub i64 %"$gasrem_2243", 1
  store i64 %"$consume_2247", i64* @_gasrem, align 8
  %"$sum_12" = alloca %Uint32, align 8
  %"$gasrem_2248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2249" = icmp ugt i64 4, %"$gasrem_2248"
  br i1 %"$gascmp_2249", label %"$out_of_gas_2250", label %"$have_gas_2251"

"$out_of_gas_2250":                               ; preds = %"$have_gas_2246"
  call void @_out_of_gas()
  br label %"$have_gas_2251"

"$have_gas_2251":                                 ; preds = %"$out_of_gas_2250", %"$have_gas_2246"
  %"$consume_2252" = sub i64 %"$gasrem_2248", 4
  store i64 %"$consume_2252", i64* @_gasrem, align 8
  %"$$sum_11_2253" = load %Uint32, %Uint32* %"$sum_11", align 4
  %"$int13_2254" = load %Uint32, %Uint32* %int13, align 4
  %"$add_call_2255" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_11_2253", %Uint32 %"$int13_2254")
  store %Uint32 %"$add_call_2255", %Uint32* %"$sum_12", align 4
  %"$gasrem_2256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2257" = icmp ugt i64 1, %"$gasrem_2256"
  br i1 %"$gascmp_2257", label %"$out_of_gas_2258", label %"$have_gas_2259"

"$out_of_gas_2258":                               ; preds = %"$have_gas_2251"
  call void @_out_of_gas()
  br label %"$have_gas_2259"

"$have_gas_2259":                                 ; preds = %"$out_of_gas_2258", %"$have_gas_2251"
  %"$consume_2260" = sub i64 %"$gasrem_2256", 1
  store i64 %"$consume_2260", i64* @_gasrem, align 8
  %"$sum_13" = alloca %Uint32, align 8
  %"$gasrem_2261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2262" = icmp ugt i64 4, %"$gasrem_2261"
  br i1 %"$gascmp_2262", label %"$out_of_gas_2263", label %"$have_gas_2264"

"$out_of_gas_2263":                               ; preds = %"$have_gas_2259"
  call void @_out_of_gas()
  br label %"$have_gas_2264"

"$have_gas_2264":                                 ; preds = %"$out_of_gas_2263", %"$have_gas_2259"
  %"$consume_2265" = sub i64 %"$gasrem_2261", 4
  store i64 %"$consume_2265", i64* @_gasrem, align 8
  %"$$sum_12_2266" = load %Uint32, %Uint32* %"$sum_12", align 4
  %"$int14_2267" = load %Uint32, %Uint32* %int14, align 4
  %"$add_call_2268" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_12_2266", %Uint32 %"$int14_2267")
  store %Uint32 %"$add_call_2268", %Uint32* %"$sum_13", align 4
  %"$gasrem_2269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2270" = icmp ugt i64 1, %"$gasrem_2269"
  br i1 %"$gascmp_2270", label %"$out_of_gas_2271", label %"$have_gas_2272"

"$out_of_gas_2271":                               ; preds = %"$have_gas_2264"
  call void @_out_of_gas()
  br label %"$have_gas_2272"

"$have_gas_2272":                                 ; preds = %"$out_of_gas_2271", %"$have_gas_2264"
  %"$consume_2273" = sub i64 %"$gasrem_2269", 1
  store i64 %"$consume_2273", i64* @_gasrem, align 8
  %"$sum_14" = alloca %Uint32, align 8
  %"$gasrem_2274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2275" = icmp ugt i64 4, %"$gasrem_2274"
  br i1 %"$gascmp_2275", label %"$out_of_gas_2276", label %"$have_gas_2277"

"$out_of_gas_2276":                               ; preds = %"$have_gas_2272"
  call void @_out_of_gas()
  br label %"$have_gas_2277"

"$have_gas_2277":                                 ; preds = %"$out_of_gas_2276", %"$have_gas_2272"
  %"$consume_2278" = sub i64 %"$gasrem_2274", 4
  store i64 %"$consume_2278", i64* @_gasrem, align 8
  %"$$sum_13_2279" = load %Uint32, %Uint32* %"$sum_13", align 4
  %"$int20_2280" = load %Uint32, %Uint32* %int20, align 4
  %"$add_call_2281" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_13_2279", %Uint32 %"$int20_2280")
  store %Uint32 %"$add_call_2281", %Uint32* %"$sum_14", align 4
  %"$gasrem_2282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2283" = icmp ugt i64 1, %"$gasrem_2282"
  br i1 %"$gascmp_2283", label %"$out_of_gas_2284", label %"$have_gas_2285"

"$out_of_gas_2284":                               ; preds = %"$have_gas_2277"
  call void @_out_of_gas()
  br label %"$have_gas_2285"

"$have_gas_2285":                                 ; preds = %"$out_of_gas_2284", %"$have_gas_2277"
  %"$consume_2286" = sub i64 %"$gasrem_2282", 1
  store i64 %"$consume_2286", i64* @_gasrem, align 8
  %"$sum_15" = alloca %Uint32, align 8
  %"$gasrem_2287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2288" = icmp ugt i64 4, %"$gasrem_2287"
  br i1 %"$gascmp_2288", label %"$out_of_gas_2289", label %"$have_gas_2290"

"$out_of_gas_2289":                               ; preds = %"$have_gas_2285"
  call void @_out_of_gas()
  br label %"$have_gas_2290"

"$have_gas_2290":                                 ; preds = %"$out_of_gas_2289", %"$have_gas_2285"
  %"$consume_2291" = sub i64 %"$gasrem_2287", 4
  store i64 %"$consume_2291", i64* @_gasrem, align 8
  %"$$sum_14_2292" = load %Uint32, %Uint32* %"$sum_14", align 4
  %"$int21_2293" = load %Uint32, %Uint32* %int21, align 4
  %"$add_call_2294" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_14_2292", %Uint32 %"$int21_2293")
  store %Uint32 %"$add_call_2294", %Uint32* %"$sum_15", align 4
  %"$gasrem_2295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2296" = icmp ugt i64 1, %"$gasrem_2295"
  br i1 %"$gascmp_2296", label %"$out_of_gas_2297", label %"$have_gas_2298"

"$out_of_gas_2297":                               ; preds = %"$have_gas_2290"
  call void @_out_of_gas()
  br label %"$have_gas_2298"

"$have_gas_2298":                                 ; preds = %"$out_of_gas_2297", %"$have_gas_2290"
  %"$consume_2299" = sub i64 %"$gasrem_2295", 1
  store i64 %"$consume_2299", i64* @_gasrem, align 8
  %"$sum_16" = alloca %Uint32, align 8
  %"$gasrem_2300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2301" = icmp ugt i64 4, %"$gasrem_2300"
  br i1 %"$gascmp_2301", label %"$out_of_gas_2302", label %"$have_gas_2303"

"$out_of_gas_2302":                               ; preds = %"$have_gas_2298"
  call void @_out_of_gas()
  br label %"$have_gas_2303"

"$have_gas_2303":                                 ; preds = %"$out_of_gas_2302", %"$have_gas_2298"
  %"$consume_2304" = sub i64 %"$gasrem_2300", 4
  store i64 %"$consume_2304", i64* @_gasrem, align 8
  %"$$sum_15_2305" = load %Uint32, %Uint32* %"$sum_15", align 4
  %"$int22_2306" = load %Uint32, %Uint32* %int22, align 4
  %"$add_call_2307" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_15_2305", %Uint32 %"$int22_2306")
  store %Uint32 %"$add_call_2307", %Uint32* %"$sum_16", align 4
  %"$gasrem_2308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2309" = icmp ugt i64 1, %"$gasrem_2308"
  br i1 %"$gascmp_2309", label %"$out_of_gas_2310", label %"$have_gas_2311"

"$out_of_gas_2310":                               ; preds = %"$have_gas_2303"
  call void @_out_of_gas()
  br label %"$have_gas_2311"

"$have_gas_2311":                                 ; preds = %"$out_of_gas_2310", %"$have_gas_2303"
  %"$consume_2312" = sub i64 %"$gasrem_2308", 1
  store i64 %"$consume_2312", i64* @_gasrem, align 8
  %"$sum_17" = alloca %Uint32, align 8
  %"$gasrem_2313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2314" = icmp ugt i64 4, %"$gasrem_2313"
  br i1 %"$gascmp_2314", label %"$out_of_gas_2315", label %"$have_gas_2316"

"$out_of_gas_2315":                               ; preds = %"$have_gas_2311"
  call void @_out_of_gas()
  br label %"$have_gas_2316"

"$have_gas_2316":                                 ; preds = %"$out_of_gas_2315", %"$have_gas_2311"
  %"$consume_2317" = sub i64 %"$gasrem_2313", 4
  store i64 %"$consume_2317", i64* @_gasrem, align 8
  %"$$sum_16_2318" = load %Uint32, %Uint32* %"$sum_16", align 4
  %"$int23_2319" = load %Uint32, %Uint32* %int23, align 4
  %"$add_call_2320" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_16_2318", %Uint32 %"$int23_2319")
  store %Uint32 %"$add_call_2320", %Uint32* %"$sum_17", align 4
  %"$gasrem_2321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2322" = icmp ugt i64 1, %"$gasrem_2321"
  br i1 %"$gascmp_2322", label %"$out_of_gas_2323", label %"$have_gas_2324"

"$out_of_gas_2323":                               ; preds = %"$have_gas_2316"
  call void @_out_of_gas()
  br label %"$have_gas_2324"

"$have_gas_2324":                                 ; preds = %"$out_of_gas_2323", %"$have_gas_2316"
  %"$consume_2325" = sub i64 %"$gasrem_2321", 1
  store i64 %"$consume_2325", i64* @_gasrem, align 8
  %"$sum_18" = alloca %Uint32, align 8
  %"$gasrem_2326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2327" = icmp ugt i64 4, %"$gasrem_2326"
  br i1 %"$gascmp_2327", label %"$out_of_gas_2328", label %"$have_gas_2329"

"$out_of_gas_2328":                               ; preds = %"$have_gas_2324"
  call void @_out_of_gas()
  br label %"$have_gas_2329"

"$have_gas_2329":                                 ; preds = %"$out_of_gas_2328", %"$have_gas_2324"
  %"$consume_2330" = sub i64 %"$gasrem_2326", 4
  store i64 %"$consume_2330", i64* @_gasrem, align 8
  %"$$sum_17_2331" = load %Uint32, %Uint32* %"$sum_17", align 4
  %"$int24_2332" = load %Uint32, %Uint32* %int24, align 4
  %"$add_call_2333" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_17_2331", %Uint32 %"$int24_2332")
  store %Uint32 %"$add_call_2333", %Uint32* %"$sum_18", align 4
  %"$gasrem_2334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2335" = icmp ugt i64 1, %"$gasrem_2334"
  br i1 %"$gascmp_2335", label %"$out_of_gas_2336", label %"$have_gas_2337"

"$out_of_gas_2336":                               ; preds = %"$have_gas_2329"
  call void @_out_of_gas()
  br label %"$have_gas_2337"

"$have_gas_2337":                                 ; preds = %"$out_of_gas_2336", %"$have_gas_2329"
  %"$consume_2338" = sub i64 %"$gasrem_2334", 1
  store i64 %"$consume_2338", i64* @_gasrem, align 8
  %"$sum_19" = alloca %Uint32, align 8
  %"$gasrem_2339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2340" = icmp ugt i64 4, %"$gasrem_2339"
  br i1 %"$gascmp_2340", label %"$out_of_gas_2341", label %"$have_gas_2342"

"$out_of_gas_2341":                               ; preds = %"$have_gas_2337"
  call void @_out_of_gas()
  br label %"$have_gas_2342"

"$have_gas_2342":                                 ; preds = %"$out_of_gas_2341", %"$have_gas_2337"
  %"$consume_2343" = sub i64 %"$gasrem_2339", 4
  store i64 %"$consume_2343", i64* @_gasrem, align 8
  %"$$sum_18_2344" = load %Uint32, %Uint32* %"$sum_18", align 4
  %"$int30_2345" = load %Uint32, %Uint32* %int30, align 4
  %"$add_call_2346" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_18_2344", %Uint32 %"$int30_2345")
  store %Uint32 %"$add_call_2346", %Uint32* %"$sum_19", align 4
  %"$gasrem_2347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2348" = icmp ugt i64 1, %"$gasrem_2347"
  br i1 %"$gascmp_2348", label %"$out_of_gas_2349", label %"$have_gas_2350"

"$out_of_gas_2349":                               ; preds = %"$have_gas_2342"
  call void @_out_of_gas()
  br label %"$have_gas_2350"

"$have_gas_2350":                                 ; preds = %"$out_of_gas_2349", %"$have_gas_2342"
  %"$consume_2351" = sub i64 %"$gasrem_2347", 1
  store i64 %"$consume_2351", i64* @_gasrem, align 8
  %"$sum_20" = alloca %Uint32, align 8
  %"$gasrem_2352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2353" = icmp ugt i64 4, %"$gasrem_2352"
  br i1 %"$gascmp_2353", label %"$out_of_gas_2354", label %"$have_gas_2355"

"$out_of_gas_2354":                               ; preds = %"$have_gas_2350"
  call void @_out_of_gas()
  br label %"$have_gas_2355"

"$have_gas_2355":                                 ; preds = %"$out_of_gas_2354", %"$have_gas_2350"
  %"$consume_2356" = sub i64 %"$gasrem_2352", 4
  store i64 %"$consume_2356", i64* @_gasrem, align 8
  %"$$sum_19_2357" = load %Uint32, %Uint32* %"$sum_19", align 4
  %"$int31_2358" = load %Uint32, %Uint32* %int31, align 4
  %"$add_call_2359" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_19_2357", %Uint32 %"$int31_2358")
  store %Uint32 %"$add_call_2359", %Uint32* %"$sum_20", align 4
  %"$gasrem_2360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2361" = icmp ugt i64 1, %"$gasrem_2360"
  br i1 %"$gascmp_2361", label %"$out_of_gas_2362", label %"$have_gas_2363"

"$out_of_gas_2362":                               ; preds = %"$have_gas_2355"
  call void @_out_of_gas()
  br label %"$have_gas_2363"

"$have_gas_2363":                                 ; preds = %"$out_of_gas_2362", %"$have_gas_2355"
  %"$consume_2364" = sub i64 %"$gasrem_2360", 1
  store i64 %"$consume_2364", i64* @_gasrem, align 8
  %"$sum_21" = alloca %Uint32, align 8
  %"$gasrem_2365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2366" = icmp ugt i64 4, %"$gasrem_2365"
  br i1 %"$gascmp_2366", label %"$out_of_gas_2367", label %"$have_gas_2368"

"$out_of_gas_2367":                               ; preds = %"$have_gas_2363"
  call void @_out_of_gas()
  br label %"$have_gas_2368"

"$have_gas_2368":                                 ; preds = %"$out_of_gas_2367", %"$have_gas_2363"
  %"$consume_2369" = sub i64 %"$gasrem_2365", 4
  store i64 %"$consume_2369", i64* @_gasrem, align 8
  %"$$sum_20_2370" = load %Uint32, %Uint32* %"$sum_20", align 4
  %"$int32_2371" = load %Uint32, %Uint32* %int32, align 4
  %"$add_call_2372" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_20_2370", %Uint32 %"$int32_2371")
  store %Uint32 %"$add_call_2372", %Uint32* %"$sum_21", align 4
  %"$gasrem_2373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2374" = icmp ugt i64 1, %"$gasrem_2373"
  br i1 %"$gascmp_2374", label %"$out_of_gas_2375", label %"$have_gas_2376"

"$out_of_gas_2375":                               ; preds = %"$have_gas_2368"
  call void @_out_of_gas()
  br label %"$have_gas_2376"

"$have_gas_2376":                                 ; preds = %"$out_of_gas_2375", %"$have_gas_2368"
  %"$consume_2377" = sub i64 %"$gasrem_2373", 1
  store i64 %"$consume_2377", i64* @_gasrem, align 8
  %"$sum_22" = alloca %Uint32, align 8
  %"$gasrem_2378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2379" = icmp ugt i64 4, %"$gasrem_2378"
  br i1 %"$gascmp_2379", label %"$out_of_gas_2380", label %"$have_gas_2381"

"$out_of_gas_2380":                               ; preds = %"$have_gas_2376"
  call void @_out_of_gas()
  br label %"$have_gas_2381"

"$have_gas_2381":                                 ; preds = %"$out_of_gas_2380", %"$have_gas_2376"
  %"$consume_2382" = sub i64 %"$gasrem_2378", 4
  store i64 %"$consume_2382", i64* @_gasrem, align 8
  %"$$sum_21_2383" = load %Uint32, %Uint32* %"$sum_21", align 4
  %"$int33_2384" = load %Uint32, %Uint32* %int33, align 4
  %"$add_call_2385" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_21_2383", %Uint32 %"$int33_2384")
  store %Uint32 %"$add_call_2385", %Uint32* %"$sum_22", align 4
  %"$gasrem_2386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2387" = icmp ugt i64 1, %"$gasrem_2386"
  br i1 %"$gascmp_2387", label %"$out_of_gas_2388", label %"$have_gas_2389"

"$out_of_gas_2388":                               ; preds = %"$have_gas_2381"
  call void @_out_of_gas()
  br label %"$have_gas_2389"

"$have_gas_2389":                                 ; preds = %"$out_of_gas_2388", %"$have_gas_2381"
  %"$consume_2390" = sub i64 %"$gasrem_2386", 1
  store i64 %"$consume_2390", i64* @_gasrem, align 8
  %"$sum_23" = alloca %Uint32, align 8
  %"$gasrem_2391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2392" = icmp ugt i64 4, %"$gasrem_2391"
  br i1 %"$gascmp_2392", label %"$out_of_gas_2393", label %"$have_gas_2394"

"$out_of_gas_2393":                               ; preds = %"$have_gas_2389"
  call void @_out_of_gas()
  br label %"$have_gas_2394"

"$have_gas_2394":                                 ; preds = %"$out_of_gas_2393", %"$have_gas_2389"
  %"$consume_2395" = sub i64 %"$gasrem_2391", 4
  store i64 %"$consume_2395", i64* @_gasrem, align 8
  %"$$sum_22_2396" = load %Uint32, %Uint32* %"$sum_22", align 4
  %"$int34_2397" = load %Uint32, %Uint32* %int34, align 4
  %"$add_call_2398" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_22_2396", %Uint32 %"$int34_2397")
  store %Uint32 %"$add_call_2398", %Uint32* %"$sum_23", align 4
  %"$gasrem_2399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2400" = icmp ugt i64 1, %"$gasrem_2399"
  br i1 %"$gascmp_2400", label %"$out_of_gas_2401", label %"$have_gas_2402"

"$out_of_gas_2401":                               ; preds = %"$have_gas_2394"
  call void @_out_of_gas()
  br label %"$have_gas_2402"

"$have_gas_2402":                                 ; preds = %"$out_of_gas_2401", %"$have_gas_2394"
  %"$consume_2403" = sub i64 %"$gasrem_2399", 1
  store i64 %"$consume_2403", i64* @_gasrem, align 8
  %"$sum_24" = alloca %Uint32, align 8
  %"$gasrem_2404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2405" = icmp ugt i64 4, %"$gasrem_2404"
  br i1 %"$gascmp_2405", label %"$out_of_gas_2406", label %"$have_gas_2407"

"$out_of_gas_2406":                               ; preds = %"$have_gas_2402"
  call void @_out_of_gas()
  br label %"$have_gas_2407"

"$have_gas_2407":                                 ; preds = %"$out_of_gas_2406", %"$have_gas_2402"
  %"$consume_2408" = sub i64 %"$gasrem_2404", 4
  store i64 %"$consume_2408", i64* @_gasrem, align 8
  %"$$sum_23_2409" = load %Uint32, %Uint32* %"$sum_23", align 4
  %"$int40_2410" = load %Uint32, %Uint32* %int40, align 4
  %"$add_call_2411" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_23_2409", %Uint32 %"$int40_2410")
  store %Uint32 %"$add_call_2411", %Uint32* %"$sum_24", align 4
  %"$gasrem_2412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2413" = icmp ugt i64 1, %"$gasrem_2412"
  br i1 %"$gascmp_2413", label %"$out_of_gas_2414", label %"$have_gas_2415"

"$out_of_gas_2414":                               ; preds = %"$have_gas_2407"
  call void @_out_of_gas()
  br label %"$have_gas_2415"

"$have_gas_2415":                                 ; preds = %"$out_of_gas_2414", %"$have_gas_2407"
  %"$consume_2416" = sub i64 %"$gasrem_2412", 1
  store i64 %"$consume_2416", i64* @_gasrem, align 8
  %"$$sum_24_2417" = load %Uint32, %Uint32* %"$sum_24", align 4
  store %Uint32 %"$$sum_24_2417", %Uint32* %"$expr_139", align 4
  %"$$expr_139_2418" = load %Uint32, %Uint32* %"$expr_139", align 4
  ret %Uint32 %"$$expr_139_2418"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_2419" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_2420" = alloca %Uint32, align 8
  %"$memvoidcast_2421" = bitcast %Uint32* %"$pval_2420" to i8*
  store %Uint32 %"$exprval_2419", %Uint32* %"$pval_2420", align 4
  %"$execptr_load_2422" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2422", %_TyDescrTy_Typ* @"$TyDescr_Uint32_176", i8* %"$memvoidcast_2421")
  ret void
}
