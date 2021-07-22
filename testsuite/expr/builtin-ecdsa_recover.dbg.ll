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
%"$ParamDescr_552" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_553" = type { %ParamDescrString, i32, %"$ParamDescr_552"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_552"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_553"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Bystr @"$fundef_13"(%"$$fundef_13_env_86"* %0, %Bystr %1) !dbg !4 {
entry:
  %"$retval_14" = alloca %Bystr, align 8
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %entry
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %h1 = alloca [32 x i8], align 1
  %"$_literal_cost_header_353" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$_literal_cost_header_353", align 8
  %"$$_literal_cost_header_353_354" = bitcast %Bystr* %"$_literal_cost_header_353" to i8*
  %"$_literal_cost_call_355" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$_literal_cost_header_353_354")
  %"$gasdivceil_356" = urem i64 %"$_literal_cost_call_355", 960
  %"$gasdivceil_357" = udiv i64 %"$_literal_cost_call_355", 960
  %"$gasdivceil_358" = icmp eq i64 %"$gasdivceil_356", 0
  %"$gasdivceil_359" = add i64 %"$gasdivceil_357", 1
  %"$gasdivceil_360" = select i1 %"$gasdivceil_358", i64 %"$gasdivceil_357", i64 %"$gasdivceil_359"
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 %"$gasdivceil_360", %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_351"
  %"$consume_365" = sub i64 %"$gasrem_361", %"$gasdivceil_360"
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %"$execptr_load_366" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_header_367" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$sha256hash_header_367", align 8
  %"$$sha256hash_header_367_368" = bitcast %Bystr* %"$sha256hash_header_367" to i8*
  %"$sha256hash_call_369" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_366", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$sha256hash_header_367_368"), !dbg !8
  %"$sha256hash_371" = load [32 x i8], [32 x i8]* %"$sha256hash_call_369", align 1
  store [32 x i8] %"$sha256hash_371", [32 x i8]* %h1, align 1, !dbg !8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_364"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %h2 = alloca [32 x i8], align 1
  %"$_literal_cost_h1_377" = alloca [32 x i8], align 1
  %"$h1_378" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_378", [32 x i8]* %"$_literal_cost_h1_377", align 1
  %"$$_literal_cost_h1_377_379" = bitcast [32 x i8]* %"$_literal_cost_h1_377" to i8*
  %"$_literal_cost_call_380" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_47", i8* %"$$_literal_cost_h1_377_379")
  %"$gasdivceil_381" = urem i64 %"$_literal_cost_call_380", 960
  %"$gasdivceil_382" = udiv i64 %"$_literal_cost_call_380", 960
  %"$gasdivceil_383" = icmp eq i64 %"$gasdivceil_381", 0
  %"$gasdivceil_384" = add i64 %"$gasdivceil_382", 1
  %"$gasdivceil_385" = select i1 %"$gasdivceil_383", i64 %"$gasdivceil_382", i64 %"$gasdivceil_384"
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 %"$gasdivceil_385", %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_375"
  %"$consume_390" = sub i64 %"$gasrem_386", %"$gasdivceil_385"
  store i64 %"$consume_390", i64* @_gasrem, align 8
  %"$execptr_load_391" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_h1_392" = alloca [32 x i8], align 1
  %"$h1_393" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_393", [32 x i8]* %"$sha256hash_h1_392", align 1
  %"$$sha256hash_h1_392_394" = bitcast [32 x i8]* %"$sha256hash_h1_392" to i8*
  %"$sha256hash_call_395" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_391", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_47", i8* %"$$sha256hash_h1_392_394"), !dbg !9
  %"$sha256hash_397" = load [32 x i8], [32 x i8]* %"$sha256hash_call_395", align 1
  store [32 x i8] %"$sha256hash_397", [32 x i8]* %h2, align 1, !dbg !9
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 32, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_389"
  %"$consume_402" = sub i64 %"$gasrem_398", 32
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$execptr_load_403" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_h2_404" = alloca [32 x i8], align 1
  %"$h2_405" = load [32 x i8], [32 x i8]* %h2, align 1
  store [32 x i8] %"$h2_405", [32 x i8]* %"$to_bystr_h2_404", align 1
  %"$$to_bystr_h2_404_406" = bitcast [32 x i8]* %"$to_bystr_h2_404" to i8*
  %"$to_bystr_call_407" = call %Bystr @_to_bystr(i8* %"$execptr_load_403", i32 32, i8* %"$$to_bystr_h2_404_406"), !dbg !10
  store %Bystr %"$to_bystr_call_407", %Bystr* %"$retval_14", align 8, !dbg !10
  %"$$retval_14_408" = load %Bystr, %Bystr* %"$retval_14", align 8
  ret %Bystr %"$$retval_14_408"
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
  %"$_literal_cost_msg_125" = alloca %Bystr, align 8
  %"$msg_126" = load %Bystr, %Bystr* %msg, align 8
  store %Bystr %"$msg_126", %Bystr* %"$_literal_cost_msg_125", align 8
  %"$$_literal_cost_msg_125_127" = bitcast %Bystr* %"$_literal_cost_msg_125" to i8*
  %"$_literal_cost_call_128" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$_literal_cost_msg_125_127")
  %"$gasdivceil_129" = urem i64 %"$_literal_cost_call_128", 960
  %"$gasdivceil_130" = udiv i64 %"$_literal_cost_call_128", 960
  %"$gasdivceil_131" = icmp eq i64 %"$gasdivceil_129", 0
  %"$gasdivceil_132" = add i64 %"$gasdivceil_130", 1
  %"$gasdivceil_133" = select i1 %"$gasdivceil_131", i64 %"$gasdivceil_130", i64 %"$gasdivceil_132"
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 %"$gasdivceil_133", %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_123"
  %"$consume_138" = sub i64 %"$gasrem_134", %"$gasdivceil_133"
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %"$execptr_load_139" = load i8*, i8** @_execptr, align 8
  %"$msg_140" = load %Bystr, %Bystr* %msg, align 8
  %"$ecdsa_recover_pk_sig_141" = alloca [64 x i8], align 1
  %"$sig_142" = load [64 x i8], [64 x i8]* %sig, align 1
  store [64 x i8] %"$sig_142", [64 x i8]* %"$ecdsa_recover_pk_sig_141", align 1
  %"$ecdsa_recover_pk_call_143" = call [65 x i8]* @_ecdsa_recover_pk(i8* %"$execptr_load_139", %Bystr %"$msg_140", [64 x i8]* %"$ecdsa_recover_pk_sig_141", %Uint32 %2), !dbg !12
  %"$ecdsa_recover_pk_145" = load [65 x i8], [65 x i8]* %"$ecdsa_recover_pk_call_143", align 1
  store [65 x i8] %"$ecdsa_recover_pk_145", [65 x i8]* %pk, align 1, !dbg !12
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_137"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %pos = alloca %Uint32, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %pos, align 4, !dbg !13
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %len = alloca %Uint32, align 8
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  store %Uint32 { i32 64 }, %Uint32* %len, align 4, !dbg !14
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %pk_bs = alloca %Bystr, align 8
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 65, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 65
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$execptr_load_176" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pk_177" = alloca [65 x i8], align 1
  %"$pk_178" = load [65 x i8], [65 x i8]* %pk, align 1
  store [65 x i8] %"$pk_178", [65 x i8]* %"$to_bystr_pk_177", align 1
  %"$$to_bystr_pk_177_179" = bitcast [65 x i8]* %"$to_bystr_pk_177" to i8*
  %"$to_bystr_call_180" = call %Bystr @_to_bystr(i8* %"$execptr_load_176", i32 65, i8* %"$$to_bystr_pk_177_179"), !dbg !15
  store %Bystr %"$to_bystr_call_180", %Bystr* %pk_bs, align 8, !dbg !15
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_174"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %pk_ = alloca %Bystr, align 8
  %"$_literal_cost_pk_bs_186" = alloca %Bystr, align 8
  %"$pk_bs_187" = load %Bystr, %Bystr* %pk_bs, align 8
  store %Bystr %"$pk_bs_187", %Bystr* %"$_literal_cost_pk_bs_186", align 8
  %"$$_literal_cost_pk_bs_186_188" = bitcast %Bystr* %"$_literal_cost_pk_bs_186" to i8*
  %"$_literal_cost_call_189" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$_literal_cost_pk_bs_186_188")
  %"$pos_190" = load %Uint32, %Uint32* %pos, align 4
  %"$valueof_191" = extractvalue %Uint32 %"$pos_190", 0
  %"$valueof_192" = zext i32 %"$valueof_191" to i64
  %"$len_193" = load %Uint32, %Uint32* %len, align 4
  %"$valueof_194" = extractvalue %Uint32 %"$len_193", 0
  %"$valueof_195" = zext i32 %"$valueof_194" to i64
  %"$gasadd_196" = add i64 %"$valueof_192", %"$valueof_195"
  %"$gasmin_197" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_189", i64 %"$gasadd_196")
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 %"$gasmin_197", %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_184"
  %"$consume_202" = sub i64 %"$gasrem_198", %"$gasmin_197"
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$execptr_load_203" = load i8*, i8** @_execptr, align 8
  %"$pk_bs_204" = load %Bystr, %Bystr* %pk_bs, align 8
  %"$pos_205" = load %Uint32, %Uint32* %pos, align 4
  %"$len_206" = load %Uint32, %Uint32* %len, align 4
  %"$substr_call_207" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_203", %Bystr %"$pk_bs_204", %Uint32 %"$pos_205", %Uint32 %"$len_206"), !dbg !16
  store %Bystr %"$substr_call_207", %Bystr* %pk_, align 8, !dbg !16
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_201"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %pkHash = alloca [32 x i8], align 1
  %"$_literal_cost_pk__213" = alloca %Bystr, align 8
  %"$pk__214" = load %Bystr, %Bystr* %pk_, align 8
  store %Bystr %"$pk__214", %Bystr* %"$_literal_cost_pk__213", align 8
  %"$$_literal_cost_pk__213_215" = bitcast %Bystr* %"$_literal_cost_pk__213" to i8*
  %"$_literal_cost_call_216" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$_literal_cost_pk__213_215")
  %"$gasdivceil_217" = urem i64 %"$_literal_cost_call_216", 2040
  %"$gasdivceil_218" = udiv i64 %"$_literal_cost_call_216", 2040
  %"$gasdivceil_219" = icmp eq i64 %"$gasdivceil_217", 0
  %"$gasdivceil_220" = add i64 %"$gasdivceil_218", 1
  %"$gasdivceil_221" = select i1 %"$gasdivceil_219", i64 %"$gasdivceil_218", i64 %"$gasdivceil_220"
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 %"$gasdivceil_221", %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_211"
  %"$consume_226" = sub i64 %"$gasrem_222", %"$gasdivceil_221"
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %"$execptr_load_227" = load i8*, i8** @_execptr, align 8
  %"$keccak256hash_pk__228" = alloca %Bystr, align 8
  %"$pk__229" = load %Bystr, %Bystr* %pk_, align 8
  store %Bystr %"$pk__229", %Bystr* %"$keccak256hash_pk__228", align 8
  %"$$keccak256hash_pk__228_230" = bitcast %Bystr* %"$keccak256hash_pk__228" to i8*
  %"$keccak256hash_call_231" = call [32 x i8]* @_keccak256hash(i8* %"$execptr_load_227", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$keccak256hash_pk__228_230"), !dbg !17
  %"$keccak256hash_233" = load [32 x i8], [32 x i8]* %"$keccak256hash_call_231", align 1
  store [32 x i8] %"$keccak256hash_233", [32 x i8]* %pkHash, align 1, !dbg !17
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_225"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %pkHash_bs = alloca %Bystr, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 32, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_237"
  %"$consume_243" = sub i64 %"$gasrem_239", 32
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$execptr_load_244" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pkHash_245" = alloca [32 x i8], align 1
  %"$pkHash_246" = load [32 x i8], [32 x i8]* %pkHash, align 1
  store [32 x i8] %"$pkHash_246", [32 x i8]* %"$to_bystr_pkHash_245", align 1
  %"$$to_bystr_pkHash_245_247" = bitcast [32 x i8]* %"$to_bystr_pkHash_245" to i8*
  %"$to_bystr_call_248" = call %Bystr @_to_bystr(i8* %"$execptr_load_244", i32 32, i8* %"$$to_bystr_pkHash_245_247"), !dbg !18
  store %Bystr %"$to_bystr_call_248", %Bystr* %pkHash_bs, align 8, !dbg !18
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_242"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$pos_0" = alloca %Uint32, align 8
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_252"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  store %Uint32 { i32 12 }, %Uint32* %"$pos_0", align 4, !dbg !19
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_257"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$len_1" = alloca %Uint32, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  store %Uint32 { i32 20 }, %Uint32* %"$len_1", align 4, !dbg !20
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_267"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %addr_bs = alloca %Bystr, align 8
  %"$_literal_cost_pkHash_bs_274" = alloca %Bystr, align 8
  %"$pkHash_bs_275" = load %Bystr, %Bystr* %pkHash_bs, align 8
  store %Bystr %"$pkHash_bs_275", %Bystr* %"$_literal_cost_pkHash_bs_274", align 8
  %"$$_literal_cost_pkHash_bs_274_276" = bitcast %Bystr* %"$_literal_cost_pkHash_bs_274" to i8*
  %"$_literal_cost_call_277" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$_literal_cost_pkHash_bs_274_276")
  %"$$pos_0_278" = load %Uint32, %Uint32* %"$pos_0", align 4
  %"$valueof_279" = extractvalue %Uint32 %"$$pos_0_278", 0
  %"$valueof_280" = zext i32 %"$valueof_279" to i64
  %"$$len_1_281" = load %Uint32, %Uint32* %"$len_1", align 4
  %"$valueof_282" = extractvalue %Uint32 %"$$len_1_281", 0
  %"$valueof_283" = zext i32 %"$valueof_282" to i64
  %"$gasadd_284" = add i64 %"$valueof_280", %"$valueof_283"
  %"$gasmin_285" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_277", i64 %"$gasadd_284")
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 %"$gasmin_285", %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$have_gas_272"
  %"$consume_290" = sub i64 %"$gasrem_286", %"$gasmin_285"
  store i64 %"$consume_290", i64* @_gasrem, align 8
  %"$execptr_load_291" = load i8*, i8** @_execptr, align 8
  %"$pkHash_bs_292" = load %Bystr, %Bystr* %pkHash_bs, align 8
  %"$$pos_0_293" = load %Uint32, %Uint32* %"$pos_0", align 4
  %"$$len_1_294" = load %Uint32, %Uint32* %"$len_1", align 4
  %"$substr_call_295" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_291", %Bystr %"$pkHash_bs_292", %Uint32 %"$$pos_0_293", %Uint32 %"$$len_1_294"), !dbg !21
  store %Bystr %"$substr_call_295", %Bystr* %addr_bs, align 8, !dbg !21
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_289"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_289"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %addr_opt = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 20, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_299"
  %"$consume_305" = sub i64 %"$gasrem_301", 20
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$execptr_load_306" = load i8*, i8** @_execptr, align 8
  %"$addr_bs_307" = load %Bystr, %Bystr* %addr_bs, align 8
  %"$to_bystr20_call_308" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_306", i32 20, %Bystr %"$addr_bs_307"), !dbg !22
  %"$to_bystr20_309" = bitcast i8* %"$to_bystr20_call_308" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$to_bystr20_309", %TName_Option_ByStr20** %addr_opt, align 8, !dbg !22
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 2, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_304"
  %"$consume_314" = sub i64 %"$gasrem_310", 2
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$addr_opt_316" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %addr_opt, align 8
  %"$addr_opt_tag_317" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$addr_opt_316", i32 0, i32 0
  %"$addr_opt_tag_318" = load i8, i8* %"$addr_opt_tag_317", align 1
  switch i8 %"$addr_opt_tag_318", label %"$empty_default_319" [
    i8 0, label %"$Some_320"
    i8 1, label %"$None_330"
  ], !dbg !23

"$Some_320":                                      ; preds = %"$have_gas_313"
  %"$addr_opt_321" = bitcast %TName_Option_ByStr20* %"$addr_opt_316" to %CName_Some_ByStr20*
  %"$addr_gep_322" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$addr_opt_321", i32 0, i32 1
  %"$addr_load_323" = load [20 x i8], [20 x i8]* %"$addr_gep_322", align 1
  %addr = alloca [20 x i8], align 1
  store [20 x i8] %"$addr_load_323", [20 x i8]* %addr, align 1
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$Some_320"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$Some_320"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %"$addr_329" = load [20 x i8], [20 x i8]* %addr, align 1
  store [20 x i8] %"$addr_329", [20 x i8]* %"$retval_12", align 1, !dbg !24
  br label %"$matchsucc_315"

"$None_330":                                      ; preds = %"$have_gas_313"
  %"$addr_opt_331" = bitcast %TName_Option_ByStr20* %"$addr_opt_316" to %CName_None_ByStr20*
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$None_330"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$None_330"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_335"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_340"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* %"$retval_12", align 1, !dbg !27
  br label %"$matchsucc_315"

"$empty_default_319":                             ; preds = %"$have_gas_313"
  br label %"$matchsucc_315"

"$matchsucc_315":                                 ; preds = %"$have_gas_345", %"$have_gas_327", %"$empty_default_319"
  %"$$retval_12_347" = load [20 x i8], [20 x i8]* %"$retval_12", align 1
  store [20 x i8] %"$$retval_12_347", [20 x i8]* %1, align 1
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

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare [65 x i8]* @_ecdsa_recover_pk(i8*, %Bystr, [64 x i8]*, %Uint32)

declare %Bystr @_to_bystr(i8*, i32, i8*)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #0

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
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %entry
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %ecrecover = alloca { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_412"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  store { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)* bitcast ({ { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (%"$$fundef_7_env_89"*, %Bystr)* @"$fundef_7" to { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*), i8* null }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8, !dbg !36
  %"$gasrem_422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_423" = icmp ugt i64 1, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %"$have_gas_417"
  %"$consume_426" = sub i64 %"$gasrem_422", 1
  store i64 %"$consume_426", i64* @_gasrem, align 8
  %header_hash = alloca { %Bystr (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_425"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_425"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  store { %Bystr (i8*, %Bystr)*, i8* } { %Bystr (i8*, %Bystr)* bitcast (%Bystr (%"$$fundef_13_env_86"*, %Bystr)* @"$fundef_13" to %Bystr (i8*, %Bystr)*), i8* null }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8, !dbg !37
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_430"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %sig = alloca [64 x i8], align 1
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_438"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  store [64 x i8] c"}X\8Dy\AC\9F\091\C6\91P\DEk\FER\89\F0\14x\93x\1B\FF\BC\C3+^\07\BDh}\10H\DD\A09\FF\C1\E8}\E2\E9\86\10\DC\87n\97A\1D`IHG9\04\B1+d\BE\D8\88\0B\CC", [64 x i8]* %sig, align 1, !dbg !38
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_443"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  %msg = alloca [1591 x i8], align 1
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_448"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  store [1591 x i8] c"\00\00\00\00\9B\91V\17\00\00\00\00\F4\8A@W\BE\F2h\CC?\DB\03Ni\DC.\94)\07\E0\8A\C4\A4 \D1\B1\96\B8\C2\8E\BF[\F2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\8B\E0\A1`Zc\A3\17\04\AE\C4\EBO\10#\F1\EC\C2\93K\D8o\11\9A\B7u&\F9Gz\F9\A5~\1A_P\8E\00\00A\07\82r\0A\B1\89\FF\FD\84\05{\22leader\22:3,\22vrf_value\22:\22BOO3oXyk2RIpeVQY38Tq3qJB82szJh6nOorJUp/JMX+GLpz4zIsG9LJl4xJo4etHgOV5qi6MHKftqOirOuZIZiY=\22,\22vrf_proof\22:\22cYSRWFPoi9GHABGRbUdh6a+5PoO1wv5JUzSAtWxhEcpqut0SjYXs4LtS55tSJt3AtI0YamLgRJyzROhVGVbm4g==\22,\22last_config_block_num\22:36432,\22new_chain_config\22:{\22version\22:1,\22view\22:4,\22n\22:8,\22c\22:2,\22block_msg_delay\22:10000000000,\22hash_msg_delay\22:10000000000,\22peer_handshake_timeout\22:10000000000,\22peers\22:[{\22index\22:1,\22id\22:\221205028172918540b2b512eae1872a2a2e3a28d989c60d95dab8829ada7d7dd706d658\22},{\22index\22:4,\22id\22:\22120502679930a42aaf3c69798ca8a3f12e134c019405818d783d11748e039de8515988\22},{\22index\22:3,\22id\22:\22120502482acb6564b19b90653f6e9c806292e8aa83f78e7a9382a24a6efe41c0c06f39\22},{\22index\22:5,\22id\22:\22120502468dd1899ed2d1cc2b829882a165a0ecb6a745af0c72eb2982d66b4311b4ef73\22},{\22index\22:8,\22id\22:\2212050393421445b9421bd4cc90d7bc88c9301558047a76b20c59e7c511ee7d229982b1\22},{\22index\22:2,\22id\22:\221205038b8af6210ecfdcbcab22552ef8d8cf41c6f86f9cf9ab53d865741cfdb833f06b\22},{\22index\22:7,\22id\22:\221205031e0779f5c5ccb2612352fe4a200f99d3e7758e70ba53f607c59ff22a30f678ff\22},{\22index\22:6,\22id\22:\22120502eb1baab602c5899282561cdaaa7aabbcdd0ccfcbc3e79793ac24acf90778f35a\22}],\22pos_table\22:[2,8,5,5,8,7,1,4,5,6,5,4,7,7,3,3,4,6,1,2,4,8,5,4,7,4,6,6,2,2,1,1,8,8,6,6,6,7,8,7,4,8,5,1,3,3,8,5,3,6,3,6,7,5,6,2,3,1,2,6,5,2,1,4,2,1,8,4,8,3,8,7,7,5,1,7,4,4,1,5,2,5,6,1,2,8,3,3,1,3,1,4,1,7,8,6,8,2,5,1,4,5,3,2,2,2,8,3,3,3,6,7,4,7,4,2,7,5,6,7],\22max_block_change_view\22:60000}}\F8\FCz\1Fj\85c\13\C5\91\A3\A7G\F4\EC\A7!\8A\82\0B", [1591 x i8]* %msg, align 1, !dbg !39
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_453"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %addr_gold = alloca [20 x i8], align 1
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  store [20 x i8] c"\A4*N\85\03M[\EB\C2%t=\A4\00\CCL\0ECrz", [20 x i8]* %addr_gold, align 1, !dbg !40
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_463"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %msg_bs = alloca %Bystr, align 8
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1591, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1591
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %"$execptr_load_475" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_msg_476" = alloca [1591 x i8], align 1
  %"$msg_477" = load [1591 x i8], [1591 x i8]* %msg, align 1
  store [1591 x i8] %"$msg_477", [1591 x i8]* %"$to_bystr_msg_476", align 1
  %"$$to_bystr_msg_476_478" = bitcast [1591 x i8]* %"$to_bystr_msg_476" to i8*
  %"$to_bystr_call_479" = call %Bystr @_to_bystr(i8* %"$execptr_load_475", i32 1591, i8* %"$$to_bystr_msg_476_478"), !dbg !41
  store %Bystr %"$to_bystr_call_479", %Bystr* %msg_bs, align 8, !dbg !41
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_473"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %msg_hashed = alloca %Bystr, align 8
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_483"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %"$header_hash_2" = alloca %Bystr, align 8
  %"$header_hash_490" = load { %Bystr (i8*, %Bystr)*, i8* }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8
  %"$header_hash_fptr_491" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_490", 0
  %"$header_hash_envptr_492" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_490", 1
  %"$msg_bs_493" = load %Bystr, %Bystr* %msg_bs, align 8
  %"$header_hash_call_494" = call %Bystr %"$header_hash_fptr_491"(i8* %"$header_hash_envptr_492", %Bystr %"$msg_bs_493"), !dbg !42
  store %Bystr %"$header_hash_call_494", %Bystr* %"$header_hash_2", align 8, !dbg !42
  %"$$header_hash_2_495" = load %Bystr, %Bystr* %"$header_hash_2", align 8
  store %Bystr %"$$header_hash_2_495", %Bystr* %msg_hashed, align 8, !dbg !42
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 1, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_488"
  %"$consume_500" = sub i64 %"$gasrem_496", 1
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %recid = alloca %Uint32, align 8
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_499"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_499"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %recid, align 4, !dbg !43
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_504"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %addr_computed = alloca [20 x i8], align 1
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$ecrecover_3" = alloca { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, align 8
  %"$ecrecover_516" = load { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8
  %"$ecrecover_fptr_517" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_516", 0
  %"$ecrecover_envptr_518" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_516", 1
  %"$msg_hashed_519" = load %Bystr, %Bystr* %msg_hashed, align 8
  %"$ecrecover_call_520" = call { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_fptr_517"(i8* %"$ecrecover_envptr_518", %Bystr %"$msg_hashed_519"), !dbg !44
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_call_520", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_3", align 8, !dbg !44
  %"$ecrecover_4" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }, align 8
  %"$$ecrecover_3_521" = load { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_3", align 8
  %"$$ecrecover_3_fptr_522" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_3_521", 0
  %"$$ecrecover_3_envptr_523" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_3_521", 1
  %"$$ecrecover_3_sig_524" = alloca [64 x i8], align 1
  %"$sig_525" = load [64 x i8], [64 x i8]* %sig, align 1
  store [64 x i8] %"$sig_525", [64 x i8]* %"$$ecrecover_3_sig_524", align 1
  %"$$ecrecover_3_call_526" = call { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_3_fptr_522"(i8* %"$$ecrecover_3_envptr_523", [64 x i8]* %"$$ecrecover_3_sig_524"), !dbg !44
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_3_call_526", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_4", align 8, !dbg !44
  %"$ecrecover_5" = alloca [20 x i8], align 1
  %"$$ecrecover_4_527" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_4", align 8
  %"$$ecrecover_4_fptr_528" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_4_527", 0
  %"$$ecrecover_4_envptr_529" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_4_527", 1
  %"$recid_530" = load %Uint32, %Uint32* %recid, align 4
  %"$$ecrecover_4_retalloca_531" = alloca [20 x i8], align 1
  call void %"$$ecrecover_4_fptr_528"(i8* %"$$ecrecover_4_envptr_529", [20 x i8]* %"$$ecrecover_4_retalloca_531", %Uint32 %"$recid_530"), !dbg !44
  %"$$ecrecover_4_ret_532" = load [20 x i8], [20 x i8]* %"$$ecrecover_4_retalloca_531", align 1
  store [20 x i8] %"$$ecrecover_4_ret_532", [20 x i8]* %"$ecrecover_5", align 1, !dbg !44
  %"$$ecrecover_5_533" = load [20 x i8], [20 x i8]* %"$ecrecover_5", align 1
  store [20 x i8] %"$$ecrecover_5_533", [20 x i8]* %addr_computed, align 1, !dbg !44
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 20, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_514"
  %"$consume_538" = sub i64 %"$gasrem_534", 20
  store i64 %"$consume_538", i64* @_gasrem, align 8
  %"$execptr_load_539" = load i8*, i8** @_execptr, align 8
  %"$eq_addr_computed_540" = alloca [20 x i8], align 1
  %"$addr_computed_541" = load [20 x i8], [20 x i8]* %addr_computed, align 1
  store [20 x i8] %"$addr_computed_541", [20 x i8]* %"$eq_addr_computed_540", align 1
  %"$$eq_addr_computed_540_542" = bitcast [20 x i8]* %"$eq_addr_computed_540" to i8*
  %"$eq_addr_gold_543" = alloca [20 x i8], align 1
  %"$addr_gold_544" = load [20 x i8], [20 x i8]* %addr_gold, align 1
  store [20 x i8] %"$addr_gold_544", [20 x i8]* %"$eq_addr_gold_543", align 1
  %"$$eq_addr_gold_543_545" = bitcast [20 x i8]* %"$eq_addr_gold_543" to i8*
  %"$eq_call_546" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_539", i32 20, i8* %"$$eq_addr_computed_540_542", i8* %"$$eq_addr_gold_543_545"), !dbg !45
  store %TName_Bool* %"$eq_call_546", %TName_Bool** %"$expr_6", align 8, !dbg !45
  %"$$expr_6_548" = load %TName_Bool*, %TName_Bool** %"$expr_6", align 8
  ret %TName_Bool* %"$$expr_6_548"
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_549" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_550" = bitcast %TName_Bool* %"$exprval_549" to i8*
  %"$execptr_load_551" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_551", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_57", i8* %"$memvoidcast_550")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }

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
