; let ecrecover : ByStr -> ByStr64 -> Uint32 -> ByStr20 =
; fun (msg : ByStr) =>
; fun (sig : ByStr64) =>
; fun (recid : Uint32) =>
; let pk = builtin ecdsa_recover_pk msg sig recid in
; let pos = Uint32 1 in
; let len = Uint32 64 in
; let pk_bs = builtin to_bystr pk in
; let pk_ = builtin substr pk_bs pos len in
; let pkHash = builtin keccak256hash pk_ in
; let pkHash_bs = builtin to_bystr pkHash in
; let pos = Uint32 12 in
; let len = Uint32 20 in
; let addr_bs = builtin substr pkHash_bs pos len in
; let addr_opt = builtin to_bystr20 addr_bs in
; match addr_opt with
; | Some addr =>
; addr
; | None =>
; let zero = Uint32 0 in
; let ignore = builtin div zero zero in
; 0x0000000000000000000000000000000000000000
; end
; in
; 
; let header_hash =
; fun (header : ByStr) =>
; let h1 = builtin sha256hash header in
; let h2 = builtin sha256hash h1 in
; builtin to_bystr h2
; in
; 
; let sig = 0x7d588d79ac9f0931c69150de6bfe5289f0147893781bffbcc32b5e07bd687d1048dda039ffc1e87de2e98610dc876e97411d604948473904b12b64bed8880bcc in
; let msg = 0x000000009b91561700000000f48a4057bef268cc3fdb034e69dc2e942907e08ac4a420d1b196b8c28ebf5bf2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a8be0a1605a63a31704aec4eb4f1023f1ecc2934bd86f119ab77526f9477af9a57e1a5f508e0000410782720ab189fffd84057b226c6561646572223a332c227672665f76616c7565223a22424f4f336f58796b32524970655651593338547133714a423832737a4a68366e4f6f724a55702f4a4d582b474c707a347a497347394c4a6c34784a6f34657448674f56357169364d484b6674714f69724f755a495a69593d222c227672665f70726f6f66223a22635953525746506f69394748414247526255646836612b35506f4f317776354a557a53417457786845637071757430536a595873344c7453353574534a74334174493059616d4c67524a797a524f68564756626d34673d3d222c226c6173745f636f6e6669675f626c6f636b5f6e756d223a33363433322c226e65775f636861696e5f636f6e666967223a7b2276657273696f6e223a312c2276696577223a342c226e223a382c2263223a322c22626c6f636b5f6d73675f64656c6179223a31303030303030303030302c22686173685f6d73675f64656c6179223a31303030303030303030302c22706565725f68616e647368616b655f74696d656f7574223a31303030303030303030302c227065657273223a5b7b22696e646578223a312c226964223a2231323035303238313732393138353430623262353132656165313837326132613265336132386439383963363064393564616238383239616461376437646437303664363538227d2c7b22696e646578223a342c226964223a2231323035303236373939333061343261616633633639373938636138613366313265313334633031393430353831386437383364313137343865303339646538353135393838227d2c7b22696e646578223a332c226964223a2231323035303234383261636236353634623139623930363533663665396338303632393265386161383366373865376139333832613234613665666534316330633036663339227d2c7b22696e646578223a352c226964223a2231323035303234363864643138393965643264316363326238323938383261313635613065636236613734356166306337326562323938326436366234333131623465663733227d2c7b22696e646578223a382c226964223a2231323035303339333432313434356239343231626434636339306437626338386339333031353538303437613736623230633539653763353131656537643232393938326231227d2c7b22696e646578223a322c226964223a2231323035303338623861663632313065636664636263616232323535326566386438636634316336663836663963663961623533643836353734316366646238333366303662227d2c7b22696e646578223a372c226964223a2231323035303331653037373966356335636362323631323335326665346132303066393964336537373538653730626135336636303763353966663232613330663637386666227d2c7b22696e646578223a362c226964223a2231323035303265623162616162363032633538393932383235363163646161613761616262636464306363666362633365373937393361633234616366393037373866333561227d5d2c22706f735f7461626c65223a5b322c382c352c352c382c372c312c342c352c362c352c342c372c372c332c332c342c362c312c322c342c382c352c342c372c342c362c362c322c322c312c312c382c382c362c362c362c372c382c372c342c382c352c312c332c332c382c352c332c362c332c362c372c352c362c322c332c312c322c362c352c322c312c342c322c312c382c342c382c332c382c372c372c352c312c372c342c342c312c352c322c352c362c312c322c382c332c332c312c332c312c342c312c372c382c362c382c322c352c312c342c352c332c322c322c322c382c332c332c332c362c372c342c372c342c322c372c352c362c375d2c226d61785f626c6f636b5f6368616e67655f76696577223a36303030307d7df8fc7a1f6a856313c591a3a747f4eca7218a820b in
; 
; let addr_gold = 0xa42a4e85034d5bebc225743da400cc4c0e43727a in
; let msg_bs = builtin to_bystr msg in
; let msg_hashed = header_hash msg_bs in
; let recid = Uint32 0 in
; 
; let addr_computed = ecrecover msg_hashed sig recid in
; builtin eq addr_computed addr_gold
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_15" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_55" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_54"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_54" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_56"**, %"$TyDescrTy_ADTTyp_55"* }
%"$TyDescrTy_ADTTyp_Constr_56" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$$fundef_13_env_84" = type {}
%Bystr = type { i8*, i32 }
%"$$fundef_11_env_85" = type { %Bystr, [64 x i8] }
%Uint32 = type { i32 }
%TName_Option_ByStr20 = type { i8, %CName_Some_ByStr20*, %CName_None_ByStr20* }
%CName_Some_ByStr20 = type <{ i8, [20 x i8] }>
%CName_None_ByStr20 = type <{ i8 }>
%"$$fundef_9_env_86" = type { %Bystr }
%"$$fundef_7_env_87" = type {}
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_16" = global %"$TyDescrTy_PrimTyp_15" zeroinitializer
@"$TyDescr_Int32_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Int32_Prim_16" to i8*) }
@"$TyDescr_Uint32_Prim_18" = global %"$TyDescrTy_PrimTyp_15" { i32 1, i32 0 }
@"$TyDescr_Uint32_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Uint32_Prim_18" to i8*) }
@"$TyDescr_Int64_Prim_20" = global %"$TyDescrTy_PrimTyp_15" { i32 0, i32 1 }
@"$TyDescr_Int64_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Int64_Prim_20" to i8*) }
@"$TyDescr_Uint64_Prim_22" = global %"$TyDescrTy_PrimTyp_15" { i32 1, i32 1 }
@"$TyDescr_Uint64_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Uint64_Prim_22" to i8*) }
@"$TyDescr_Int128_Prim_24" = global %"$TyDescrTy_PrimTyp_15" { i32 0, i32 2 }
@"$TyDescr_Int128_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Int128_Prim_24" to i8*) }
@"$TyDescr_Uint128_Prim_26" = global %"$TyDescrTy_PrimTyp_15" { i32 1, i32 2 }
@"$TyDescr_Uint128_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Uint128_Prim_26" to i8*) }
@"$TyDescr_Int256_Prim_28" = global %"$TyDescrTy_PrimTyp_15" { i32 0, i32 3 }
@"$TyDescr_Int256_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Int256_Prim_28" to i8*) }
@"$TyDescr_Uint256_Prim_30" = global %"$TyDescrTy_PrimTyp_15" { i32 1, i32 3 }
@"$TyDescr_Uint256_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Uint256_Prim_30" to i8*) }
@"$TyDescr_String_Prim_32" = global %"$TyDescrTy_PrimTyp_15" { i32 2, i32 0 }
@"$TyDescr_String_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_String_Prim_32" to i8*) }
@"$TyDescr_Bnum_Prim_34" = global %"$TyDescrTy_PrimTyp_15" { i32 3, i32 0 }
@"$TyDescr_Bnum_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bnum_Prim_34" to i8*) }
@"$TyDescr_Message_Prim_36" = global %"$TyDescrTy_PrimTyp_15" { i32 4, i32 0 }
@"$TyDescr_Message_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Message_Prim_36" to i8*) }
@"$TyDescr_Event_Prim_38" = global %"$TyDescrTy_PrimTyp_15" { i32 5, i32 0 }
@"$TyDescr_Event_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Event_Prim_38" to i8*) }
@"$TyDescr_Exception_Prim_40" = global %"$TyDescrTy_PrimTyp_15" { i32 6, i32 0 }
@"$TyDescr_Exception_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Exception_Prim_40" to i8*) }
@"$TyDescr_Bystr_Prim_42" = global %"$TyDescrTy_PrimTyp_15" { i32 7, i32 0 }
@"$TyDescr_Bystr_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bystr_Prim_42" to i8*) }
@"$TyDescr_Bystr1591_Prim_44" = global %"$TyDescrTy_PrimTyp_15" { i32 8, i32 1591 }
@"$TyDescr_Bystr1591_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bystr1591_Prim_44" to i8*) }
@"$TyDescr_Bystr32_Prim_46" = global %"$TyDescrTy_PrimTyp_15" { i32 8, i32 32 }
@"$TyDescr_Bystr32_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bystr32_Prim_46" to i8*) }
@"$TyDescr_Bystr65_Prim_48" = global %"$TyDescrTy_PrimTyp_15" { i32 8, i32 65 }
@"$TyDescr_Bystr65_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bystr65_Prim_48" to i8*) }
@"$TyDescr_Bystr64_Prim_50" = global %"$TyDescrTy_PrimTyp_15" { i32 8, i32 64 }
@"$TyDescr_Bystr64_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bystr64_Prim_50" to i8*) }
@"$TyDescr_Bystr20_Prim_52" = global %"$TyDescrTy_PrimTyp_15" { i32 8, i32 20 }
@"$TyDescr_Bystr20_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bystr20_Prim_52" to i8*) }
@"$TyDescr_ADT_Bool_57" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_54"* @"$TyDescr_Bool_ADTTyp_Specl_69" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_54"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_81" to i8*) }
@"$TyDescr_Bool_ADTTyp_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_71", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_54"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_54"*], [1 x %"$TyDescrTy_ADTTyp_Specl_54"*]* @"$TyDescr_Bool_ADTTyp_m_specls_70", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_61" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_62" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_62", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_61", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_64" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_65" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_56" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_65", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_64", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_67" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_56"*] [%"$TyDescrTy_ADTTyp_Constr_56"* @"$TyDescr_Bool_True_ADTTyp_Constr_63", %"$TyDescrTy_ADTTyp_Constr_56"* @"$TyDescr_Bool_False_ADTTyp_Constr_66"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_54" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_68", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_56"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_56"*], [2 x %"$TyDescrTy_ADTTyp_Constr_56"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_67", i32 0, i32 0), %"$TyDescrTy_ADTTyp_55"* @"$TyDescr_Bool_ADTTyp_60" }
@"$TyDescr_Bool_ADTTyp_m_specls_70" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_54"*] [%"$TyDescrTy_ADTTyp_Specl_54"* @"$TyDescr_Bool_ADTTyp_Specl_69"]
@"$TyDescr_ADT_Bool_71" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_Option_ADTTyp_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_55" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_83", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_54"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_54"*], [1 x %"$TyDescrTy_ADTTyp_Specl_54"*]* @"$TyDescr_Option_ADTTyp_m_specls_82", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr20_Constr_m_args_73" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_53"]
@"$TyDescr_ADT_Some_74" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_74", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_Constr_m_args_76" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_77" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_77", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_Constr_m_args_76", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_79" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_56"*] [%"$TyDescrTy_ADTTyp_Constr_56"* @"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_75", %"$TyDescrTy_ADTTyp_Constr_56"* @"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_78"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_80" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_53"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_54" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_56"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_56"*], [2 x %"$TyDescrTy_ADTTyp_Constr_56"*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_55"* @"$TyDescr_Option_ADTTyp_72" }
@"$TyDescr_Option_ADTTyp_m_specls_82" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_54"*] [%"$TyDescrTy_ADTTyp_Specl_54"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_81"]
@"$TyDescr_ADT_Option_83" = unnamed_addr constant [6 x i8] c"Option"

define internal %Bystr @"$fundef_13"(%"$$fundef_13_env_84"* %0, %Bystr %1) {
entry:
  %"$retval_14" = alloca %Bystr
  %"$gasrem_267" = load i64, i64* @_gasrem
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %entry
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem
  %h1 = alloca [32 x i8]
  %"$execptr_load_272" = load i8*, i8** @_execptr
  %"$sha256hash_header_273" = alloca %Bystr
  store %Bystr %1, %Bystr* %"$sha256hash_header_273"
  %"$$sha256hash_header_273_274" = bitcast %Bystr* %"$sha256hash_header_273" to i8*
  %"$sha256hash_call_275" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_272", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$sha256hash_header_273_274")
  %"$sha256hash_276" = load [32 x i8], [32 x i8]* %"$sha256hash_call_275"
  store [32 x i8] %"$sha256hash_276", [32 x i8]* %h1
  %"$gasrem_277" = load i64, i64* @_gasrem
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_270"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem
  %h2 = alloca [32 x i8]
  %"$execptr_load_282" = load i8*, i8** @_execptr
  %"$sha256hash_h1_283" = alloca [32 x i8]
  %"$h1_284" = load [32 x i8], [32 x i8]* %h1
  store [32 x i8] %"$h1_284", [32 x i8]* %"$sha256hash_h1_283"
  %"$$sha256hash_h1_283_285" = bitcast [32 x i8]* %"$sha256hash_h1_283" to i8*
  %"$sha256hash_call_286" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_282", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_47", i8* %"$$sha256hash_h1_283_285")
  %"$sha256hash_287" = load [32 x i8], [32 x i8]* %"$sha256hash_call_286"
  store [32 x i8] %"$sha256hash_287", [32 x i8]* %h2
  %"$execptr_load_288" = load i8*, i8** @_execptr
  %"$to_bystr_h2_289" = alloca [32 x i8]
  %"$h2_290" = load [32 x i8], [32 x i8]* %h2
  store [32 x i8] %"$h2_290", [32 x i8]* %"$to_bystr_h2_289"
  %"$$to_bystr_h2_289_291" = bitcast [32 x i8]* %"$to_bystr_h2_289" to i8*
  %"$to_bystr_call_292" = call %Bystr @_to_bystr(i8* %"$execptr_load_288", i32 32, i8* %"$$to_bystr_h2_289_291")
  store %Bystr %"$to_bystr_call_292", %Bystr* %"$retval_14"
  %"$$retval_14_293" = load %Bystr, %Bystr* %"$retval_14"
  ret %Bystr %"$$retval_14_293"
}

define internal void @"$fundef_11"(%"$$fundef_11_env_85"* %0, [20 x i8]* %1, %Uint32 %2) {
entry:
  %"$$fundef_11_env_msg_114" = getelementptr inbounds %"$$fundef_11_env_85", %"$$fundef_11_env_85"* %0, i32 0, i32 0
  %"$msg_envload_115" = load %Bystr, %Bystr* %"$$fundef_11_env_msg_114"
  %msg = alloca %Bystr
  store %Bystr %"$msg_envload_115", %Bystr* %msg
  %"$$fundef_11_env_sig_116" = getelementptr inbounds %"$$fundef_11_env_85", %"$$fundef_11_env_85"* %0, i32 0, i32 1
  %"$sig_envload_117" = load [64 x i8], [64 x i8]* %"$$fundef_11_env_sig_116"
  %sig = alloca [64 x i8]
  store [64 x i8] %"$sig_envload_117", [64 x i8]* %sig
  %"$retval_12" = alloca [20 x i8]
  %"$gasrem_118" = load i64, i64* @_gasrem
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %entry
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem
  %pk = alloca [65 x i8]
  %"$execptr_load_123" = load i8*, i8** @_execptr
  %"$msg_124" = load %Bystr, %Bystr* %msg
  %"$ecdsa_recover_pk_sig_125" = alloca [64 x i8]
  %"$sig_126" = load [64 x i8], [64 x i8]* %sig
  store [64 x i8] %"$sig_126", [64 x i8]* %"$ecdsa_recover_pk_sig_125"
  %"$ecdsa_recover_pk_call_127" = call [65 x i8]* @_ecdsa_recover_pk(i8* %"$execptr_load_123", %Bystr %"$msg_124", [64 x i8]* %"$ecdsa_recover_pk_sig_125", %Uint32 %2)
  %"$ecdsa_recover_pk_128" = load [65 x i8], [65 x i8]* %"$ecdsa_recover_pk_call_127"
  store [65 x i8] %"$ecdsa_recover_pk_128", [65 x i8]* %pk
  %"$gasrem_129" = load i64, i64* @_gasrem
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_121"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem
  %pos = alloca %Uint32
  %"$gasrem_134" = load i64, i64* @_gasrem
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %pos
  %"$gasrem_139" = load i64, i64* @_gasrem
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem
  %len = alloca %Uint32
  %"$gasrem_144" = load i64, i64* @_gasrem
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem
  store %Uint32 { i32 64 }, %Uint32* %len
  %"$gasrem_149" = load i64, i64* @_gasrem
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_147"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem
  %pk_bs = alloca %Bystr
  %"$execptr_load_154" = load i8*, i8** @_execptr
  %"$to_bystr_pk_155" = alloca [65 x i8]
  %"$pk_156" = load [65 x i8], [65 x i8]* %pk
  store [65 x i8] %"$pk_156", [65 x i8]* %"$to_bystr_pk_155"
  %"$$to_bystr_pk_155_157" = bitcast [65 x i8]* %"$to_bystr_pk_155" to i8*
  %"$to_bystr_call_158" = call %Bystr @_to_bystr(i8* %"$execptr_load_154", i32 65, i8* %"$$to_bystr_pk_155_157")
  store %Bystr %"$to_bystr_call_158", %Bystr* %pk_bs
  %"$gasrem_159" = load i64, i64* @_gasrem
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_152"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem
  %pk_ = alloca %Bystr
  %"$execptr_load_164" = load i8*, i8** @_execptr
  %"$pk_bs_165" = load %Bystr, %Bystr* %pk_bs
  %"$pos_166" = load %Uint32, %Uint32* %pos
  %"$len_167" = load %Uint32, %Uint32* %len
  %"$substr_call_168" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_164", %Bystr %"$pk_bs_165", %Uint32 %"$pos_166", %Uint32 %"$len_167")
  store %Bystr %"$substr_call_168", %Bystr* %pk_
  %"$gasrem_169" = load i64, i64* @_gasrem
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_162"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem
  %pkHash = alloca [32 x i8]
  %"$execptr_load_174" = load i8*, i8** @_execptr
  %"$keccak256hash_pk__175" = alloca %Bystr
  %"$pk__176" = load %Bystr, %Bystr* %pk_
  store %Bystr %"$pk__176", %Bystr* %"$keccak256hash_pk__175"
  %"$$keccak256hash_pk__175_177" = bitcast %Bystr* %"$keccak256hash_pk__175" to i8*
  %"$keccak256hash_call_178" = call [32 x i8]* @_keccak256hash(i8* %"$execptr_load_174", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$keccak256hash_pk__175_177")
  %"$keccak256hash_179" = load [32 x i8], [32 x i8]* %"$keccak256hash_call_178"
  store [32 x i8] %"$keccak256hash_179", [32 x i8]* %pkHash
  %"$gasrem_180" = load i64, i64* @_gasrem
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_172"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem
  %pkHash_bs = alloca %Bystr
  %"$execptr_load_185" = load i8*, i8** @_execptr
  %"$to_bystr_pkHash_186" = alloca [32 x i8]
  %"$pkHash_187" = load [32 x i8], [32 x i8]* %pkHash
  store [32 x i8] %"$pkHash_187", [32 x i8]* %"$to_bystr_pkHash_186"
  %"$$to_bystr_pkHash_186_188" = bitcast [32 x i8]* %"$to_bystr_pkHash_186" to i8*
  %"$to_bystr_call_189" = call %Bystr @_to_bystr(i8* %"$execptr_load_185", i32 32, i8* %"$$to_bystr_pkHash_186_188")
  store %Bystr %"$to_bystr_call_189", %Bystr* %pkHash_bs
  %"$gasrem_190" = load i64, i64* @_gasrem
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$have_gas_183"
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem
  %"$pos_0" = alloca %Uint32
  %"$gasrem_195" = load i64, i64* @_gasrem
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_193"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem
  store %Uint32 { i32 12 }, %Uint32* %"$pos_0"
  %"$gasrem_200" = load i64, i64* @_gasrem
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_198"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem
  %"$len_1" = alloca %Uint32
  %"$gasrem_205" = load i64, i64* @_gasrem
  %"$gascmp_206" = icmp ugt i64 1, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_203"
  %"$consume_209" = sub i64 %"$gasrem_205", 1
  store i64 %"$consume_209", i64* @_gasrem
  store %Uint32 { i32 20 }, %Uint32* %"$len_1"
  %"$gasrem_210" = load i64, i64* @_gasrem
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_208"
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem
  %addr_bs = alloca %Bystr
  %"$execptr_load_215" = load i8*, i8** @_execptr
  %"$pkHash_bs_216" = load %Bystr, %Bystr* %pkHash_bs
  %"$$pos_0_217" = load %Uint32, %Uint32* %"$pos_0"
  %"$$len_1_218" = load %Uint32, %Uint32* %"$len_1"
  %"$substr_call_219" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_215", %Bystr %"$pkHash_bs_216", %Uint32 %"$$pos_0_217", %Uint32 %"$$len_1_218")
  store %Bystr %"$substr_call_219", %Bystr* %addr_bs
  %"$gasrem_220" = load i64, i64* @_gasrem
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_213"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem
  %addr_opt = alloca %TName_Option_ByStr20*
  %"$execptr_load_225" = load i8*, i8** @_execptr
  %"$addr_bs_226" = load %Bystr, %Bystr* %addr_bs
  %"$to_bystr20_call_227" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_225", i32 20, %Bystr %"$addr_bs_226")
  %"$to_bystr20_228" = bitcast i8* %"$to_bystr20_call_227" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$to_bystr20_228", %TName_Option_ByStr20** %addr_opt
  %"$gasrem_229" = load i64, i64* @_gasrem
  %"$gascmp_230" = icmp ugt i64 2, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_223"
  %"$consume_233" = sub i64 %"$gasrem_229", 2
  store i64 %"$consume_233", i64* @_gasrem
  %"$addr_opt_235" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %addr_opt
  %"$addr_opt_tag_236" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$addr_opt_235", i32 0, i32 0
  %"$addr_opt_tag_237" = load i8, i8* %"$addr_opt_tag_236"
  switch i8 %"$addr_opt_tag_237", label %"$empty_default_238" [
    i8 0, label %"$Some_239"
    i8 1, label %"$None_249"
  ]

"$Some_239":                                      ; preds = %"$have_gas_232"
  %"$addr_opt_240" = bitcast %TName_Option_ByStr20* %"$addr_opt_235" to %CName_Some_ByStr20*
  %"$addr_gep_241" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$addr_opt_240", i32 0, i32 1
  %"$addr_load_242" = load [20 x i8], [20 x i8]* %"$addr_gep_241"
  %addr = alloca [20 x i8]
  store [20 x i8] %"$addr_load_242", [20 x i8]* %addr
  %"$gasrem_243" = load i64, i64* @_gasrem
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$Some_239"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$Some_239"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem
  %"$addr_248" = load [20 x i8], [20 x i8]* %addr
  store [20 x i8] %"$addr_248", [20 x i8]* %"$retval_12"
  br label %"$matchsucc_234"

"$None_249":                                      ; preds = %"$have_gas_232"
  %"$addr_opt_250" = bitcast %TName_Option_ByStr20* %"$addr_opt_235" to %CName_None_ByStr20*
  %"$gasrem_251" = load i64, i64* @_gasrem
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$None_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$None_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem
  %"$gasrem_256" = load i64, i64* @_gasrem
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_254"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem
  %"$gasrem_261" = load i64, i64* @_gasrem
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_259"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem
  store [20 x i8] zeroinitializer, [20 x i8]* %"$retval_12"
  br label %"$matchsucc_234"

"$empty_default_238":                             ; preds = %"$have_gas_232"
  br label %"$matchsucc_234"

"$matchsucc_234":                                 ; preds = %"$have_gas_264", %"$have_gas_246", %"$empty_default_238"
  %"$$retval_12_266" = load [20 x i8], [20 x i8]* %"$retval_12"
  store [20 x i8] %"$$retval_12_266", [20 x i8]* %1
  ret void
}

define internal { void (i8*, [20 x i8]*, %Uint32)*, i8* } @"$fundef_9"(%"$$fundef_9_env_86"* %0, [64 x i8]* %1) {
entry:
  %sig = load [64 x i8], [64 x i8]* %1
  %"$$fundef_9_env_msg_99" = getelementptr inbounds %"$$fundef_9_env_86", %"$$fundef_9_env_86"* %0, i32 0, i32 0
  %"$msg_envload_100" = load %Bystr, %Bystr* %"$$fundef_9_env_msg_99"
  %msg = alloca %Bystr
  store %Bystr %"$msg_envload_100", %Bystr* %msg
  %"$retval_10" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }
  %"$gasrem_101" = load i64, i64* @_gasrem
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %entry
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem
  %"$$fundef_11_envp_106_load" = load i8*, i8** @_execptr
  %"$$fundef_11_envp_106_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_106_load", i64 80)
  %"$$fundef_11_envp_106" = bitcast i8* %"$$fundef_11_envp_106_salloc" to %"$$fundef_11_env_85"*
  %"$$fundef_11_env_voidp_108" = bitcast %"$$fundef_11_env_85"* %"$$fundef_11_envp_106" to i8*
  %"$$fundef_11_cloval_109" = insertvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } { void (i8*, [20 x i8]*, %Uint32)* bitcast (void (%"$$fundef_11_env_85"*, [20 x i8]*, %Uint32)* @"$fundef_11" to void (i8*, [20 x i8]*, %Uint32)*), i8* undef }, i8* %"$$fundef_11_env_voidp_108", 1
  %"$$fundef_11_env_msg_110" = getelementptr inbounds %"$$fundef_11_env_85", %"$$fundef_11_env_85"* %"$$fundef_11_envp_106", i32 0, i32 0
  %"$msg_111" = load %Bystr, %Bystr* %msg
  store %Bystr %"$msg_111", %Bystr* %"$$fundef_11_env_msg_110"
  %"$$fundef_11_env_sig_112" = getelementptr inbounds %"$$fundef_11_env_85", %"$$fundef_11_env_85"* %"$$fundef_11_envp_106", i32 0, i32 1
  store [64 x i8] %sig, [64 x i8]* %"$$fundef_11_env_sig_112"
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$fundef_11_cloval_109", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_10"
  %"$$retval_10_113" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_10"
  ret { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$retval_10_113"
}

define internal { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } @"$fundef_7"(%"$$fundef_7_env_87"* %0, %Bystr %1) {
entry:
  %"$retval_8" = alloca { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }
  %"$gasrem_88" = load i64, i64* @_gasrem
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %entry
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem
  %"$$fundef_9_envp_93_load" = load i8*, i8** @_execptr
  %"$$fundef_9_envp_93_salloc" = call i8* @_salloc(i8* %"$$fundef_9_envp_93_load", i64 16)
  %"$$fundef_9_envp_93" = bitcast i8* %"$$fundef_9_envp_93_salloc" to %"$$fundef_9_env_86"*
  %"$$fundef_9_env_voidp_95" = bitcast %"$$fundef_9_env_86"* %"$$fundef_9_envp_93" to i8*
  %"$$fundef_9_cloval_96" = insertvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)* bitcast ({ void (i8*, [20 x i8]*, %Uint32)*, i8* } (%"$$fundef_9_env_86"*, [64 x i8]*)* @"$fundef_9" to { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*), i8* undef }, i8* %"$$fundef_9_env_voidp_95", 1
  %"$$fundef_9_env_msg_97" = getelementptr inbounds %"$$fundef_9_env_86", %"$$fundef_9_env_86"* %"$$fundef_9_envp_93", i32 0, i32 0
  store %Bystr %1, %Bystr* %"$$fundef_9_env_msg_97"
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$fundef_9_cloval_96", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$retval_8"
  %"$$retval_8_98" = load { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$retval_8"
  ret { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$retval_8_98"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare [65 x i8]* @_ecdsa_recover_pk(i8*, %Bystr, [64 x i8]*, %Uint32)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %Bystr @_substr_ByStr(i8*, %Bystr, %Uint32, %Uint32)

declare [32 x i8]* @_keccak256hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_bystr_to_bystrx(i8*, i32, %Bystr)

declare [32 x i8]* @_sha256hash(i8*, %_TyDescrTy_Typ*, i8*)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Bool* @"$scilla_expr_294"(i8* %0) {
entry:
  %"$expr_6" = alloca %TName_Bool*
  %"$gasrem_295" = load i64, i64* @_gasrem
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %entry
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem
  %ecrecover = alloca { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }
  %"$gasrem_300" = load i64, i64* @_gasrem
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem
  store { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)* bitcast ({ { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (%"$$fundef_7_env_87"*, %Bystr)* @"$fundef_7" to { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*), i8* null }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover
  %"$gasrem_308" = load i64, i64* @_gasrem
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_303"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem
  %header_hash = alloca { %Bystr (i8*, %Bystr)*, i8* }
  %"$gasrem_313" = load i64, i64* @_gasrem
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_311"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem
  store { %Bystr (i8*, %Bystr)*, i8* } { %Bystr (i8*, %Bystr)* bitcast (%Bystr (%"$$fundef_13_env_84"*, %Bystr)* @"$fundef_13" to %Bystr (i8*, %Bystr)*), i8* null }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash
  %"$gasrem_321" = load i64, i64* @_gasrem
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_316"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem
  %sig = alloca [64 x i8]
  %"$gasrem_326" = load i64, i64* @_gasrem
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_324"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem
  store [64 x i8] c"}X\8Dy\AC\9F\091\C6\91P\DEk\FER\89\F0\14x\93x\1B\FF\BC\C3+^\07\BDh}\10H\DD\A09\FF\C1\E8}\E2\E9\86\10\DC\87n\97A\1D`IHG9\04\B1+d\BE\D8\88\0B\CC", [64 x i8]* %sig
  %"$gasrem_331" = load i64, i64* @_gasrem
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem
  %msg = alloca [1591 x i8]
  %"$gasrem_336" = load i64, i64* @_gasrem
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_334"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem
  store [1591 x i8] c"\00\00\00\00\9B\91V\17\00\00\00\00\F4\8A@W\BE\F2h\CC?\DB\03Ni\DC.\94)\07\E0\8A\C4\A4 \D1\B1\96\B8\C2\8E\BF[\F2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\8B\E0\A1`Zc\A3\17\04\AE\C4\EBO\10#\F1\EC\C2\93K\D8o\11\9A\B7u&\F9Gz\F9\A5~\1A_P\8E\00\00A\07\82r\0A\B1\89\FF\FD\84\05{\22leader\22:3,\22vrf_value\22:\22BOO3oXyk2RIpeVQY38Tq3qJB82szJh6nOorJUp/JMX+GLpz4zIsG9LJl4xJo4etHgOV5qi6MHKftqOirOuZIZiY=\22,\22vrf_proof\22:\22cYSRWFPoi9GHABGRbUdh6a+5PoO1wv5JUzSAtWxhEcpqut0SjYXs4LtS55tSJt3AtI0YamLgRJyzROhVGVbm4g==\22,\22last_config_block_num\22:36432,\22new_chain_config\22:{\22version\22:1,\22view\22:4,\22n\22:8,\22c\22:2,\22block_msg_delay\22:10000000000,\22hash_msg_delay\22:10000000000,\22peer_handshake_timeout\22:10000000000,\22peers\22:[{\22index\22:1,\22id\22:\221205028172918540b2b512eae1872a2a2e3a28d989c60d95dab8829ada7d7dd706d658\22},{\22index\22:4,\22id\22:\22120502679930a42aaf3c69798ca8a3f12e134c019405818d783d11748e039de8515988\22},{\22index\22:3,\22id\22:\22120502482acb6564b19b90653f6e9c806292e8aa83f78e7a9382a24a6efe41c0c06f39\22},{\22index\22:5,\22id\22:\22120502468dd1899ed2d1cc2b829882a165a0ecb6a745af0c72eb2982d66b4311b4ef73\22},{\22index\22:8,\22id\22:\2212050393421445b9421bd4cc90d7bc88c9301558047a76b20c59e7c511ee7d229982b1\22},{\22index\22:2,\22id\22:\221205038b8af6210ecfdcbcab22552ef8d8cf41c6f86f9cf9ab53d865741cfdb833f06b\22},{\22index\22:7,\22id\22:\221205031e0779f5c5ccb2612352fe4a200f99d3e7758e70ba53f607c59ff22a30f678ff\22},{\22index\22:6,\22id\22:\22120502eb1baab602c5899282561cdaaa7aabbcdd0ccfcbc3e79793ac24acf90778f35a\22}],\22pos_table\22:[2,8,5,5,8,7,1,4,5,6,5,4,7,7,3,3,4,6,1,2,4,8,5,4,7,4,6,6,2,2,1,1,8,8,6,6,6,7,8,7,4,8,5,1,3,3,8,5,3,6,3,6,7,5,6,2,3,1,2,6,5,2,1,4,2,1,8,4,8,3,8,7,7,5,1,7,4,4,1,5,2,5,6,1,2,8,3,3,1,3,1,4,1,7,8,6,8,2,5,1,4,5,3,2,2,2,8,3,3,3,6,7,4,7,4,2,7,5,6,7],\22max_block_change_view\22:60000}}\F8\FCz\1Fj\85c\13\C5\91\A3\A7G\F4\EC\A7!\8A\82\0B", [1591 x i8]* %msg
  %"$gasrem_341" = load i64, i64* @_gasrem
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_339"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem
  %addr_gold = alloca [20 x i8]
  %"$gasrem_346" = load i64, i64* @_gasrem
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem
  store [20 x i8] c"\A4*N\85\03M[\EB\C2%t=\A4\00\CCL\0ECrz", [20 x i8]* %addr_gold
  %"$gasrem_351" = load i64, i64* @_gasrem
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_349"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem
  %msg_bs = alloca %Bystr
  %"$execptr_load_356" = load i8*, i8** @_execptr
  %"$to_bystr_msg_357" = alloca [1591 x i8]
  %"$msg_358" = load [1591 x i8], [1591 x i8]* %msg
  store [1591 x i8] %"$msg_358", [1591 x i8]* %"$to_bystr_msg_357"
  %"$$to_bystr_msg_357_359" = bitcast [1591 x i8]* %"$to_bystr_msg_357" to i8*
  %"$to_bystr_call_360" = call %Bystr @_to_bystr(i8* %"$execptr_load_356", i32 1591, i8* %"$$to_bystr_msg_357_359")
  store %Bystr %"$to_bystr_call_360", %Bystr* %msg_bs
  %"$gasrem_361" = load i64, i64* @_gasrem
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_354"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem
  %msg_hashed = alloca %Bystr
  %"$gasrem_366" = load i64, i64* @_gasrem
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem
  %"$header_hash_2" = alloca %Bystr
  %"$header_hash_371" = load { %Bystr (i8*, %Bystr)*, i8* }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash
  %"$header_hash_fptr_372" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_371", 0
  %"$header_hash_envptr_373" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_371", 1
  %"$msg_bs_374" = load %Bystr, %Bystr* %msg_bs
  %"$header_hash_call_375" = call %Bystr %"$header_hash_fptr_372"(i8* %"$header_hash_envptr_373", %Bystr %"$msg_bs_374")
  store %Bystr %"$header_hash_call_375", %Bystr* %"$header_hash_2"
  %"$$header_hash_2_376" = load %Bystr, %Bystr* %"$header_hash_2"
  store %Bystr %"$$header_hash_2_376", %Bystr* %msg_hashed
  %"$gasrem_377" = load i64, i64* @_gasrem
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_369"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem
  %recid = alloca %Uint32
  %"$gasrem_382" = load i64, i64* @_gasrem
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_380"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %recid
  %"$gasrem_387" = load i64, i64* @_gasrem
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem
  %addr_computed = alloca [20 x i8]
  %"$gasrem_392" = load i64, i64* @_gasrem
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_390"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem
  %"$ecrecover_3" = alloca { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }
  %"$ecrecover_397" = load { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover
  %"$ecrecover_fptr_398" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_397", 0
  %"$ecrecover_envptr_399" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_397", 1
  %"$msg_hashed_400" = load %Bystr, %Bystr* %msg_hashed
  %"$ecrecover_call_401" = call { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_fptr_398"(i8* %"$ecrecover_envptr_399", %Bystr %"$msg_hashed_400")
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_call_401", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_3"
  %"$ecrecover_4" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }
  %"$$ecrecover_3_402" = load { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_3"
  %"$$ecrecover_3_fptr_403" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_3_402", 0
  %"$$ecrecover_3_envptr_404" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_3_402", 1
  %"$$ecrecover_3_sig_405" = alloca [64 x i8]
  %"$sig_406" = load [64 x i8], [64 x i8]* %sig
  store [64 x i8] %"$sig_406", [64 x i8]* %"$$ecrecover_3_sig_405"
  %"$$ecrecover_3_call_407" = call { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_3_fptr_403"(i8* %"$$ecrecover_3_envptr_404", [64 x i8]* %"$$ecrecover_3_sig_405")
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_3_call_407", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_4"
  %"$ecrecover_5" = alloca [20 x i8]
  %"$$ecrecover_4_408" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_4"
  %"$$ecrecover_4_fptr_409" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_4_408", 0
  %"$$ecrecover_4_envptr_410" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_4_408", 1
  %"$recid_411" = load %Uint32, %Uint32* %recid
  %"$$ecrecover_4_retalloca_412" = alloca [20 x i8]
  call void %"$$ecrecover_4_fptr_409"(i8* %"$$ecrecover_4_envptr_410", [20 x i8]* %"$$ecrecover_4_retalloca_412", %Uint32 %"$recid_411")
  %"$$ecrecover_4_ret_413" = load [20 x i8], [20 x i8]* %"$$ecrecover_4_retalloca_412"
  store [20 x i8] %"$$ecrecover_4_ret_413", [20 x i8]* %"$ecrecover_5"
  %"$$ecrecover_5_414" = load [20 x i8], [20 x i8]* %"$ecrecover_5"
  store [20 x i8] %"$$ecrecover_5_414", [20 x i8]* %addr_computed
  %"$execptr_load_415" = load i8*, i8** @_execptr
  %"$eq_addr_computed_416" = alloca [20 x i8]
  %"$addr_computed_417" = load [20 x i8], [20 x i8]* %addr_computed
  store [20 x i8] %"$addr_computed_417", [20 x i8]* %"$eq_addr_computed_416"
  %"$$eq_addr_computed_416_418" = bitcast [20 x i8]* %"$eq_addr_computed_416" to i8*
  %"$eq_addr_gold_419" = alloca [20 x i8]
  %"$addr_gold_420" = load [20 x i8], [20 x i8]* %addr_gold
  store [20 x i8] %"$addr_gold_420", [20 x i8]* %"$eq_addr_gold_419"
  %"$$eq_addr_gold_419_421" = bitcast [20 x i8]* %"$eq_addr_gold_419" to i8*
  %"$eq_call_422" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_415", i32 20, i8* %"$$eq_addr_computed_416_418", i8* %"$$eq_addr_gold_419_421")
  store %TName_Bool* %"$eq_call_422", %TName_Bool** %"$expr_6"
  %"$$expr_6_423" = load %TName_Bool*, %TName_Bool** %"$expr_6"
  ret %TName_Bool* %"$$expr_6_423"
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_424" = call %TName_Bool* @"$scilla_expr_294"(i8* null)
  %"$memvoidcast_425" = bitcast %TName_Bool* %"$exprval_424" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_57", i8* %"$memvoidcast_425")
  ret void
}
