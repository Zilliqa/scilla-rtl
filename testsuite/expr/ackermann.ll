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
%"$TyDescrTy_ADTTyp_202" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_201"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_201" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_203"**, %"$TyDescrTy_ADTTyp_202"* }
%"$TyDescrTy_ADTTyp_Constr_203" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>
%"$ParamDescr_2421" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2422" = type { %ParamDescrString, i32, %"$ParamDescr_2421"* }
%"$$fundef_170_env_220" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_168_env_221" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_166_env_222" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_164_env_223" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat* }
%"$$fundef_162_env_224" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_160_env_225" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_158_env_226" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { i8*, i8* }* }
%"$$fundef_156_env_227" = type { { i8*, i8* }* }
%"$$fundef_154_env_228" = type { { i8*, i8* }* }
%"$$fundef_152_env_229" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_150_env_230" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_148_env_231" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_146_env_232" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { i8*, i8* }* }
%"$$fundef_144_env_233" = type { { i8*, i8* }* }
%"$$fundef_142_env_234" = type { { i8*, i8* }* }
%"$$fundef_140_env_235" = type {}
%"$$fundef_137_env_236" = type { %Uint32, %Uint32 }
%"$$fundef_135_env_237" = type { %Uint32 }
%"$$fundef_133_env_238" = type { { i8*, i8* }* }
%"$$fundef_131_env_239" = type { %Uint32, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_129_env_240" = type { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_127_env_241" = type {}
%"$$fundef_125_env_242" = type {}
%"$$fundef_123_env_243" = type { %TName_Nat*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_121_env_244" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_119_env_245" = type {}
%"$$fundef_117_env_246" = type {}
%"$$fundef_115_env_247" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_113_env_248" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_111_env_249" = type {}
%"$$fundef_109_env_250" = type {}

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
@"$TyDescr_Bystr_Prim_199" = global %"$TyDescrTy_PrimTyp_172" { i32 7, i32 0 }
@"$TyDescr_Bystr_200" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_172"* @"$TyDescr_Bystr_Prim_199" to i8*) }
@"$TyDescr_ADT_Nat_204" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_201"* @"$TyDescr_Nat_ADTTyp_Specl_217" to i8*) }
@"$TyDescr_Nat_ADTTyp_208" = unnamed_addr constant %"$TyDescrTy_ADTTyp_202" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_219", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_201"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_201"*], [1 x %"$TyDescrTy_ADTTyp_Specl_201"*]* @"$TyDescr_Nat_ADTTyp_m_specls_218", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_209" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_210" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_211" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_203" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_210", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_209", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_212" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_204"]
@"$TyDescr_ADT_Succ_213" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_214" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_203" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_213", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_212", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_215" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_203"*] [%"$TyDescrTy_ADTTyp_Constr_203"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_211", %"$TyDescrTy_ADTTyp_Constr_203"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_214"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_216" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_217" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_201" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_216", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_203"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_203"*], [2 x %"$TyDescrTy_ADTTyp_Constr_203"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_215", i32 0, i32 0), %"$TyDescrTy_ADTTyp_202"* @"$TyDescr_Nat_ADTTyp_208" }
@"$TyDescr_Nat_ADTTyp_m_specls_218" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_201"*] [%"$TyDescrTy_ADTTyp_Specl_201"* @"$TyDescr_Nat_ADTTyp_Specl_217"]
@"$TyDescr_ADT_Nat_219" = unnamed_addr constant [3 x i8] c"Nat"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@nat_fold = global { i8*, i8* }* null
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@NatUtils.nat_to_int = global { %Uint32 (i8*, %TName_Nat*)*, i8* } zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_196", %_TyDescrTy_Typ* @"$TyDescr_Int64_178", %_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_204", %_TyDescrTy_Typ* @"$TyDescr_Uint256_188", %_TyDescrTy_Typ* @"$TyDescr_Uint32_176", %_TyDescrTy_Typ* @"$TyDescr_Uint64_180", %_TyDescrTy_Typ* @"$TyDescr_Bnum_192", %_TyDescrTy_Typ* @"$TyDescr_Uint128_184", %_TyDescrTy_Typ* @"$TyDescr_Exception_198", %_TyDescrTy_Typ* @"$TyDescr_String_190", %_TyDescrTy_Typ* @"$TyDescr_Int256_186", %_TyDescrTy_Typ* @"$TyDescr_Int128_182", %_TyDescrTy_Typ* @"$TyDescr_Bystr_200", %_TyDescrTy_Typ* @"$TyDescr_Message_194", %_TyDescrTy_Typ* @"$TyDescr_Int32_174"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_2421"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2422"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_170"(%"$$fundef_170_env_220"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_170_env_f_1040" = getelementptr inbounds %"$$fundef_170_env_220", %"$$fundef_170_env_220"* %0, i32 0, i32 0
  %"$f_envload_1041" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_170_env_f_1040", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_1041", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_170_env_iter_nat_nat_1042" = getelementptr inbounds %"$$fundef_170_env_220", %"$$fundef_170_env_220"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_1043" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_170_env_iter_nat_nat_1042", align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_1043", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$$fundef_170_env_nat_succ_1044" = getelementptr inbounds %"$$fundef_170_env_220", %"$$fundef_170_env_220"* %0, i32 0, i32 2
  %"$nat_succ_envload_1045" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_170_env_nat_succ_1044", align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_1045", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$retval_171" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 1, %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %entry
  %"$consume_1050" = sub i64 %"$gasrem_1046", 1
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  %"$iter_nat_nat_44" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_nat_1051" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$iter_nat_nat_fptr_1052" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1051", 0
  %"$iter_nat_nat_envptr_1053" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1051", 1
  %"$f_1054" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$iter_nat_nat_call_1055" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_1052"(i8* %"$iter_nat_nat_envptr_1053", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1054")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_1055", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_44", align 8
  %"$iter_nat_nat_45" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$$iter_nat_nat_44_1056" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_44", align 8
  %"$$iter_nat_nat_44_fptr_1057" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_44_1056", 0
  %"$$iter_nat_nat_44_envptr_1058" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_44_1056", 1
  %"$$iter_nat_nat_44_call_1059" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_44_fptr_1057"(i8* %"$$iter_nat_nat_44_envptr_1058", %TName_Nat* %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_44_call_1059", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_45", align 8
  %"$iter_nat_nat_46" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_nat_45_1060" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_45", align 8
  %"$$iter_nat_nat_45_fptr_1061" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_45_1060", 0
  %"$$iter_nat_nat_45_envptr_1062" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_45_1060", 1
  %"$nat_succ_1063" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$$iter_nat_nat_45_call_1064" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_45_fptr_1061"(i8* %"$$iter_nat_nat_45_envptr_1062", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1063")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_45_call_1064", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_46", align 8
  %"$$iter_nat_nat_46_1065" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_46", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_46_1065", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_171", align 8
  %"$$retval_171_1066" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_171", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_171_1066"
}

define internal %TName_Nat* @"$fundef_168"(%"$$fundef_168_env_221"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_168_env_ack_1013" = getelementptr inbounds %"$$fundef_168_env_221", %"$$fundef_168_env_221"* %0, i32 0, i32 0
  %"$ack_envload_1014" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_168_env_ack_1013", align 8
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_1014", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$$fundef_168_env_iter_nat_1015" = getelementptr inbounds %"$$fundef_168_env_221", %"$$fundef_168_env_221"* %0, i32 0, i32 1
  %"$iter_nat_envload_1016" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_168_env_iter_nat_1015", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_1016", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_168_env_x0_1017" = getelementptr inbounds %"$$fundef_168_env_221", %"$$fundef_168_env_221"* %0, i32 0, i32 2
  %"$x0_envload_1018" = load %TName_Nat*, %TName_Nat** %"$$fundef_168_env_x0_1017", align 8
  %x0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x0_envload_1018", %TName_Nat** %x0, align 8
  %"$retval_169" = alloca %TName_Nat*, align 8
  %"$gasrem_1019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1020" = icmp ugt i64 1, %"$gasrem_1019"
  br i1 %"$gascmp_1020", label %"$out_of_gas_1021", label %"$have_gas_1022"

"$out_of_gas_1021":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1022"

"$have_gas_1022":                                 ; preds = %"$out_of_gas_1021", %entry
  %"$consume_1023" = sub i64 %"$gasrem_1019", 1
  store i64 %"$consume_1023", i64* @_gasrem, align 8
  %"$iter_nat_41" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_1024" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$iter_nat_fptr_1025" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1024", 0
  %"$iter_nat_envptr_1026" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1024", 1
  %"$ack_1027" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$iter_nat_call_1028" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_1025"(i8* %"$iter_nat_envptr_1026", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_1027")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_1028", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_41", align 8
  %"$iter_nat_42" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_41_1029" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_41", align 8
  %"$$iter_nat_41_fptr_1030" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_1029", 0
  %"$$iter_nat_41_envptr_1031" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_1029", 1
  %"$$iter_nat_41_call_1032" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_fptr_1030"(i8* %"$$iter_nat_41_envptr_1031", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_41_call_1032", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_42", align 8
  %"$iter_nat_43" = alloca %TName_Nat*, align 8
  %"$$iter_nat_42_1033" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_42", align 8
  %"$$iter_nat_42_fptr_1034" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_42_1033", 0
  %"$$iter_nat_42_envptr_1035" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_42_1033", 1
  %"$x0_1036" = load %TName_Nat*, %TName_Nat** %x0, align 8
  %"$$iter_nat_42_call_1037" = call %TName_Nat* %"$$iter_nat_42_fptr_1034"(i8* %"$$iter_nat_42_envptr_1035", %TName_Nat* %"$x0_1036")
  store %TName_Nat* %"$$iter_nat_42_call_1037", %TName_Nat** %"$iter_nat_43", align 8
  %"$$iter_nat_43_1038" = load %TName_Nat*, %TName_Nat** %"$iter_nat_43", align 8
  store %TName_Nat* %"$$iter_nat_43_1038", %TName_Nat** %"$retval_169", align 8
  %"$$retval_169_1039" = load %TName_Nat*, %TName_Nat** %"$retval_169", align 8
  ret %TName_Nat* %"$$retval_169_1039"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_166"(%"$$fundef_166_env_222"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_166_env_iter_nat_979" = getelementptr inbounds %"$$fundef_166_env_222", %"$$fundef_166_env_222"* %0, i32 0, i32 0
  %"$iter_nat_envload_980" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_166_env_iter_nat_979", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_980", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_166_env_one_981" = getelementptr inbounds %"$$fundef_166_env_222", %"$$fundef_166_env_222"* %0, i32 0, i32 1
  %"$one_envload_982" = load %TName_Nat*, %TName_Nat** %"$$fundef_166_env_one_981", align 8
  %one = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$one_envload_982", %TName_Nat** %one, align 8
  %"$retval_167" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_984" = icmp ugt i64 1, %"$gasrem_983"
  br i1 %"$gascmp_984", label %"$out_of_gas_985", label %"$have_gas_986"

"$out_of_gas_985":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_986"

"$have_gas_986":                                  ; preds = %"$out_of_gas_985", %entry
  %"$consume_987" = sub i64 %"$gasrem_983", 1
  store i64 %"$consume_987", i64* @_gasrem, align 8
  %x0 = alloca %TName_Nat*, align 8
  %"$gasrem_988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_989" = icmp ugt i64 1, %"$gasrem_988"
  br i1 %"$gascmp_989", label %"$out_of_gas_990", label %"$have_gas_991"

"$out_of_gas_990":                                ; preds = %"$have_gas_986"
  call void @_out_of_gas()
  br label %"$have_gas_991"

"$have_gas_991":                                  ; preds = %"$out_of_gas_990", %"$have_gas_986"
  %"$consume_992" = sub i64 %"$gasrem_988", 1
  store i64 %"$consume_992", i64* @_gasrem, align 8
  %"$ack_40" = alloca %TName_Nat*, align 8
  %"$ack_fptr_993" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_994" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_995" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$ack_call_996" = call %TName_Nat* %"$ack_fptr_993"(i8* %"$ack_envptr_994", %TName_Nat* %"$one_995")
  store %TName_Nat* %"$ack_call_996", %TName_Nat** %"$ack_40", align 8
  %"$$ack_40_997" = load %TName_Nat*, %TName_Nat** %"$ack_40", align 8
  store %TName_Nat* %"$$ack_40_997", %TName_Nat** %x0, align 8
  %"$gasrem_998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_999" = icmp ugt i64 1, %"$gasrem_998"
  br i1 %"$gascmp_999", label %"$out_of_gas_1000", label %"$have_gas_1001"

"$out_of_gas_1000":                               ; preds = %"$have_gas_991"
  call void @_out_of_gas()
  br label %"$have_gas_1001"

"$have_gas_1001":                                 ; preds = %"$out_of_gas_1000", %"$have_gas_991"
  %"$consume_1002" = sub i64 %"$gasrem_998", 1
  store i64 %"$consume_1002", i64* @_gasrem, align 8
  %"$$fundef_168_envp_1003_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_168_envp_1003_salloc" = call i8* @_salloc(i8* %"$$fundef_168_envp_1003_load", i64 40)
  %"$$fundef_168_envp_1003" = bitcast i8* %"$$fundef_168_envp_1003_salloc" to %"$$fundef_168_env_221"*
  %"$$fundef_168_env_voidp_1005" = bitcast %"$$fundef_168_env_221"* %"$$fundef_168_envp_1003" to i8*
  %"$$fundef_168_cloval_1006" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_168_env_221"*, %TName_Nat*)* @"$fundef_168" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_168_env_voidp_1005", 1
  %"$$fundef_168_env_ack_1007" = getelementptr inbounds %"$$fundef_168_env_221", %"$$fundef_168_env_221"* %"$$fundef_168_envp_1003", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_168_env_ack_1007", align 8
  %"$$fundef_168_env_iter_nat_1008" = getelementptr inbounds %"$$fundef_168_env_221", %"$$fundef_168_env_221"* %"$$fundef_168_envp_1003", i32 0, i32 1
  %"$iter_nat_1009" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1009", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_168_env_iter_nat_1008", align 8
  %"$$fundef_168_env_x0_1010" = getelementptr inbounds %"$$fundef_168_env_221", %"$$fundef_168_env_221"* %"$$fundef_168_envp_1003", i32 0, i32 2
  %"$x0_1011" = load %TName_Nat*, %TName_Nat** %x0, align 8
  store %TName_Nat* %"$x0_1011", %TName_Nat** %"$$fundef_168_env_x0_1010", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_168_cloval_1006", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_167", align 8
  %"$$retval_167_1012" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_167", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_167_1012"
}

define internal %TName_Nat* @"$fundef_164"(%"$$fundef_164_env_223"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_164_env_f_963" = getelementptr inbounds %"$$fundef_164_env_223", %"$$fundef_164_env_223"* %0, i32 0, i32 0
  %"$f_envload_964" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_164_env_f_963", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_964", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_164_env_x_965" = getelementptr inbounds %"$$fundef_164_env_223", %"$$fundef_164_env_223"* %0, i32 0, i32 1
  %"$x_envload_966" = load %TName_Nat*, %TName_Nat** %"$$fundef_164_env_x_965", align 8
  %x = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x_envload_966", %TName_Nat** %x, align 8
  %"$retval_165" = alloca %TName_Nat*, align 8
  %"$gasrem_967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_968" = icmp ugt i64 1, %"$gasrem_967"
  br i1 %"$gascmp_968", label %"$out_of_gas_969", label %"$have_gas_970"

"$out_of_gas_969":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_970"

"$have_gas_970":                                  ; preds = %"$out_of_gas_969", %entry
  %"$consume_971" = sub i64 %"$gasrem_967", 1
  store i64 %"$consume_971", i64* @_gasrem, align 8
  %"$f_36" = alloca %TName_Nat*, align 8
  %"$f_972" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$f_fptr_973" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_972", 0
  %"$f_envptr_974" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_972", 1
  %"$x_975" = load %TName_Nat*, %TName_Nat** %x, align 8
  %"$f_call_976" = call %TName_Nat* %"$f_fptr_973"(i8* %"$f_envptr_974", %TName_Nat* %"$x_975")
  store %TName_Nat* %"$f_call_976", %TName_Nat** %"$f_36", align 8
  %"$$f_36_977" = load %TName_Nat*, %TName_Nat** %"$f_36", align 8
  store %TName_Nat* %"$$f_36_977", %TName_Nat** %"$retval_165", align 8
  %"$$retval_165_978" = load %TName_Nat*, %TName_Nat** %"$retval_165", align 8
  ret %TName_Nat* %"$$retval_165_978"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_162"(%"$$fundef_162_env_224"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_162_env_f_948" = getelementptr inbounds %"$$fundef_162_env_224", %"$$fundef_162_env_224"* %0, i32 0, i32 0
  %"$f_envload_949" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_162_env_f_948", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_949", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$retval_163" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_951" = icmp ugt i64 1, %"$gasrem_950"
  br i1 %"$gascmp_951", label %"$out_of_gas_952", label %"$have_gas_953"

"$out_of_gas_952":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_953"

"$have_gas_953":                                  ; preds = %"$out_of_gas_952", %entry
  %"$consume_954" = sub i64 %"$gasrem_950", 1
  store i64 %"$consume_954", i64* @_gasrem, align 8
  %"$$fundef_164_envp_955_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_164_envp_955_salloc" = call i8* @_salloc(i8* %"$$fundef_164_envp_955_load", i64 24)
  %"$$fundef_164_envp_955" = bitcast i8* %"$$fundef_164_envp_955_salloc" to %"$$fundef_164_env_223"*
  %"$$fundef_164_env_voidp_957" = bitcast %"$$fundef_164_env_223"* %"$$fundef_164_envp_955" to i8*
  %"$$fundef_164_cloval_958" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_164_env_223"*, %TName_Nat*)* @"$fundef_164" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_164_env_voidp_957", 1
  %"$$fundef_164_env_f_959" = getelementptr inbounds %"$$fundef_164_env_223", %"$$fundef_164_env_223"* %"$$fundef_164_envp_955", i32 0, i32 0
  %"$f_960" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_960", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_164_env_f_959", align 8
  %"$$fundef_164_env_x_961" = getelementptr inbounds %"$$fundef_164_env_223", %"$$fundef_164_env_223"* %"$$fundef_164_envp_955", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_164_env_x_961", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_164_cloval_958", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_163", align 8
  %"$$retval_163_962" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_163", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_163_962"
}

define internal %TName_Nat* @"$fundef_160"(%"$$fundef_160_env_225"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_160_env_f_888" = getelementptr inbounds %"$$fundef_160_env_225", %"$$fundef_160_env_225"* %0, i32 0, i32 0
  %"$f_envload_889" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_160_env_f_888", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_889", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_160_env_n_890" = getelementptr inbounds %"$$fundef_160_env_225", %"$$fundef_160_env_225"* %0, i32 0, i32 1
  %"$n_envload_891" = load %TName_Nat*, %TName_Nat** %"$$fundef_160_env_n_890", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_891", %TName_Nat** %n, align 8
  %"$$fundef_160_env_nat_fold_892" = getelementptr inbounds %"$$fundef_160_env_225", %"$$fundef_160_env_225"* %0, i32 0, i32 2
  %"$nat_fold_envload_893" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_160_env_nat_fold_892", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_893", { i8*, i8* }** %nat_fold, align 8
  %"$retval_161" = alloca %TName_Nat*, align 8
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %entry
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 1, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_897"
  %"$consume_903" = sub i64 %"$gasrem_899", 1
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %"$nat_fold_904" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_905" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_904", i32 2
  %"$nat_fold_906" = bitcast { i8*, i8* }* %"$nat_fold_905" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_907" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_906", align 8
  %"$nat_fold_fptr_908" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_907", 0
  %"$nat_fold_envptr_909" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_907", 1
  %"$nat_fold_call_910" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_908"(i8* %"$nat_fold_envptr_909")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_910", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$gasrem_911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_912" = icmp ugt i64 1, %"$gasrem_911"
  br i1 %"$gascmp_912", label %"$out_of_gas_913", label %"$have_gas_914"

"$out_of_gas_913":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_914"

"$have_gas_914":                                  ; preds = %"$out_of_gas_913", %"$have_gas_902"
  %"$consume_915" = sub i64 %"$gasrem_911", 1
  store i64 %"$consume_915", i64* @_gasrem, align 8
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_914"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_914"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem, align 8
  %"$$fundef_162_envp_921_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_162_envp_921_salloc" = call i8* @_salloc(i8* %"$$fundef_162_envp_921_load", i64 16)
  %"$$fundef_162_envp_921" = bitcast i8* %"$$fundef_162_envp_921_salloc" to %"$$fundef_162_env_224"*
  %"$$fundef_162_env_voidp_923" = bitcast %"$$fundef_162_env_224"* %"$$fundef_162_envp_921" to i8*
  %"$$fundef_162_cloval_924" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_162_env_224"*, %TName_Nat*)* @"$fundef_162" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_162_env_voidp_923", 1
  %"$$fundef_162_env_f_925" = getelementptr inbounds %"$$fundef_162_env_224", %"$$fundef_162_env_224"* %"$$fundef_162_envp_921", i32 0, i32 0
  %"$f_926" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_926", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_162_env_f_925", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_162_cloval_924", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$gasrem_927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_928" = icmp ugt i64 1, %"$gasrem_927"
  br i1 %"$gascmp_928", label %"$out_of_gas_929", label %"$have_gas_930"

"$out_of_gas_929":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_930"

"$have_gas_930":                                  ; preds = %"$out_of_gas_929", %"$have_gas_919"
  %"$consume_931" = sub i64 %"$gasrem_927", 1
  store i64 %"$consume_931", i64* @_gasrem, align 8
  %"$folder_37" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$folder_932" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_933" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_932", 0
  %"$folder_envptr_934" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_932", 1
  %"$step_935" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$folder_call_936" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_933"(i8* %"$folder_envptr_934", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_935")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_936", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_37", align 8
  %"$folder_38" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_37_937" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_37", align 8
  %"$$folder_37_fptr_938" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_937", 0
  %"$$folder_37_envptr_939" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_937", 1
  %"$$folder_37_call_940" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_37_fptr_938"(i8* %"$$folder_37_envptr_939", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_37_call_940", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8
  %"$folder_39" = alloca %TName_Nat*, align 8
  %"$$folder_38_941" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8
  %"$$folder_38_fptr_942" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_941", 0
  %"$$folder_38_envptr_943" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_941", 1
  %"$n_944" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_38_call_945" = call %TName_Nat* %"$$folder_38_fptr_942"(i8* %"$$folder_38_envptr_943", %TName_Nat* %"$n_944")
  store %TName_Nat* %"$$folder_38_call_945", %TName_Nat** %"$folder_39", align 8
  %"$$folder_39_946" = load %TName_Nat*, %TName_Nat** %"$folder_39", align 8
  store %TName_Nat* %"$$folder_39_946", %TName_Nat** %"$retval_161", align 8
  %"$$retval_161_947" = load %TName_Nat*, %TName_Nat** %"$retval_161", align 8
  ret %TName_Nat* %"$$retval_161_947"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_158"(%"$$fundef_158_env_226"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_158_env_f_869" = getelementptr inbounds %"$$fundef_158_env_226", %"$$fundef_158_env_226"* %0, i32 0, i32 0
  %"$f_envload_870" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_158_env_f_869", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_870", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_158_env_nat_fold_871" = getelementptr inbounds %"$$fundef_158_env_226", %"$$fundef_158_env_226"* %0, i32 0, i32 1
  %"$nat_fold_envload_872" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_158_env_nat_fold_871", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_872", { i8*, i8* }** %nat_fold, align 8
  %"$retval_159" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %entry
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %"$$fundef_160_envp_878_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_160_envp_878_salloc" = call i8* @_salloc(i8* %"$$fundef_160_envp_878_load", i64 32)
  %"$$fundef_160_envp_878" = bitcast i8* %"$$fundef_160_envp_878_salloc" to %"$$fundef_160_env_225"*
  %"$$fundef_160_env_voidp_880" = bitcast %"$$fundef_160_env_225"* %"$$fundef_160_envp_878" to i8*
  %"$$fundef_160_cloval_881" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_160_env_225"*, %TName_Nat*)* @"$fundef_160" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_160_env_voidp_880", 1
  %"$$fundef_160_env_f_882" = getelementptr inbounds %"$$fundef_160_env_225", %"$$fundef_160_env_225"* %"$$fundef_160_envp_878", i32 0, i32 0
  %"$f_883" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_883", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_160_env_f_882", align 8
  %"$$fundef_160_env_n_884" = getelementptr inbounds %"$$fundef_160_env_225", %"$$fundef_160_env_225"* %"$$fundef_160_envp_878", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_160_env_n_884", align 8
  %"$$fundef_160_env_nat_fold_885" = getelementptr inbounds %"$$fundef_160_env_225", %"$$fundef_160_env_225"* %"$$fundef_160_envp_878", i32 0, i32 2
  %"$nat_fold_886" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_886", { i8*, i8* }** %"$$fundef_160_env_nat_fold_885", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_160_cloval_881", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_159", align 8
  %"$$retval_159_887" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_159", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_159_887"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_156"(%"$$fundef_156_env_227"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_156_env_nat_fold_854" = getelementptr inbounds %"$$fundef_156_env_227", %"$$fundef_156_env_227"* %0, i32 0, i32 0
  %"$nat_fold_envload_855" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_156_env_nat_fold_854", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_855", { i8*, i8* }** %nat_fold, align 8
  %"$retval_157" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_857" = icmp ugt i64 1, %"$gasrem_856"
  br i1 %"$gascmp_857", label %"$out_of_gas_858", label %"$have_gas_859"

"$out_of_gas_858":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_859"

"$have_gas_859":                                  ; preds = %"$out_of_gas_858", %entry
  %"$consume_860" = sub i64 %"$gasrem_856", 1
  store i64 %"$consume_860", i64* @_gasrem, align 8
  %"$$fundef_158_envp_861_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_158_envp_861_salloc" = call i8* @_salloc(i8* %"$$fundef_158_envp_861_load", i64 24)
  %"$$fundef_158_envp_861" = bitcast i8* %"$$fundef_158_envp_861_salloc" to %"$$fundef_158_env_226"*
  %"$$fundef_158_env_voidp_863" = bitcast %"$$fundef_158_env_226"* %"$$fundef_158_envp_861" to i8*
  %"$$fundef_158_cloval_864" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_158_env_226"*, %TName_Nat*)* @"$fundef_158" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_158_env_voidp_863", 1
  %"$$fundef_158_env_f_865" = getelementptr inbounds %"$$fundef_158_env_226", %"$$fundef_158_env_226"* %"$$fundef_158_envp_861", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_158_env_f_865", align 8
  %"$$fundef_158_env_nat_fold_866" = getelementptr inbounds %"$$fundef_158_env_226", %"$$fundef_158_env_226"* %"$$fundef_158_envp_861", i32 0, i32 1
  %"$nat_fold_867" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_867", { i8*, i8* }** %"$$fundef_158_env_nat_fold_866", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_158_cloval_864", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_157", align 8
  %"$$retval_157_868" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_157", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_157_868"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_154"(%"$$fundef_154_env_228"* %0) {
entry:
  %"$$fundef_154_env_nat_fold_840" = getelementptr inbounds %"$$fundef_154_env_228", %"$$fundef_154_env_228"* %0, i32 0, i32 0
  %"$nat_fold_envload_841" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_154_env_nat_fold_840", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_841", { i8*, i8* }** %nat_fold, align 8
  %"$retval_155" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_843" = icmp ugt i64 1, %"$gasrem_842"
  br i1 %"$gascmp_843", label %"$out_of_gas_844", label %"$have_gas_845"

"$out_of_gas_844":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_845"

"$have_gas_845":                                  ; preds = %"$out_of_gas_844", %entry
  %"$consume_846" = sub i64 %"$gasrem_842", 1
  store i64 %"$consume_846", i64* @_gasrem, align 8
  %"$$fundef_156_envp_847_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_156_envp_847_salloc" = call i8* @_salloc(i8* %"$$fundef_156_envp_847_load", i64 8)
  %"$$fundef_156_envp_847" = bitcast i8* %"$$fundef_156_envp_847_salloc" to %"$$fundef_156_env_227"*
  %"$$fundef_156_env_voidp_849" = bitcast %"$$fundef_156_env_227"* %"$$fundef_156_envp_847" to i8*
  %"$$fundef_156_cloval_850" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_156_env_227"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_156" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_156_env_voidp_849", 1
  %"$$fundef_156_env_nat_fold_851" = getelementptr inbounds %"$$fundef_156_env_227", %"$$fundef_156_env_227"* %"$$fundef_156_envp_847", i32 0, i32 0
  %"$nat_fold_852" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_852", { i8*, i8* }** %"$$fundef_156_env_nat_fold_851", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_156_cloval_850", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_155", align 8
  %"$$retval_155_853" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_155", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_155_853"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_152"(%"$$fundef_152_env_229"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_152_env_f_824" = getelementptr inbounds %"$$fundef_152_env_229", %"$$fundef_152_env_229"* %0, i32 0, i32 0
  %"$f_envload_825" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_152_env_f_824", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_825", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_152_env_x_826" = getelementptr inbounds %"$$fundef_152_env_229", %"$$fundef_152_env_229"* %0, i32 0, i32 1
  %"$x_envload_827" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_152_env_x_826", align 8
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_827", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$retval_153" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %entry
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  %"$f_36" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$f_833" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$f_fptr_834" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_833", 0
  %"$f_envptr_835" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_833", 1
  %"$x_836" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$f_call_837" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_834"(i8* %"$f_envptr_835", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_836")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_837", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_36", align 8
  %"$$f_36_838" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_36", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_36_838", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_153", align 8
  %"$$retval_153_839" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_153", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_153_839"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_150"(%"$$fundef_150_env_230"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_150_env_f_809" = getelementptr inbounds %"$$fundef_150_env_230", %"$$fundef_150_env_230"* %0, i32 0, i32 0
  %"$f_envload_810" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_150_env_f_809", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_810", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$retval_151" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_812" = icmp ugt i64 1, %"$gasrem_811"
  br i1 %"$gascmp_812", label %"$out_of_gas_813", label %"$have_gas_814"

"$out_of_gas_813":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_814"

"$have_gas_814":                                  ; preds = %"$out_of_gas_813", %entry
  %"$consume_815" = sub i64 %"$gasrem_811", 1
  store i64 %"$consume_815", i64* @_gasrem, align 8
  %"$$fundef_152_envp_816_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_152_envp_816_salloc" = call i8* @_salloc(i8* %"$$fundef_152_envp_816_load", i64 32)
  %"$$fundef_152_envp_816" = bitcast i8* %"$$fundef_152_envp_816_salloc" to %"$$fundef_152_env_229"*
  %"$$fundef_152_env_voidp_818" = bitcast %"$$fundef_152_env_229"* %"$$fundef_152_envp_816" to i8*
  %"$$fundef_152_cloval_819" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_152_env_229"*, %TName_Nat*)* @"$fundef_152" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_152_env_voidp_818", 1
  %"$$fundef_152_env_f_820" = getelementptr inbounds %"$$fundef_152_env_229", %"$$fundef_152_env_229"* %"$$fundef_152_envp_816", i32 0, i32 0
  %"$f_821" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_821", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_152_env_f_820", align 8
  %"$$fundef_152_env_x_822" = getelementptr inbounds %"$$fundef_152_env_229", %"$$fundef_152_env_229"* %"$$fundef_152_envp_816", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_152_env_x_822", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_152_cloval_819", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_151", align 8
  %"$$retval_151_823" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_151", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_151_823"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_148"(%"$$fundef_148_env_231"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_148_env_f_749" = getelementptr inbounds %"$$fundef_148_env_231", %"$$fundef_148_env_231"* %0, i32 0, i32 0
  %"$f_envload_750" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_148_env_f_749", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_750", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_148_env_n_751" = getelementptr inbounds %"$$fundef_148_env_231", %"$$fundef_148_env_231"* %0, i32 0, i32 1
  %"$n_envload_752" = load %TName_Nat*, %TName_Nat** %"$$fundef_148_env_n_751", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_752", %TName_Nat** %n, align 8
  %"$$fundef_148_env_nat_fold_753" = getelementptr inbounds %"$$fundef_148_env_231", %"$$fundef_148_env_231"* %0, i32 0, i32 2
  %"$nat_fold_envload_754" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_148_env_nat_fold_753", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_754", { i8*, i8* }** %nat_fold, align 8
  %"$retval_149" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_756" = icmp ugt i64 1, %"$gasrem_755"
  br i1 %"$gascmp_756", label %"$out_of_gas_757", label %"$have_gas_758"

"$out_of_gas_757":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_758"

"$have_gas_758":                                  ; preds = %"$out_of_gas_757", %entry
  %"$consume_759" = sub i64 %"$gasrem_755", 1
  store i64 %"$consume_759", i64* @_gasrem, align 8
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_761" = icmp ugt i64 1, %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$have_gas_758"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$have_gas_758"
  %"$consume_764" = sub i64 %"$gasrem_760", 1
  store i64 %"$consume_764", i64* @_gasrem, align 8
  %"$nat_fold_765" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_766" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_765", i32 1
  %"$nat_fold_767" = bitcast { i8*, i8* }* %"$nat_fold_766" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_768" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_767", align 8
  %"$nat_fold_fptr_769" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_768", 0
  %"$nat_fold_envptr_770" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_768", 1
  %"$nat_fold_call_771" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_769"(i8* %"$nat_fold_envptr_770")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_771", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 1, %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$have_gas_763"
  %"$consume_776" = sub i64 %"$gasrem_772", 1
  store i64 %"$consume_776", i64* @_gasrem, align 8
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_778" = icmp ugt i64 1, %"$gasrem_777"
  br i1 %"$gascmp_778", label %"$out_of_gas_779", label %"$have_gas_780"

"$out_of_gas_779":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_780"

"$have_gas_780":                                  ; preds = %"$out_of_gas_779", %"$have_gas_775"
  %"$consume_781" = sub i64 %"$gasrem_777", 1
  store i64 %"$consume_781", i64* @_gasrem, align 8
  %"$$fundef_150_envp_782_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_150_envp_782_salloc" = call i8* @_salloc(i8* %"$$fundef_150_envp_782_load", i64 16)
  %"$$fundef_150_envp_782" = bitcast i8* %"$$fundef_150_envp_782_salloc" to %"$$fundef_150_env_230"*
  %"$$fundef_150_env_voidp_784" = bitcast %"$$fundef_150_env_230"* %"$$fundef_150_envp_782" to i8*
  %"$$fundef_150_cloval_785" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_150_env_230"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_150" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_150_env_voidp_784", 1
  %"$$fundef_150_env_f_786" = getelementptr inbounds %"$$fundef_150_env_230", %"$$fundef_150_env_230"* %"$$fundef_150_envp_782", i32 0, i32 0
  %"$f_787" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_787", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_150_env_f_786", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_150_cloval_785", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$gasrem_788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_789" = icmp ugt i64 1, %"$gasrem_788"
  br i1 %"$gascmp_789", label %"$out_of_gas_790", label %"$have_gas_791"

"$out_of_gas_790":                                ; preds = %"$have_gas_780"
  call void @_out_of_gas()
  br label %"$have_gas_791"

"$have_gas_791":                                  ; preds = %"$out_of_gas_790", %"$have_gas_780"
  %"$consume_792" = sub i64 %"$gasrem_788", 1
  store i64 %"$consume_792", i64* @_gasrem, align 8
  %"$folder_37" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$folder_793" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_794" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_793", 0
  %"$folder_envptr_795" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_793", 1
  %"$step_796" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$folder_call_797" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_794"(i8* %"$folder_envptr_795", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_796")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_797", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_37", align 8
  %"$folder_38" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_37_798" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_37", align 8
  %"$$folder_37_fptr_799" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_37_798", 0
  %"$$folder_37_envptr_800" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_37_798", 1
  %"$$folder_37_call_801" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_fptr_799"(i8* %"$$folder_37_envptr_800", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_37_call_801", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8
  %"$folder_39" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_38_802" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_38", align 8
  %"$$folder_38_fptr_803" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_38_802", 0
  %"$$folder_38_envptr_804" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_38_802", 1
  %"$n_805" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_38_call_806" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_fptr_803"(i8* %"$$folder_38_envptr_804", %TName_Nat* %"$n_805")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_38_call_806", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_39", align 8
  %"$$folder_39_807" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_39", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_39_807", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_149", align 8
  %"$$retval_149_808" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_149", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_149_808"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_146"(%"$$fundef_146_env_232"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_146_env_f_730" = getelementptr inbounds %"$$fundef_146_env_232", %"$$fundef_146_env_232"* %0, i32 0, i32 0
  %"$f_envload_731" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_146_env_f_730", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_731", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_146_env_nat_fold_732" = getelementptr inbounds %"$$fundef_146_env_232", %"$$fundef_146_env_232"* %0, i32 0, i32 1
  %"$nat_fold_envload_733" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_146_env_nat_fold_732", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_733", { i8*, i8* }** %nat_fold, align 8
  %"$retval_147" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_735" = icmp ugt i64 1, %"$gasrem_734"
  br i1 %"$gascmp_735", label %"$out_of_gas_736", label %"$have_gas_737"

"$out_of_gas_736":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_737"

"$have_gas_737":                                  ; preds = %"$out_of_gas_736", %entry
  %"$consume_738" = sub i64 %"$gasrem_734", 1
  store i64 %"$consume_738", i64* @_gasrem, align 8
  %"$$fundef_148_envp_739_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_148_envp_739_salloc" = call i8* @_salloc(i8* %"$$fundef_148_envp_739_load", i64 32)
  %"$$fundef_148_envp_739" = bitcast i8* %"$$fundef_148_envp_739_salloc" to %"$$fundef_148_env_231"*
  %"$$fundef_148_env_voidp_741" = bitcast %"$$fundef_148_env_231"* %"$$fundef_148_envp_739" to i8*
  %"$$fundef_148_cloval_742" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_148_env_231"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_148" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_148_env_voidp_741", 1
  %"$$fundef_148_env_f_743" = getelementptr inbounds %"$$fundef_148_env_231", %"$$fundef_148_env_231"* %"$$fundef_148_envp_739", i32 0, i32 0
  %"$f_744" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_744", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_148_env_f_743", align 8
  %"$$fundef_148_env_n_745" = getelementptr inbounds %"$$fundef_148_env_231", %"$$fundef_148_env_231"* %"$$fundef_148_envp_739", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_148_env_n_745", align 8
  %"$$fundef_148_env_nat_fold_746" = getelementptr inbounds %"$$fundef_148_env_231", %"$$fundef_148_env_231"* %"$$fundef_148_envp_739", i32 0, i32 2
  %"$nat_fold_747" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_747", { i8*, i8* }** %"$$fundef_148_env_nat_fold_746", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_148_cloval_742", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_147", align 8
  %"$$retval_147_748" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_147", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_147_748"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_144"(%"$$fundef_144_env_233"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_144_env_nat_fold_715" = getelementptr inbounds %"$$fundef_144_env_233", %"$$fundef_144_env_233"* %0, i32 0, i32 0
  %"$nat_fold_envload_716" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_144_env_nat_fold_715", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_716", { i8*, i8* }** %nat_fold, align 8
  %"$retval_145" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 1, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %entry
  %"$consume_721" = sub i64 %"$gasrem_717", 1
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %"$$fundef_146_envp_722_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_146_envp_722_salloc" = call i8* @_salloc(i8* %"$$fundef_146_envp_722_load", i64 24)
  %"$$fundef_146_envp_722" = bitcast i8* %"$$fundef_146_envp_722_salloc" to %"$$fundef_146_env_232"*
  %"$$fundef_146_env_voidp_724" = bitcast %"$$fundef_146_env_232"* %"$$fundef_146_envp_722" to i8*
  %"$$fundef_146_cloval_725" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_146_env_232"*, %TName_Nat*)* @"$fundef_146" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_146_env_voidp_724", 1
  %"$$fundef_146_env_f_726" = getelementptr inbounds %"$$fundef_146_env_232", %"$$fundef_146_env_232"* %"$$fundef_146_envp_722", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_146_env_f_726", align 8
  %"$$fundef_146_env_nat_fold_727" = getelementptr inbounds %"$$fundef_146_env_232", %"$$fundef_146_env_232"* %"$$fundef_146_envp_722", i32 0, i32 1
  %"$nat_fold_728" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_728", { i8*, i8* }** %"$$fundef_146_env_nat_fold_727", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_146_cloval_725", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_145", align 8
  %"$$retval_145_729" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_145", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_145_729"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_142"(%"$$fundef_142_env_234"* %0) {
entry:
  %"$$fundef_142_env_nat_fold_701" = getelementptr inbounds %"$$fundef_142_env_234", %"$$fundef_142_env_234"* %0, i32 0, i32 0
  %"$nat_fold_envload_702" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_142_env_nat_fold_701", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_702", { i8*, i8* }** %nat_fold, align 8
  %"$retval_143" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_704" = icmp ugt i64 1, %"$gasrem_703"
  br i1 %"$gascmp_704", label %"$out_of_gas_705", label %"$have_gas_706"

"$out_of_gas_705":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_706"

"$have_gas_706":                                  ; preds = %"$out_of_gas_705", %entry
  %"$consume_707" = sub i64 %"$gasrem_703", 1
  store i64 %"$consume_707", i64* @_gasrem, align 8
  %"$$fundef_144_envp_708_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_144_envp_708_salloc" = call i8* @_salloc(i8* %"$$fundef_144_envp_708_load", i64 8)
  %"$$fundef_144_envp_708" = bitcast i8* %"$$fundef_144_envp_708_salloc" to %"$$fundef_144_env_233"*
  %"$$fundef_144_env_voidp_710" = bitcast %"$$fundef_144_env_233"* %"$$fundef_144_envp_708" to i8*
  %"$$fundef_144_cloval_711" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_144_env_233"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_144" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_144_env_voidp_710", 1
  %"$$fundef_144_env_nat_fold_712" = getelementptr inbounds %"$$fundef_144_env_233", %"$$fundef_144_env_233"* %"$$fundef_144_envp_708", i32 0, i32 0
  %"$nat_fold_713" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_713", { i8*, i8* }** %"$$fundef_144_env_nat_fold_712", align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_144_cloval_711", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_143", align 8
  %"$$retval_143_714" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_143", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_143_714"
}

define internal %TName_Nat* @"$fundef_140"(%"$$fundef_140_env_235"* %0, %TName_Nat* %1) {
entry:
  %"$retval_141" = alloca %TName_Nat*, align 8
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 1, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %entry
  %"$consume_695" = sub i64 %"$gasrem_691", 1
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %"$adtval_696_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_696_salloc" = call i8* @_salloc(i8* %"$adtval_696_load", i64 9)
  %"$adtval_696" = bitcast i8* %"$adtval_696_salloc" to %CName_Succ*
  %"$adtgep_697" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_696", i32 0, i32 0
  store i8 1, i8* %"$adtgep_697", align 1
  %"$adtgep_698" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_696", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_698", align 8
  %"$adtptr_699" = bitcast %CName_Succ* %"$adtval_696" to %TName_Nat*
  store %TName_Nat* %"$adtptr_699", %TName_Nat** %"$retval_141", align 8
  %"$$retval_141_700" = load %TName_Nat*, %TName_Nat** %"$retval_141", align 8
  ret %TName_Nat* %"$$retval_141_700"
}

define internal %Uint32 @"$fundef_137"(%"$$fundef_137_env_236"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_137_env_one_int_678" = getelementptr inbounds %"$$fundef_137_env_236", %"$$fundef_137_env_236"* %0, i32 0, i32 0
  %"$one_int_envload_679" = load %Uint32, %Uint32* %"$$fundef_137_env_one_int_678", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_679", %Uint32* %one_int, align 4
  %"$$fundef_137_env_z_680" = getelementptr inbounds %"$$fundef_137_env_236", %"$$fundef_137_env_236"* %0, i32 0, i32 1
  %"$z_envload_681" = load %Uint32, %Uint32* %"$$fundef_137_env_z_680", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_681", %Uint32* %z, align 4
  %"$retval_138" = alloca %Uint32, align 8
  %"$gasrem_682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_683" = icmp ugt i64 4, %"$gasrem_682"
  br i1 %"$gascmp_683", label %"$out_of_gas_684", label %"$have_gas_685"

"$out_of_gas_684":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_685"

"$have_gas_685":                                  ; preds = %"$out_of_gas_684", %entry
  %"$consume_686" = sub i64 %"$gasrem_682", 4
  store i64 %"$consume_686", i64* @_gasrem, align 8
  %"$z_687" = load %Uint32, %Uint32* %z, align 4
  %"$one_int_688" = load %Uint32, %Uint32* %one_int, align 4
  %"$add_call_689" = call %Uint32 @_add_Uint32(%Uint32 %"$z_687", %Uint32 %"$one_int_688")
  store %Uint32 %"$add_call_689", %Uint32* %"$retval_138", align 4
  %"$$retval_138_690" = load %Uint32, %Uint32* %"$retval_138", align 4
  ret %Uint32 %"$$retval_138_690"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_135"(%"$$fundef_135_env_237"* %0, %Uint32 %1) {
entry:
  %"$$fundef_135_env_one_int_663" = getelementptr inbounds %"$$fundef_135_env_237", %"$$fundef_135_env_237"* %0, i32 0, i32 0
  %"$one_int_envload_664" = load %Uint32, %Uint32* %"$$fundef_135_env_one_int_663", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_664", %Uint32* %one_int, align 4
  %"$retval_136" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_666" = icmp ugt i64 1, %"$gasrem_665"
  br i1 %"$gascmp_666", label %"$out_of_gas_667", label %"$have_gas_668"

"$out_of_gas_667":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_668"

"$have_gas_668":                                  ; preds = %"$out_of_gas_667", %entry
  %"$consume_669" = sub i64 %"$gasrem_665", 1
  store i64 %"$consume_669", i64* @_gasrem, align 8
  %"$$fundef_137_envp_670_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_137_envp_670_salloc" = call i8* @_salloc(i8* %"$$fundef_137_envp_670_load", i64 8)
  %"$$fundef_137_envp_670" = bitcast i8* %"$$fundef_137_envp_670_salloc" to %"$$fundef_137_env_236"*
  %"$$fundef_137_env_voidp_672" = bitcast %"$$fundef_137_env_236"* %"$$fundef_137_envp_670" to i8*
  %"$$fundef_137_cloval_673" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_137_env_236"*, %TName_Nat*)* @"$fundef_137" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_137_env_voidp_672", 1
  %"$$fundef_137_env_one_int_674" = getelementptr inbounds %"$$fundef_137_env_236", %"$$fundef_137_env_236"* %"$$fundef_137_envp_670", i32 0, i32 0
  %"$one_int_675" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_675", %Uint32* %"$$fundef_137_env_one_int_674", align 4
  %"$$fundef_137_env_z_676" = getelementptr inbounds %"$$fundef_137_env_236", %"$$fundef_137_env_236"* %"$$fundef_137_envp_670", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_137_env_z_676", align 4
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_137_cloval_673", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8
  %"$$retval_136_677" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_136", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_136_677"
}

define internal %Uint32 @"$fundef_133"(%"$$fundef_133_env_238"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_133_env_$nat_fold_6_587" = getelementptr inbounds %"$$fundef_133_env_238", %"$$fundef_133_env_238"* %0, i32 0, i32 0
  %"$$nat_fold_6_envload_588" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_133_env_$nat_fold_6_587", align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$$nat_fold_6_envload_588", { i8*, i8* }** %"$nat_fold_6", align 8
  %"$retval_134" = alloca %Uint32, align 8
  %"$gasrem_589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_590" = icmp ugt i64 1, %"$gasrem_589"
  br i1 %"$gascmp_590", label %"$out_of_gas_591", label %"$have_gas_592"

"$out_of_gas_591":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_592"

"$have_gas_592":                                  ; preds = %"$out_of_gas_591", %entry
  %"$consume_593" = sub i64 %"$gasrem_589", 1
  store i64 %"$consume_593", i64* @_gasrem, align 8
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 1, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %"$have_gas_592"
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %"$have_gas_592"
  %"$consume_598" = sub i64 %"$gasrem_594", 1
  store i64 %"$consume_598", i64* @_gasrem, align 8
  %"$$nat_fold_6_599" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  %"$$nat_fold_6_600" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$$nat_fold_6_599", i32 0
  %"$$nat_fold_6_601" = bitcast { i8*, i8* }* %"$$nat_fold_6_600" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$$nat_fold_6_602" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$$nat_fold_6_601", align 8
  %"$$nat_fold_6_fptr_603" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_602", 0
  %"$$nat_fold_6_envptr_604" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_602", 1
  %"$$nat_fold_6_call_605" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_fptr_603"(i8* %"$$nat_fold_6_envptr_604")
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_call_605", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 1, %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %"$have_gas_597"
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %"$have_gas_597"
  %"$consume_610" = sub i64 %"$gasrem_606", 1
  store i64 %"$consume_610", i64* @_gasrem, align 8
  %one_int = alloca %Uint32, align 8
  %"$gasrem_611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_612" = icmp ugt i64 1, %"$gasrem_611"
  br i1 %"$gascmp_612", label %"$out_of_gas_613", label %"$have_gas_614"

"$out_of_gas_613":                                ; preds = %"$have_gas_609"
  call void @_out_of_gas()
  br label %"$have_gas_614"

"$have_gas_614":                                  ; preds = %"$out_of_gas_613", %"$have_gas_609"
  %"$consume_615" = sub i64 %"$gasrem_611", 1
  store i64 %"$consume_615", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one_int, align 4
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %"$have_gas_614"
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %"$have_gas_614"
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_619"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  %"$$fundef_135_envp_626_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_135_envp_626_salloc" = call i8* @_salloc(i8* %"$$fundef_135_envp_626_load", i64 4)
  %"$$fundef_135_envp_626" = bitcast i8* %"$$fundef_135_envp_626_salloc" to %"$$fundef_135_env_237"*
  %"$$fundef_135_env_voidp_628" = bitcast %"$$fundef_135_env_237"* %"$$fundef_135_envp_626" to i8*
  %"$$fundef_135_cloval_629" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_135_env_237"*, %Uint32)* @"$fundef_135" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_135_env_voidp_628", 1
  %"$$fundef_135_env_one_int_630" = getelementptr inbounds %"$$fundef_135_env_237", %"$$fundef_135_env_237"* %"$$fundef_135_envp_626", i32 0, i32 0
  %"$one_int_631" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_631", %Uint32* %"$$fundef_135_env_one_int_630", align 4
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_135_cloval_629", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_624"
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %zero_int = alloca %Uint32, align 8
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 1, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_635"
  %"$consume_641" = sub i64 %"$gasrem_637", 1
  store i64 %"$consume_641", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero_int, align 4
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 1, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %"$have_gas_640"
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %"$have_gas_640"
  %"$consume_646" = sub i64 %"$gasrem_642", 1
  store i64 %"$consume_646", i64* @_gasrem, align 8
  %"$fold_33" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$fold_647" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$fold_fptr_648" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_647", 0
  %"$fold_envptr_649" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_647", 1
  %"$f_650" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$fold_call_651" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_648"(i8* %"$fold_envptr_649", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_650")
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_651", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_33", align 8
  %"$fold_34" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fold_33_652" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_33", align 8
  %"$$fold_33_fptr_653" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_33_652", 0
  %"$$fold_33_envptr_654" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_33_652", 1
  %"$zero_int_655" = load %Uint32, %Uint32* %zero_int, align 4
  %"$$fold_33_call_656" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_33_fptr_653"(i8* %"$$fold_33_envptr_654", %Uint32 %"$zero_int_655")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_33_call_656", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_34", align 8
  %"$fold_35" = alloca %Uint32, align 8
  %"$$fold_34_657" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_34", align 8
  %"$$fold_34_fptr_658" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_34_657", 0
  %"$$fold_34_envptr_659" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_34_657", 1
  %"$$fold_34_call_660" = call %Uint32 %"$$fold_34_fptr_658"(i8* %"$$fold_34_envptr_659", %TName_Nat* %1)
  store %Uint32 %"$$fold_34_call_660", %Uint32* %"$fold_35", align 4
  %"$$fold_35_661" = load %Uint32, %Uint32* %"$fold_35", align 4
  store %Uint32 %"$$fold_35_661", %Uint32* %"$retval_134", align 4
  %"$$retval_134_662" = load %Uint32, %Uint32* %"$retval_134", align 4
  ret %Uint32 %"$$retval_134_662"
}

define internal %Uint32 @"$fundef_131"(%"$$fundef_131_env_239"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_131_env_f0_522" = getelementptr inbounds %"$$fundef_131_env_239", %"$$fundef_131_env_239"* %0, i32 0, i32 0
  %"$f0_envload_523" = load %Uint32, %Uint32* %"$$fundef_131_env_f0_522", align 4
  %f0 = alloca %Uint32, align 8
  store %Uint32 %"$f0_envload_523", %Uint32* %f0, align 4
  %"$$fundef_131_env_fn_524" = getelementptr inbounds %"$$fundef_131_env_239", %"$$fundef_131_env_239"* %0, i32 0, i32 1
  %"$fn_envload_525" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_fn_524", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_525", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_131_env_g_526" = getelementptr inbounds %"$$fundef_131_env_239", %"$$fundef_131_env_239"* %0, i32 0, i32 2
  %"$g_envload_527" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_g_526", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_527", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_132" = alloca %Uint32, align 8
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 2, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %entry
  %"$consume_532" = sub i64 %"$gasrem_528", 2
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %"$n_tag_534" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_535" = load i8, i8* %"$n_tag_534", align 1
  switch i8 %"$n_tag_535", label %"$empty_default_536" [
    i8 1, label %"$Succ_537"
    i8 0, label %"$Zero_578"
  ]

"$Succ_537":                                      ; preds = %"$have_gas_531"
  %"$n_538" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_539" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_538", i32 0, i32 1
  %"$n1_load_540" = load %TName_Nat*, %TName_Nat** %"$n1_gep_539", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_540", %TName_Nat** %n1, align 8
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$Succ_537"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$Succ_537"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_544"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %"$fn_29" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_551" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$fn_fptr_552" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_551", 0
  %"$fn_envptr_553" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_551", 1
  %"$f0_554" = load %Uint32, %Uint32* %f0, align 4
  %"$fn_call_555" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_552"(i8* %"$fn_envptr_553", %Uint32 %"$f0_554")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_555", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_29", align 8
  %"$fn_30" = alloca %Uint32, align 8
  %"$$fn_29_556" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_29", align 8
  %"$$fn_29_fptr_557" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_29_556", 0
  %"$$fn_29_envptr_558" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_29_556", 1
  %"$n1_559" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_29_call_560" = call %Uint32 %"$$fn_29_fptr_557"(i8* %"$$fn_29_envptr_558", %TName_Nat* %"$n1_559")
  store %Uint32 %"$$fn_29_call_560", %Uint32* %"$fn_30", align 4
  %"$$fn_30_561" = load %Uint32, %Uint32* %"$fn_30", align 4
  store %Uint32 %"$$fn_30_561", %Uint32* %res, align 4
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_549"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  %"$g_31" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_567" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_568" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_567", 0
  %"$g_envptr_569" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_567", 1
  %"$res_570" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_571" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_568"(i8* %"$g_envptr_569", %Uint32 %"$res_570")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_571", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_31", align 8
  %"$g_32" = alloca %Uint32, align 8
  %"$$g_31_572" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_31", align 8
  %"$$g_31_fptr_573" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_31_572", 0
  %"$$g_31_envptr_574" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_31_572", 1
  %"$n1_575" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_31_call_576" = call %Uint32 %"$$g_31_fptr_573"(i8* %"$$g_31_envptr_574", %TName_Nat* %"$n1_575")
  store %Uint32 %"$$g_31_call_576", %Uint32* %"$g_32", align 4
  %"$$g_32_577" = load %Uint32, %Uint32* %"$g_32", align 4
  store %Uint32 %"$$g_32_577", %Uint32* %"$retval_132", align 4
  br label %"$matchsucc_533"

"$Zero_578":                                      ; preds = %"$have_gas_531"
  %"$n_579" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_581" = icmp ugt i64 1, %"$gasrem_580"
  br i1 %"$gascmp_581", label %"$out_of_gas_582", label %"$have_gas_583"

"$out_of_gas_582":                                ; preds = %"$Zero_578"
  call void @_out_of_gas()
  br label %"$have_gas_583"

"$have_gas_583":                                  ; preds = %"$out_of_gas_582", %"$Zero_578"
  %"$consume_584" = sub i64 %"$gasrem_580", 1
  store i64 %"$consume_584", i64* @_gasrem, align 8
  %"$f0_585" = load %Uint32, %Uint32* %f0, align 4
  store %Uint32 %"$f0_585", %Uint32* %"$retval_132", align 4
  br label %"$matchsucc_533"

"$empty_default_536":                             ; preds = %"$have_gas_531"
  br label %"$matchsucc_533"

"$matchsucc_533":                                 ; preds = %"$have_gas_583", %"$have_gas_565", %"$empty_default_536"
  %"$$retval_132_586" = load %Uint32, %Uint32* %"$retval_132", align 4
  ret %Uint32 %"$$retval_132_586"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_129"(%"$$fundef_129_env_240"* %0, %Uint32 %1) {
entry:
  %"$$fundef_129_env_fn_498" = getelementptr inbounds %"$$fundef_129_env_240", %"$$fundef_129_env_240"* %0, i32 0, i32 0
  %"$fn_envload_499" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_fn_498", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_499", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_129_env_g_500" = getelementptr inbounds %"$$fundef_129_env_240", %"$$fundef_129_env_240"* %0, i32 0, i32 1
  %"$g_envload_501" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_g_500", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_501", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_130" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %entry
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 1, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %"$have_gas_505"
  %"$consume_511" = sub i64 %"$gasrem_507", 1
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %"$$fundef_131_envp_512_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_131_envp_512_salloc" = call i8* @_salloc(i8* %"$$fundef_131_envp_512_load", i64 40)
  %"$$fundef_131_envp_512" = bitcast i8* %"$$fundef_131_envp_512_salloc" to %"$$fundef_131_env_239"*
  %"$$fundef_131_env_voidp_514" = bitcast %"$$fundef_131_env_239"* %"$$fundef_131_envp_512" to i8*
  %"$$fundef_131_cloval_515" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_131_env_239"*, %TName_Nat*)* @"$fundef_131" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_131_env_voidp_514", 1
  %"$$fundef_131_env_f0_516" = getelementptr inbounds %"$$fundef_131_env_239", %"$$fundef_131_env_239"* %"$$fundef_131_envp_512", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_131_env_f0_516", align 4
  %"$$fundef_131_env_fn_517" = getelementptr inbounds %"$$fundef_131_env_239", %"$$fundef_131_env_239"* %"$$fundef_131_envp_512", i32 0, i32 1
  %"$fn_518" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_518", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_fn_517", align 8
  %"$$fundef_131_env_g_519" = getelementptr inbounds %"$$fundef_131_env_239", %"$$fundef_131_env_239"* %"$$fundef_131_envp_512", i32 0, i32 2
  %"$g_520" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_520", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_131_env_g_519", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_131_cloval_515", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8
  %"$$retval_130_521" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_130", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_130_521"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_127"(%"$$fundef_127_env_241"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_128" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %entry
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  %"$$fundef_129_envp_489_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_129_envp_489_salloc" = call i8* @_salloc(i8* %"$$fundef_129_envp_489_load", i64 32)
  %"$$fundef_129_envp_489" = bitcast i8* %"$$fundef_129_envp_489_salloc" to %"$$fundef_129_env_240"*
  %"$$fundef_129_env_voidp_491" = bitcast %"$$fundef_129_env_240"* %"$$fundef_129_envp_489" to i8*
  %"$$fundef_129_cloval_492" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_129_env_240"*, %Uint32)* @"$fundef_129" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_129_env_voidp_491", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_129_cloval_492", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_129_env_fn_493" = getelementptr inbounds %"$$fundef_129_env_240", %"$$fundef_129_env_240"* %"$$fundef_129_envp_489", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_fn_493", align 8
  %"$$fundef_129_env_g_494" = getelementptr inbounds %"$$fundef_129_env_240", %"$$fundef_129_env_240"* %"$$fundef_129_envp_489", i32 0, i32 1
  %"$g_495" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_495", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_129_env_g_494", align 8
  %"$g_496" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_496", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_128", align 8
  %"$$retval_128_497" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_128", align 8
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_128_497"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_125"(%"$$fundef_125_env_242"* %0) {
entry:
  %"$retval_126" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %entry
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_127_env_241"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_127" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_126", align 8
  %"$$retval_126_483" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_126", align 8
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_126_483"
}

define internal %TName_Nat* @"$fundef_123"(%"$$fundef_123_env_243"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_123_env_f0_410" = getelementptr inbounds %"$$fundef_123_env_243", %"$$fundef_123_env_243"* %0, i32 0, i32 0
  %"$f0_envload_411" = load %TName_Nat*, %TName_Nat** %"$$fundef_123_env_f0_410", align 8
  %f0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$f0_envload_411", %TName_Nat** %f0, align 8
  %"$$fundef_123_env_fn_412" = getelementptr inbounds %"$$fundef_123_env_243", %"$$fundef_123_env_243"* %0, i32 0, i32 1
  %"$fn_envload_413" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_fn_412", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_413", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_123_env_g_414" = getelementptr inbounds %"$$fundef_123_env_243", %"$$fundef_123_env_243"* %0, i32 0, i32 2
  %"$g_envload_415" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_g_414", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_415", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_124" = alloca %TName_Nat*, align 8
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 2, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %entry
  %"$consume_420" = sub i64 %"$gasrem_416", 2
  store i64 %"$consume_420", i64* @_gasrem, align 8
  %"$n_tag_422" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_423" = load i8, i8* %"$n_tag_422", align 1
  switch i8 %"$n_tag_423", label %"$empty_default_424" [
    i8 1, label %"$Succ_425"
    i8 0, label %"$Zero_466"
  ]

"$Succ_425":                                      ; preds = %"$have_gas_419"
  %"$n_426" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_427" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_426", i32 0, i32 1
  %"$n1_load_428" = load %TName_Nat*, %TName_Nat** %"$n1_gep_427", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_428", %TName_Nat** %n1, align 8
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$Succ_425"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$Succ_425"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %res = alloca %TName_Nat*, align 8
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_432"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %"$fn_25" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_439" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$fn_fptr_440" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_439", 0
  %"$fn_envptr_441" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_439", 1
  %"$f0_442" = load %TName_Nat*, %TName_Nat** %f0, align 8
  %"$fn_call_443" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_440"(i8* %"$fn_envptr_441", %TName_Nat* %"$f0_442")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_443", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8
  %"$fn_26" = alloca %TName_Nat*, align 8
  %"$$fn_25_444" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8
  %"$$fn_25_fptr_445" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_444", 0
  %"$$fn_25_envptr_446" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_444", 1
  %"$n1_447" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_25_call_448" = call %TName_Nat* %"$$fn_25_fptr_445"(i8* %"$$fn_25_envptr_446", %TName_Nat* %"$n1_447")
  store %TName_Nat* %"$$fn_25_call_448", %TName_Nat** %"$fn_26", align 8
  %"$$fn_26_449" = load %TName_Nat*, %TName_Nat** %"$fn_26", align 8
  store %TName_Nat* %"$$fn_26_449", %TName_Nat** %res, align 8
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_437"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  %"$g_27" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_455" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$g_fptr_456" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_455", 0
  %"$g_envptr_457" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_455", 1
  %"$res_458" = load %TName_Nat*, %TName_Nat** %res, align 8
  %"$g_call_459" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_456"(i8* %"$g_envptr_457", %TName_Nat* %"$res_458")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_459", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8
  %"$g_28" = alloca %TName_Nat*, align 8
  %"$$g_27_460" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8
  %"$$g_27_fptr_461" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_460", 0
  %"$$g_27_envptr_462" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_460", 1
  %"$n1_463" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_27_call_464" = call %TName_Nat* %"$$g_27_fptr_461"(i8* %"$$g_27_envptr_462", %TName_Nat* %"$n1_463")
  store %TName_Nat* %"$$g_27_call_464", %TName_Nat** %"$g_28", align 8
  %"$$g_28_465" = load %TName_Nat*, %TName_Nat** %"$g_28", align 8
  store %TName_Nat* %"$$g_28_465", %TName_Nat** %"$retval_124", align 8
  br label %"$matchsucc_421"

"$Zero_466":                                      ; preds = %"$have_gas_419"
  %"$n_467" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$Zero_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$Zero_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %"$f0_473" = load %TName_Nat*, %TName_Nat** %f0, align 8
  store %TName_Nat* %"$f0_473", %TName_Nat** %"$retval_124", align 8
  br label %"$matchsucc_421"

"$empty_default_424":                             ; preds = %"$have_gas_419"
  br label %"$matchsucc_421"

"$matchsucc_421":                                 ; preds = %"$have_gas_471", %"$have_gas_453", %"$empty_default_424"
  %"$$retval_124_474" = load %TName_Nat*, %TName_Nat** %"$retval_124", align 8
  ret %TName_Nat* %"$$retval_124_474"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_121"(%"$$fundef_121_env_244"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_121_env_fn_386" = getelementptr inbounds %"$$fundef_121_env_244", %"$$fundef_121_env_244"* %0, i32 0, i32 0
  %"$fn_envload_387" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_fn_386", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_387", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_121_env_g_388" = getelementptr inbounds %"$$fundef_121_env_244", %"$$fundef_121_env_244"* %0, i32 0, i32 1
  %"$g_envload_389" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_g_388", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_389", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_122" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %entry
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_393"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %"$$fundef_123_envp_400_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_123_envp_400_salloc" = call i8* @_salloc(i8* %"$$fundef_123_envp_400_load", i64 40)
  %"$$fundef_123_envp_400" = bitcast i8* %"$$fundef_123_envp_400_salloc" to %"$$fundef_123_env_243"*
  %"$$fundef_123_env_voidp_402" = bitcast %"$$fundef_123_env_243"* %"$$fundef_123_envp_400" to i8*
  %"$$fundef_123_cloval_403" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_123_env_243"*, %TName_Nat*)* @"$fundef_123" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_123_env_voidp_402", 1
  %"$$fundef_123_env_f0_404" = getelementptr inbounds %"$$fundef_123_env_243", %"$$fundef_123_env_243"* %"$$fundef_123_envp_400", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_123_env_f0_404", align 8
  %"$$fundef_123_env_fn_405" = getelementptr inbounds %"$$fundef_123_env_243", %"$$fundef_123_env_243"* %"$$fundef_123_envp_400", i32 0, i32 1
  %"$fn_406" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_406", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_fn_405", align 8
  %"$$fundef_123_env_g_407" = getelementptr inbounds %"$$fundef_123_env_243", %"$$fundef_123_env_243"* %"$$fundef_123_envp_400", i32 0, i32 2
  %"$g_408" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_408", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_123_env_g_407", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_123_cloval_403", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_122", align 8
  %"$$retval_122_409" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_122", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_122_409"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_119"(%"$$fundef_119_env_245"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$retval_120" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %entry
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %"$$fundef_121_envp_377_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_121_envp_377_salloc" = call i8* @_salloc(i8* %"$$fundef_121_envp_377_load", i64 32)
  %"$$fundef_121_envp_377" = bitcast i8* %"$$fundef_121_envp_377_salloc" to %"$$fundef_121_env_244"*
  %"$$fundef_121_env_voidp_379" = bitcast %"$$fundef_121_env_244"* %"$$fundef_121_envp_377" to i8*
  %"$$fundef_121_cloval_380" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_121_env_244"*, %TName_Nat*)* @"$fundef_121" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_121_env_voidp_379", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_121_cloval_380", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$$fundef_121_env_fn_381" = getelementptr inbounds %"$$fundef_121_env_244", %"$$fundef_121_env_244"* %"$$fundef_121_envp_377", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_fn_381", align 8
  %"$$fundef_121_env_g_382" = getelementptr inbounds %"$$fundef_121_env_244", %"$$fundef_121_env_244"* %"$$fundef_121_envp_377", i32 0, i32 1
  %"$g_383" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_383", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_121_env_g_382", align 8
  %"$g_384" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_384", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_120", align 8
  %"$$retval_120_385" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_120", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_120_385"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_117"(%"$$fundef_117_env_246"* %0) {
entry:
  %"$retval_118" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %entry
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_119_env_245"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_119" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_118", align 8
  %"$$retval_118_371" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_118", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_118_371"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_115"(%"$$fundef_115_env_247"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_115_env_f0_298" = getelementptr inbounds %"$$fundef_115_env_247", %"$$fundef_115_env_247"* %0, i32 0, i32 0
  %"$f0_envload_299" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_115_env_f0_298", align 8
  %f0 = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_envload_299", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$$fundef_115_env_fn_300" = getelementptr inbounds %"$$fundef_115_env_247", %"$$fundef_115_env_247"* %0, i32 0, i32 1
  %"$fn_envload_301" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_115_env_fn_300", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_301", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_115_env_g_302" = getelementptr inbounds %"$$fundef_115_env_247", %"$$fundef_115_env_247"* %0, i32 0, i32 2
  %"$g_envload_303" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_115_env_g_302", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_303", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_116" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 2, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %entry
  %"$consume_308" = sub i64 %"$gasrem_304", 2
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$n_tag_310" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_311" = load i8, i8* %"$n_tag_310", align 1
  switch i8 %"$n_tag_311", label %"$empty_default_312" [
    i8 1, label %"$Succ_313"
    i8 0, label %"$Zero_354"
  ]

"$Succ_313":                                      ; preds = %"$have_gas_307"
  %"$n_314" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_315" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_314", i32 0, i32 1
  %"$n1_load_316" = load %TName_Nat*, %TName_Nat** %"$n1_gep_315", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_316", %TName_Nat** %n1, align 8
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$Succ_313"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$Succ_313"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %res = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_320"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %"$fn_25" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_327" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$fn_fptr_328" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_327", 0
  %"$fn_envptr_329" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_327", 1
  %"$f0_330" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$fn_call_331" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_328"(i8* %"$fn_envptr_329", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_330")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_331", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8
  %"$fn_26" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fn_25_332" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_25", align 8
  %"$$fn_25_fptr_333" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_25_332", 0
  %"$$fn_25_envptr_334" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_25_332", 1
  %"$n1_335" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_25_call_336" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_fptr_333"(i8* %"$$fn_25_envptr_334", %TName_Nat* %"$n1_335")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_25_call_336", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_26", align 8
  %"$$fn_26_337" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_26", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_26_337", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_325"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$g_27" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_343" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$g_fptr_344" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_343", 0
  %"$g_envptr_345" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_343", 1
  %"$res_346" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8
  %"$g_call_347" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_344"(i8* %"$g_envptr_345", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_346")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_347", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8
  %"$g_28" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$g_27_348" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_27", align 8
  %"$$g_27_fptr_349" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_27_348", 0
  %"$$g_27_envptr_350" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_27_348", 1
  %"$n1_351" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_27_call_352" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_fptr_349"(i8* %"$$g_27_envptr_350", %TName_Nat* %"$n1_351")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_27_call_352", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_28", align 8
  %"$$g_28_353" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_28", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_28_353", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_116", align 8
  br label %"$matchsucc_309"

"$Zero_354":                                      ; preds = %"$have_gas_307"
  %"$n_355" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$Zero_354"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$Zero_354"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$f0_361" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_361", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_116", align 8
  br label %"$matchsucc_309"

"$empty_default_312":                             ; preds = %"$have_gas_307"
  br label %"$matchsucc_309"

"$matchsucc_309":                                 ; preds = %"$have_gas_359", %"$have_gas_341", %"$empty_default_312"
  %"$$retval_116_362" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_116", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_116_362"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_113"(%"$$fundef_113_env_248"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_113_env_fn_274" = getelementptr inbounds %"$$fundef_113_env_248", %"$$fundef_113_env_248"* %0, i32 0, i32 0
  %"$fn_envload_275" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_113_env_fn_274", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_275", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_113_env_g_276" = getelementptr inbounds %"$$fundef_113_env_248", %"$$fundef_113_env_248"* %0, i32 0, i32 1
  %"$g_envload_277" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_113_env_g_276", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_277", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_114" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %entry
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_281"
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %"$$fundef_115_envp_288_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_115_envp_288_salloc" = call i8* @_salloc(i8* %"$$fundef_115_envp_288_load", i64 48)
  %"$$fundef_115_envp_288" = bitcast i8* %"$$fundef_115_envp_288_salloc" to %"$$fundef_115_env_247"*
  %"$$fundef_115_env_voidp_290" = bitcast %"$$fundef_115_env_247"* %"$$fundef_115_envp_288" to i8*
  %"$$fundef_115_cloval_291" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_115_env_247"*, %TName_Nat*)* @"$fundef_115" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_115_env_voidp_290", 1
  %"$$fundef_115_env_f0_292" = getelementptr inbounds %"$$fundef_115_env_247", %"$$fundef_115_env_247"* %"$$fundef_115_envp_288", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_115_env_f0_292", align 8
  %"$$fundef_115_env_fn_293" = getelementptr inbounds %"$$fundef_115_env_247", %"$$fundef_115_env_247"* %"$$fundef_115_envp_288", i32 0, i32 1
  %"$fn_294" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_294", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_115_env_fn_293", align 8
  %"$$fundef_115_env_g_295" = getelementptr inbounds %"$$fundef_115_env_247", %"$$fundef_115_env_247"* %"$$fundef_115_envp_288", i32 0, i32 2
  %"$g_296" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_296", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_115_env_g_295", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_115_cloval_291", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_114", align 8
  %"$$retval_114_297" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_114", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_114_297"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_111"(%"$$fundef_111_env_249"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$retval_112" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %entry
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$$fundef_113_envp_265_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_113_envp_265_salloc" = call i8* @_salloc(i8* %"$$fundef_113_envp_265_load", i64 32)
  %"$$fundef_113_envp_265" = bitcast i8* %"$$fundef_113_envp_265_salloc" to %"$$fundef_113_env_248"*
  %"$$fundef_113_env_voidp_267" = bitcast %"$$fundef_113_env_248"* %"$$fundef_113_envp_265" to i8*
  %"$$fundef_113_cloval_268" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_113_env_248"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_113" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_113_env_voidp_267", 1
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_113_cloval_268", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$$fundef_113_env_fn_269" = getelementptr inbounds %"$$fundef_113_env_248", %"$$fundef_113_env_248"* %"$$fundef_113_envp_265", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_113_env_fn_269", align 8
  %"$$fundef_113_env_g_270" = getelementptr inbounds %"$$fundef_113_env_248", %"$$fundef_113_env_248"* %"$$fundef_113_envp_265", i32 0, i32 1
  %"$g_271" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_271", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_113_env_g_270", align 8
  %"$g_272" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_272", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_112", align 8
  %"$$retval_112_273" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_112", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_112_273"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_109"(%"$$fundef_109_env_250"* %0) {
entry:
  %"$retval_110" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %entry
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_111_env_249"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_111" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_110", align 8
  %"$$retval_110_259" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_110", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_110_259"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  %"$gasrem_1067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1068" = icmp ugt i64 4, %"$gasrem_1067"
  br i1 %"$gascmp_1068", label %"$out_of_gas_1069", label %"$have_gas_1070"

"$out_of_gas_1069":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1070"

"$have_gas_1070":                                 ; preds = %"$out_of_gas_1069", %entry
  %"$consume_1071" = sub i64 %"$gasrem_1067", 4
  store i64 %"$consume_1071", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_1072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1073" = icmp ugt i64 1, %"$gasrem_1072"
  br i1 %"$gascmp_1073", label %"$out_of_gas_1074", label %"$have_gas_1075"

"$out_of_gas_1074":                               ; preds = %"$have_gas_1070"
  call void @_out_of_gas()
  br label %"$have_gas_1075"

"$have_gas_1075":                                 ; preds = %"$out_of_gas_1074", %"$have_gas_1070"
  %"$consume_1076" = sub i64 %"$gasrem_1072", 1
  store i64 %"$consume_1076", i64* @_gasrem, align 8
  %"$dyndisp_table_1083_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1083_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1083_salloc_load", i64 48)
  %"$dyndisp_table_1083_salloc" = bitcast i8* %"$dyndisp_table_1083_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1083" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1083_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1084" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1083", i32 1
  %"$dyndisp_pcast_1085" = bitcast { i8*, i8* }* %"$dyndisp_gep_1084" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_109_env_250"*)* @"$fundef_109" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1085", align 8
  %"$dyndisp_gep_1086" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1083", i32 2
  %"$dyndisp_pcast_1087" = bitcast { i8*, i8* }* %"$dyndisp_gep_1086" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_117_env_246"*)* @"$fundef_117" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1087", align 8
  store { i8*, i8* }* %"$dyndisp_table_1083", { i8*, i8* }** @nat_fold, align 8
  %"$gasrem_1088" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1089" = icmp ugt i64 8, %"$gasrem_1088"
  br i1 %"$gascmp_1089", label %"$out_of_gas_1090", label %"$have_gas_1091"

"$out_of_gas_1090":                               ; preds = %"$have_gas_1075"
  call void @_out_of_gas()
  br label %"$have_gas_1091"

"$have_gas_1091":                                 ; preds = %"$out_of_gas_1090", %"$have_gas_1075"
  %"$consume_1092" = sub i64 %"$gasrem_1088", 8
  store i64 %"$consume_1092", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_1093" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1094" = icmp ugt i64 196, %"$gasrem_1093"
  br i1 %"$gascmp_1094", label %"$out_of_gas_1095", label %"$have_gas_1096"

"$out_of_gas_1095":                               ; preds = %"$have_gas_1091"
  call void @_out_of_gas()
  br label %"$have_gas_1096"

"$have_gas_1096":                                 ; preds = %"$out_of_gas_1095", %"$have_gas_1091"
  %"$consume_1097" = sub i64 %"$gasrem_1093", 196
  store i64 %"$consume_1097", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_1098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1099" = icmp ugt i64 20, %"$gasrem_1098"
  br i1 %"$gascmp_1099", label %"$out_of_gas_1100", label %"$have_gas_1101"

"$out_of_gas_1100":                               ; preds = %"$have_gas_1096"
  call void @_out_of_gas()
  br label %"$have_gas_1101"

"$have_gas_1101":                                 ; preds = %"$out_of_gas_1100", %"$have_gas_1096"
  %"$consume_1102" = sub i64 %"$gasrem_1098", 20
  store i64 %"$consume_1102", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_1103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1104" = icmp ugt i64 11, %"$gasrem_1103"
  br i1 %"$gascmp_1104", label %"$out_of_gas_1105", label %"$have_gas_1106"

"$out_of_gas_1105":                               ; preds = %"$have_gas_1101"
  call void @_out_of_gas()
  br label %"$have_gas_1106"

"$have_gas_1106":                                 ; preds = %"$out_of_gas_1105", %"$have_gas_1101"
  %"$consume_1107" = sub i64 %"$gasrem_1103", 11
  store i64 %"$consume_1107", i64* @_gasrem, align 8
  store %Int32 { i32 11 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_1108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1109" = icmp ugt i64 1, %"$gasrem_1108"
  br i1 %"$gascmp_1109", label %"$out_of_gas_1110", label %"$have_gas_1111"

"$out_of_gas_1110":                               ; preds = %"$have_gas_1106"
  call void @_out_of_gas()
  br label %"$have_gas_1111"

"$have_gas_1111":                                 ; preds = %"$out_of_gas_1110", %"$have_gas_1106"
  %"$consume_1112" = sub i64 %"$gasrem_1108", 1
  store i64 %"$consume_1112", i64* @_gasrem, align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_1116_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1116_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1116_salloc_load", i64 48)
  %"$dyndisp_table_1116_salloc" = bitcast i8* %"$dyndisp_table_1116_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1116" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1116_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1117" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1116", i32 0
  %"$dyndisp_pcast_1118" = bitcast { i8*, i8* }* %"$dyndisp_gep_1117" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_125_env_242"*)* @"$fundef_125" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1118", align 8
  store { i8*, i8* }* %"$dyndisp_table_1116", { i8*, i8* }** %"$nat_fold_6", align 8
  %"$$fundef_133_envp_1119_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_133_envp_1119_salloc" = call i8* @_salloc(i8* %"$$fundef_133_envp_1119_load", i64 8)
  %"$$fundef_133_envp_1119" = bitcast i8* %"$$fundef_133_envp_1119_salloc" to %"$$fundef_133_env_238"*
  %"$$fundef_133_env_voidp_1121" = bitcast %"$$fundef_133_env_238"* %"$$fundef_133_envp_1119" to i8*
  %"$$fundef_133_cloval_1122" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_133_env_238"*, %TName_Nat*)* @"$fundef_133" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_133_env_voidp_1121", 1
  %"$$fundef_133_env_$nat_fold_6_1123" = getelementptr inbounds %"$$fundef_133_env_238", %"$$fundef_133_env_238"* %"$$fundef_133_envp_1119", i32 0, i32 0
  %"$$nat_fold_6_1124" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  store { i8*, i8* }* %"$$nat_fold_6_1124", { i8*, i8* }** %"$$fundef_133_env_$nat_fold_6_1123", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_133_cloval_1122", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$gasrem_1125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1126" = icmp ugt i64 2, %"$gasrem_1125"
  br i1 %"$gascmp_1126", label %"$out_of_gas_1127", label %"$have_gas_1128"

"$out_of_gas_1127":                               ; preds = %"$have_gas_1111"
  call void @_out_of_gas()
  br label %"$have_gas_1128"

"$have_gas_1128":                                 ; preds = %"$out_of_gas_1127", %"$have_gas_1111"
  %"$consume_1129" = sub i64 %"$gasrem_1125", 2
  store i64 %"$consume_1129", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_139" = alloca %Uint32, align 8
  %"$gasrem_1130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1131" = icmp ugt i64 1, %"$gasrem_1130"
  br i1 %"$gascmp_1131", label %"$out_of_gas_1132", label %"$have_gas_1133"

"$out_of_gas_1132":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1133"

"$have_gas_1133":                                 ; preds = %"$out_of_gas_1132", %entry
  %"$consume_1134" = sub i64 %"$gasrem_1130", 1
  store i64 %"$consume_1134", i64* @_gasrem, align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1136" = icmp ugt i64 1, %"$gasrem_1135"
  br i1 %"$gascmp_1136", label %"$out_of_gas_1137", label %"$have_gas_1138"

"$out_of_gas_1137":                               ; preds = %"$have_gas_1133"
  call void @_out_of_gas()
  br label %"$have_gas_1138"

"$have_gas_1138":                                 ; preds = %"$out_of_gas_1137", %"$have_gas_1133"
  %"$consume_1139" = sub i64 %"$gasrem_1135", 1
  store i64 %"$consume_1139", i64* @_gasrem, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_140_env_235"*, %TName_Nat*)* @"$fundef_140" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$gasrem_1143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1144" = icmp ugt i64 1, %"$gasrem_1143"
  br i1 %"$gascmp_1144", label %"$out_of_gas_1145", label %"$have_gas_1146"

"$out_of_gas_1145":                               ; preds = %"$have_gas_1138"
  call void @_out_of_gas()
  br label %"$have_gas_1146"

"$have_gas_1146":                                 ; preds = %"$out_of_gas_1145", %"$have_gas_1138"
  %"$consume_1147" = sub i64 %"$gasrem_1143", 1
  store i64 %"$consume_1147", i64* @_gasrem, align 8
  %nat_iter = alloca { i8*, i8* }*, align 8
  %"$gasrem_1148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1149" = icmp ugt i64 1, %"$gasrem_1148"
  br i1 %"$gascmp_1149", label %"$out_of_gas_1150", label %"$have_gas_1151"

"$out_of_gas_1150":                               ; preds = %"$have_gas_1146"
  call void @_out_of_gas()
  br label %"$have_gas_1151"

"$have_gas_1151":                                 ; preds = %"$out_of_gas_1150", %"$have_gas_1146"
  %"$consume_1152" = sub i64 %"$gasrem_1148", 1
  store i64 %"$consume_1152", i64* @_gasrem, align 8
  %"$$fundef_142_envp_1153_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_142_envp_1153_salloc" = call i8* @_salloc(i8* %"$$fundef_142_envp_1153_load", i64 8)
  %"$$fundef_142_envp_1153" = bitcast i8* %"$$fundef_142_envp_1153_salloc" to %"$$fundef_142_env_234"*
  %"$$fundef_142_env_voidp_1155" = bitcast %"$$fundef_142_env_234"* %"$$fundef_142_envp_1153" to i8*
  %"$$fundef_142_cloval_1156" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_142_env_234"*)* @"$fundef_142" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_142_env_voidp_1155", 1
  %"$$fundef_142_env_nat_fold_1157" = getelementptr inbounds %"$$fundef_142_env_234", %"$$fundef_142_env_234"* %"$$fundef_142_envp_1153", i32 0, i32 0
  %"$nat_fold_1158" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1158", { i8*, i8* }** %"$$fundef_142_env_nat_fold_1157", align 8
  %"$$fundef_154_env_voidp_1160" = bitcast %"$$fundef_142_env_234"* %"$$fundef_142_envp_1153" to i8*
  %"$$fundef_154_cloval_1161" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_154_env_228"*)* @"$fundef_154" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_154_env_voidp_1160", 1
  %"$dyndisp_table_1162_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1162_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1162_salloc_load", i64 48)
  %"$dyndisp_table_1162_salloc" = bitcast i8* %"$dyndisp_table_1162_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1162" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1162_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1163" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1162", i32 1
  %"$dyndisp_pcast_1164" = bitcast { i8*, i8* }* %"$dyndisp_gep_1163" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_142_cloval_1156", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1164", align 8
  %"$dyndisp_gep_1165" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1162", i32 2
  %"$dyndisp_pcast_1166" = bitcast { i8*, i8* }* %"$dyndisp_gep_1165" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_154_cloval_1161", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1166", align 8
  store { i8*, i8* }* %"$dyndisp_table_1162", { i8*, i8* }** %nat_iter, align 8
  %"$gasrem_1167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1168" = icmp ugt i64 1, %"$gasrem_1167"
  br i1 %"$gascmp_1168", label %"$out_of_gas_1169", label %"$have_gas_1170"

"$out_of_gas_1169":                               ; preds = %"$have_gas_1151"
  call void @_out_of_gas()
  br label %"$have_gas_1170"

"$have_gas_1170":                                 ; preds = %"$out_of_gas_1169", %"$have_gas_1151"
  %"$consume_1171" = sub i64 %"$gasrem_1167", 1
  store i64 %"$consume_1171", i64* @_gasrem, align 8
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1173" = icmp ugt i64 1, %"$gasrem_1172"
  br i1 %"$gascmp_1173", label %"$out_of_gas_1174", label %"$have_gas_1175"

"$out_of_gas_1174":                               ; preds = %"$have_gas_1170"
  call void @_out_of_gas()
  br label %"$have_gas_1175"

"$have_gas_1175":                                 ; preds = %"$out_of_gas_1174", %"$have_gas_1170"
  %"$consume_1176" = sub i64 %"$gasrem_1172", 1
  store i64 %"$consume_1176", i64* @_gasrem, align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1178" = icmp ugt i64 1, %"$gasrem_1177"
  br i1 %"$gascmp_1178", label %"$out_of_gas_1179", label %"$have_gas_1180"

"$out_of_gas_1179":                               ; preds = %"$have_gas_1175"
  call void @_out_of_gas()
  br label %"$have_gas_1180"

"$have_gas_1180":                                 ; preds = %"$out_of_gas_1179", %"$have_gas_1175"
  %"$consume_1181" = sub i64 %"$gasrem_1177", 1
  store i64 %"$consume_1181", i64* @_gasrem, align 8
  %"$nat_iter_1182" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1183" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1182", i32 2
  %"$nat_iter_1184" = bitcast { i8*, i8* }* %"$nat_iter_1183" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1185" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1184", align 8
  %"$nat_iter_fptr_1186" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1185", 0
  %"$nat_iter_envptr_1187" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1185", 1
  %"$nat_iter_call_1188" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1186"(i8* %"$nat_iter_envptr_1187")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1188", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$gasrem_1189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1190" = icmp ugt i64 1, %"$gasrem_1189"
  br i1 %"$gascmp_1190", label %"$out_of_gas_1191", label %"$have_gas_1192"

"$out_of_gas_1191":                               ; preds = %"$have_gas_1180"
  call void @_out_of_gas()
  br label %"$have_gas_1192"

"$have_gas_1192":                                 ; preds = %"$out_of_gas_1191", %"$have_gas_1180"
  %"$consume_1193" = sub i64 %"$gasrem_1189", 1
  store i64 %"$consume_1193", i64* @_gasrem, align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_1194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1195" = icmp ugt i64 1, %"$gasrem_1194"
  br i1 %"$gascmp_1195", label %"$out_of_gas_1196", label %"$have_gas_1197"

"$out_of_gas_1196":                               ; preds = %"$have_gas_1192"
  call void @_out_of_gas()
  br label %"$have_gas_1197"

"$have_gas_1197":                                 ; preds = %"$out_of_gas_1196", %"$have_gas_1192"
  %"$consume_1198" = sub i64 %"$gasrem_1194", 1
  store i64 %"$consume_1198", i64* @_gasrem, align 8
  %"$nat_iter_1199" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1200" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1199", i32 1
  %"$nat_iter_1201" = bitcast { i8*, i8* }* %"$nat_iter_1200" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1202" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1201", align 8
  %"$nat_iter_fptr_1203" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1202", 0
  %"$nat_iter_envptr_1204" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1202", 1
  %"$nat_iter_call_1205" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1203"(i8* %"$nat_iter_envptr_1204")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1205", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$gasrem_1206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1207" = icmp ugt i64 1, %"$gasrem_1206"
  br i1 %"$gascmp_1207", label %"$out_of_gas_1208", label %"$have_gas_1209"

"$out_of_gas_1208":                               ; preds = %"$have_gas_1197"
  call void @_out_of_gas()
  br label %"$have_gas_1209"

"$have_gas_1209":                                 ; preds = %"$out_of_gas_1208", %"$have_gas_1197"
  %"$consume_1210" = sub i64 %"$gasrem_1206", 1
  store i64 %"$consume_1210", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_1211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1212" = icmp ugt i64 1, %"$gasrem_1211"
  br i1 %"$gascmp_1212", label %"$out_of_gas_1213", label %"$have_gas_1214"

"$out_of_gas_1213":                               ; preds = %"$have_gas_1209"
  call void @_out_of_gas()
  br label %"$have_gas_1214"

"$have_gas_1214":                                 ; preds = %"$out_of_gas_1213", %"$have_gas_1209"
  %"$consume_1215" = sub i64 %"$gasrem_1211", 1
  store i64 %"$consume_1215", i64* @_gasrem, align 8
  %"$adtval_1216_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1216_salloc" = call i8* @_salloc(i8* %"$adtval_1216_load", i64 1)
  %"$adtval_1216" = bitcast i8* %"$adtval_1216_salloc" to %CName_Zero*
  %"$adtgep_1217" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1216", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1217", align 1
  %"$adtptr_1218" = bitcast %CName_Zero* %"$adtval_1216" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1218", %TName_Nat** %zero, align 8
  %"$gasrem_1219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1220" = icmp ugt i64 1, %"$gasrem_1219"
  br i1 %"$gascmp_1220", label %"$out_of_gas_1221", label %"$have_gas_1222"

"$out_of_gas_1221":                               ; preds = %"$have_gas_1214"
  call void @_out_of_gas()
  br label %"$have_gas_1222"

"$have_gas_1222":                                 ; preds = %"$out_of_gas_1221", %"$have_gas_1214"
  %"$consume_1223" = sub i64 %"$gasrem_1219", 1
  store i64 %"$consume_1223", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_1224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1225" = icmp ugt i64 1, %"$gasrem_1224"
  br i1 %"$gascmp_1225", label %"$out_of_gas_1226", label %"$have_gas_1227"

"$out_of_gas_1226":                               ; preds = %"$have_gas_1222"
  call void @_out_of_gas()
  br label %"$have_gas_1227"

"$have_gas_1227":                                 ; preds = %"$out_of_gas_1226", %"$have_gas_1222"
  %"$consume_1228" = sub i64 %"$gasrem_1224", 1
  store i64 %"$consume_1228", i64* @_gasrem, align 8
  %"$zero_1229" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_1230_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1230_salloc" = call i8* @_salloc(i8* %"$adtval_1230_load", i64 9)
  %"$adtval_1230" = bitcast i8* %"$adtval_1230_salloc" to %CName_Succ*
  %"$adtgep_1231" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1230", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1231", align 1
  %"$adtgep_1232" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1230", i32 0, i32 1
  store %TName_Nat* %"$zero_1229", %TName_Nat** %"$adtgep_1232", align 8
  %"$adtptr_1233" = bitcast %CName_Succ* %"$adtval_1230" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1233", %TName_Nat** %one, align 8
  %"$gasrem_1234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1235" = icmp ugt i64 1, %"$gasrem_1234"
  br i1 %"$gascmp_1235", label %"$out_of_gas_1236", label %"$have_gas_1237"

"$out_of_gas_1236":                               ; preds = %"$have_gas_1227"
  call void @_out_of_gas()
  br label %"$have_gas_1237"

"$have_gas_1237":                                 ; preds = %"$out_of_gas_1236", %"$have_gas_1227"
  %"$consume_1238" = sub i64 %"$gasrem_1234", 1
  store i64 %"$consume_1238", i64* @_gasrem, align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1240" = icmp ugt i64 1, %"$gasrem_1239"
  br i1 %"$gascmp_1240", label %"$out_of_gas_1241", label %"$have_gas_1242"

"$out_of_gas_1241":                               ; preds = %"$have_gas_1237"
  call void @_out_of_gas()
  br label %"$have_gas_1242"

"$have_gas_1242":                                 ; preds = %"$out_of_gas_1241", %"$have_gas_1237"
  %"$consume_1243" = sub i64 %"$gasrem_1239", 1
  store i64 %"$consume_1243", i64* @_gasrem, align 8
  %"$$fundef_166_envp_1244_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_166_envp_1244_salloc" = call i8* @_salloc(i8* %"$$fundef_166_envp_1244_load", i64 24)
  %"$$fundef_166_envp_1244" = bitcast i8* %"$$fundef_166_envp_1244_salloc" to %"$$fundef_166_env_222"*
  %"$$fundef_166_env_voidp_1246" = bitcast %"$$fundef_166_env_222"* %"$$fundef_166_envp_1244" to i8*
  %"$$fundef_166_cloval_1247" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_166_env_222"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_166" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_166_env_voidp_1246", 1
  %"$$fundef_166_env_iter_nat_1248" = getelementptr inbounds %"$$fundef_166_env_222", %"$$fundef_166_env_222"* %"$$fundef_166_envp_1244", i32 0, i32 0
  %"$iter_nat_1249" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1249", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_166_env_iter_nat_1248", align 8
  %"$$fundef_166_env_one_1250" = getelementptr inbounds %"$$fundef_166_env_222", %"$$fundef_166_env_222"* %"$$fundef_166_envp_1244", i32 0, i32 1
  %"$one_1251" = load %TName_Nat*, %TName_Nat** %one, align 8
  store %TName_Nat* %"$one_1251", %TName_Nat** %"$$fundef_166_env_one_1250", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_166_cloval_1247", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$gasrem_1252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1253" = icmp ugt i64 1, %"$gasrem_1252"
  br i1 %"$gascmp_1253", label %"$out_of_gas_1254", label %"$have_gas_1255"

"$out_of_gas_1254":                               ; preds = %"$have_gas_1242"
  call void @_out_of_gas()
  br label %"$have_gas_1255"

"$have_gas_1255":                                 ; preds = %"$out_of_gas_1254", %"$have_gas_1242"
  %"$consume_1256" = sub i64 %"$gasrem_1252", 1
  store i64 %"$consume_1256", i64* @_gasrem, align 8
  %"$$fundef_170_envp_1257_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_170_envp_1257_salloc" = call i8* @_salloc(i8* %"$$fundef_170_envp_1257_load", i64 48)
  %"$$fundef_170_envp_1257" = bitcast i8* %"$$fundef_170_envp_1257_salloc" to %"$$fundef_170_env_220"*
  %"$$fundef_170_env_voidp_1259" = bitcast %"$$fundef_170_env_220"* %"$$fundef_170_envp_1257" to i8*
  %"$$fundef_170_cloval_1260" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_170_env_220"*, %TName_Nat*)* @"$fundef_170" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_170_env_voidp_1259", 1
  %"$$fundef_170_env_f_1261" = getelementptr inbounds %"$$fundef_170_env_220", %"$$fundef_170_env_220"* %"$$fundef_170_envp_1257", i32 0, i32 0
  %"$f_1262" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1262", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_170_env_f_1261", align 8
  %"$$fundef_170_env_iter_nat_nat_1263" = getelementptr inbounds %"$$fundef_170_env_220", %"$$fundef_170_env_220"* %"$$fundef_170_envp_1257", i32 0, i32 1
  %"$iter_nat_nat_1264" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1264", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_170_env_iter_nat_nat_1263", align 8
  %"$$fundef_170_env_nat_succ_1265" = getelementptr inbounds %"$$fundef_170_env_220", %"$$fundef_170_env_220"* %"$$fundef_170_envp_1257", i32 0, i32 2
  %"$nat_succ_1266" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1266", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_170_env_nat_succ_1265", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_170_cloval_1260", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$gasrem_1267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1268" = icmp ugt i64 1, %"$gasrem_1267"
  br i1 %"$gascmp_1268", label %"$out_of_gas_1269", label %"$have_gas_1270"

"$out_of_gas_1269":                               ; preds = %"$have_gas_1255"
  call void @_out_of_gas()
  br label %"$have_gas_1270"

"$have_gas_1270":                                 ; preds = %"$out_of_gas_1269", %"$have_gas_1255"
  %"$consume_1271" = sub i64 %"$gasrem_1267", 1
  store i64 %"$consume_1271", i64* @_gasrem, align 8
  %uint0 = alloca %Uint32, align 8
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 1, %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$have_gas_1270"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$have_gas_1270"
  %"$consume_1276" = sub i64 %"$gasrem_1272", 1
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %uint0, align 4
  %"$gasrem_1277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1278" = icmp ugt i64 1, %"$gasrem_1277"
  br i1 %"$gascmp_1278", label %"$out_of_gas_1279", label %"$have_gas_1280"

"$out_of_gas_1279":                               ; preds = %"$have_gas_1275"
  call void @_out_of_gas()
  br label %"$have_gas_1280"

"$have_gas_1280":                                 ; preds = %"$out_of_gas_1279", %"$have_gas_1275"
  %"$consume_1281" = sub i64 %"$gasrem_1277", 1
  store i64 %"$consume_1281", i64* @_gasrem, align 8
  %uint1 = alloca %Uint32, align 8
  %"$gasrem_1282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1283" = icmp ugt i64 1, %"$gasrem_1282"
  br i1 %"$gascmp_1283", label %"$out_of_gas_1284", label %"$have_gas_1285"

"$out_of_gas_1284":                               ; preds = %"$have_gas_1280"
  call void @_out_of_gas()
  br label %"$have_gas_1285"

"$have_gas_1285":                                 ; preds = %"$out_of_gas_1284", %"$have_gas_1280"
  %"$consume_1286" = sub i64 %"$gasrem_1282", 1
  store i64 %"$consume_1286", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint1, align 4
  %"$gasrem_1287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1288" = icmp ugt i64 1, %"$gasrem_1287"
  br i1 %"$gascmp_1288", label %"$out_of_gas_1289", label %"$have_gas_1290"

"$out_of_gas_1289":                               ; preds = %"$have_gas_1285"
  call void @_out_of_gas()
  br label %"$have_gas_1290"

"$have_gas_1290":                                 ; preds = %"$out_of_gas_1289", %"$have_gas_1285"
  %"$consume_1291" = sub i64 %"$gasrem_1287", 1
  store i64 %"$consume_1291", i64* @_gasrem, align 8
  %uint2 = alloca %Uint32, align 8
  %"$gasrem_1292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1293" = icmp ugt i64 1, %"$gasrem_1292"
  br i1 %"$gascmp_1293", label %"$out_of_gas_1294", label %"$have_gas_1295"

"$out_of_gas_1294":                               ; preds = %"$have_gas_1290"
  call void @_out_of_gas()
  br label %"$have_gas_1295"

"$have_gas_1295":                                 ; preds = %"$out_of_gas_1294", %"$have_gas_1290"
  %"$consume_1296" = sub i64 %"$gasrem_1292", 1
  store i64 %"$consume_1296", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %uint2, align 4
  %"$gasrem_1297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1298" = icmp ugt i64 1, %"$gasrem_1297"
  br i1 %"$gascmp_1298", label %"$out_of_gas_1299", label %"$have_gas_1300"

"$out_of_gas_1299":                               ; preds = %"$have_gas_1295"
  call void @_out_of_gas()
  br label %"$have_gas_1300"

"$have_gas_1300":                                 ; preds = %"$out_of_gas_1299", %"$have_gas_1295"
  %"$consume_1301" = sub i64 %"$gasrem_1297", 1
  store i64 %"$consume_1301", i64* @_gasrem, align 8
  %uint3 = alloca %Uint32, align 8
  %"$gasrem_1302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1303" = icmp ugt i64 1, %"$gasrem_1302"
  br i1 %"$gascmp_1303", label %"$out_of_gas_1304", label %"$have_gas_1305"

"$out_of_gas_1304":                               ; preds = %"$have_gas_1300"
  call void @_out_of_gas()
  br label %"$have_gas_1305"

"$have_gas_1305":                                 ; preds = %"$out_of_gas_1304", %"$have_gas_1300"
  %"$consume_1306" = sub i64 %"$gasrem_1302", 1
  store i64 %"$consume_1306", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %uint3, align 4
  %"$gasrem_1307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1308" = icmp ugt i64 1, %"$gasrem_1307"
  br i1 %"$gascmp_1308", label %"$out_of_gas_1309", label %"$have_gas_1310"

"$out_of_gas_1309":                               ; preds = %"$have_gas_1305"
  call void @_out_of_gas()
  br label %"$have_gas_1310"

"$have_gas_1310":                                 ; preds = %"$out_of_gas_1309", %"$have_gas_1305"
  %"$consume_1311" = sub i64 %"$gasrem_1307", 1
  store i64 %"$consume_1311", i64* @_gasrem, align 8
  %uint4 = alloca %Uint32, align 8
  %"$gasrem_1312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1313" = icmp ugt i64 1, %"$gasrem_1312"
  br i1 %"$gascmp_1313", label %"$out_of_gas_1314", label %"$have_gas_1315"

"$out_of_gas_1314":                               ; preds = %"$have_gas_1310"
  call void @_out_of_gas()
  br label %"$have_gas_1315"

"$have_gas_1315":                                 ; preds = %"$out_of_gas_1314", %"$have_gas_1310"
  %"$consume_1316" = sub i64 %"$gasrem_1312", 1
  store i64 %"$consume_1316", i64* @_gasrem, align 8
  store %Uint32 { i32 4 }, %Uint32* %uint4, align 4
  %"$gasrem_1317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1318" = icmp ugt i64 1, %"$gasrem_1317"
  br i1 %"$gascmp_1318", label %"$out_of_gas_1319", label %"$have_gas_1320"

"$out_of_gas_1319":                               ; preds = %"$have_gas_1315"
  call void @_out_of_gas()
  br label %"$have_gas_1320"

"$have_gas_1320":                                 ; preds = %"$out_of_gas_1319", %"$have_gas_1315"
  %"$consume_1321" = sub i64 %"$gasrem_1317", 1
  store i64 %"$consume_1321", i64* @_gasrem, align 8
  %n0 = alloca %TName_Nat*, align 8
  %"$uint0_1322" = load %Uint32, %Uint32* %uint0, align 4
  %"$valueof_1323" = extractvalue %Uint32 %"$uint0_1322", 0
  %"$valueof_1324" = zext i32 %"$valueof_1323" to i64
  %"$gasrem_1325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1326" = icmp ugt i64 %"$valueof_1324", %"$gasrem_1325"
  br i1 %"$gascmp_1326", label %"$out_of_gas_1327", label %"$have_gas_1328"

"$out_of_gas_1327":                               ; preds = %"$have_gas_1320"
  call void @_out_of_gas()
  br label %"$have_gas_1328"

"$have_gas_1328":                                 ; preds = %"$out_of_gas_1327", %"$have_gas_1320"
  %"$consume_1329" = sub i64 %"$gasrem_1325", %"$valueof_1324"
  store i64 %"$consume_1329", i64* @_gasrem, align 8
  %"$execptr_load_1330" = load i8*, i8** @_execptr, align 8
  %"$uint0_1331" = load %Uint32, %Uint32* %uint0, align 4
  %"$to_nat_call_1332" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1330", %Uint32 %"$uint0_1331")
  store %TName_Nat* %"$to_nat_call_1332", %TName_Nat** %n0, align 8
  %"$gasrem_1334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1335" = icmp ugt i64 1, %"$gasrem_1334"
  br i1 %"$gascmp_1335", label %"$out_of_gas_1336", label %"$have_gas_1337"

"$out_of_gas_1336":                               ; preds = %"$have_gas_1328"
  call void @_out_of_gas()
  br label %"$have_gas_1337"

"$have_gas_1337":                                 ; preds = %"$out_of_gas_1336", %"$have_gas_1328"
  %"$consume_1338" = sub i64 %"$gasrem_1334", 1
  store i64 %"$consume_1338", i64* @_gasrem, align 8
  %n1 = alloca %TName_Nat*, align 8
  %"$uint1_1339" = load %Uint32, %Uint32* %uint1, align 4
  %"$valueof_1340" = extractvalue %Uint32 %"$uint1_1339", 0
  %"$valueof_1341" = zext i32 %"$valueof_1340" to i64
  %"$gasrem_1342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1343" = icmp ugt i64 %"$valueof_1341", %"$gasrem_1342"
  br i1 %"$gascmp_1343", label %"$out_of_gas_1344", label %"$have_gas_1345"

"$out_of_gas_1344":                               ; preds = %"$have_gas_1337"
  call void @_out_of_gas()
  br label %"$have_gas_1345"

"$have_gas_1345":                                 ; preds = %"$out_of_gas_1344", %"$have_gas_1337"
  %"$consume_1346" = sub i64 %"$gasrem_1342", %"$valueof_1341"
  store i64 %"$consume_1346", i64* @_gasrem, align 8
  %"$execptr_load_1347" = load i8*, i8** @_execptr, align 8
  %"$uint1_1348" = load %Uint32, %Uint32* %uint1, align 4
  %"$to_nat_call_1349" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1347", %Uint32 %"$uint1_1348")
  store %TName_Nat* %"$to_nat_call_1349", %TName_Nat** %n1, align 8
  %"$gasrem_1351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1352" = icmp ugt i64 1, %"$gasrem_1351"
  br i1 %"$gascmp_1352", label %"$out_of_gas_1353", label %"$have_gas_1354"

"$out_of_gas_1353":                               ; preds = %"$have_gas_1345"
  call void @_out_of_gas()
  br label %"$have_gas_1354"

"$have_gas_1354":                                 ; preds = %"$out_of_gas_1353", %"$have_gas_1345"
  %"$consume_1355" = sub i64 %"$gasrem_1351", 1
  store i64 %"$consume_1355", i64* @_gasrem, align 8
  %n2 = alloca %TName_Nat*, align 8
  %"$uint2_1356" = load %Uint32, %Uint32* %uint2, align 4
  %"$valueof_1357" = extractvalue %Uint32 %"$uint2_1356", 0
  %"$valueof_1358" = zext i32 %"$valueof_1357" to i64
  %"$gasrem_1359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1360" = icmp ugt i64 %"$valueof_1358", %"$gasrem_1359"
  br i1 %"$gascmp_1360", label %"$out_of_gas_1361", label %"$have_gas_1362"

"$out_of_gas_1361":                               ; preds = %"$have_gas_1354"
  call void @_out_of_gas()
  br label %"$have_gas_1362"

"$have_gas_1362":                                 ; preds = %"$out_of_gas_1361", %"$have_gas_1354"
  %"$consume_1363" = sub i64 %"$gasrem_1359", %"$valueof_1358"
  store i64 %"$consume_1363", i64* @_gasrem, align 8
  %"$execptr_load_1364" = load i8*, i8** @_execptr, align 8
  %"$uint2_1365" = load %Uint32, %Uint32* %uint2, align 4
  %"$to_nat_call_1366" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1364", %Uint32 %"$uint2_1365")
  store %TName_Nat* %"$to_nat_call_1366", %TName_Nat** %n2, align 8
  %"$gasrem_1368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1369" = icmp ugt i64 1, %"$gasrem_1368"
  br i1 %"$gascmp_1369", label %"$out_of_gas_1370", label %"$have_gas_1371"

"$out_of_gas_1370":                               ; preds = %"$have_gas_1362"
  call void @_out_of_gas()
  br label %"$have_gas_1371"

"$have_gas_1371":                                 ; preds = %"$out_of_gas_1370", %"$have_gas_1362"
  %"$consume_1372" = sub i64 %"$gasrem_1368", 1
  store i64 %"$consume_1372", i64* @_gasrem, align 8
  %n3 = alloca %TName_Nat*, align 8
  %"$uint3_1373" = load %Uint32, %Uint32* %uint3, align 4
  %"$valueof_1374" = extractvalue %Uint32 %"$uint3_1373", 0
  %"$valueof_1375" = zext i32 %"$valueof_1374" to i64
  %"$gasrem_1376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1377" = icmp ugt i64 %"$valueof_1375", %"$gasrem_1376"
  br i1 %"$gascmp_1377", label %"$out_of_gas_1378", label %"$have_gas_1379"

"$out_of_gas_1378":                               ; preds = %"$have_gas_1371"
  call void @_out_of_gas()
  br label %"$have_gas_1379"

"$have_gas_1379":                                 ; preds = %"$out_of_gas_1378", %"$have_gas_1371"
  %"$consume_1380" = sub i64 %"$gasrem_1376", %"$valueof_1375"
  store i64 %"$consume_1380", i64* @_gasrem, align 8
  %"$execptr_load_1381" = load i8*, i8** @_execptr, align 8
  %"$uint3_1382" = load %Uint32, %Uint32* %uint3, align 4
  %"$to_nat_call_1383" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1381", %Uint32 %"$uint3_1382")
  store %TName_Nat* %"$to_nat_call_1383", %TName_Nat** %n3, align 8
  %"$gasrem_1385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1386" = icmp ugt i64 1, %"$gasrem_1385"
  br i1 %"$gascmp_1386", label %"$out_of_gas_1387", label %"$have_gas_1388"

"$out_of_gas_1387":                               ; preds = %"$have_gas_1379"
  call void @_out_of_gas()
  br label %"$have_gas_1388"

"$have_gas_1388":                                 ; preds = %"$out_of_gas_1387", %"$have_gas_1379"
  %"$consume_1389" = sub i64 %"$gasrem_1385", 1
  store i64 %"$consume_1389", i64* @_gasrem, align 8
  %n4 = alloca %TName_Nat*, align 8
  %"$uint4_1390" = load %Uint32, %Uint32* %uint4, align 4
  %"$valueof_1391" = extractvalue %Uint32 %"$uint4_1390", 0
  %"$valueof_1392" = zext i32 %"$valueof_1391" to i64
  %"$gasrem_1393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1394" = icmp ugt i64 %"$valueof_1392", %"$gasrem_1393"
  br i1 %"$gascmp_1394", label %"$out_of_gas_1395", label %"$have_gas_1396"

"$out_of_gas_1395":                               ; preds = %"$have_gas_1388"
  call void @_out_of_gas()
  br label %"$have_gas_1396"

"$have_gas_1396":                                 ; preds = %"$out_of_gas_1395", %"$have_gas_1388"
  %"$consume_1397" = sub i64 %"$gasrem_1393", %"$valueof_1392"
  store i64 %"$consume_1397", i64* @_gasrem, align 8
  %"$execptr_load_1398" = load i8*, i8** @_execptr, align 8
  %"$uint4_1399" = load %Uint32, %Uint32* %uint4, align 4
  %"$to_nat_call_1400" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1398", %Uint32 %"$uint4_1399")
  store %TName_Nat* %"$to_nat_call_1400", %TName_Nat** %n4, align 8
  %"$gasrem_1402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1403" = icmp ugt i64 1, %"$gasrem_1402"
  br i1 %"$gascmp_1403", label %"$out_of_gas_1404", label %"$have_gas_1405"

"$out_of_gas_1404":                               ; preds = %"$have_gas_1396"
  call void @_out_of_gas()
  br label %"$have_gas_1405"

"$have_gas_1405":                                 ; preds = %"$out_of_gas_1404", %"$have_gas_1396"
  %"$consume_1406" = sub i64 %"$gasrem_1402", 1
  store i64 %"$consume_1406", i64* @_gasrem, align 8
  %ack00 = alloca %TName_Nat*, align 8
  %"$gasrem_1407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1408" = icmp ugt i64 1, %"$gasrem_1407"
  br i1 %"$gascmp_1408", label %"$out_of_gas_1409", label %"$have_gas_1410"

"$out_of_gas_1409":                               ; preds = %"$have_gas_1405"
  call void @_out_of_gas()
  br label %"$have_gas_1410"

"$have_gas_1410":                                 ; preds = %"$out_of_gas_1409", %"$have_gas_1405"
  %"$consume_1411" = sub i64 %"$gasrem_1407", 1
  store i64 %"$consume_1411", i64* @_gasrem, align 8
  %"$ackermann_47" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1412" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1413" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1412", 0
  %"$ackermann_envptr_1414" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1412", 1
  %"$n0_1415" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1416" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1413"(i8* %"$ackermann_envptr_1414", %TName_Nat* %"$n0_1415")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1416", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_47", align 8
  %"$ackermann_48" = alloca %TName_Nat*, align 8
  %"$$ackermann_47_1417" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_47", align 8
  %"$$ackermann_47_fptr_1418" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_47_1417", 0
  %"$$ackermann_47_envptr_1419" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_47_1417", 1
  %"$n0_1420" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_47_call_1421" = call %TName_Nat* %"$$ackermann_47_fptr_1418"(i8* %"$$ackermann_47_envptr_1419", %TName_Nat* %"$n0_1420")
  store %TName_Nat* %"$$ackermann_47_call_1421", %TName_Nat** %"$ackermann_48", align 8
  %"$$ackermann_48_1422" = load %TName_Nat*, %TName_Nat** %"$ackermann_48", align 8
  store %TName_Nat* %"$$ackermann_48_1422", %TName_Nat** %ack00, align 8
  %"$gasrem_1423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1424" = icmp ugt i64 1, %"$gasrem_1423"
  br i1 %"$gascmp_1424", label %"$out_of_gas_1425", label %"$have_gas_1426"

"$out_of_gas_1425":                               ; preds = %"$have_gas_1410"
  call void @_out_of_gas()
  br label %"$have_gas_1426"

"$have_gas_1426":                                 ; preds = %"$out_of_gas_1425", %"$have_gas_1410"
  %"$consume_1427" = sub i64 %"$gasrem_1423", 1
  store i64 %"$consume_1427", i64* @_gasrem, align 8
  %ack01 = alloca %TName_Nat*, align 8
  %"$gasrem_1428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1429" = icmp ugt i64 1, %"$gasrem_1428"
  br i1 %"$gascmp_1429", label %"$out_of_gas_1430", label %"$have_gas_1431"

"$out_of_gas_1430":                               ; preds = %"$have_gas_1426"
  call void @_out_of_gas()
  br label %"$have_gas_1431"

"$have_gas_1431":                                 ; preds = %"$out_of_gas_1430", %"$have_gas_1426"
  %"$consume_1432" = sub i64 %"$gasrem_1428", 1
  store i64 %"$consume_1432", i64* @_gasrem, align 8
  %"$ackermann_49" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1433" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1434" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1433", 0
  %"$ackermann_envptr_1435" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1433", 1
  %"$n0_1436" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1437" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1434"(i8* %"$ackermann_envptr_1435", %TName_Nat* %"$n0_1436")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1437", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_49", align 8
  %"$ackermann_50" = alloca %TName_Nat*, align 8
  %"$$ackermann_49_1438" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_49", align 8
  %"$$ackermann_49_fptr_1439" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_49_1438", 0
  %"$$ackermann_49_envptr_1440" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_49_1438", 1
  %"$n1_1441" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_49_call_1442" = call %TName_Nat* %"$$ackermann_49_fptr_1439"(i8* %"$$ackermann_49_envptr_1440", %TName_Nat* %"$n1_1441")
  store %TName_Nat* %"$$ackermann_49_call_1442", %TName_Nat** %"$ackermann_50", align 8
  %"$$ackermann_50_1443" = load %TName_Nat*, %TName_Nat** %"$ackermann_50", align 8
  store %TName_Nat* %"$$ackermann_50_1443", %TName_Nat** %ack01, align 8
  %"$gasrem_1444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1445" = icmp ugt i64 1, %"$gasrem_1444"
  br i1 %"$gascmp_1445", label %"$out_of_gas_1446", label %"$have_gas_1447"

"$out_of_gas_1446":                               ; preds = %"$have_gas_1431"
  call void @_out_of_gas()
  br label %"$have_gas_1447"

"$have_gas_1447":                                 ; preds = %"$out_of_gas_1446", %"$have_gas_1431"
  %"$consume_1448" = sub i64 %"$gasrem_1444", 1
  store i64 %"$consume_1448", i64* @_gasrem, align 8
  %ack02 = alloca %TName_Nat*, align 8
  %"$gasrem_1449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1450" = icmp ugt i64 1, %"$gasrem_1449"
  br i1 %"$gascmp_1450", label %"$out_of_gas_1451", label %"$have_gas_1452"

"$out_of_gas_1451":                               ; preds = %"$have_gas_1447"
  call void @_out_of_gas()
  br label %"$have_gas_1452"

"$have_gas_1452":                                 ; preds = %"$out_of_gas_1451", %"$have_gas_1447"
  %"$consume_1453" = sub i64 %"$gasrem_1449", 1
  store i64 %"$consume_1453", i64* @_gasrem, align 8
  %"$ackermann_51" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1454" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1455" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1454", 0
  %"$ackermann_envptr_1456" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1454", 1
  %"$n0_1457" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1458" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1455"(i8* %"$ackermann_envptr_1456", %TName_Nat* %"$n0_1457")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1458", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_51", align 8
  %"$ackermann_52" = alloca %TName_Nat*, align 8
  %"$$ackermann_51_1459" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_51", align 8
  %"$$ackermann_51_fptr_1460" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_51_1459", 0
  %"$$ackermann_51_envptr_1461" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_51_1459", 1
  %"$n2_1462" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_51_call_1463" = call %TName_Nat* %"$$ackermann_51_fptr_1460"(i8* %"$$ackermann_51_envptr_1461", %TName_Nat* %"$n2_1462")
  store %TName_Nat* %"$$ackermann_51_call_1463", %TName_Nat** %"$ackermann_52", align 8
  %"$$ackermann_52_1464" = load %TName_Nat*, %TName_Nat** %"$ackermann_52", align 8
  store %TName_Nat* %"$$ackermann_52_1464", %TName_Nat** %ack02, align 8
  %"$gasrem_1465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1466" = icmp ugt i64 1, %"$gasrem_1465"
  br i1 %"$gascmp_1466", label %"$out_of_gas_1467", label %"$have_gas_1468"

"$out_of_gas_1467":                               ; preds = %"$have_gas_1452"
  call void @_out_of_gas()
  br label %"$have_gas_1468"

"$have_gas_1468":                                 ; preds = %"$out_of_gas_1467", %"$have_gas_1452"
  %"$consume_1469" = sub i64 %"$gasrem_1465", 1
  store i64 %"$consume_1469", i64* @_gasrem, align 8
  %ack03 = alloca %TName_Nat*, align 8
  %"$gasrem_1470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1471" = icmp ugt i64 1, %"$gasrem_1470"
  br i1 %"$gascmp_1471", label %"$out_of_gas_1472", label %"$have_gas_1473"

"$out_of_gas_1472":                               ; preds = %"$have_gas_1468"
  call void @_out_of_gas()
  br label %"$have_gas_1473"

"$have_gas_1473":                                 ; preds = %"$out_of_gas_1472", %"$have_gas_1468"
  %"$consume_1474" = sub i64 %"$gasrem_1470", 1
  store i64 %"$consume_1474", i64* @_gasrem, align 8
  %"$ackermann_53" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1475" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1476" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1475", 0
  %"$ackermann_envptr_1477" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1475", 1
  %"$n0_1478" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1479" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1476"(i8* %"$ackermann_envptr_1477", %TName_Nat* %"$n0_1478")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1479", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_53", align 8
  %"$ackermann_54" = alloca %TName_Nat*, align 8
  %"$$ackermann_53_1480" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_53", align 8
  %"$$ackermann_53_fptr_1481" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_53_1480", 0
  %"$$ackermann_53_envptr_1482" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_53_1480", 1
  %"$n3_1483" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_53_call_1484" = call %TName_Nat* %"$$ackermann_53_fptr_1481"(i8* %"$$ackermann_53_envptr_1482", %TName_Nat* %"$n3_1483")
  store %TName_Nat* %"$$ackermann_53_call_1484", %TName_Nat** %"$ackermann_54", align 8
  %"$$ackermann_54_1485" = load %TName_Nat*, %TName_Nat** %"$ackermann_54", align 8
  store %TName_Nat* %"$$ackermann_54_1485", %TName_Nat** %ack03, align 8
  %"$gasrem_1486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1487" = icmp ugt i64 1, %"$gasrem_1486"
  br i1 %"$gascmp_1487", label %"$out_of_gas_1488", label %"$have_gas_1489"

"$out_of_gas_1488":                               ; preds = %"$have_gas_1473"
  call void @_out_of_gas()
  br label %"$have_gas_1489"

"$have_gas_1489":                                 ; preds = %"$out_of_gas_1488", %"$have_gas_1473"
  %"$consume_1490" = sub i64 %"$gasrem_1486", 1
  store i64 %"$consume_1490", i64* @_gasrem, align 8
  %ack04 = alloca %TName_Nat*, align 8
  %"$gasrem_1491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1492" = icmp ugt i64 1, %"$gasrem_1491"
  br i1 %"$gascmp_1492", label %"$out_of_gas_1493", label %"$have_gas_1494"

"$out_of_gas_1493":                               ; preds = %"$have_gas_1489"
  call void @_out_of_gas()
  br label %"$have_gas_1494"

"$have_gas_1494":                                 ; preds = %"$out_of_gas_1493", %"$have_gas_1489"
  %"$consume_1495" = sub i64 %"$gasrem_1491", 1
  store i64 %"$consume_1495", i64* @_gasrem, align 8
  %"$ackermann_55" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1496" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1497" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1496", 0
  %"$ackermann_envptr_1498" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1496", 1
  %"$n0_1499" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$ackermann_call_1500" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1497"(i8* %"$ackermann_envptr_1498", %TName_Nat* %"$n0_1499")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1500", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_55", align 8
  %"$ackermann_56" = alloca %TName_Nat*, align 8
  %"$$ackermann_55_1501" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_55", align 8
  %"$$ackermann_55_fptr_1502" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_55_1501", 0
  %"$$ackermann_55_envptr_1503" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_55_1501", 1
  %"$n4_1504" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_55_call_1505" = call %TName_Nat* %"$$ackermann_55_fptr_1502"(i8* %"$$ackermann_55_envptr_1503", %TName_Nat* %"$n4_1504")
  store %TName_Nat* %"$$ackermann_55_call_1505", %TName_Nat** %"$ackermann_56", align 8
  %"$$ackermann_56_1506" = load %TName_Nat*, %TName_Nat** %"$ackermann_56", align 8
  store %TName_Nat* %"$$ackermann_56_1506", %TName_Nat** %ack04, align 8
  %"$gasrem_1507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1508" = icmp ugt i64 1, %"$gasrem_1507"
  br i1 %"$gascmp_1508", label %"$out_of_gas_1509", label %"$have_gas_1510"

"$out_of_gas_1509":                               ; preds = %"$have_gas_1494"
  call void @_out_of_gas()
  br label %"$have_gas_1510"

"$have_gas_1510":                                 ; preds = %"$out_of_gas_1509", %"$have_gas_1494"
  %"$consume_1511" = sub i64 %"$gasrem_1507", 1
  store i64 %"$consume_1511", i64* @_gasrem, align 8
  %ack10 = alloca %TName_Nat*, align 8
  %"$gasrem_1512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1513" = icmp ugt i64 1, %"$gasrem_1512"
  br i1 %"$gascmp_1513", label %"$out_of_gas_1514", label %"$have_gas_1515"

"$out_of_gas_1514":                               ; preds = %"$have_gas_1510"
  call void @_out_of_gas()
  br label %"$have_gas_1515"

"$have_gas_1515":                                 ; preds = %"$out_of_gas_1514", %"$have_gas_1510"
  %"$consume_1516" = sub i64 %"$gasrem_1512", 1
  store i64 %"$consume_1516", i64* @_gasrem, align 8
  %"$ackermann_57" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1517" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1518" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1517", 0
  %"$ackermann_envptr_1519" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1517", 1
  %"$n1_1520" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1521" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1518"(i8* %"$ackermann_envptr_1519", %TName_Nat* %"$n1_1520")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1521", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_57", align 8
  %"$ackermann_58" = alloca %TName_Nat*, align 8
  %"$$ackermann_57_1522" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_57", align 8
  %"$$ackermann_57_fptr_1523" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_57_1522", 0
  %"$$ackermann_57_envptr_1524" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_57_1522", 1
  %"$n0_1525" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_57_call_1526" = call %TName_Nat* %"$$ackermann_57_fptr_1523"(i8* %"$$ackermann_57_envptr_1524", %TName_Nat* %"$n0_1525")
  store %TName_Nat* %"$$ackermann_57_call_1526", %TName_Nat** %"$ackermann_58", align 8
  %"$$ackermann_58_1527" = load %TName_Nat*, %TName_Nat** %"$ackermann_58", align 8
  store %TName_Nat* %"$$ackermann_58_1527", %TName_Nat** %ack10, align 8
  %"$gasrem_1528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1529" = icmp ugt i64 1, %"$gasrem_1528"
  br i1 %"$gascmp_1529", label %"$out_of_gas_1530", label %"$have_gas_1531"

"$out_of_gas_1530":                               ; preds = %"$have_gas_1515"
  call void @_out_of_gas()
  br label %"$have_gas_1531"

"$have_gas_1531":                                 ; preds = %"$out_of_gas_1530", %"$have_gas_1515"
  %"$consume_1532" = sub i64 %"$gasrem_1528", 1
  store i64 %"$consume_1532", i64* @_gasrem, align 8
  %ack11 = alloca %TName_Nat*, align 8
  %"$gasrem_1533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1534" = icmp ugt i64 1, %"$gasrem_1533"
  br i1 %"$gascmp_1534", label %"$out_of_gas_1535", label %"$have_gas_1536"

"$out_of_gas_1535":                               ; preds = %"$have_gas_1531"
  call void @_out_of_gas()
  br label %"$have_gas_1536"

"$have_gas_1536":                                 ; preds = %"$out_of_gas_1535", %"$have_gas_1531"
  %"$consume_1537" = sub i64 %"$gasrem_1533", 1
  store i64 %"$consume_1537", i64* @_gasrem, align 8
  %"$ackermann_59" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1538" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1539" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1538", 0
  %"$ackermann_envptr_1540" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1538", 1
  %"$n1_1541" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1542" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1539"(i8* %"$ackermann_envptr_1540", %TName_Nat* %"$n1_1541")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1542", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_59", align 8
  %"$ackermann_60" = alloca %TName_Nat*, align 8
  %"$$ackermann_59_1543" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_59", align 8
  %"$$ackermann_59_fptr_1544" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_59_1543", 0
  %"$$ackermann_59_envptr_1545" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_59_1543", 1
  %"$n1_1546" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_59_call_1547" = call %TName_Nat* %"$$ackermann_59_fptr_1544"(i8* %"$$ackermann_59_envptr_1545", %TName_Nat* %"$n1_1546")
  store %TName_Nat* %"$$ackermann_59_call_1547", %TName_Nat** %"$ackermann_60", align 8
  %"$$ackermann_60_1548" = load %TName_Nat*, %TName_Nat** %"$ackermann_60", align 8
  store %TName_Nat* %"$$ackermann_60_1548", %TName_Nat** %ack11, align 8
  %"$gasrem_1549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1550" = icmp ugt i64 1, %"$gasrem_1549"
  br i1 %"$gascmp_1550", label %"$out_of_gas_1551", label %"$have_gas_1552"

"$out_of_gas_1551":                               ; preds = %"$have_gas_1536"
  call void @_out_of_gas()
  br label %"$have_gas_1552"

"$have_gas_1552":                                 ; preds = %"$out_of_gas_1551", %"$have_gas_1536"
  %"$consume_1553" = sub i64 %"$gasrem_1549", 1
  store i64 %"$consume_1553", i64* @_gasrem, align 8
  %ack12 = alloca %TName_Nat*, align 8
  %"$gasrem_1554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1555" = icmp ugt i64 1, %"$gasrem_1554"
  br i1 %"$gascmp_1555", label %"$out_of_gas_1556", label %"$have_gas_1557"

"$out_of_gas_1556":                               ; preds = %"$have_gas_1552"
  call void @_out_of_gas()
  br label %"$have_gas_1557"

"$have_gas_1557":                                 ; preds = %"$out_of_gas_1556", %"$have_gas_1552"
  %"$consume_1558" = sub i64 %"$gasrem_1554", 1
  store i64 %"$consume_1558", i64* @_gasrem, align 8
  %"$ackermann_61" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1559" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1560" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1559", 0
  %"$ackermann_envptr_1561" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1559", 1
  %"$n1_1562" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1563" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1560"(i8* %"$ackermann_envptr_1561", %TName_Nat* %"$n1_1562")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1563", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_61", align 8
  %"$ackermann_62" = alloca %TName_Nat*, align 8
  %"$$ackermann_61_1564" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_61", align 8
  %"$$ackermann_61_fptr_1565" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_61_1564", 0
  %"$$ackermann_61_envptr_1566" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_61_1564", 1
  %"$n2_1567" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_61_call_1568" = call %TName_Nat* %"$$ackermann_61_fptr_1565"(i8* %"$$ackermann_61_envptr_1566", %TName_Nat* %"$n2_1567")
  store %TName_Nat* %"$$ackermann_61_call_1568", %TName_Nat** %"$ackermann_62", align 8
  %"$$ackermann_62_1569" = load %TName_Nat*, %TName_Nat** %"$ackermann_62", align 8
  store %TName_Nat* %"$$ackermann_62_1569", %TName_Nat** %ack12, align 8
  %"$gasrem_1570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1571" = icmp ugt i64 1, %"$gasrem_1570"
  br i1 %"$gascmp_1571", label %"$out_of_gas_1572", label %"$have_gas_1573"

"$out_of_gas_1572":                               ; preds = %"$have_gas_1557"
  call void @_out_of_gas()
  br label %"$have_gas_1573"

"$have_gas_1573":                                 ; preds = %"$out_of_gas_1572", %"$have_gas_1557"
  %"$consume_1574" = sub i64 %"$gasrem_1570", 1
  store i64 %"$consume_1574", i64* @_gasrem, align 8
  %ack13 = alloca %TName_Nat*, align 8
  %"$gasrem_1575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1576" = icmp ugt i64 1, %"$gasrem_1575"
  br i1 %"$gascmp_1576", label %"$out_of_gas_1577", label %"$have_gas_1578"

"$out_of_gas_1577":                               ; preds = %"$have_gas_1573"
  call void @_out_of_gas()
  br label %"$have_gas_1578"

"$have_gas_1578":                                 ; preds = %"$out_of_gas_1577", %"$have_gas_1573"
  %"$consume_1579" = sub i64 %"$gasrem_1575", 1
  store i64 %"$consume_1579", i64* @_gasrem, align 8
  %"$ackermann_63" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1580" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1581" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1580", 0
  %"$ackermann_envptr_1582" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1580", 1
  %"$n1_1583" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1584" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1581"(i8* %"$ackermann_envptr_1582", %TName_Nat* %"$n1_1583")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1584", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_63", align 8
  %"$ackermann_64" = alloca %TName_Nat*, align 8
  %"$$ackermann_63_1585" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_63", align 8
  %"$$ackermann_63_fptr_1586" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_63_1585", 0
  %"$$ackermann_63_envptr_1587" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_63_1585", 1
  %"$n3_1588" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_63_call_1589" = call %TName_Nat* %"$$ackermann_63_fptr_1586"(i8* %"$$ackermann_63_envptr_1587", %TName_Nat* %"$n3_1588")
  store %TName_Nat* %"$$ackermann_63_call_1589", %TName_Nat** %"$ackermann_64", align 8
  %"$$ackermann_64_1590" = load %TName_Nat*, %TName_Nat** %"$ackermann_64", align 8
  store %TName_Nat* %"$$ackermann_64_1590", %TName_Nat** %ack13, align 8
  %"$gasrem_1591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1592" = icmp ugt i64 1, %"$gasrem_1591"
  br i1 %"$gascmp_1592", label %"$out_of_gas_1593", label %"$have_gas_1594"

"$out_of_gas_1593":                               ; preds = %"$have_gas_1578"
  call void @_out_of_gas()
  br label %"$have_gas_1594"

"$have_gas_1594":                                 ; preds = %"$out_of_gas_1593", %"$have_gas_1578"
  %"$consume_1595" = sub i64 %"$gasrem_1591", 1
  store i64 %"$consume_1595", i64* @_gasrem, align 8
  %ack14 = alloca %TName_Nat*, align 8
  %"$gasrem_1596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1597" = icmp ugt i64 1, %"$gasrem_1596"
  br i1 %"$gascmp_1597", label %"$out_of_gas_1598", label %"$have_gas_1599"

"$out_of_gas_1598":                               ; preds = %"$have_gas_1594"
  call void @_out_of_gas()
  br label %"$have_gas_1599"

"$have_gas_1599":                                 ; preds = %"$out_of_gas_1598", %"$have_gas_1594"
  %"$consume_1600" = sub i64 %"$gasrem_1596", 1
  store i64 %"$consume_1600", i64* @_gasrem, align 8
  %"$ackermann_65" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1601" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1602" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1601", 0
  %"$ackermann_envptr_1603" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1601", 1
  %"$n1_1604" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$ackermann_call_1605" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1602"(i8* %"$ackermann_envptr_1603", %TName_Nat* %"$n1_1604")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1605", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_65", align 8
  %"$ackermann_66" = alloca %TName_Nat*, align 8
  %"$$ackermann_65_1606" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_65", align 8
  %"$$ackermann_65_fptr_1607" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_65_1606", 0
  %"$$ackermann_65_envptr_1608" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_65_1606", 1
  %"$n4_1609" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_65_call_1610" = call %TName_Nat* %"$$ackermann_65_fptr_1607"(i8* %"$$ackermann_65_envptr_1608", %TName_Nat* %"$n4_1609")
  store %TName_Nat* %"$$ackermann_65_call_1610", %TName_Nat** %"$ackermann_66", align 8
  %"$$ackermann_66_1611" = load %TName_Nat*, %TName_Nat** %"$ackermann_66", align 8
  store %TName_Nat* %"$$ackermann_66_1611", %TName_Nat** %ack14, align 8
  %"$gasrem_1612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1613" = icmp ugt i64 1, %"$gasrem_1612"
  br i1 %"$gascmp_1613", label %"$out_of_gas_1614", label %"$have_gas_1615"

"$out_of_gas_1614":                               ; preds = %"$have_gas_1599"
  call void @_out_of_gas()
  br label %"$have_gas_1615"

"$have_gas_1615":                                 ; preds = %"$out_of_gas_1614", %"$have_gas_1599"
  %"$consume_1616" = sub i64 %"$gasrem_1612", 1
  store i64 %"$consume_1616", i64* @_gasrem, align 8
  %ack20 = alloca %TName_Nat*, align 8
  %"$gasrem_1617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1618" = icmp ugt i64 1, %"$gasrem_1617"
  br i1 %"$gascmp_1618", label %"$out_of_gas_1619", label %"$have_gas_1620"

"$out_of_gas_1619":                               ; preds = %"$have_gas_1615"
  call void @_out_of_gas()
  br label %"$have_gas_1620"

"$have_gas_1620":                                 ; preds = %"$out_of_gas_1619", %"$have_gas_1615"
  %"$consume_1621" = sub i64 %"$gasrem_1617", 1
  store i64 %"$consume_1621", i64* @_gasrem, align 8
  %"$ackermann_67" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1622" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1623" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1622", 0
  %"$ackermann_envptr_1624" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1622", 1
  %"$n2_1625" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1626" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1623"(i8* %"$ackermann_envptr_1624", %TName_Nat* %"$n2_1625")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1626", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_67", align 8
  %"$ackermann_68" = alloca %TName_Nat*, align 8
  %"$$ackermann_67_1627" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_67", align 8
  %"$$ackermann_67_fptr_1628" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_67_1627", 0
  %"$$ackermann_67_envptr_1629" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_67_1627", 1
  %"$n0_1630" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_67_call_1631" = call %TName_Nat* %"$$ackermann_67_fptr_1628"(i8* %"$$ackermann_67_envptr_1629", %TName_Nat* %"$n0_1630")
  store %TName_Nat* %"$$ackermann_67_call_1631", %TName_Nat** %"$ackermann_68", align 8
  %"$$ackermann_68_1632" = load %TName_Nat*, %TName_Nat** %"$ackermann_68", align 8
  store %TName_Nat* %"$$ackermann_68_1632", %TName_Nat** %ack20, align 8
  %"$gasrem_1633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1634" = icmp ugt i64 1, %"$gasrem_1633"
  br i1 %"$gascmp_1634", label %"$out_of_gas_1635", label %"$have_gas_1636"

"$out_of_gas_1635":                               ; preds = %"$have_gas_1620"
  call void @_out_of_gas()
  br label %"$have_gas_1636"

"$have_gas_1636":                                 ; preds = %"$out_of_gas_1635", %"$have_gas_1620"
  %"$consume_1637" = sub i64 %"$gasrem_1633", 1
  store i64 %"$consume_1637", i64* @_gasrem, align 8
  %ack21 = alloca %TName_Nat*, align 8
  %"$gasrem_1638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1639" = icmp ugt i64 1, %"$gasrem_1638"
  br i1 %"$gascmp_1639", label %"$out_of_gas_1640", label %"$have_gas_1641"

"$out_of_gas_1640":                               ; preds = %"$have_gas_1636"
  call void @_out_of_gas()
  br label %"$have_gas_1641"

"$have_gas_1641":                                 ; preds = %"$out_of_gas_1640", %"$have_gas_1636"
  %"$consume_1642" = sub i64 %"$gasrem_1638", 1
  store i64 %"$consume_1642", i64* @_gasrem, align 8
  %"$ackermann_69" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1643" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1644" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1643", 0
  %"$ackermann_envptr_1645" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1643", 1
  %"$n2_1646" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1647" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1644"(i8* %"$ackermann_envptr_1645", %TName_Nat* %"$n2_1646")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1647", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_69", align 8
  %"$ackermann_70" = alloca %TName_Nat*, align 8
  %"$$ackermann_69_1648" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_69", align 8
  %"$$ackermann_69_fptr_1649" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_69_1648", 0
  %"$$ackermann_69_envptr_1650" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_69_1648", 1
  %"$n1_1651" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_69_call_1652" = call %TName_Nat* %"$$ackermann_69_fptr_1649"(i8* %"$$ackermann_69_envptr_1650", %TName_Nat* %"$n1_1651")
  store %TName_Nat* %"$$ackermann_69_call_1652", %TName_Nat** %"$ackermann_70", align 8
  %"$$ackermann_70_1653" = load %TName_Nat*, %TName_Nat** %"$ackermann_70", align 8
  store %TName_Nat* %"$$ackermann_70_1653", %TName_Nat** %ack21, align 8
  %"$gasrem_1654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1655" = icmp ugt i64 1, %"$gasrem_1654"
  br i1 %"$gascmp_1655", label %"$out_of_gas_1656", label %"$have_gas_1657"

"$out_of_gas_1656":                               ; preds = %"$have_gas_1641"
  call void @_out_of_gas()
  br label %"$have_gas_1657"

"$have_gas_1657":                                 ; preds = %"$out_of_gas_1656", %"$have_gas_1641"
  %"$consume_1658" = sub i64 %"$gasrem_1654", 1
  store i64 %"$consume_1658", i64* @_gasrem, align 8
  %ack22 = alloca %TName_Nat*, align 8
  %"$gasrem_1659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1660" = icmp ugt i64 1, %"$gasrem_1659"
  br i1 %"$gascmp_1660", label %"$out_of_gas_1661", label %"$have_gas_1662"

"$out_of_gas_1661":                               ; preds = %"$have_gas_1657"
  call void @_out_of_gas()
  br label %"$have_gas_1662"

"$have_gas_1662":                                 ; preds = %"$out_of_gas_1661", %"$have_gas_1657"
  %"$consume_1663" = sub i64 %"$gasrem_1659", 1
  store i64 %"$consume_1663", i64* @_gasrem, align 8
  %"$ackermann_71" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1664" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1665" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1664", 0
  %"$ackermann_envptr_1666" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1664", 1
  %"$n2_1667" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1668" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1665"(i8* %"$ackermann_envptr_1666", %TName_Nat* %"$n2_1667")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1668", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_71", align 8
  %"$ackermann_72" = alloca %TName_Nat*, align 8
  %"$$ackermann_71_1669" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_71", align 8
  %"$$ackermann_71_fptr_1670" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_71_1669", 0
  %"$$ackermann_71_envptr_1671" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_71_1669", 1
  %"$n2_1672" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_71_call_1673" = call %TName_Nat* %"$$ackermann_71_fptr_1670"(i8* %"$$ackermann_71_envptr_1671", %TName_Nat* %"$n2_1672")
  store %TName_Nat* %"$$ackermann_71_call_1673", %TName_Nat** %"$ackermann_72", align 8
  %"$$ackermann_72_1674" = load %TName_Nat*, %TName_Nat** %"$ackermann_72", align 8
  store %TName_Nat* %"$$ackermann_72_1674", %TName_Nat** %ack22, align 8
  %"$gasrem_1675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1676" = icmp ugt i64 1, %"$gasrem_1675"
  br i1 %"$gascmp_1676", label %"$out_of_gas_1677", label %"$have_gas_1678"

"$out_of_gas_1677":                               ; preds = %"$have_gas_1662"
  call void @_out_of_gas()
  br label %"$have_gas_1678"

"$have_gas_1678":                                 ; preds = %"$out_of_gas_1677", %"$have_gas_1662"
  %"$consume_1679" = sub i64 %"$gasrem_1675", 1
  store i64 %"$consume_1679", i64* @_gasrem, align 8
  %ack23 = alloca %TName_Nat*, align 8
  %"$gasrem_1680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1681" = icmp ugt i64 1, %"$gasrem_1680"
  br i1 %"$gascmp_1681", label %"$out_of_gas_1682", label %"$have_gas_1683"

"$out_of_gas_1682":                               ; preds = %"$have_gas_1678"
  call void @_out_of_gas()
  br label %"$have_gas_1683"

"$have_gas_1683":                                 ; preds = %"$out_of_gas_1682", %"$have_gas_1678"
  %"$consume_1684" = sub i64 %"$gasrem_1680", 1
  store i64 %"$consume_1684", i64* @_gasrem, align 8
  %"$ackermann_73" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1685" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1686" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1685", 0
  %"$ackermann_envptr_1687" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1685", 1
  %"$n2_1688" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1689" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1686"(i8* %"$ackermann_envptr_1687", %TName_Nat* %"$n2_1688")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1689", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_73", align 8
  %"$ackermann_74" = alloca %TName_Nat*, align 8
  %"$$ackermann_73_1690" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_73", align 8
  %"$$ackermann_73_fptr_1691" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_73_1690", 0
  %"$$ackermann_73_envptr_1692" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_73_1690", 1
  %"$n3_1693" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_73_call_1694" = call %TName_Nat* %"$$ackermann_73_fptr_1691"(i8* %"$$ackermann_73_envptr_1692", %TName_Nat* %"$n3_1693")
  store %TName_Nat* %"$$ackermann_73_call_1694", %TName_Nat** %"$ackermann_74", align 8
  %"$$ackermann_74_1695" = load %TName_Nat*, %TName_Nat** %"$ackermann_74", align 8
  store %TName_Nat* %"$$ackermann_74_1695", %TName_Nat** %ack23, align 8
  %"$gasrem_1696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1697" = icmp ugt i64 1, %"$gasrem_1696"
  br i1 %"$gascmp_1697", label %"$out_of_gas_1698", label %"$have_gas_1699"

"$out_of_gas_1698":                               ; preds = %"$have_gas_1683"
  call void @_out_of_gas()
  br label %"$have_gas_1699"

"$have_gas_1699":                                 ; preds = %"$out_of_gas_1698", %"$have_gas_1683"
  %"$consume_1700" = sub i64 %"$gasrem_1696", 1
  store i64 %"$consume_1700", i64* @_gasrem, align 8
  %ack24 = alloca %TName_Nat*, align 8
  %"$gasrem_1701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1702" = icmp ugt i64 1, %"$gasrem_1701"
  br i1 %"$gascmp_1702", label %"$out_of_gas_1703", label %"$have_gas_1704"

"$out_of_gas_1703":                               ; preds = %"$have_gas_1699"
  call void @_out_of_gas()
  br label %"$have_gas_1704"

"$have_gas_1704":                                 ; preds = %"$out_of_gas_1703", %"$have_gas_1699"
  %"$consume_1705" = sub i64 %"$gasrem_1701", 1
  store i64 %"$consume_1705", i64* @_gasrem, align 8
  %"$ackermann_75" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1706" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1707" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1706", 0
  %"$ackermann_envptr_1708" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1706", 1
  %"$n2_1709" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$ackermann_call_1710" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1707"(i8* %"$ackermann_envptr_1708", %TName_Nat* %"$n2_1709")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1710", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_75", align 8
  %"$ackermann_76" = alloca %TName_Nat*, align 8
  %"$$ackermann_75_1711" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_75", align 8
  %"$$ackermann_75_fptr_1712" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_75_1711", 0
  %"$$ackermann_75_envptr_1713" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_75_1711", 1
  %"$n4_1714" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_75_call_1715" = call %TName_Nat* %"$$ackermann_75_fptr_1712"(i8* %"$$ackermann_75_envptr_1713", %TName_Nat* %"$n4_1714")
  store %TName_Nat* %"$$ackermann_75_call_1715", %TName_Nat** %"$ackermann_76", align 8
  %"$$ackermann_76_1716" = load %TName_Nat*, %TName_Nat** %"$ackermann_76", align 8
  store %TName_Nat* %"$$ackermann_76_1716", %TName_Nat** %ack24, align 8
  %"$gasrem_1717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1718" = icmp ugt i64 1, %"$gasrem_1717"
  br i1 %"$gascmp_1718", label %"$out_of_gas_1719", label %"$have_gas_1720"

"$out_of_gas_1719":                               ; preds = %"$have_gas_1704"
  call void @_out_of_gas()
  br label %"$have_gas_1720"

"$have_gas_1720":                                 ; preds = %"$out_of_gas_1719", %"$have_gas_1704"
  %"$consume_1721" = sub i64 %"$gasrem_1717", 1
  store i64 %"$consume_1721", i64* @_gasrem, align 8
  %ack30 = alloca %TName_Nat*, align 8
  %"$gasrem_1722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1723" = icmp ugt i64 1, %"$gasrem_1722"
  br i1 %"$gascmp_1723", label %"$out_of_gas_1724", label %"$have_gas_1725"

"$out_of_gas_1724":                               ; preds = %"$have_gas_1720"
  call void @_out_of_gas()
  br label %"$have_gas_1725"

"$have_gas_1725":                                 ; preds = %"$out_of_gas_1724", %"$have_gas_1720"
  %"$consume_1726" = sub i64 %"$gasrem_1722", 1
  store i64 %"$consume_1726", i64* @_gasrem, align 8
  %"$ackermann_77" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1727" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1728" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1727", 0
  %"$ackermann_envptr_1729" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1727", 1
  %"$n3_1730" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1731" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1728"(i8* %"$ackermann_envptr_1729", %TName_Nat* %"$n3_1730")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1731", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_77", align 8
  %"$ackermann_78" = alloca %TName_Nat*, align 8
  %"$$ackermann_77_1732" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_77", align 8
  %"$$ackermann_77_fptr_1733" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_77_1732", 0
  %"$$ackermann_77_envptr_1734" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_77_1732", 1
  %"$n0_1735" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_77_call_1736" = call %TName_Nat* %"$$ackermann_77_fptr_1733"(i8* %"$$ackermann_77_envptr_1734", %TName_Nat* %"$n0_1735")
  store %TName_Nat* %"$$ackermann_77_call_1736", %TName_Nat** %"$ackermann_78", align 8
  %"$$ackermann_78_1737" = load %TName_Nat*, %TName_Nat** %"$ackermann_78", align 8
  store %TName_Nat* %"$$ackermann_78_1737", %TName_Nat** %ack30, align 8
  %"$gasrem_1738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1739" = icmp ugt i64 1, %"$gasrem_1738"
  br i1 %"$gascmp_1739", label %"$out_of_gas_1740", label %"$have_gas_1741"

"$out_of_gas_1740":                               ; preds = %"$have_gas_1725"
  call void @_out_of_gas()
  br label %"$have_gas_1741"

"$have_gas_1741":                                 ; preds = %"$out_of_gas_1740", %"$have_gas_1725"
  %"$consume_1742" = sub i64 %"$gasrem_1738", 1
  store i64 %"$consume_1742", i64* @_gasrem, align 8
  %ack31 = alloca %TName_Nat*, align 8
  %"$gasrem_1743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1744" = icmp ugt i64 1, %"$gasrem_1743"
  br i1 %"$gascmp_1744", label %"$out_of_gas_1745", label %"$have_gas_1746"

"$out_of_gas_1745":                               ; preds = %"$have_gas_1741"
  call void @_out_of_gas()
  br label %"$have_gas_1746"

"$have_gas_1746":                                 ; preds = %"$out_of_gas_1745", %"$have_gas_1741"
  %"$consume_1747" = sub i64 %"$gasrem_1743", 1
  store i64 %"$consume_1747", i64* @_gasrem, align 8
  %"$ackermann_79" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1748" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1749" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1748", 0
  %"$ackermann_envptr_1750" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1748", 1
  %"$n3_1751" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1752" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1749"(i8* %"$ackermann_envptr_1750", %TName_Nat* %"$n3_1751")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1752", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_79", align 8
  %"$ackermann_80" = alloca %TName_Nat*, align 8
  %"$$ackermann_79_1753" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_79", align 8
  %"$$ackermann_79_fptr_1754" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_79_1753", 0
  %"$$ackermann_79_envptr_1755" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_79_1753", 1
  %"$n1_1756" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$ackermann_79_call_1757" = call %TName_Nat* %"$$ackermann_79_fptr_1754"(i8* %"$$ackermann_79_envptr_1755", %TName_Nat* %"$n1_1756")
  store %TName_Nat* %"$$ackermann_79_call_1757", %TName_Nat** %"$ackermann_80", align 8
  %"$$ackermann_80_1758" = load %TName_Nat*, %TName_Nat** %"$ackermann_80", align 8
  store %TName_Nat* %"$$ackermann_80_1758", %TName_Nat** %ack31, align 8
  %"$gasrem_1759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1760" = icmp ugt i64 1, %"$gasrem_1759"
  br i1 %"$gascmp_1760", label %"$out_of_gas_1761", label %"$have_gas_1762"

"$out_of_gas_1761":                               ; preds = %"$have_gas_1746"
  call void @_out_of_gas()
  br label %"$have_gas_1762"

"$have_gas_1762":                                 ; preds = %"$out_of_gas_1761", %"$have_gas_1746"
  %"$consume_1763" = sub i64 %"$gasrem_1759", 1
  store i64 %"$consume_1763", i64* @_gasrem, align 8
  %ack32 = alloca %TName_Nat*, align 8
  %"$gasrem_1764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1765" = icmp ugt i64 1, %"$gasrem_1764"
  br i1 %"$gascmp_1765", label %"$out_of_gas_1766", label %"$have_gas_1767"

"$out_of_gas_1766":                               ; preds = %"$have_gas_1762"
  call void @_out_of_gas()
  br label %"$have_gas_1767"

"$have_gas_1767":                                 ; preds = %"$out_of_gas_1766", %"$have_gas_1762"
  %"$consume_1768" = sub i64 %"$gasrem_1764", 1
  store i64 %"$consume_1768", i64* @_gasrem, align 8
  %"$ackermann_81" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1769" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1770" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1769", 0
  %"$ackermann_envptr_1771" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1769", 1
  %"$n3_1772" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1773" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1770"(i8* %"$ackermann_envptr_1771", %TName_Nat* %"$n3_1772")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1773", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_81", align 8
  %"$ackermann_82" = alloca %TName_Nat*, align 8
  %"$$ackermann_81_1774" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_81", align 8
  %"$$ackermann_81_fptr_1775" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_81_1774", 0
  %"$$ackermann_81_envptr_1776" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_81_1774", 1
  %"$n2_1777" = load %TName_Nat*, %TName_Nat** %n2, align 8
  %"$$ackermann_81_call_1778" = call %TName_Nat* %"$$ackermann_81_fptr_1775"(i8* %"$$ackermann_81_envptr_1776", %TName_Nat* %"$n2_1777")
  store %TName_Nat* %"$$ackermann_81_call_1778", %TName_Nat** %"$ackermann_82", align 8
  %"$$ackermann_82_1779" = load %TName_Nat*, %TName_Nat** %"$ackermann_82", align 8
  store %TName_Nat* %"$$ackermann_82_1779", %TName_Nat** %ack32, align 8
  %"$gasrem_1780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1781" = icmp ugt i64 1, %"$gasrem_1780"
  br i1 %"$gascmp_1781", label %"$out_of_gas_1782", label %"$have_gas_1783"

"$out_of_gas_1782":                               ; preds = %"$have_gas_1767"
  call void @_out_of_gas()
  br label %"$have_gas_1783"

"$have_gas_1783":                                 ; preds = %"$out_of_gas_1782", %"$have_gas_1767"
  %"$consume_1784" = sub i64 %"$gasrem_1780", 1
  store i64 %"$consume_1784", i64* @_gasrem, align 8
  %ack33 = alloca %TName_Nat*, align 8
  %"$gasrem_1785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1786" = icmp ugt i64 1, %"$gasrem_1785"
  br i1 %"$gascmp_1786", label %"$out_of_gas_1787", label %"$have_gas_1788"

"$out_of_gas_1787":                               ; preds = %"$have_gas_1783"
  call void @_out_of_gas()
  br label %"$have_gas_1788"

"$have_gas_1788":                                 ; preds = %"$out_of_gas_1787", %"$have_gas_1783"
  %"$consume_1789" = sub i64 %"$gasrem_1785", 1
  store i64 %"$consume_1789", i64* @_gasrem, align 8
  %"$ackermann_83" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1790" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1791" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1790", 0
  %"$ackermann_envptr_1792" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1790", 1
  %"$n3_1793" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1794" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1791"(i8* %"$ackermann_envptr_1792", %TName_Nat* %"$n3_1793")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1794", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_83", align 8
  %"$ackermann_84" = alloca %TName_Nat*, align 8
  %"$$ackermann_83_1795" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_83", align 8
  %"$$ackermann_83_fptr_1796" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_83_1795", 0
  %"$$ackermann_83_envptr_1797" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_83_1795", 1
  %"$n3_1798" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$$ackermann_83_call_1799" = call %TName_Nat* %"$$ackermann_83_fptr_1796"(i8* %"$$ackermann_83_envptr_1797", %TName_Nat* %"$n3_1798")
  store %TName_Nat* %"$$ackermann_83_call_1799", %TName_Nat** %"$ackermann_84", align 8
  %"$$ackermann_84_1800" = load %TName_Nat*, %TName_Nat** %"$ackermann_84", align 8
  store %TName_Nat* %"$$ackermann_84_1800", %TName_Nat** %ack33, align 8
  %"$gasrem_1801" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1802" = icmp ugt i64 1, %"$gasrem_1801"
  br i1 %"$gascmp_1802", label %"$out_of_gas_1803", label %"$have_gas_1804"

"$out_of_gas_1803":                               ; preds = %"$have_gas_1788"
  call void @_out_of_gas()
  br label %"$have_gas_1804"

"$have_gas_1804":                                 ; preds = %"$out_of_gas_1803", %"$have_gas_1788"
  %"$consume_1805" = sub i64 %"$gasrem_1801", 1
  store i64 %"$consume_1805", i64* @_gasrem, align 8
  %ack34 = alloca %TName_Nat*, align 8
  %"$gasrem_1806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1807" = icmp ugt i64 1, %"$gasrem_1806"
  br i1 %"$gascmp_1807", label %"$out_of_gas_1808", label %"$have_gas_1809"

"$out_of_gas_1808":                               ; preds = %"$have_gas_1804"
  call void @_out_of_gas()
  br label %"$have_gas_1809"

"$have_gas_1809":                                 ; preds = %"$out_of_gas_1808", %"$have_gas_1804"
  %"$consume_1810" = sub i64 %"$gasrem_1806", 1
  store i64 %"$consume_1810", i64* @_gasrem, align 8
  %"$ackermann_85" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1811" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1812" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1811", 0
  %"$ackermann_envptr_1813" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1811", 1
  %"$n3_1814" = load %TName_Nat*, %TName_Nat** %n3, align 8
  %"$ackermann_call_1815" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1812"(i8* %"$ackermann_envptr_1813", %TName_Nat* %"$n3_1814")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1815", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_85", align 8
  %"$ackermann_86" = alloca %TName_Nat*, align 8
  %"$$ackermann_85_1816" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_85", align 8
  %"$$ackermann_85_fptr_1817" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_85_1816", 0
  %"$$ackermann_85_envptr_1818" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_85_1816", 1
  %"$n4_1819" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$$ackermann_85_call_1820" = call %TName_Nat* %"$$ackermann_85_fptr_1817"(i8* %"$$ackermann_85_envptr_1818", %TName_Nat* %"$n4_1819")
  store %TName_Nat* %"$$ackermann_85_call_1820", %TName_Nat** %"$ackermann_86", align 8
  %"$$ackermann_86_1821" = load %TName_Nat*, %TName_Nat** %"$ackermann_86", align 8
  store %TName_Nat* %"$$ackermann_86_1821", %TName_Nat** %ack34, align 8
  %"$gasrem_1822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1823" = icmp ugt i64 1, %"$gasrem_1822"
  br i1 %"$gascmp_1823", label %"$out_of_gas_1824", label %"$have_gas_1825"

"$out_of_gas_1824":                               ; preds = %"$have_gas_1809"
  call void @_out_of_gas()
  br label %"$have_gas_1825"

"$have_gas_1825":                                 ; preds = %"$out_of_gas_1824", %"$have_gas_1809"
  %"$consume_1826" = sub i64 %"$gasrem_1822", 1
  store i64 %"$consume_1826", i64* @_gasrem, align 8
  %ack40 = alloca %TName_Nat*, align 8
  %"$gasrem_1827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1828" = icmp ugt i64 1, %"$gasrem_1827"
  br i1 %"$gascmp_1828", label %"$out_of_gas_1829", label %"$have_gas_1830"

"$out_of_gas_1829":                               ; preds = %"$have_gas_1825"
  call void @_out_of_gas()
  br label %"$have_gas_1830"

"$have_gas_1830":                                 ; preds = %"$out_of_gas_1829", %"$have_gas_1825"
  %"$consume_1831" = sub i64 %"$gasrem_1827", 1
  store i64 %"$consume_1831", i64* @_gasrem, align 8
  %"$ackermann_87" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1832" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1833" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1832", 0
  %"$ackermann_envptr_1834" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1832", 1
  %"$n4_1835" = load %TName_Nat*, %TName_Nat** %n4, align 8
  %"$ackermann_call_1836" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1833"(i8* %"$ackermann_envptr_1834", %TName_Nat* %"$n4_1835")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1836", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_87", align 8
  %"$ackermann_88" = alloca %TName_Nat*, align 8
  %"$$ackermann_87_1837" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_87", align 8
  %"$$ackermann_87_fptr_1838" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_87_1837", 0
  %"$$ackermann_87_envptr_1839" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_87_1837", 1
  %"$n0_1840" = load %TName_Nat*, %TName_Nat** %n0, align 8
  %"$$ackermann_87_call_1841" = call %TName_Nat* %"$$ackermann_87_fptr_1838"(i8* %"$$ackermann_87_envptr_1839", %TName_Nat* %"$n0_1840")
  store %TName_Nat* %"$$ackermann_87_call_1841", %TName_Nat** %"$ackermann_88", align 8
  %"$$ackermann_88_1842" = load %TName_Nat*, %TName_Nat** %"$ackermann_88", align 8
  store %TName_Nat* %"$$ackermann_88_1842", %TName_Nat** %ack40, align 8
  %"$gasrem_1843" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1844" = icmp ugt i64 1, %"$gasrem_1843"
  br i1 %"$gascmp_1844", label %"$out_of_gas_1845", label %"$have_gas_1846"

"$out_of_gas_1845":                               ; preds = %"$have_gas_1830"
  call void @_out_of_gas()
  br label %"$have_gas_1846"

"$have_gas_1846":                                 ; preds = %"$out_of_gas_1845", %"$have_gas_1830"
  %"$consume_1847" = sub i64 %"$gasrem_1843", 1
  store i64 %"$consume_1847", i64* @_gasrem, align 8
  %int01 = alloca %Uint32, align 8
  %"$gasrem_1848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1849" = icmp ugt i64 1, %"$gasrem_1848"
  br i1 %"$gascmp_1849", label %"$out_of_gas_1850", label %"$have_gas_1851"

"$out_of_gas_1850":                               ; preds = %"$have_gas_1846"
  call void @_out_of_gas()
  br label %"$have_gas_1851"

"$have_gas_1851":                                 ; preds = %"$out_of_gas_1850", %"$have_gas_1846"
  %"$consume_1852" = sub i64 %"$gasrem_1848", 1
  store i64 %"$consume_1852", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_89" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1853" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1854" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1853", 0
  %"$NatUtils.nat_to_int_envptr_1855" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1853", 1
  %"$ack00_1856" = load %TName_Nat*, %TName_Nat** %ack00, align 8
  %"$NatUtils.nat_to_int_call_1857" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1854"(i8* %"$NatUtils.nat_to_int_envptr_1855", %TName_Nat* %"$ack00_1856")
  store %Uint32 %"$NatUtils.nat_to_int_call_1857", %Uint32* %"$NatUtils.nat_to_int_89", align 4
  %"$$NatUtils.nat_to_int_89_1858" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_89", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_89_1858", %Uint32* %int01, align 4
  %"$gasrem_1859" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1860" = icmp ugt i64 1, %"$gasrem_1859"
  br i1 %"$gascmp_1860", label %"$out_of_gas_1861", label %"$have_gas_1862"

"$out_of_gas_1861":                               ; preds = %"$have_gas_1851"
  call void @_out_of_gas()
  br label %"$have_gas_1862"

"$have_gas_1862":                                 ; preds = %"$out_of_gas_1861", %"$have_gas_1851"
  %"$consume_1863" = sub i64 %"$gasrem_1859", 1
  store i64 %"$consume_1863", i64* @_gasrem, align 8
  %int02 = alloca %Uint32, align 8
  %"$gasrem_1864" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1865" = icmp ugt i64 1, %"$gasrem_1864"
  br i1 %"$gascmp_1865", label %"$out_of_gas_1866", label %"$have_gas_1867"

"$out_of_gas_1866":                               ; preds = %"$have_gas_1862"
  call void @_out_of_gas()
  br label %"$have_gas_1867"

"$have_gas_1867":                                 ; preds = %"$out_of_gas_1866", %"$have_gas_1862"
  %"$consume_1868" = sub i64 %"$gasrem_1864", 1
  store i64 %"$consume_1868", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_90" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1869" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1870" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1869", 0
  %"$NatUtils.nat_to_int_envptr_1871" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1869", 1
  %"$ack02_1872" = load %TName_Nat*, %TName_Nat** %ack02, align 8
  %"$NatUtils.nat_to_int_call_1873" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1870"(i8* %"$NatUtils.nat_to_int_envptr_1871", %TName_Nat* %"$ack02_1872")
  store %Uint32 %"$NatUtils.nat_to_int_call_1873", %Uint32* %"$NatUtils.nat_to_int_90", align 4
  %"$$NatUtils.nat_to_int_90_1874" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_90", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_90_1874", %Uint32* %int02, align 4
  %"$gasrem_1875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1876" = icmp ugt i64 1, %"$gasrem_1875"
  br i1 %"$gascmp_1876", label %"$out_of_gas_1877", label %"$have_gas_1878"

"$out_of_gas_1877":                               ; preds = %"$have_gas_1867"
  call void @_out_of_gas()
  br label %"$have_gas_1878"

"$have_gas_1878":                                 ; preds = %"$out_of_gas_1877", %"$have_gas_1867"
  %"$consume_1879" = sub i64 %"$gasrem_1875", 1
  store i64 %"$consume_1879", i64* @_gasrem, align 8
  %int03 = alloca %Uint32, align 8
  %"$gasrem_1880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1881" = icmp ugt i64 1, %"$gasrem_1880"
  br i1 %"$gascmp_1881", label %"$out_of_gas_1882", label %"$have_gas_1883"

"$out_of_gas_1882":                               ; preds = %"$have_gas_1878"
  call void @_out_of_gas()
  br label %"$have_gas_1883"

"$have_gas_1883":                                 ; preds = %"$out_of_gas_1882", %"$have_gas_1878"
  %"$consume_1884" = sub i64 %"$gasrem_1880", 1
  store i64 %"$consume_1884", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_91" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1885" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1886" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1885", 0
  %"$NatUtils.nat_to_int_envptr_1887" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1885", 1
  %"$ack03_1888" = load %TName_Nat*, %TName_Nat** %ack03, align 8
  %"$NatUtils.nat_to_int_call_1889" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1886"(i8* %"$NatUtils.nat_to_int_envptr_1887", %TName_Nat* %"$ack03_1888")
  store %Uint32 %"$NatUtils.nat_to_int_call_1889", %Uint32* %"$NatUtils.nat_to_int_91", align 4
  %"$$NatUtils.nat_to_int_91_1890" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_91", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_91_1890", %Uint32* %int03, align 4
  %"$gasrem_1891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1892" = icmp ugt i64 1, %"$gasrem_1891"
  br i1 %"$gascmp_1892", label %"$out_of_gas_1893", label %"$have_gas_1894"

"$out_of_gas_1893":                               ; preds = %"$have_gas_1883"
  call void @_out_of_gas()
  br label %"$have_gas_1894"

"$have_gas_1894":                                 ; preds = %"$out_of_gas_1893", %"$have_gas_1883"
  %"$consume_1895" = sub i64 %"$gasrem_1891", 1
  store i64 %"$consume_1895", i64* @_gasrem, align 8
  %int04 = alloca %Uint32, align 8
  %"$gasrem_1896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1897" = icmp ugt i64 1, %"$gasrem_1896"
  br i1 %"$gascmp_1897", label %"$out_of_gas_1898", label %"$have_gas_1899"

"$out_of_gas_1898":                               ; preds = %"$have_gas_1894"
  call void @_out_of_gas()
  br label %"$have_gas_1899"

"$have_gas_1899":                                 ; preds = %"$out_of_gas_1898", %"$have_gas_1894"
  %"$consume_1900" = sub i64 %"$gasrem_1896", 1
  store i64 %"$consume_1900", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_92" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1901" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1902" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1901", 0
  %"$NatUtils.nat_to_int_envptr_1903" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1901", 1
  %"$ack04_1904" = load %TName_Nat*, %TName_Nat** %ack04, align 8
  %"$NatUtils.nat_to_int_call_1905" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1902"(i8* %"$NatUtils.nat_to_int_envptr_1903", %TName_Nat* %"$ack04_1904")
  store %Uint32 %"$NatUtils.nat_to_int_call_1905", %Uint32* %"$NatUtils.nat_to_int_92", align 4
  %"$$NatUtils.nat_to_int_92_1906" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_92", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_92_1906", %Uint32* %int04, align 4
  %"$gasrem_1907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1908" = icmp ugt i64 1, %"$gasrem_1907"
  br i1 %"$gascmp_1908", label %"$out_of_gas_1909", label %"$have_gas_1910"

"$out_of_gas_1909":                               ; preds = %"$have_gas_1899"
  call void @_out_of_gas()
  br label %"$have_gas_1910"

"$have_gas_1910":                                 ; preds = %"$out_of_gas_1909", %"$have_gas_1899"
  %"$consume_1911" = sub i64 %"$gasrem_1907", 1
  store i64 %"$consume_1911", i64* @_gasrem, align 8
  %int10 = alloca %Uint32, align 8
  %"$gasrem_1912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1913" = icmp ugt i64 1, %"$gasrem_1912"
  br i1 %"$gascmp_1913", label %"$out_of_gas_1914", label %"$have_gas_1915"

"$out_of_gas_1914":                               ; preds = %"$have_gas_1910"
  call void @_out_of_gas()
  br label %"$have_gas_1915"

"$have_gas_1915":                                 ; preds = %"$out_of_gas_1914", %"$have_gas_1910"
  %"$consume_1916" = sub i64 %"$gasrem_1912", 1
  store i64 %"$consume_1916", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_93" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1917" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1918" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1917", 0
  %"$NatUtils.nat_to_int_envptr_1919" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1917", 1
  %"$ack10_1920" = load %TName_Nat*, %TName_Nat** %ack10, align 8
  %"$NatUtils.nat_to_int_call_1921" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1918"(i8* %"$NatUtils.nat_to_int_envptr_1919", %TName_Nat* %"$ack10_1920")
  store %Uint32 %"$NatUtils.nat_to_int_call_1921", %Uint32* %"$NatUtils.nat_to_int_93", align 4
  %"$$NatUtils.nat_to_int_93_1922" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_93", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_93_1922", %Uint32* %int10, align 4
  %"$gasrem_1923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1924" = icmp ugt i64 1, %"$gasrem_1923"
  br i1 %"$gascmp_1924", label %"$out_of_gas_1925", label %"$have_gas_1926"

"$out_of_gas_1925":                               ; preds = %"$have_gas_1915"
  call void @_out_of_gas()
  br label %"$have_gas_1926"

"$have_gas_1926":                                 ; preds = %"$out_of_gas_1925", %"$have_gas_1915"
  %"$consume_1927" = sub i64 %"$gasrem_1923", 1
  store i64 %"$consume_1927", i64* @_gasrem, align 8
  %int11 = alloca %Uint32, align 8
  %"$gasrem_1928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1929" = icmp ugt i64 1, %"$gasrem_1928"
  br i1 %"$gascmp_1929", label %"$out_of_gas_1930", label %"$have_gas_1931"

"$out_of_gas_1930":                               ; preds = %"$have_gas_1926"
  call void @_out_of_gas()
  br label %"$have_gas_1931"

"$have_gas_1931":                                 ; preds = %"$out_of_gas_1930", %"$have_gas_1926"
  %"$consume_1932" = sub i64 %"$gasrem_1928", 1
  store i64 %"$consume_1932", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_94" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1933" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1934" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1933", 0
  %"$NatUtils.nat_to_int_envptr_1935" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1933", 1
  %"$ack11_1936" = load %TName_Nat*, %TName_Nat** %ack11, align 8
  %"$NatUtils.nat_to_int_call_1937" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1934"(i8* %"$NatUtils.nat_to_int_envptr_1935", %TName_Nat* %"$ack11_1936")
  store %Uint32 %"$NatUtils.nat_to_int_call_1937", %Uint32* %"$NatUtils.nat_to_int_94", align 4
  %"$$NatUtils.nat_to_int_94_1938" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_94", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_94_1938", %Uint32* %int11, align 4
  %"$gasrem_1939" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1940" = icmp ugt i64 1, %"$gasrem_1939"
  br i1 %"$gascmp_1940", label %"$out_of_gas_1941", label %"$have_gas_1942"

"$out_of_gas_1941":                               ; preds = %"$have_gas_1931"
  call void @_out_of_gas()
  br label %"$have_gas_1942"

"$have_gas_1942":                                 ; preds = %"$out_of_gas_1941", %"$have_gas_1931"
  %"$consume_1943" = sub i64 %"$gasrem_1939", 1
  store i64 %"$consume_1943", i64* @_gasrem, align 8
  %int12 = alloca %Uint32, align 8
  %"$gasrem_1944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1945" = icmp ugt i64 1, %"$gasrem_1944"
  br i1 %"$gascmp_1945", label %"$out_of_gas_1946", label %"$have_gas_1947"

"$out_of_gas_1946":                               ; preds = %"$have_gas_1942"
  call void @_out_of_gas()
  br label %"$have_gas_1947"

"$have_gas_1947":                                 ; preds = %"$out_of_gas_1946", %"$have_gas_1942"
  %"$consume_1948" = sub i64 %"$gasrem_1944", 1
  store i64 %"$consume_1948", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_95" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1949" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1950" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1949", 0
  %"$NatUtils.nat_to_int_envptr_1951" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1949", 1
  %"$ack12_1952" = load %TName_Nat*, %TName_Nat** %ack12, align 8
  %"$NatUtils.nat_to_int_call_1953" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1950"(i8* %"$NatUtils.nat_to_int_envptr_1951", %TName_Nat* %"$ack12_1952")
  store %Uint32 %"$NatUtils.nat_to_int_call_1953", %Uint32* %"$NatUtils.nat_to_int_95", align 4
  %"$$NatUtils.nat_to_int_95_1954" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_95", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_95_1954", %Uint32* %int12, align 4
  %"$gasrem_1955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1956" = icmp ugt i64 1, %"$gasrem_1955"
  br i1 %"$gascmp_1956", label %"$out_of_gas_1957", label %"$have_gas_1958"

"$out_of_gas_1957":                               ; preds = %"$have_gas_1947"
  call void @_out_of_gas()
  br label %"$have_gas_1958"

"$have_gas_1958":                                 ; preds = %"$out_of_gas_1957", %"$have_gas_1947"
  %"$consume_1959" = sub i64 %"$gasrem_1955", 1
  store i64 %"$consume_1959", i64* @_gasrem, align 8
  %int13 = alloca %Uint32, align 8
  %"$gasrem_1960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1961" = icmp ugt i64 1, %"$gasrem_1960"
  br i1 %"$gascmp_1961", label %"$out_of_gas_1962", label %"$have_gas_1963"

"$out_of_gas_1962":                               ; preds = %"$have_gas_1958"
  call void @_out_of_gas()
  br label %"$have_gas_1963"

"$have_gas_1963":                                 ; preds = %"$out_of_gas_1962", %"$have_gas_1958"
  %"$consume_1964" = sub i64 %"$gasrem_1960", 1
  store i64 %"$consume_1964", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_96" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1965" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1966" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1965", 0
  %"$NatUtils.nat_to_int_envptr_1967" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1965", 1
  %"$ack13_1968" = load %TName_Nat*, %TName_Nat** %ack13, align 8
  %"$NatUtils.nat_to_int_call_1969" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1966"(i8* %"$NatUtils.nat_to_int_envptr_1967", %TName_Nat* %"$ack13_1968")
  store %Uint32 %"$NatUtils.nat_to_int_call_1969", %Uint32* %"$NatUtils.nat_to_int_96", align 4
  %"$$NatUtils.nat_to_int_96_1970" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_96", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_96_1970", %Uint32* %int13, align 4
  %"$gasrem_1971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1972" = icmp ugt i64 1, %"$gasrem_1971"
  br i1 %"$gascmp_1972", label %"$out_of_gas_1973", label %"$have_gas_1974"

"$out_of_gas_1973":                               ; preds = %"$have_gas_1963"
  call void @_out_of_gas()
  br label %"$have_gas_1974"

"$have_gas_1974":                                 ; preds = %"$out_of_gas_1973", %"$have_gas_1963"
  %"$consume_1975" = sub i64 %"$gasrem_1971", 1
  store i64 %"$consume_1975", i64* @_gasrem, align 8
  %int14 = alloca %Uint32, align 8
  %"$gasrem_1976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1977" = icmp ugt i64 1, %"$gasrem_1976"
  br i1 %"$gascmp_1977", label %"$out_of_gas_1978", label %"$have_gas_1979"

"$out_of_gas_1978":                               ; preds = %"$have_gas_1974"
  call void @_out_of_gas()
  br label %"$have_gas_1979"

"$have_gas_1979":                                 ; preds = %"$out_of_gas_1978", %"$have_gas_1974"
  %"$consume_1980" = sub i64 %"$gasrem_1976", 1
  store i64 %"$consume_1980", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_97" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1981" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1982" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1981", 0
  %"$NatUtils.nat_to_int_envptr_1983" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1981", 1
  %"$ack14_1984" = load %TName_Nat*, %TName_Nat** %ack14, align 8
  %"$NatUtils.nat_to_int_call_1985" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1982"(i8* %"$NatUtils.nat_to_int_envptr_1983", %TName_Nat* %"$ack14_1984")
  store %Uint32 %"$NatUtils.nat_to_int_call_1985", %Uint32* %"$NatUtils.nat_to_int_97", align 4
  %"$$NatUtils.nat_to_int_97_1986" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_97", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_97_1986", %Uint32* %int14, align 4
  %"$gasrem_1987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1988" = icmp ugt i64 1, %"$gasrem_1987"
  br i1 %"$gascmp_1988", label %"$out_of_gas_1989", label %"$have_gas_1990"

"$out_of_gas_1989":                               ; preds = %"$have_gas_1979"
  call void @_out_of_gas()
  br label %"$have_gas_1990"

"$have_gas_1990":                                 ; preds = %"$out_of_gas_1989", %"$have_gas_1979"
  %"$consume_1991" = sub i64 %"$gasrem_1987", 1
  store i64 %"$consume_1991", i64* @_gasrem, align 8
  %int20 = alloca %Uint32, align 8
  %"$gasrem_1992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1993" = icmp ugt i64 1, %"$gasrem_1992"
  br i1 %"$gascmp_1993", label %"$out_of_gas_1994", label %"$have_gas_1995"

"$out_of_gas_1994":                               ; preds = %"$have_gas_1990"
  call void @_out_of_gas()
  br label %"$have_gas_1995"

"$have_gas_1995":                                 ; preds = %"$out_of_gas_1994", %"$have_gas_1990"
  %"$consume_1996" = sub i64 %"$gasrem_1992", 1
  store i64 %"$consume_1996", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_98" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1997" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1998" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1997", 0
  %"$NatUtils.nat_to_int_envptr_1999" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1997", 1
  %"$ack20_2000" = load %TName_Nat*, %TName_Nat** %ack20, align 8
  %"$NatUtils.nat_to_int_call_2001" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1998"(i8* %"$NatUtils.nat_to_int_envptr_1999", %TName_Nat* %"$ack20_2000")
  store %Uint32 %"$NatUtils.nat_to_int_call_2001", %Uint32* %"$NatUtils.nat_to_int_98", align 4
  %"$$NatUtils.nat_to_int_98_2002" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_98", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_98_2002", %Uint32* %int20, align 4
  %"$gasrem_2003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2004" = icmp ugt i64 1, %"$gasrem_2003"
  br i1 %"$gascmp_2004", label %"$out_of_gas_2005", label %"$have_gas_2006"

"$out_of_gas_2005":                               ; preds = %"$have_gas_1995"
  call void @_out_of_gas()
  br label %"$have_gas_2006"

"$have_gas_2006":                                 ; preds = %"$out_of_gas_2005", %"$have_gas_1995"
  %"$consume_2007" = sub i64 %"$gasrem_2003", 1
  store i64 %"$consume_2007", i64* @_gasrem, align 8
  %int21 = alloca %Uint32, align 8
  %"$gasrem_2008" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2009" = icmp ugt i64 1, %"$gasrem_2008"
  br i1 %"$gascmp_2009", label %"$out_of_gas_2010", label %"$have_gas_2011"

"$out_of_gas_2010":                               ; preds = %"$have_gas_2006"
  call void @_out_of_gas()
  br label %"$have_gas_2011"

"$have_gas_2011":                                 ; preds = %"$out_of_gas_2010", %"$have_gas_2006"
  %"$consume_2012" = sub i64 %"$gasrem_2008", 1
  store i64 %"$consume_2012", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_99" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2013" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2014" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2013", 0
  %"$NatUtils.nat_to_int_envptr_2015" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2013", 1
  %"$ack21_2016" = load %TName_Nat*, %TName_Nat** %ack21, align 8
  %"$NatUtils.nat_to_int_call_2017" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2014"(i8* %"$NatUtils.nat_to_int_envptr_2015", %TName_Nat* %"$ack21_2016")
  store %Uint32 %"$NatUtils.nat_to_int_call_2017", %Uint32* %"$NatUtils.nat_to_int_99", align 4
  %"$$NatUtils.nat_to_int_99_2018" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_99", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_99_2018", %Uint32* %int21, align 4
  %"$gasrem_2019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2020" = icmp ugt i64 1, %"$gasrem_2019"
  br i1 %"$gascmp_2020", label %"$out_of_gas_2021", label %"$have_gas_2022"

"$out_of_gas_2021":                               ; preds = %"$have_gas_2011"
  call void @_out_of_gas()
  br label %"$have_gas_2022"

"$have_gas_2022":                                 ; preds = %"$out_of_gas_2021", %"$have_gas_2011"
  %"$consume_2023" = sub i64 %"$gasrem_2019", 1
  store i64 %"$consume_2023", i64* @_gasrem, align 8
  %int22 = alloca %Uint32, align 8
  %"$gasrem_2024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2025" = icmp ugt i64 1, %"$gasrem_2024"
  br i1 %"$gascmp_2025", label %"$out_of_gas_2026", label %"$have_gas_2027"

"$out_of_gas_2026":                               ; preds = %"$have_gas_2022"
  call void @_out_of_gas()
  br label %"$have_gas_2027"

"$have_gas_2027":                                 ; preds = %"$out_of_gas_2026", %"$have_gas_2022"
  %"$consume_2028" = sub i64 %"$gasrem_2024", 1
  store i64 %"$consume_2028", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_100" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2029" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2030" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2029", 0
  %"$NatUtils.nat_to_int_envptr_2031" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2029", 1
  %"$ack22_2032" = load %TName_Nat*, %TName_Nat** %ack22, align 8
  %"$NatUtils.nat_to_int_call_2033" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2030"(i8* %"$NatUtils.nat_to_int_envptr_2031", %TName_Nat* %"$ack22_2032")
  store %Uint32 %"$NatUtils.nat_to_int_call_2033", %Uint32* %"$NatUtils.nat_to_int_100", align 4
  %"$$NatUtils.nat_to_int_100_2034" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_100", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_100_2034", %Uint32* %int22, align 4
  %"$gasrem_2035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2036" = icmp ugt i64 1, %"$gasrem_2035"
  br i1 %"$gascmp_2036", label %"$out_of_gas_2037", label %"$have_gas_2038"

"$out_of_gas_2037":                               ; preds = %"$have_gas_2027"
  call void @_out_of_gas()
  br label %"$have_gas_2038"

"$have_gas_2038":                                 ; preds = %"$out_of_gas_2037", %"$have_gas_2027"
  %"$consume_2039" = sub i64 %"$gasrem_2035", 1
  store i64 %"$consume_2039", i64* @_gasrem, align 8
  %int23 = alloca %Uint32, align 8
  %"$gasrem_2040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2041" = icmp ugt i64 1, %"$gasrem_2040"
  br i1 %"$gascmp_2041", label %"$out_of_gas_2042", label %"$have_gas_2043"

"$out_of_gas_2042":                               ; preds = %"$have_gas_2038"
  call void @_out_of_gas()
  br label %"$have_gas_2043"

"$have_gas_2043":                                 ; preds = %"$out_of_gas_2042", %"$have_gas_2038"
  %"$consume_2044" = sub i64 %"$gasrem_2040", 1
  store i64 %"$consume_2044", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_101" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2045" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2046" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2045", 0
  %"$NatUtils.nat_to_int_envptr_2047" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2045", 1
  %"$ack23_2048" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_2049" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2046"(i8* %"$NatUtils.nat_to_int_envptr_2047", %TName_Nat* %"$ack23_2048")
  store %Uint32 %"$NatUtils.nat_to_int_call_2049", %Uint32* %"$NatUtils.nat_to_int_101", align 4
  %"$$NatUtils.nat_to_int_101_2050" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_101", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_101_2050", %Uint32* %int23, align 4
  %"$gasrem_2051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2052" = icmp ugt i64 1, %"$gasrem_2051"
  br i1 %"$gascmp_2052", label %"$out_of_gas_2053", label %"$have_gas_2054"

"$out_of_gas_2053":                               ; preds = %"$have_gas_2043"
  call void @_out_of_gas()
  br label %"$have_gas_2054"

"$have_gas_2054":                                 ; preds = %"$out_of_gas_2053", %"$have_gas_2043"
  %"$consume_2055" = sub i64 %"$gasrem_2051", 1
  store i64 %"$consume_2055", i64* @_gasrem, align 8
  %int24 = alloca %Uint32, align 8
  %"$gasrem_2056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2057" = icmp ugt i64 1, %"$gasrem_2056"
  br i1 %"$gascmp_2057", label %"$out_of_gas_2058", label %"$have_gas_2059"

"$out_of_gas_2058":                               ; preds = %"$have_gas_2054"
  call void @_out_of_gas()
  br label %"$have_gas_2059"

"$have_gas_2059":                                 ; preds = %"$out_of_gas_2058", %"$have_gas_2054"
  %"$consume_2060" = sub i64 %"$gasrem_2056", 1
  store i64 %"$consume_2060", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_102" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2061" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2062" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2061", 0
  %"$NatUtils.nat_to_int_envptr_2063" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2061", 1
  %"$ack23_2064" = load %TName_Nat*, %TName_Nat** %ack23, align 8
  %"$NatUtils.nat_to_int_call_2065" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2062"(i8* %"$NatUtils.nat_to_int_envptr_2063", %TName_Nat* %"$ack23_2064")
  store %Uint32 %"$NatUtils.nat_to_int_call_2065", %Uint32* %"$NatUtils.nat_to_int_102", align 4
  %"$$NatUtils.nat_to_int_102_2066" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_102", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_102_2066", %Uint32* %int24, align 4
  %"$gasrem_2067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2068" = icmp ugt i64 1, %"$gasrem_2067"
  br i1 %"$gascmp_2068", label %"$out_of_gas_2069", label %"$have_gas_2070"

"$out_of_gas_2069":                               ; preds = %"$have_gas_2059"
  call void @_out_of_gas()
  br label %"$have_gas_2070"

"$have_gas_2070":                                 ; preds = %"$out_of_gas_2069", %"$have_gas_2059"
  %"$consume_2071" = sub i64 %"$gasrem_2067", 1
  store i64 %"$consume_2071", i64* @_gasrem, align 8
  %int30 = alloca %Uint32, align 8
  %"$gasrem_2072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2073" = icmp ugt i64 1, %"$gasrem_2072"
  br i1 %"$gascmp_2073", label %"$out_of_gas_2074", label %"$have_gas_2075"

"$out_of_gas_2074":                               ; preds = %"$have_gas_2070"
  call void @_out_of_gas()
  br label %"$have_gas_2075"

"$have_gas_2075":                                 ; preds = %"$out_of_gas_2074", %"$have_gas_2070"
  %"$consume_2076" = sub i64 %"$gasrem_2072", 1
  store i64 %"$consume_2076", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_103" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2077" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2078" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2077", 0
  %"$NatUtils.nat_to_int_envptr_2079" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2077", 1
  %"$ack30_2080" = load %TName_Nat*, %TName_Nat** %ack30, align 8
  %"$NatUtils.nat_to_int_call_2081" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2078"(i8* %"$NatUtils.nat_to_int_envptr_2079", %TName_Nat* %"$ack30_2080")
  store %Uint32 %"$NatUtils.nat_to_int_call_2081", %Uint32* %"$NatUtils.nat_to_int_103", align 4
  %"$$NatUtils.nat_to_int_103_2082" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_103", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_103_2082", %Uint32* %int30, align 4
  %"$gasrem_2083" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2084" = icmp ugt i64 1, %"$gasrem_2083"
  br i1 %"$gascmp_2084", label %"$out_of_gas_2085", label %"$have_gas_2086"

"$out_of_gas_2085":                               ; preds = %"$have_gas_2075"
  call void @_out_of_gas()
  br label %"$have_gas_2086"

"$have_gas_2086":                                 ; preds = %"$out_of_gas_2085", %"$have_gas_2075"
  %"$consume_2087" = sub i64 %"$gasrem_2083", 1
  store i64 %"$consume_2087", i64* @_gasrem, align 8
  %int31 = alloca %Uint32, align 8
  %"$gasrem_2088" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2089" = icmp ugt i64 1, %"$gasrem_2088"
  br i1 %"$gascmp_2089", label %"$out_of_gas_2090", label %"$have_gas_2091"

"$out_of_gas_2090":                               ; preds = %"$have_gas_2086"
  call void @_out_of_gas()
  br label %"$have_gas_2091"

"$have_gas_2091":                                 ; preds = %"$out_of_gas_2090", %"$have_gas_2086"
  %"$consume_2092" = sub i64 %"$gasrem_2088", 1
  store i64 %"$consume_2092", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_104" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2093" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2094" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2093", 0
  %"$NatUtils.nat_to_int_envptr_2095" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2093", 1
  %"$ack31_2096" = load %TName_Nat*, %TName_Nat** %ack31, align 8
  %"$NatUtils.nat_to_int_call_2097" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2094"(i8* %"$NatUtils.nat_to_int_envptr_2095", %TName_Nat* %"$ack31_2096")
  store %Uint32 %"$NatUtils.nat_to_int_call_2097", %Uint32* %"$NatUtils.nat_to_int_104", align 4
  %"$$NatUtils.nat_to_int_104_2098" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_104", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_104_2098", %Uint32* %int31, align 4
  %"$gasrem_2099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2100" = icmp ugt i64 1, %"$gasrem_2099"
  br i1 %"$gascmp_2100", label %"$out_of_gas_2101", label %"$have_gas_2102"

"$out_of_gas_2101":                               ; preds = %"$have_gas_2091"
  call void @_out_of_gas()
  br label %"$have_gas_2102"

"$have_gas_2102":                                 ; preds = %"$out_of_gas_2101", %"$have_gas_2091"
  %"$consume_2103" = sub i64 %"$gasrem_2099", 1
  store i64 %"$consume_2103", i64* @_gasrem, align 8
  %int32 = alloca %Uint32, align 8
  %"$gasrem_2104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2105" = icmp ugt i64 1, %"$gasrem_2104"
  br i1 %"$gascmp_2105", label %"$out_of_gas_2106", label %"$have_gas_2107"

"$out_of_gas_2106":                               ; preds = %"$have_gas_2102"
  call void @_out_of_gas()
  br label %"$have_gas_2107"

"$have_gas_2107":                                 ; preds = %"$out_of_gas_2106", %"$have_gas_2102"
  %"$consume_2108" = sub i64 %"$gasrem_2104", 1
  store i64 %"$consume_2108", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_105" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2109" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2110" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2109", 0
  %"$NatUtils.nat_to_int_envptr_2111" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2109", 1
  %"$ack32_2112" = load %TName_Nat*, %TName_Nat** %ack32, align 8
  %"$NatUtils.nat_to_int_call_2113" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2110"(i8* %"$NatUtils.nat_to_int_envptr_2111", %TName_Nat* %"$ack32_2112")
  store %Uint32 %"$NatUtils.nat_to_int_call_2113", %Uint32* %"$NatUtils.nat_to_int_105", align 4
  %"$$NatUtils.nat_to_int_105_2114" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_105", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_105_2114", %Uint32* %int32, align 4
  %"$gasrem_2115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2116" = icmp ugt i64 1, %"$gasrem_2115"
  br i1 %"$gascmp_2116", label %"$out_of_gas_2117", label %"$have_gas_2118"

"$out_of_gas_2117":                               ; preds = %"$have_gas_2107"
  call void @_out_of_gas()
  br label %"$have_gas_2118"

"$have_gas_2118":                                 ; preds = %"$out_of_gas_2117", %"$have_gas_2107"
  %"$consume_2119" = sub i64 %"$gasrem_2115", 1
  store i64 %"$consume_2119", i64* @_gasrem, align 8
  %int33 = alloca %Uint32, align 8
  %"$gasrem_2120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2121" = icmp ugt i64 1, %"$gasrem_2120"
  br i1 %"$gascmp_2121", label %"$out_of_gas_2122", label %"$have_gas_2123"

"$out_of_gas_2122":                               ; preds = %"$have_gas_2118"
  call void @_out_of_gas()
  br label %"$have_gas_2123"

"$have_gas_2123":                                 ; preds = %"$out_of_gas_2122", %"$have_gas_2118"
  %"$consume_2124" = sub i64 %"$gasrem_2120", 1
  store i64 %"$consume_2124", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_106" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2125" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2126" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2125", 0
  %"$NatUtils.nat_to_int_envptr_2127" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2125", 1
  %"$ack33_2128" = load %TName_Nat*, %TName_Nat** %ack33, align 8
  %"$NatUtils.nat_to_int_call_2129" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2126"(i8* %"$NatUtils.nat_to_int_envptr_2127", %TName_Nat* %"$ack33_2128")
  store %Uint32 %"$NatUtils.nat_to_int_call_2129", %Uint32* %"$NatUtils.nat_to_int_106", align 4
  %"$$NatUtils.nat_to_int_106_2130" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_106", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_106_2130", %Uint32* %int33, align 4
  %"$gasrem_2131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2132" = icmp ugt i64 1, %"$gasrem_2131"
  br i1 %"$gascmp_2132", label %"$out_of_gas_2133", label %"$have_gas_2134"

"$out_of_gas_2133":                               ; preds = %"$have_gas_2123"
  call void @_out_of_gas()
  br label %"$have_gas_2134"

"$have_gas_2134":                                 ; preds = %"$out_of_gas_2133", %"$have_gas_2123"
  %"$consume_2135" = sub i64 %"$gasrem_2131", 1
  store i64 %"$consume_2135", i64* @_gasrem, align 8
  %int34 = alloca %Uint32, align 8
  %"$gasrem_2136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2137" = icmp ugt i64 1, %"$gasrem_2136"
  br i1 %"$gascmp_2137", label %"$out_of_gas_2138", label %"$have_gas_2139"

"$out_of_gas_2138":                               ; preds = %"$have_gas_2134"
  call void @_out_of_gas()
  br label %"$have_gas_2139"

"$have_gas_2139":                                 ; preds = %"$out_of_gas_2138", %"$have_gas_2134"
  %"$consume_2140" = sub i64 %"$gasrem_2136", 1
  store i64 %"$consume_2140", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_107" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2141" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2142" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2141", 0
  %"$NatUtils.nat_to_int_envptr_2143" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2141", 1
  %"$ack34_2144" = load %TName_Nat*, %TName_Nat** %ack34, align 8
  %"$NatUtils.nat_to_int_call_2145" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2142"(i8* %"$NatUtils.nat_to_int_envptr_2143", %TName_Nat* %"$ack34_2144")
  store %Uint32 %"$NatUtils.nat_to_int_call_2145", %Uint32* %"$NatUtils.nat_to_int_107", align 4
  %"$$NatUtils.nat_to_int_107_2146" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_107", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_107_2146", %Uint32* %int34, align 4
  %"$gasrem_2147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2148" = icmp ugt i64 1, %"$gasrem_2147"
  br i1 %"$gascmp_2148", label %"$out_of_gas_2149", label %"$have_gas_2150"

"$out_of_gas_2149":                               ; preds = %"$have_gas_2139"
  call void @_out_of_gas()
  br label %"$have_gas_2150"

"$have_gas_2150":                                 ; preds = %"$out_of_gas_2149", %"$have_gas_2139"
  %"$consume_2151" = sub i64 %"$gasrem_2147", 1
  store i64 %"$consume_2151", i64* @_gasrem, align 8
  %int40 = alloca %Uint32, align 8
  %"$gasrem_2152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2153" = icmp ugt i64 1, %"$gasrem_2152"
  br i1 %"$gascmp_2153", label %"$out_of_gas_2154", label %"$have_gas_2155"

"$out_of_gas_2154":                               ; preds = %"$have_gas_2150"
  call void @_out_of_gas()
  br label %"$have_gas_2155"

"$have_gas_2155":                                 ; preds = %"$out_of_gas_2154", %"$have_gas_2150"
  %"$consume_2156" = sub i64 %"$gasrem_2152", 1
  store i64 %"$consume_2156", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_108" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_2157" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_2158" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2157", 0
  %"$NatUtils.nat_to_int_envptr_2159" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2157", 1
  %"$ack40_2160" = load %TName_Nat*, %TName_Nat** %ack40, align 8
  %"$NatUtils.nat_to_int_call_2161" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2158"(i8* %"$NatUtils.nat_to_int_envptr_2159", %TName_Nat* %"$ack40_2160")
  store %Uint32 %"$NatUtils.nat_to_int_call_2161", %Uint32* %"$NatUtils.nat_to_int_108", align 4
  %"$$NatUtils.nat_to_int_108_2162" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_108", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_108_2162", %Uint32* %int40, align 4
  %"$gasrem_2163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2164" = icmp ugt i64 1, %"$gasrem_2163"
  br i1 %"$gascmp_2164", label %"$out_of_gas_2165", label %"$have_gas_2166"

"$out_of_gas_2165":                               ; preds = %"$have_gas_2155"
  call void @_out_of_gas()
  br label %"$have_gas_2166"

"$have_gas_2166":                                 ; preds = %"$out_of_gas_2165", %"$have_gas_2155"
  %"$consume_2167" = sub i64 %"$gasrem_2163", 1
  store i64 %"$consume_2167", i64* @_gasrem, align 8
  %sum = alloca %Uint32, align 8
  %"$gasrem_2168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2169" = icmp ugt i64 4, %"$gasrem_2168"
  br i1 %"$gascmp_2169", label %"$out_of_gas_2170", label %"$have_gas_2171"

"$out_of_gas_2170":                               ; preds = %"$have_gas_2166"
  call void @_out_of_gas()
  br label %"$have_gas_2171"

"$have_gas_2171":                                 ; preds = %"$out_of_gas_2170", %"$have_gas_2166"
  %"$consume_2172" = sub i64 %"$gasrem_2168", 4
  store i64 %"$consume_2172", i64* @_gasrem, align 8
  %"$int01_2173" = load %Uint32, %Uint32* %int01, align 4
  %"$int02_2174" = load %Uint32, %Uint32* %int02, align 4
  %"$add_call_2175" = call %Uint32 @_add_Uint32(%Uint32 %"$int01_2173", %Uint32 %"$int02_2174")
  store %Uint32 %"$add_call_2175", %Uint32* %sum, align 4
  %"$gasrem_2176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2177" = icmp ugt i64 1, %"$gasrem_2176"
  br i1 %"$gascmp_2177", label %"$out_of_gas_2178", label %"$have_gas_2179"

"$out_of_gas_2178":                               ; preds = %"$have_gas_2171"
  call void @_out_of_gas()
  br label %"$have_gas_2179"

"$have_gas_2179":                                 ; preds = %"$out_of_gas_2178", %"$have_gas_2171"
  %"$consume_2180" = sub i64 %"$gasrem_2176", 1
  store i64 %"$consume_2180", i64* @_gasrem, align 8
  %"$sum_7" = alloca %Uint32, align 8
  %"$gasrem_2181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2182" = icmp ugt i64 4, %"$gasrem_2181"
  br i1 %"$gascmp_2182", label %"$out_of_gas_2183", label %"$have_gas_2184"

"$out_of_gas_2183":                               ; preds = %"$have_gas_2179"
  call void @_out_of_gas()
  br label %"$have_gas_2184"

"$have_gas_2184":                                 ; preds = %"$out_of_gas_2183", %"$have_gas_2179"
  %"$consume_2185" = sub i64 %"$gasrem_2181", 4
  store i64 %"$consume_2185", i64* @_gasrem, align 8
  %"$sum_2186" = load %Uint32, %Uint32* %sum, align 4
  %"$int03_2187" = load %Uint32, %Uint32* %int03, align 4
  %"$add_call_2188" = call %Uint32 @_add_Uint32(%Uint32 %"$sum_2186", %Uint32 %"$int03_2187")
  store %Uint32 %"$add_call_2188", %Uint32* %"$sum_7", align 4
  %"$gasrem_2189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2190" = icmp ugt i64 1, %"$gasrem_2189"
  br i1 %"$gascmp_2190", label %"$out_of_gas_2191", label %"$have_gas_2192"

"$out_of_gas_2191":                               ; preds = %"$have_gas_2184"
  call void @_out_of_gas()
  br label %"$have_gas_2192"

"$have_gas_2192":                                 ; preds = %"$out_of_gas_2191", %"$have_gas_2184"
  %"$consume_2193" = sub i64 %"$gasrem_2189", 1
  store i64 %"$consume_2193", i64* @_gasrem, align 8
  %"$sum_8" = alloca %Uint32, align 8
  %"$gasrem_2194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2195" = icmp ugt i64 4, %"$gasrem_2194"
  br i1 %"$gascmp_2195", label %"$out_of_gas_2196", label %"$have_gas_2197"

"$out_of_gas_2196":                               ; preds = %"$have_gas_2192"
  call void @_out_of_gas()
  br label %"$have_gas_2197"

"$have_gas_2197":                                 ; preds = %"$out_of_gas_2196", %"$have_gas_2192"
  %"$consume_2198" = sub i64 %"$gasrem_2194", 4
  store i64 %"$consume_2198", i64* @_gasrem, align 8
  %"$$sum_7_2199" = load %Uint32, %Uint32* %"$sum_7", align 4
  %"$int04_2200" = load %Uint32, %Uint32* %int04, align 4
  %"$add_call_2201" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_7_2199", %Uint32 %"$int04_2200")
  store %Uint32 %"$add_call_2201", %Uint32* %"$sum_8", align 4
  %"$gasrem_2202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2203" = icmp ugt i64 1, %"$gasrem_2202"
  br i1 %"$gascmp_2203", label %"$out_of_gas_2204", label %"$have_gas_2205"

"$out_of_gas_2204":                               ; preds = %"$have_gas_2197"
  call void @_out_of_gas()
  br label %"$have_gas_2205"

"$have_gas_2205":                                 ; preds = %"$out_of_gas_2204", %"$have_gas_2197"
  %"$consume_2206" = sub i64 %"$gasrem_2202", 1
  store i64 %"$consume_2206", i64* @_gasrem, align 8
  %"$sum_9" = alloca %Uint32, align 8
  %"$gasrem_2207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2208" = icmp ugt i64 4, %"$gasrem_2207"
  br i1 %"$gascmp_2208", label %"$out_of_gas_2209", label %"$have_gas_2210"

"$out_of_gas_2209":                               ; preds = %"$have_gas_2205"
  call void @_out_of_gas()
  br label %"$have_gas_2210"

"$have_gas_2210":                                 ; preds = %"$out_of_gas_2209", %"$have_gas_2205"
  %"$consume_2211" = sub i64 %"$gasrem_2207", 4
  store i64 %"$consume_2211", i64* @_gasrem, align 8
  %"$$sum_8_2212" = load %Uint32, %Uint32* %"$sum_8", align 4
  %"$int10_2213" = load %Uint32, %Uint32* %int10, align 4
  %"$add_call_2214" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_8_2212", %Uint32 %"$int10_2213")
  store %Uint32 %"$add_call_2214", %Uint32* %"$sum_9", align 4
  %"$gasrem_2215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2216" = icmp ugt i64 1, %"$gasrem_2215"
  br i1 %"$gascmp_2216", label %"$out_of_gas_2217", label %"$have_gas_2218"

"$out_of_gas_2217":                               ; preds = %"$have_gas_2210"
  call void @_out_of_gas()
  br label %"$have_gas_2218"

"$have_gas_2218":                                 ; preds = %"$out_of_gas_2217", %"$have_gas_2210"
  %"$consume_2219" = sub i64 %"$gasrem_2215", 1
  store i64 %"$consume_2219", i64* @_gasrem, align 8
  %"$sum_10" = alloca %Uint32, align 8
  %"$gasrem_2220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2221" = icmp ugt i64 4, %"$gasrem_2220"
  br i1 %"$gascmp_2221", label %"$out_of_gas_2222", label %"$have_gas_2223"

"$out_of_gas_2222":                               ; preds = %"$have_gas_2218"
  call void @_out_of_gas()
  br label %"$have_gas_2223"

"$have_gas_2223":                                 ; preds = %"$out_of_gas_2222", %"$have_gas_2218"
  %"$consume_2224" = sub i64 %"$gasrem_2220", 4
  store i64 %"$consume_2224", i64* @_gasrem, align 8
  %"$$sum_9_2225" = load %Uint32, %Uint32* %"$sum_9", align 4
  %"$int11_2226" = load %Uint32, %Uint32* %int11, align 4
  %"$add_call_2227" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_9_2225", %Uint32 %"$int11_2226")
  store %Uint32 %"$add_call_2227", %Uint32* %"$sum_10", align 4
  %"$gasrem_2228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2229" = icmp ugt i64 1, %"$gasrem_2228"
  br i1 %"$gascmp_2229", label %"$out_of_gas_2230", label %"$have_gas_2231"

"$out_of_gas_2230":                               ; preds = %"$have_gas_2223"
  call void @_out_of_gas()
  br label %"$have_gas_2231"

"$have_gas_2231":                                 ; preds = %"$out_of_gas_2230", %"$have_gas_2223"
  %"$consume_2232" = sub i64 %"$gasrem_2228", 1
  store i64 %"$consume_2232", i64* @_gasrem, align 8
  %"$sum_11" = alloca %Uint32, align 8
  %"$gasrem_2233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2234" = icmp ugt i64 4, %"$gasrem_2233"
  br i1 %"$gascmp_2234", label %"$out_of_gas_2235", label %"$have_gas_2236"

"$out_of_gas_2235":                               ; preds = %"$have_gas_2231"
  call void @_out_of_gas()
  br label %"$have_gas_2236"

"$have_gas_2236":                                 ; preds = %"$out_of_gas_2235", %"$have_gas_2231"
  %"$consume_2237" = sub i64 %"$gasrem_2233", 4
  store i64 %"$consume_2237", i64* @_gasrem, align 8
  %"$$sum_10_2238" = load %Uint32, %Uint32* %"$sum_10", align 4
  %"$int12_2239" = load %Uint32, %Uint32* %int12, align 4
  %"$add_call_2240" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_10_2238", %Uint32 %"$int12_2239")
  store %Uint32 %"$add_call_2240", %Uint32* %"$sum_11", align 4
  %"$gasrem_2241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2242" = icmp ugt i64 1, %"$gasrem_2241"
  br i1 %"$gascmp_2242", label %"$out_of_gas_2243", label %"$have_gas_2244"

"$out_of_gas_2243":                               ; preds = %"$have_gas_2236"
  call void @_out_of_gas()
  br label %"$have_gas_2244"

"$have_gas_2244":                                 ; preds = %"$out_of_gas_2243", %"$have_gas_2236"
  %"$consume_2245" = sub i64 %"$gasrem_2241", 1
  store i64 %"$consume_2245", i64* @_gasrem, align 8
  %"$sum_12" = alloca %Uint32, align 8
  %"$gasrem_2246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2247" = icmp ugt i64 4, %"$gasrem_2246"
  br i1 %"$gascmp_2247", label %"$out_of_gas_2248", label %"$have_gas_2249"

"$out_of_gas_2248":                               ; preds = %"$have_gas_2244"
  call void @_out_of_gas()
  br label %"$have_gas_2249"

"$have_gas_2249":                                 ; preds = %"$out_of_gas_2248", %"$have_gas_2244"
  %"$consume_2250" = sub i64 %"$gasrem_2246", 4
  store i64 %"$consume_2250", i64* @_gasrem, align 8
  %"$$sum_11_2251" = load %Uint32, %Uint32* %"$sum_11", align 4
  %"$int13_2252" = load %Uint32, %Uint32* %int13, align 4
  %"$add_call_2253" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_11_2251", %Uint32 %"$int13_2252")
  store %Uint32 %"$add_call_2253", %Uint32* %"$sum_12", align 4
  %"$gasrem_2254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2255" = icmp ugt i64 1, %"$gasrem_2254"
  br i1 %"$gascmp_2255", label %"$out_of_gas_2256", label %"$have_gas_2257"

"$out_of_gas_2256":                               ; preds = %"$have_gas_2249"
  call void @_out_of_gas()
  br label %"$have_gas_2257"

"$have_gas_2257":                                 ; preds = %"$out_of_gas_2256", %"$have_gas_2249"
  %"$consume_2258" = sub i64 %"$gasrem_2254", 1
  store i64 %"$consume_2258", i64* @_gasrem, align 8
  %"$sum_13" = alloca %Uint32, align 8
  %"$gasrem_2259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2260" = icmp ugt i64 4, %"$gasrem_2259"
  br i1 %"$gascmp_2260", label %"$out_of_gas_2261", label %"$have_gas_2262"

"$out_of_gas_2261":                               ; preds = %"$have_gas_2257"
  call void @_out_of_gas()
  br label %"$have_gas_2262"

"$have_gas_2262":                                 ; preds = %"$out_of_gas_2261", %"$have_gas_2257"
  %"$consume_2263" = sub i64 %"$gasrem_2259", 4
  store i64 %"$consume_2263", i64* @_gasrem, align 8
  %"$$sum_12_2264" = load %Uint32, %Uint32* %"$sum_12", align 4
  %"$int14_2265" = load %Uint32, %Uint32* %int14, align 4
  %"$add_call_2266" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_12_2264", %Uint32 %"$int14_2265")
  store %Uint32 %"$add_call_2266", %Uint32* %"$sum_13", align 4
  %"$gasrem_2267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2268" = icmp ugt i64 1, %"$gasrem_2267"
  br i1 %"$gascmp_2268", label %"$out_of_gas_2269", label %"$have_gas_2270"

"$out_of_gas_2269":                               ; preds = %"$have_gas_2262"
  call void @_out_of_gas()
  br label %"$have_gas_2270"

"$have_gas_2270":                                 ; preds = %"$out_of_gas_2269", %"$have_gas_2262"
  %"$consume_2271" = sub i64 %"$gasrem_2267", 1
  store i64 %"$consume_2271", i64* @_gasrem, align 8
  %"$sum_14" = alloca %Uint32, align 8
  %"$gasrem_2272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2273" = icmp ugt i64 4, %"$gasrem_2272"
  br i1 %"$gascmp_2273", label %"$out_of_gas_2274", label %"$have_gas_2275"

"$out_of_gas_2274":                               ; preds = %"$have_gas_2270"
  call void @_out_of_gas()
  br label %"$have_gas_2275"

"$have_gas_2275":                                 ; preds = %"$out_of_gas_2274", %"$have_gas_2270"
  %"$consume_2276" = sub i64 %"$gasrem_2272", 4
  store i64 %"$consume_2276", i64* @_gasrem, align 8
  %"$$sum_13_2277" = load %Uint32, %Uint32* %"$sum_13", align 4
  %"$int20_2278" = load %Uint32, %Uint32* %int20, align 4
  %"$add_call_2279" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_13_2277", %Uint32 %"$int20_2278")
  store %Uint32 %"$add_call_2279", %Uint32* %"$sum_14", align 4
  %"$gasrem_2280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2281" = icmp ugt i64 1, %"$gasrem_2280"
  br i1 %"$gascmp_2281", label %"$out_of_gas_2282", label %"$have_gas_2283"

"$out_of_gas_2282":                               ; preds = %"$have_gas_2275"
  call void @_out_of_gas()
  br label %"$have_gas_2283"

"$have_gas_2283":                                 ; preds = %"$out_of_gas_2282", %"$have_gas_2275"
  %"$consume_2284" = sub i64 %"$gasrem_2280", 1
  store i64 %"$consume_2284", i64* @_gasrem, align 8
  %"$sum_15" = alloca %Uint32, align 8
  %"$gasrem_2285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2286" = icmp ugt i64 4, %"$gasrem_2285"
  br i1 %"$gascmp_2286", label %"$out_of_gas_2287", label %"$have_gas_2288"

"$out_of_gas_2287":                               ; preds = %"$have_gas_2283"
  call void @_out_of_gas()
  br label %"$have_gas_2288"

"$have_gas_2288":                                 ; preds = %"$out_of_gas_2287", %"$have_gas_2283"
  %"$consume_2289" = sub i64 %"$gasrem_2285", 4
  store i64 %"$consume_2289", i64* @_gasrem, align 8
  %"$$sum_14_2290" = load %Uint32, %Uint32* %"$sum_14", align 4
  %"$int21_2291" = load %Uint32, %Uint32* %int21, align 4
  %"$add_call_2292" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_14_2290", %Uint32 %"$int21_2291")
  store %Uint32 %"$add_call_2292", %Uint32* %"$sum_15", align 4
  %"$gasrem_2293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2294" = icmp ugt i64 1, %"$gasrem_2293"
  br i1 %"$gascmp_2294", label %"$out_of_gas_2295", label %"$have_gas_2296"

"$out_of_gas_2295":                               ; preds = %"$have_gas_2288"
  call void @_out_of_gas()
  br label %"$have_gas_2296"

"$have_gas_2296":                                 ; preds = %"$out_of_gas_2295", %"$have_gas_2288"
  %"$consume_2297" = sub i64 %"$gasrem_2293", 1
  store i64 %"$consume_2297", i64* @_gasrem, align 8
  %"$sum_16" = alloca %Uint32, align 8
  %"$gasrem_2298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2299" = icmp ugt i64 4, %"$gasrem_2298"
  br i1 %"$gascmp_2299", label %"$out_of_gas_2300", label %"$have_gas_2301"

"$out_of_gas_2300":                               ; preds = %"$have_gas_2296"
  call void @_out_of_gas()
  br label %"$have_gas_2301"

"$have_gas_2301":                                 ; preds = %"$out_of_gas_2300", %"$have_gas_2296"
  %"$consume_2302" = sub i64 %"$gasrem_2298", 4
  store i64 %"$consume_2302", i64* @_gasrem, align 8
  %"$$sum_15_2303" = load %Uint32, %Uint32* %"$sum_15", align 4
  %"$int22_2304" = load %Uint32, %Uint32* %int22, align 4
  %"$add_call_2305" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_15_2303", %Uint32 %"$int22_2304")
  store %Uint32 %"$add_call_2305", %Uint32* %"$sum_16", align 4
  %"$gasrem_2306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2307" = icmp ugt i64 1, %"$gasrem_2306"
  br i1 %"$gascmp_2307", label %"$out_of_gas_2308", label %"$have_gas_2309"

"$out_of_gas_2308":                               ; preds = %"$have_gas_2301"
  call void @_out_of_gas()
  br label %"$have_gas_2309"

"$have_gas_2309":                                 ; preds = %"$out_of_gas_2308", %"$have_gas_2301"
  %"$consume_2310" = sub i64 %"$gasrem_2306", 1
  store i64 %"$consume_2310", i64* @_gasrem, align 8
  %"$sum_17" = alloca %Uint32, align 8
  %"$gasrem_2311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2312" = icmp ugt i64 4, %"$gasrem_2311"
  br i1 %"$gascmp_2312", label %"$out_of_gas_2313", label %"$have_gas_2314"

"$out_of_gas_2313":                               ; preds = %"$have_gas_2309"
  call void @_out_of_gas()
  br label %"$have_gas_2314"

"$have_gas_2314":                                 ; preds = %"$out_of_gas_2313", %"$have_gas_2309"
  %"$consume_2315" = sub i64 %"$gasrem_2311", 4
  store i64 %"$consume_2315", i64* @_gasrem, align 8
  %"$$sum_16_2316" = load %Uint32, %Uint32* %"$sum_16", align 4
  %"$int23_2317" = load %Uint32, %Uint32* %int23, align 4
  %"$add_call_2318" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_16_2316", %Uint32 %"$int23_2317")
  store %Uint32 %"$add_call_2318", %Uint32* %"$sum_17", align 4
  %"$gasrem_2319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2320" = icmp ugt i64 1, %"$gasrem_2319"
  br i1 %"$gascmp_2320", label %"$out_of_gas_2321", label %"$have_gas_2322"

"$out_of_gas_2321":                               ; preds = %"$have_gas_2314"
  call void @_out_of_gas()
  br label %"$have_gas_2322"

"$have_gas_2322":                                 ; preds = %"$out_of_gas_2321", %"$have_gas_2314"
  %"$consume_2323" = sub i64 %"$gasrem_2319", 1
  store i64 %"$consume_2323", i64* @_gasrem, align 8
  %"$sum_18" = alloca %Uint32, align 8
  %"$gasrem_2324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2325" = icmp ugt i64 4, %"$gasrem_2324"
  br i1 %"$gascmp_2325", label %"$out_of_gas_2326", label %"$have_gas_2327"

"$out_of_gas_2326":                               ; preds = %"$have_gas_2322"
  call void @_out_of_gas()
  br label %"$have_gas_2327"

"$have_gas_2327":                                 ; preds = %"$out_of_gas_2326", %"$have_gas_2322"
  %"$consume_2328" = sub i64 %"$gasrem_2324", 4
  store i64 %"$consume_2328", i64* @_gasrem, align 8
  %"$$sum_17_2329" = load %Uint32, %Uint32* %"$sum_17", align 4
  %"$int24_2330" = load %Uint32, %Uint32* %int24, align 4
  %"$add_call_2331" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_17_2329", %Uint32 %"$int24_2330")
  store %Uint32 %"$add_call_2331", %Uint32* %"$sum_18", align 4
  %"$gasrem_2332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2333" = icmp ugt i64 1, %"$gasrem_2332"
  br i1 %"$gascmp_2333", label %"$out_of_gas_2334", label %"$have_gas_2335"

"$out_of_gas_2334":                               ; preds = %"$have_gas_2327"
  call void @_out_of_gas()
  br label %"$have_gas_2335"

"$have_gas_2335":                                 ; preds = %"$out_of_gas_2334", %"$have_gas_2327"
  %"$consume_2336" = sub i64 %"$gasrem_2332", 1
  store i64 %"$consume_2336", i64* @_gasrem, align 8
  %"$sum_19" = alloca %Uint32, align 8
  %"$gasrem_2337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2338" = icmp ugt i64 4, %"$gasrem_2337"
  br i1 %"$gascmp_2338", label %"$out_of_gas_2339", label %"$have_gas_2340"

"$out_of_gas_2339":                               ; preds = %"$have_gas_2335"
  call void @_out_of_gas()
  br label %"$have_gas_2340"

"$have_gas_2340":                                 ; preds = %"$out_of_gas_2339", %"$have_gas_2335"
  %"$consume_2341" = sub i64 %"$gasrem_2337", 4
  store i64 %"$consume_2341", i64* @_gasrem, align 8
  %"$$sum_18_2342" = load %Uint32, %Uint32* %"$sum_18", align 4
  %"$int30_2343" = load %Uint32, %Uint32* %int30, align 4
  %"$add_call_2344" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_18_2342", %Uint32 %"$int30_2343")
  store %Uint32 %"$add_call_2344", %Uint32* %"$sum_19", align 4
  %"$gasrem_2345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2346" = icmp ugt i64 1, %"$gasrem_2345"
  br i1 %"$gascmp_2346", label %"$out_of_gas_2347", label %"$have_gas_2348"

"$out_of_gas_2347":                               ; preds = %"$have_gas_2340"
  call void @_out_of_gas()
  br label %"$have_gas_2348"

"$have_gas_2348":                                 ; preds = %"$out_of_gas_2347", %"$have_gas_2340"
  %"$consume_2349" = sub i64 %"$gasrem_2345", 1
  store i64 %"$consume_2349", i64* @_gasrem, align 8
  %"$sum_20" = alloca %Uint32, align 8
  %"$gasrem_2350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2351" = icmp ugt i64 4, %"$gasrem_2350"
  br i1 %"$gascmp_2351", label %"$out_of_gas_2352", label %"$have_gas_2353"

"$out_of_gas_2352":                               ; preds = %"$have_gas_2348"
  call void @_out_of_gas()
  br label %"$have_gas_2353"

"$have_gas_2353":                                 ; preds = %"$out_of_gas_2352", %"$have_gas_2348"
  %"$consume_2354" = sub i64 %"$gasrem_2350", 4
  store i64 %"$consume_2354", i64* @_gasrem, align 8
  %"$$sum_19_2355" = load %Uint32, %Uint32* %"$sum_19", align 4
  %"$int31_2356" = load %Uint32, %Uint32* %int31, align 4
  %"$add_call_2357" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_19_2355", %Uint32 %"$int31_2356")
  store %Uint32 %"$add_call_2357", %Uint32* %"$sum_20", align 4
  %"$gasrem_2358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2359" = icmp ugt i64 1, %"$gasrem_2358"
  br i1 %"$gascmp_2359", label %"$out_of_gas_2360", label %"$have_gas_2361"

"$out_of_gas_2360":                               ; preds = %"$have_gas_2353"
  call void @_out_of_gas()
  br label %"$have_gas_2361"

"$have_gas_2361":                                 ; preds = %"$out_of_gas_2360", %"$have_gas_2353"
  %"$consume_2362" = sub i64 %"$gasrem_2358", 1
  store i64 %"$consume_2362", i64* @_gasrem, align 8
  %"$sum_21" = alloca %Uint32, align 8
  %"$gasrem_2363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2364" = icmp ugt i64 4, %"$gasrem_2363"
  br i1 %"$gascmp_2364", label %"$out_of_gas_2365", label %"$have_gas_2366"

"$out_of_gas_2365":                               ; preds = %"$have_gas_2361"
  call void @_out_of_gas()
  br label %"$have_gas_2366"

"$have_gas_2366":                                 ; preds = %"$out_of_gas_2365", %"$have_gas_2361"
  %"$consume_2367" = sub i64 %"$gasrem_2363", 4
  store i64 %"$consume_2367", i64* @_gasrem, align 8
  %"$$sum_20_2368" = load %Uint32, %Uint32* %"$sum_20", align 4
  %"$int32_2369" = load %Uint32, %Uint32* %int32, align 4
  %"$add_call_2370" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_20_2368", %Uint32 %"$int32_2369")
  store %Uint32 %"$add_call_2370", %Uint32* %"$sum_21", align 4
  %"$gasrem_2371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2372" = icmp ugt i64 1, %"$gasrem_2371"
  br i1 %"$gascmp_2372", label %"$out_of_gas_2373", label %"$have_gas_2374"

"$out_of_gas_2373":                               ; preds = %"$have_gas_2366"
  call void @_out_of_gas()
  br label %"$have_gas_2374"

"$have_gas_2374":                                 ; preds = %"$out_of_gas_2373", %"$have_gas_2366"
  %"$consume_2375" = sub i64 %"$gasrem_2371", 1
  store i64 %"$consume_2375", i64* @_gasrem, align 8
  %"$sum_22" = alloca %Uint32, align 8
  %"$gasrem_2376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2377" = icmp ugt i64 4, %"$gasrem_2376"
  br i1 %"$gascmp_2377", label %"$out_of_gas_2378", label %"$have_gas_2379"

"$out_of_gas_2378":                               ; preds = %"$have_gas_2374"
  call void @_out_of_gas()
  br label %"$have_gas_2379"

"$have_gas_2379":                                 ; preds = %"$out_of_gas_2378", %"$have_gas_2374"
  %"$consume_2380" = sub i64 %"$gasrem_2376", 4
  store i64 %"$consume_2380", i64* @_gasrem, align 8
  %"$$sum_21_2381" = load %Uint32, %Uint32* %"$sum_21", align 4
  %"$int33_2382" = load %Uint32, %Uint32* %int33, align 4
  %"$add_call_2383" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_21_2381", %Uint32 %"$int33_2382")
  store %Uint32 %"$add_call_2383", %Uint32* %"$sum_22", align 4
  %"$gasrem_2384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2385" = icmp ugt i64 1, %"$gasrem_2384"
  br i1 %"$gascmp_2385", label %"$out_of_gas_2386", label %"$have_gas_2387"

"$out_of_gas_2386":                               ; preds = %"$have_gas_2379"
  call void @_out_of_gas()
  br label %"$have_gas_2387"

"$have_gas_2387":                                 ; preds = %"$out_of_gas_2386", %"$have_gas_2379"
  %"$consume_2388" = sub i64 %"$gasrem_2384", 1
  store i64 %"$consume_2388", i64* @_gasrem, align 8
  %"$sum_23" = alloca %Uint32, align 8
  %"$gasrem_2389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2390" = icmp ugt i64 4, %"$gasrem_2389"
  br i1 %"$gascmp_2390", label %"$out_of_gas_2391", label %"$have_gas_2392"

"$out_of_gas_2391":                               ; preds = %"$have_gas_2387"
  call void @_out_of_gas()
  br label %"$have_gas_2392"

"$have_gas_2392":                                 ; preds = %"$out_of_gas_2391", %"$have_gas_2387"
  %"$consume_2393" = sub i64 %"$gasrem_2389", 4
  store i64 %"$consume_2393", i64* @_gasrem, align 8
  %"$$sum_22_2394" = load %Uint32, %Uint32* %"$sum_22", align 4
  %"$int34_2395" = load %Uint32, %Uint32* %int34, align 4
  %"$add_call_2396" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_22_2394", %Uint32 %"$int34_2395")
  store %Uint32 %"$add_call_2396", %Uint32* %"$sum_23", align 4
  %"$gasrem_2397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2398" = icmp ugt i64 1, %"$gasrem_2397"
  br i1 %"$gascmp_2398", label %"$out_of_gas_2399", label %"$have_gas_2400"

"$out_of_gas_2399":                               ; preds = %"$have_gas_2392"
  call void @_out_of_gas()
  br label %"$have_gas_2400"

"$have_gas_2400":                                 ; preds = %"$out_of_gas_2399", %"$have_gas_2392"
  %"$consume_2401" = sub i64 %"$gasrem_2397", 1
  store i64 %"$consume_2401", i64* @_gasrem, align 8
  %"$sum_24" = alloca %Uint32, align 8
  %"$gasrem_2402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2403" = icmp ugt i64 4, %"$gasrem_2402"
  br i1 %"$gascmp_2403", label %"$out_of_gas_2404", label %"$have_gas_2405"

"$out_of_gas_2404":                               ; preds = %"$have_gas_2400"
  call void @_out_of_gas()
  br label %"$have_gas_2405"

"$have_gas_2405":                                 ; preds = %"$out_of_gas_2404", %"$have_gas_2400"
  %"$consume_2406" = sub i64 %"$gasrem_2402", 4
  store i64 %"$consume_2406", i64* @_gasrem, align 8
  %"$$sum_23_2407" = load %Uint32, %Uint32* %"$sum_23", align 4
  %"$int40_2408" = load %Uint32, %Uint32* %int40, align 4
  %"$add_call_2409" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_23_2407", %Uint32 %"$int40_2408")
  store %Uint32 %"$add_call_2409", %Uint32* %"$sum_24", align 4
  %"$gasrem_2410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2411" = icmp ugt i64 1, %"$gasrem_2410"
  br i1 %"$gascmp_2411", label %"$out_of_gas_2412", label %"$have_gas_2413"

"$out_of_gas_2412":                               ; preds = %"$have_gas_2405"
  call void @_out_of_gas()
  br label %"$have_gas_2413"

"$have_gas_2413":                                 ; preds = %"$out_of_gas_2412", %"$have_gas_2405"
  %"$consume_2414" = sub i64 %"$gasrem_2410", 1
  store i64 %"$consume_2414", i64* @_gasrem, align 8
  %"$$sum_24_2415" = load %Uint32, %Uint32* %"$sum_24", align 4
  store %Uint32 %"$$sum_24_2415", %Uint32* %"$expr_139", align 4
  %"$$expr_139_2416" = load %Uint32, %Uint32* %"$expr_139", align 4
  ret %Uint32 %"$$expr_139_2416"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_2417" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_2418" = alloca %Uint32, align 8
  %"$memvoidcast_2419" = bitcast %Uint32* %"$pval_2418" to i8*
  store %Uint32 %"$exprval_2417", %Uint32* %"$pval_2418", align 4
  %"$execptr_load_2420" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2420", %_TyDescrTy_Typ* @"$TyDescr_Uint32_176", i8* %"$memvoidcast_2419")
  ret void
}
