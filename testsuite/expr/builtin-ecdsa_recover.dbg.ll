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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_15" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_55" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_54"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_54" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_56"**, %"$TyDescrTy_ADTTyp_55"* }
%"$TyDescrTy_ADTTyp_Constr_56" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_433" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_434" = type { %ParamDescrString, i32, %"$ParamDescr_433"* }
%"$$fundef_13_env_86" = type {}
%Bystr = type { i8*, i32 }
%"$$fundef_11_env_87" = type { %Bystr, [64 x i8] }
%Uint32 = type { i32 }
%TName_Option_ByStr20 = type { i8, %CName_Some_ByStr20*, %CName_None_ByStr20* }
%CName_Some_ByStr20 = type <{ i8, [20 x i8] }>
%CName_None_ByStr20 = type <{ i8 }>
%"$$fundef_9_env_88" = type { %Bystr }
%"$$fundef_7_env_89" = type {}
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
@"$TyDescr_ADT_Bool_57" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_54"* @"$TyDescr_Bool_ADTTyp_Specl_71" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_54"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_83" to i8*) }
@"$TyDescr_Bool_ADTTyp_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_73", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_54"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_54"*], [1 x %"$TyDescrTy_ADTTyp_Specl_54"*]* @"$TyDescr_Bool_ADTTyp_m_specls_72", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_63" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_64" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_64", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_63", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_66" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_67" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_56" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_67", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_66", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_69" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_56"*] [%"$TyDescrTy_ADTTyp_Constr_56"* @"$TyDescr_Bool_True_ADTTyp_Constr_65", %"$TyDescrTy_ADTTyp_Constr_56"* @"$TyDescr_Bool_False_ADTTyp_Constr_68"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_70" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_54" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_70", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_56"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_56"*], [2 x %"$TyDescrTy_ADTTyp_Constr_56"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_55"* @"$TyDescr_Bool_ADTTyp_62" }
@"$TyDescr_Bool_ADTTyp_m_specls_72" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_54"*] [%"$TyDescrTy_ADTTyp_Specl_54"* @"$TyDescr_Bool_ADTTyp_Specl_71"]
@"$TyDescr_ADT_Bool_73" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_Option_ADTTyp_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_55" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_85", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_54"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_54"*], [1 x %"$TyDescrTy_ADTTyp_Specl_54"*]* @"$TyDescr_Option_ADTTyp_m_specls_84", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr20_Constr_m_args_75" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_53"]
@"$TyDescr_ADT_Some_76" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_76", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_Constr_m_args_75", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_Constr_m_args_78" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_79" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_79", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_Constr_m_args_78", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_81" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_56"*] [%"$TyDescrTy_ADTTyp_Constr_56"* @"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_77", %"$TyDescrTy_ADTTyp_Constr_56"* @"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_80"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_82" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_53"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_54" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_82", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_56"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_56"*], [2 x %"$TyDescrTy_ADTTyp_Constr_56"*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_81", i32 0, i32 0), %"$TyDescrTy_ADTTyp_55"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_ADTTyp_m_specls_84" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_54"*] [%"$TyDescrTy_ADTTyp_Specl_54"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_83"]
@"$TyDescr_ADT_Option_85" = unnamed_addr constant [6 x i8] c"Option"
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_39", %_TyDescrTy_Typ* @"$TyDescr_Int64_21", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_58", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_57", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_53", %_TyDescrTy_Typ* @"$TyDescr_Uint256_31", %_TyDescrTy_Typ* @"$TyDescr_Uint32_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_51", %_TyDescrTy_Typ* @"$TyDescr_Uint64_23", %_TyDescrTy_Typ* @"$TyDescr_Bnum_35", %_TyDescrTy_Typ* @"$TyDescr_Uint128_27", %_TyDescrTy_Typ* @"$TyDescr_Exception_41", %_TyDescrTy_Typ* @"$TyDescr_String_33", %_TyDescrTy_Typ* @"$TyDescr_Bystr65_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_47", %_TyDescrTy_Typ* @"$TyDescr_Int256_29", %_TyDescrTy_Typ* @"$TyDescr_Int128_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", %_TyDescrTy_Typ* @"$TyDescr_Message_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr1591_45", %_TyDescrTy_Typ* @"$TyDescr_Int32_17"]
@_tydescr_table_length = constant i32 21
@_contract_parameters = constant [0 x %"$ParamDescr_433"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_434"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Bystr @"$fundef_13"(%"$$fundef_13_env_86"* %0, %Bystr %1) !dbg !4 {
entry:
  %"$retval_14" = alloca %Bystr, align 8
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %entry
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %h1 = alloca [32 x i8], align 1
  %"$execptr_load_276" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_header_277" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$sha256hash_header_277", align 8
  %"$$sha256hash_header_277_278" = bitcast %Bystr* %"$sha256hash_header_277" to i8*
  %"$sha256hash_call_279" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_276", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$sha256hash_header_277_278")
  %"$sha256hash_281" = load [32 x i8], [32 x i8]* %"$sha256hash_call_279", align 1
  store [32 x i8] %"$sha256hash_281", [32 x i8]* %h1, align 1, !dbg !8
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_274"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %h2 = alloca [32 x i8], align 1
  %"$execptr_load_287" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_h1_288" = alloca [32 x i8], align 1
  %"$h1_289" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_289", [32 x i8]* %"$sha256hash_h1_288", align 1
  %"$$sha256hash_h1_288_290" = bitcast [32 x i8]* %"$sha256hash_h1_288" to i8*
  %"$sha256hash_call_291" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_287", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_47", i8* %"$$sha256hash_h1_288_290")
  %"$sha256hash_293" = load [32 x i8], [32 x i8]* %"$sha256hash_call_291", align 1
  store [32 x i8] %"$sha256hash_293", [32 x i8]* %h2, align 1, !dbg !9
  %"$execptr_load_294" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_h2_295" = alloca [32 x i8], align 1
  %"$h2_296" = load [32 x i8], [32 x i8]* %h2, align 1
  store [32 x i8] %"$h2_296", [32 x i8]* %"$to_bystr_h2_295", align 1
  %"$$to_bystr_h2_295_297" = bitcast [32 x i8]* %"$to_bystr_h2_295" to i8*
  %"$to_bystr_call_298" = call %Bystr @_to_bystr(i8* %"$execptr_load_294", i32 32, i8* %"$$to_bystr_h2_295_297")
  store %Bystr %"$to_bystr_call_298", %Bystr* %"$retval_14", align 8, !dbg !10
  %"$$retval_14_299" = load %Bystr, %Bystr* %"$retval_14", align 8
  ret %Bystr %"$$retval_14_299"
}

define internal void @"$fundef_11"(%"$$fundef_11_env_87"* %0, [20 x i8]* %1, %Uint32 %2) !dbg !11 {
entry:
  %"$$fundef_11_env_msg_116" = getelementptr inbounds %"$$fundef_11_env_87", %"$$fundef_11_env_87"* %0, i32 0, i32 0
  %"$msg_envload_117" = load %Bystr, %Bystr* %"$$fundef_11_env_msg_116", align 8
  %msg = alloca %Bystr, align 8
  store %Bystr %"$msg_envload_117", %Bystr* %msg, align 8
  %"$$fundef_11_env_sig_118" = getelementptr inbounds %"$$fundef_11_env_87", %"$$fundef_11_env_87"* %0, i32 0, i32 1
  %"$sig_envload_119" = load [64 x i8], [64 x i8]* %"$$fundef_11_env_sig_118", align 1
  %sig = alloca [64 x i8], align 1
  store [64 x i8] %"$sig_envload_119", [64 x i8]* %sig, align 1
  %"$retval_12" = alloca [20 x i8], align 1
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %entry
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %pk = alloca [65 x i8], align 1
  %"$execptr_load_125" = load i8*, i8** @_execptr, align 8
  %"$msg_126" = load %Bystr, %Bystr* %msg, align 8
  %"$ecdsa_recover_pk_sig_127" = alloca [64 x i8], align 1
  %"$sig_128" = load [64 x i8], [64 x i8]* %sig, align 1
  store [64 x i8] %"$sig_128", [64 x i8]* %"$ecdsa_recover_pk_sig_127", align 1
  %"$ecdsa_recover_pk_call_129" = call [65 x i8]* @_ecdsa_recover_pk(i8* %"$execptr_load_125", %Bystr %"$msg_126", [64 x i8]* %"$ecdsa_recover_pk_sig_127", %Uint32 %2)
  %"$ecdsa_recover_pk_131" = load [65 x i8], [65 x i8]* %"$ecdsa_recover_pk_call_129", align 1
  store [65 x i8] %"$ecdsa_recover_pk_131", [65 x i8]* %pk, align 1, !dbg !12
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_123"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %pos = alloca %Uint32, align 8
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %pos, align 4, !dbg !13
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_140"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %len = alloca %Uint32, align 8
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  store %Uint32 { i32 64 }, %Uint32* %len, align 4, !dbg !14
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %pk_bs = alloca %Bystr, align 8
  %"$execptr_load_157" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pk_158" = alloca [65 x i8], align 1
  %"$pk_159" = load [65 x i8], [65 x i8]* %pk, align 1
  store [65 x i8] %"$pk_159", [65 x i8]* %"$to_bystr_pk_158", align 1
  %"$$to_bystr_pk_158_160" = bitcast [65 x i8]* %"$to_bystr_pk_158" to i8*
  %"$to_bystr_call_161" = call %Bystr @_to_bystr(i8* %"$execptr_load_157", i32 65, i8* %"$$to_bystr_pk_158_160")
  store %Bystr %"$to_bystr_call_161", %Bystr* %pk_bs, align 8, !dbg !15
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_155"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %pk_ = alloca %Bystr, align 8
  %"$execptr_load_167" = load i8*, i8** @_execptr, align 8
  %"$pk_bs_168" = load %Bystr, %Bystr* %pk_bs, align 8
  %"$pos_169" = load %Uint32, %Uint32* %pos, align 4
  %"$len_170" = load %Uint32, %Uint32* %len, align 4
  %"$substr_call_171" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_167", %Bystr %"$pk_bs_168", %Uint32 %"$pos_169", %Uint32 %"$len_170")
  store %Bystr %"$substr_call_171", %Bystr* %pk_, align 8, !dbg !16
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_165"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  %pkHash = alloca [32 x i8], align 1
  %"$execptr_load_177" = load i8*, i8** @_execptr, align 8
  %"$keccak256hash_pk__178" = alloca %Bystr, align 8
  %"$pk__179" = load %Bystr, %Bystr* %pk_, align 8
  store %Bystr %"$pk__179", %Bystr* %"$keccak256hash_pk__178", align 8
  %"$$keccak256hash_pk__178_180" = bitcast %Bystr* %"$keccak256hash_pk__178" to i8*
  %"$keccak256hash_call_181" = call [32 x i8]* @_keccak256hash(i8* %"$execptr_load_177", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$keccak256hash_pk__178_180")
  %"$keccak256hash_183" = load [32 x i8], [32 x i8]* %"$keccak256hash_call_181", align 1
  store [32 x i8] %"$keccak256hash_183", [32 x i8]* %pkHash, align 1, !dbg !17
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_175"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %pkHash_bs = alloca %Bystr, align 8
  %"$execptr_load_189" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pkHash_190" = alloca [32 x i8], align 1
  %"$pkHash_191" = load [32 x i8], [32 x i8]* %pkHash, align 1
  store [32 x i8] %"$pkHash_191", [32 x i8]* %"$to_bystr_pkHash_190", align 1
  %"$$to_bystr_pkHash_190_192" = bitcast [32 x i8]* %"$to_bystr_pkHash_190" to i8*
  %"$to_bystr_call_193" = call %Bystr @_to_bystr(i8* %"$execptr_load_189", i32 32, i8* %"$$to_bystr_pkHash_190_192")
  store %Bystr %"$to_bystr_call_193", %Bystr* %pkHash_bs, align 8, !dbg !18
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_187"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$pos_0" = alloca %Uint32, align 8
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$have_gas_197"
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem, align 8
  store %Uint32 { i32 12 }, %Uint32* %"$pos_0", align 4, !dbg !19
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_202"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_202"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$len_1" = alloca %Uint32, align 8
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_207"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  store %Uint32 { i32 20 }, %Uint32* %"$len_1", align 4, !dbg !20
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 1, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_212"
  %"$consume_218" = sub i64 %"$gasrem_214", 1
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %addr_bs = alloca %Bystr, align 8
  %"$execptr_load_219" = load i8*, i8** @_execptr, align 8
  %"$pkHash_bs_220" = load %Bystr, %Bystr* %pkHash_bs, align 8
  %"$$pos_0_221" = load %Uint32, %Uint32* %"$pos_0", align 4
  %"$$len_1_222" = load %Uint32, %Uint32* %"$len_1", align 4
  %"$substr_call_223" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_219", %Bystr %"$pkHash_bs_220", %Uint32 %"$$pos_0_221", %Uint32 %"$$len_1_222")
  store %Bystr %"$substr_call_223", %Bystr* %addr_bs, align 8, !dbg !21
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_217"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_217"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %addr_opt = alloca %TName_Option_ByStr20*, align 8
  %"$execptr_load_229" = load i8*, i8** @_execptr, align 8
  %"$addr_bs_230" = load %Bystr, %Bystr* %addr_bs, align 8
  %"$to_bystr20_call_231" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_229", i32 20, %Bystr %"$addr_bs_230")
  %"$to_bystr20_232" = bitcast i8* %"$to_bystr20_call_231" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$to_bystr20_232", %TName_Option_ByStr20** %addr_opt, align 8, !dbg !22
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 2, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_227"
  %"$consume_237" = sub i64 %"$gasrem_233", 2
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$addr_opt_239" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %addr_opt, align 8
  %"$addr_opt_tag_240" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$addr_opt_239", i32 0, i32 0
  %"$addr_opt_tag_241" = load i8, i8* %"$addr_opt_tag_240", align 1
  switch i8 %"$addr_opt_tag_241", label %"$empty_default_242" [
    i8 0, label %"$Some_243"
    i8 1, label %"$None_253"
  ], !dbg !23

"$Some_243":                                      ; preds = %"$have_gas_236"
  %"$addr_opt_244" = bitcast %TName_Option_ByStr20* %"$addr_opt_239" to %CName_Some_ByStr20*
  %"$addr_gep_245" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$addr_opt_244", i32 0, i32 1
  %"$addr_load_246" = load [20 x i8], [20 x i8]* %"$addr_gep_245", align 1
  %addr = alloca [20 x i8], align 1
  store [20 x i8] %"$addr_load_246", [20 x i8]* %addr, align 1
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$Some_243"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$Some_243"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$addr_252" = load [20 x i8], [20 x i8]* %addr, align 1
  store [20 x i8] %"$addr_252", [20 x i8]* %"$retval_12", align 1, !dbg !24
  br label %"$matchsucc_238"

"$None_253":                                      ; preds = %"$have_gas_236"
  %"$addr_opt_254" = bitcast %TName_Option_ByStr20* %"$addr_opt_239" to %CName_None_ByStr20*
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$None_253"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$None_253"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_258"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_263"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* %"$retval_12", align 1, !dbg !27
  br label %"$matchsucc_238"

"$empty_default_242":                             ; preds = %"$have_gas_236"
  br label %"$matchsucc_238"

"$matchsucc_238":                                 ; preds = %"$have_gas_268", %"$have_gas_250", %"$empty_default_242"
  %"$$retval_12_270" = load [20 x i8], [20 x i8]* %"$retval_12", align 1
  store [20 x i8] %"$$retval_12_270", [20 x i8]* %1, align 1
  ret void
}

define internal { void (i8*, [20 x i8]*, %Uint32)*, i8* } @"$fundef_9"(%"$$fundef_9_env_88"* %0, [64 x i8]* %1) !dbg !29 {
entry:
  %sig = load [64 x i8], [64 x i8]* %1, align 1
  %"$$fundef_9_env_msg_101" = getelementptr inbounds %"$$fundef_9_env_88", %"$$fundef_9_env_88"* %0, i32 0, i32 0
  %"$msg_envload_102" = load %Bystr, %Bystr* %"$$fundef_9_env_msg_101", align 8
  %msg = alloca %Bystr, align 8
  store %Bystr %"$msg_envload_102", %Bystr* %msg, align 8
  %"$retval_10" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }, align 8
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %entry
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  %"$$fundef_11_envp_108_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_11_envp_108_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_108_load", i64 80)
  %"$$fundef_11_envp_108" = bitcast i8* %"$$fundef_11_envp_108_salloc" to %"$$fundef_11_env_87"*
  %"$$fundef_11_env_voidp_110" = bitcast %"$$fundef_11_env_87"* %"$$fundef_11_envp_108" to i8*
  %"$$fundef_11_cloval_111" = insertvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } { void (i8*, [20 x i8]*, %Uint32)* bitcast (void (%"$$fundef_11_env_87"*, [20 x i8]*, %Uint32)* @"$fundef_11" to void (i8*, [20 x i8]*, %Uint32)*), i8* undef }, i8* %"$$fundef_11_env_voidp_110", 1
  %"$$fundef_11_env_msg_112" = getelementptr inbounds %"$$fundef_11_env_87", %"$$fundef_11_env_87"* %"$$fundef_11_envp_108", i32 0, i32 0
  %"$msg_113" = load %Bystr, %Bystr* %msg, align 8
  store %Bystr %"$msg_113", %Bystr* %"$$fundef_11_env_msg_112", align 8
  %"$$fundef_11_env_sig_114" = getelementptr inbounds %"$$fundef_11_env_87", %"$$fundef_11_env_87"* %"$$fundef_11_envp_108", i32 0, i32 1
  store [64 x i8] %sig, [64 x i8]* %"$$fundef_11_env_sig_114", align 1
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$fundef_11_cloval_111", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_10", align 8, !dbg !30
  %"$$retval_10_115" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_10", align 8
  ret { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$retval_10_115"
}

define internal { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } @"$fundef_7"(%"$$fundef_7_env_89"* %0, %Bystr %1) !dbg !31 {
entry:
  %"$retval_8" = alloca { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, align 8
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %entry
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %"$$fundef_9_envp_95_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_9_envp_95_salloc" = call i8* @_salloc(i8* %"$$fundef_9_envp_95_load", i64 16)
  %"$$fundef_9_envp_95" = bitcast i8* %"$$fundef_9_envp_95_salloc" to %"$$fundef_9_env_88"*
  %"$$fundef_9_env_voidp_97" = bitcast %"$$fundef_9_env_88"* %"$$fundef_9_envp_95" to i8*
  %"$$fundef_9_cloval_98" = insertvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)* bitcast ({ void (i8*, [20 x i8]*, %Uint32)*, i8* } (%"$$fundef_9_env_88"*, [64 x i8]*)* @"$fundef_9" to { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*), i8* undef }, i8* %"$$fundef_9_env_voidp_97", 1
  %"$$fundef_9_env_msg_99" = getelementptr inbounds %"$$fundef_9_env_88", %"$$fundef_9_env_88"* %"$$fundef_9_envp_95", i32 0, i32 0
  store %Bystr %1, %Bystr* %"$$fundef_9_env_msg_99", align 8
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$fundef_9_cloval_98", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$retval_8", align 8, !dbg !32
  %"$$retval_8_100" = load { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$retval_8", align 8
  ret { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$retval_8_100"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare [65 x i8]* @_ecdsa_recover_pk(i8*, %Bystr, [64 x i8]*, %Uint32)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %Bystr @_substr_ByStr(i8*, %Bystr, %Uint32, %Uint32)

declare [32 x i8]* @_keccak256hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_bystr_to_bystrx(i8*, i32, %Bystr)

declare [32 x i8]* @_sha256hash(i8*, %_TyDescrTy_Typ*, i8*)

define void @_init_libs() !dbg !33 {
entry:
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !35 {
entry:
  %"$expr_6" = alloca %TName_Bool*, align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %entry
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %ecrecover = alloca { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  store { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)* bitcast ({ { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (%"$$fundef_7_env_89"*, %Bystr)* @"$fundef_7" to { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*), i8* null }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8, !dbg !36
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_308"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %header_hash = alloca { %Bystr (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_316"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  store { %Bystr (i8*, %Bystr)*, i8* } { %Bystr (i8*, %Bystr)* bitcast (%Bystr (%"$$fundef_13_env_86"*, %Bystr)* @"$fundef_13" to %Bystr (i8*, %Bystr)*), i8* null }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8, !dbg !37
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_321"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %sig = alloca [64 x i8], align 1
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  store [64 x i8] c"}X\8Dy\AC\9F\091\C6\91P\DEk\FER\89\F0\14x\93x\1B\FF\BC\C3+^\07\BDh}\10H\DD\A09\FF\C1\E8}\E2\E9\86\10\DC\87n\97A\1D`IHG9\04\B1+d\BE\D8\88\0B\CC", [64 x i8]* %sig, align 1, !dbg !38
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_334"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %msg = alloca [1591 x i8], align 1
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_339"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  store [1591 x i8] c"\00\00\00\00\9B\91V\17\00\00\00\00\F4\8A@W\BE\F2h\CC?\DB\03Ni\DC.\94)\07\E0\8A\C4\A4 \D1\B1\96\B8\C2\8E\BF[\F2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\8B\E0\A1`Zc\A3\17\04\AE\C4\EBO\10#\F1\EC\C2\93K\D8o\11\9A\B7u&\F9Gz\F9\A5~\1A_P\8E\00\00A\07\82r\0A\B1\89\FF\FD\84\05{\22leader\22:3,\22vrf_value\22:\22BOO3oXyk2RIpeVQY38Tq3qJB82szJh6nOorJUp/JMX+GLpz4zIsG9LJl4xJo4etHgOV5qi6MHKftqOirOuZIZiY=\22,\22vrf_proof\22:\22cYSRWFPoi9GHABGRbUdh6a+5PoO1wv5JUzSAtWxhEcpqut0SjYXs4LtS55tSJt3AtI0YamLgRJyzROhVGVbm4g==\22,\22last_config_block_num\22:36432,\22new_chain_config\22:{\22version\22:1,\22view\22:4,\22n\22:8,\22c\22:2,\22block_msg_delay\22:10000000000,\22hash_msg_delay\22:10000000000,\22peer_handshake_timeout\22:10000000000,\22peers\22:[{\22index\22:1,\22id\22:\221205028172918540b2b512eae1872a2a2e3a28d989c60d95dab8829ada7d7dd706d658\22},{\22index\22:4,\22id\22:\22120502679930a42aaf3c69798ca8a3f12e134c019405818d783d11748e039de8515988\22},{\22index\22:3,\22id\22:\22120502482acb6564b19b90653f6e9c806292e8aa83f78e7a9382a24a6efe41c0c06f39\22},{\22index\22:5,\22id\22:\22120502468dd1899ed2d1cc2b829882a165a0ecb6a745af0c72eb2982d66b4311b4ef73\22},{\22index\22:8,\22id\22:\2212050393421445b9421bd4cc90d7bc88c9301558047a76b20c59e7c511ee7d229982b1\22},{\22index\22:2,\22id\22:\221205038b8af6210ecfdcbcab22552ef8d8cf41c6f86f9cf9ab53d865741cfdb833f06b\22},{\22index\22:7,\22id\22:\221205031e0779f5c5ccb2612352fe4a200f99d3e7758e70ba53f607c59ff22a30f678ff\22},{\22index\22:6,\22id\22:\22120502eb1baab602c5899282561cdaaa7aabbcdd0ccfcbc3e79793ac24acf90778f35a\22}],\22pos_table\22:[2,8,5,5,8,7,1,4,5,6,5,4,7,7,3,3,4,6,1,2,4,8,5,4,7,4,6,6,2,2,1,1,8,8,6,6,6,7,8,7,4,8,5,1,3,3,8,5,3,6,3,6,7,5,6,2,3,1,2,6,5,2,1,4,2,1,8,4,8,3,8,7,7,5,1,7,4,4,1,5,2,5,6,1,2,8,3,3,1,3,1,4,1,7,8,6,8,2,5,1,4,5,3,2,2,2,8,3,3,3,6,7,4,7,4,2,7,5,6,7],\22max_block_change_view\22:60000}}\F8\FCz\1Fj\85c\13\C5\91\A3\A7G\F4\EC\A7!\8A\82\0B", [1591 x i8]* %msg, align 1, !dbg !39
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %addr_gold = alloca [20 x i8], align 1
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_349"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  store [20 x i8] c"\A4*N\85\03M[\EB\C2%t=\A4\00\CCL\0ECrz", [20 x i8]* %addr_gold, align 1, !dbg !40
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_354"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %msg_bs = alloca %Bystr, align 8
  %"$execptr_load_361" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_msg_362" = alloca [1591 x i8], align 1
  %"$msg_363" = load [1591 x i8], [1591 x i8]* %msg, align 1
  store [1591 x i8] %"$msg_363", [1591 x i8]* %"$to_bystr_msg_362", align 1
  %"$$to_bystr_msg_362_364" = bitcast [1591 x i8]* %"$to_bystr_msg_362" to i8*
  %"$to_bystr_call_365" = call %Bystr @_to_bystr(i8* %"$execptr_load_361", i32 1591, i8* %"$$to_bystr_msg_362_364")
  store %Bystr %"$to_bystr_call_365", %Bystr* %msg_bs, align 8, !dbg !41
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_359"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %msg_hashed = alloca %Bystr, align 8
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %"$header_hash_2" = alloca %Bystr, align 8
  %"$header_hash_376" = load { %Bystr (i8*, %Bystr)*, i8* }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8
  %"$header_hash_fptr_377" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_376", 0
  %"$header_hash_envptr_378" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_376", 1
  %"$msg_bs_379" = load %Bystr, %Bystr* %msg_bs, align 8
  %"$header_hash_call_380" = call %Bystr %"$header_hash_fptr_377"(i8* %"$header_hash_envptr_378", %Bystr %"$msg_bs_379"), !dbg !42
  store %Bystr %"$header_hash_call_380", %Bystr* %"$header_hash_2", align 8, !dbg !42
  %"$$header_hash_2_381" = load %Bystr, %Bystr* %"$header_hash_2", align 8
  store %Bystr %"$$header_hash_2_381", %Bystr* %msg_hashed, align 8, !dbg !42
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_374"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %recid = alloca %Uint32, align 8
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %recid, align 4, !dbg !43
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_390"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %addr_computed = alloca [20 x i8], align 1
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$ecrecover_3" = alloca { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, align 8
  %"$ecrecover_402" = load { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8
  %"$ecrecover_fptr_403" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_402", 0
  %"$ecrecover_envptr_404" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_402", 1
  %"$msg_hashed_405" = load %Bystr, %Bystr* %msg_hashed, align 8
  %"$ecrecover_call_406" = call { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_fptr_403"(i8* %"$ecrecover_envptr_404", %Bystr %"$msg_hashed_405"), !dbg !44
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_call_406", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_3", align 8, !dbg !44
  %"$ecrecover_4" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }, align 8
  %"$$ecrecover_3_407" = load { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_3", align 8
  %"$$ecrecover_3_fptr_408" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_3_407", 0
  %"$$ecrecover_3_envptr_409" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_3_407", 1
  %"$$ecrecover_3_sig_410" = alloca [64 x i8], align 1
  %"$sig_411" = load [64 x i8], [64 x i8]* %sig, align 1
  store [64 x i8] %"$sig_411", [64 x i8]* %"$$ecrecover_3_sig_410", align 1
  %"$$ecrecover_3_call_412" = call { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_3_fptr_408"(i8* %"$$ecrecover_3_envptr_409", [64 x i8]* %"$$ecrecover_3_sig_410"), !dbg !44
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_3_call_412", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_4", align 8, !dbg !44
  %"$ecrecover_5" = alloca [20 x i8], align 1
  %"$$ecrecover_4_413" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_4", align 8
  %"$$ecrecover_4_fptr_414" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_4_413", 0
  %"$$ecrecover_4_envptr_415" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_4_413", 1
  %"$recid_416" = load %Uint32, %Uint32* %recid, align 4
  %"$$ecrecover_4_retalloca_417" = alloca [20 x i8], align 1
  call void %"$$ecrecover_4_fptr_414"(i8* %"$$ecrecover_4_envptr_415", [20 x i8]* %"$$ecrecover_4_retalloca_417", %Uint32 %"$recid_416"), !dbg !44
  %"$$ecrecover_4_ret_418" = load [20 x i8], [20 x i8]* %"$$ecrecover_4_retalloca_417", align 1
  store [20 x i8] %"$$ecrecover_4_ret_418", [20 x i8]* %"$ecrecover_5", align 1, !dbg !44
  %"$$ecrecover_5_419" = load [20 x i8], [20 x i8]* %"$ecrecover_5", align 1
  store [20 x i8] %"$$ecrecover_5_419", [20 x i8]* %addr_computed, align 1, !dbg !44
  %"$execptr_load_420" = load i8*, i8** @_execptr, align 8
  %"$eq_addr_computed_421" = alloca [20 x i8], align 1
  %"$addr_computed_422" = load [20 x i8], [20 x i8]* %addr_computed, align 1
  store [20 x i8] %"$addr_computed_422", [20 x i8]* %"$eq_addr_computed_421", align 1
  %"$$eq_addr_computed_421_423" = bitcast [20 x i8]* %"$eq_addr_computed_421" to i8*
  %"$eq_addr_gold_424" = alloca [20 x i8], align 1
  %"$addr_gold_425" = load [20 x i8], [20 x i8]* %addr_gold, align 1
  store [20 x i8] %"$addr_gold_425", [20 x i8]* %"$eq_addr_gold_424", align 1
  %"$$eq_addr_gold_424_426" = bitcast [20 x i8]* %"$eq_addr_gold_424" to i8*
  %"$eq_call_427" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_420", i32 20, i8* %"$$eq_addr_computed_421_423", i8* %"$$eq_addr_gold_424_426")
  store %TName_Bool* %"$eq_call_427", %TName_Bool** %"$expr_6", align 8, !dbg !45
  %"$$expr_6_429" = load %TName_Bool*, %TName_Bool** %"$expr_6", align 8
  ret %TName_Bool* %"$$expr_6_429"
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_430" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_431" = bitcast %TName_Bool* %"$exprval_430" to i8*
  %"$execptr_load_432" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_432", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_57", i8* %"$memvoidcast_431")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin-ecdsa_recover.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 28, type: !5, scopeLine: 28, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 28, column: 14, scope: !4)
!9 = !DILocation(line: 29, column: 14, scope: !4)
!10 = !DILocation(line: 30, column: 5, scope: !4)
!11 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 5, column: 14, scope: !11)
!13 = !DILocation(line: 6, column: 15, scope: !11)
!14 = !DILocation(line: 7, column: 15, scope: !11)
!15 = !DILocation(line: 8, column: 17, scope: !11)
!16 = !DILocation(line: 9, column: 15, scope: !11)
!17 = !DILocation(line: 10, column: 18, scope: !11)
!18 = !DILocation(line: 11, column: 21, scope: !11)
!19 = !DILocation(line: 12, column: 15, scope: !11)
!20 = !DILocation(line: 13, column: 15, scope: !11)
!21 = !DILocation(line: 14, column: 19, scope: !11)
!22 = !DILocation(line: 15, column: 20, scope: !11)
!23 = !DILocation(line: 16, column: 5, scope: !11)
!24 = !DILocation(line: 18, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !2, line: 17, column: 7)
!26 = distinct !DILexicalBlock(scope: !11, file: !2, line: 16, column: 5)
!27 = !DILocation(line: 22, column: 7, scope: !28)
!28 = distinct !DILexicalBlock(scope: !26, file: !2, line: 19, column: 7)
!29 = distinct !DISubprogram(name: "$fundef_9", linkageName: "$fundef_9", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 5, column: 5, scope: !29)
!31 = distinct !DISubprogram(name: "$fundef_7", linkageName: "$fundef_7", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 4, column: 3, scope: !31)
!33 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !34, file: !34, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DIFile(filename: ".", directory: ".")
!35 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!36 = !DILocation(line: 3, column: 3, scope: !35)
!37 = !DILocation(line: 28, column: 5, scope: !35)
!38 = !DILocation(line: 33, column: 11, scope: !35)
!39 = !DILocation(line: 34, column: 11, scope: !35)
!40 = !DILocation(line: 36, column: 17, scope: !35)
!41 = !DILocation(line: 37, column: 14, scope: !35)
!42 = !DILocation(line: 38, column: 18, scope: !35)
!43 = !DILocation(line: 39, column: 13, scope: !35)
!44 = !DILocation(line: 41, column: 21, scope: !35)
!45 = !DILocation(line: 42, column: 1, scope: !35)
