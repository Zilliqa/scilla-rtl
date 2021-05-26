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
%"$ParamDescr_427" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_428" = type { %ParamDescrString, i32, %"$ParamDescr_427"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_427"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_428"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Bystr @"$fundef_13"(%"$$fundef_13_env_86"* %0, %Bystr %1) {
entry:
  %"$retval_14" = alloca %Bystr, align 8
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %entry
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %h1 = alloca [32 x i8], align 1
  %"$execptr_load_274" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_header_275" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$sha256hash_header_275", align 8
  %"$$sha256hash_header_275_276" = bitcast %Bystr* %"$sha256hash_header_275" to i8*
  %"$sha256hash_call_277" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_274", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$sha256hash_header_275_276")
  %"$sha256hash_278" = load [32 x i8], [32 x i8]* %"$sha256hash_call_277", align 1
  store [32 x i8] %"$sha256hash_278", [32 x i8]* %h1, align 1
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_272"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %h2 = alloca [32 x i8], align 1
  %"$execptr_load_284" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_h1_285" = alloca [32 x i8], align 1
  %"$h1_286" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_286", [32 x i8]* %"$sha256hash_h1_285", align 1
  %"$$sha256hash_h1_285_287" = bitcast [32 x i8]* %"$sha256hash_h1_285" to i8*
  %"$sha256hash_call_288" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_284", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_47", i8* %"$$sha256hash_h1_285_287")
  %"$sha256hash_289" = load [32 x i8], [32 x i8]* %"$sha256hash_call_288", align 1
  store [32 x i8] %"$sha256hash_289", [32 x i8]* %h2, align 1
  %"$execptr_load_290" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_h2_291" = alloca [32 x i8], align 1
  %"$h2_292" = load [32 x i8], [32 x i8]* %h2, align 1
  store [32 x i8] %"$h2_292", [32 x i8]* %"$to_bystr_h2_291", align 1
  %"$$to_bystr_h2_291_293" = bitcast [32 x i8]* %"$to_bystr_h2_291" to i8*
  %"$to_bystr_call_294" = call %Bystr @_to_bystr(i8* %"$execptr_load_290", i32 32, i8* %"$$to_bystr_h2_291_293")
  store %Bystr %"$to_bystr_call_294", %Bystr* %"$retval_14", align 8
  %"$$retval_14_295" = load %Bystr, %Bystr* %"$retval_14", align 8
  ret %Bystr %"$$retval_14_295"
}

define internal void @"$fundef_11"(%"$$fundef_11_env_87"* %0, [20 x i8]* %1, %Uint32 %2) {
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
  %"$ecdsa_recover_pk_130" = load [65 x i8], [65 x i8]* %"$ecdsa_recover_pk_call_129", align 1
  store [65 x i8] %"$ecdsa_recover_pk_130", [65 x i8]* %pk, align 1
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_123"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %pos = alloca %Uint32, align 8
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %pos, align 4
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %len = alloca %Uint32, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  store %Uint32 { i32 64 }, %Uint32* %len, align 4
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %pk_bs = alloca %Bystr, align 8
  %"$execptr_load_156" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pk_157" = alloca [65 x i8], align 1
  %"$pk_158" = load [65 x i8], [65 x i8]* %pk, align 1
  store [65 x i8] %"$pk_158", [65 x i8]* %"$to_bystr_pk_157", align 1
  %"$$to_bystr_pk_157_159" = bitcast [65 x i8]* %"$to_bystr_pk_157" to i8*
  %"$to_bystr_call_160" = call %Bystr @_to_bystr(i8* %"$execptr_load_156", i32 65, i8* %"$$to_bystr_pk_157_159")
  store %Bystr %"$to_bystr_call_160", %Bystr* %pk_bs, align 8
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_154"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %pk_ = alloca %Bystr, align 8
  %"$execptr_load_166" = load i8*, i8** @_execptr, align 8
  %"$pk_bs_167" = load %Bystr, %Bystr* %pk_bs, align 8
  %"$pos_168" = load %Uint32, %Uint32* %pos, align 4
  %"$len_169" = load %Uint32, %Uint32* %len, align 4
  %"$substr_call_170" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_166", %Bystr %"$pk_bs_167", %Uint32 %"$pos_168", %Uint32 %"$len_169")
  store %Bystr %"$substr_call_170", %Bystr* %pk_, align 8
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_164"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %pkHash = alloca [32 x i8], align 1
  %"$execptr_load_176" = load i8*, i8** @_execptr, align 8
  %"$keccak256hash_pk__177" = alloca %Bystr, align 8
  %"$pk__178" = load %Bystr, %Bystr* %pk_, align 8
  store %Bystr %"$pk__178", %Bystr* %"$keccak256hash_pk__177", align 8
  %"$$keccak256hash_pk__177_179" = bitcast %Bystr* %"$keccak256hash_pk__177" to i8*
  %"$keccak256hash_call_180" = call [32 x i8]* @_keccak256hash(i8* %"$execptr_load_176", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$keccak256hash_pk__177_179")
  %"$keccak256hash_181" = load [32 x i8], [32 x i8]* %"$keccak256hash_call_180", align 1
  store [32 x i8] %"$keccak256hash_181", [32 x i8]* %pkHash, align 1
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_174"
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %pkHash_bs = alloca %Bystr, align 8
  %"$execptr_load_187" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pkHash_188" = alloca [32 x i8], align 1
  %"$pkHash_189" = load [32 x i8], [32 x i8]* %pkHash, align 1
  store [32 x i8] %"$pkHash_189", [32 x i8]* %"$to_bystr_pkHash_188", align 1
  %"$$to_bystr_pkHash_188_190" = bitcast [32 x i8]* %"$to_bystr_pkHash_188" to i8*
  %"$to_bystr_call_191" = call %Bystr @_to_bystr(i8* %"$execptr_load_187", i32 32, i8* %"$$to_bystr_pkHash_188_190")
  store %Bystr %"$to_bystr_call_191", %Bystr* %pkHash_bs, align 8
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_185"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %"$pos_0" = alloca %Uint32, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_195"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  store %Uint32 { i32 12 }, %Uint32* %"$pos_0", align 4
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$len_1" = alloca %Uint32, align 8
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  store %Uint32 { i32 20 }, %Uint32* %"$len_1", align 4
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_210"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %addr_bs = alloca %Bystr, align 8
  %"$execptr_load_217" = load i8*, i8** @_execptr, align 8
  %"$pkHash_bs_218" = load %Bystr, %Bystr* %pkHash_bs, align 8
  %"$$pos_0_219" = load %Uint32, %Uint32* %"$pos_0", align 4
  %"$$len_1_220" = load %Uint32, %Uint32* %"$len_1", align 4
  %"$substr_call_221" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_217", %Bystr %"$pkHash_bs_218", %Uint32 %"$$pos_0_219", %Uint32 %"$$len_1_220")
  store %Bystr %"$substr_call_221", %Bystr* %addr_bs, align 8
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_215"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %addr_opt = alloca %TName_Option_ByStr20*, align 8
  %"$execptr_load_227" = load i8*, i8** @_execptr, align 8
  %"$addr_bs_228" = load %Bystr, %Bystr* %addr_bs, align 8
  %"$to_bystr20_call_229" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_227", i32 20, %Bystr %"$addr_bs_228")
  %"$to_bystr20_230" = bitcast i8* %"$to_bystr20_call_229" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$to_bystr20_230", %TName_Option_ByStr20** %addr_opt, align 8
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 2, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_225"
  %"$consume_235" = sub i64 %"$gasrem_231", 2
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %"$addr_opt_237" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %addr_opt, align 8
  %"$addr_opt_tag_238" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$addr_opt_237", i32 0, i32 0
  %"$addr_opt_tag_239" = load i8, i8* %"$addr_opt_tag_238", align 1
  switch i8 %"$addr_opt_tag_239", label %"$empty_default_240" [
    i8 0, label %"$Some_241"
    i8 1, label %"$None_251"
  ]

"$Some_241":                                      ; preds = %"$have_gas_234"
  %"$addr_opt_242" = bitcast %TName_Option_ByStr20* %"$addr_opt_237" to %CName_Some_ByStr20*
  %"$addr_gep_243" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$addr_opt_242", i32 0, i32 1
  %"$addr_load_244" = load [20 x i8], [20 x i8]* %"$addr_gep_243", align 1
  %addr = alloca [20 x i8], align 1
  store [20 x i8] %"$addr_load_244", [20 x i8]* %addr, align 1
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$Some_241"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$Some_241"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %"$addr_250" = load [20 x i8], [20 x i8]* %addr, align 1
  store [20 x i8] %"$addr_250", [20 x i8]* %"$retval_12", align 1
  br label %"$matchsucc_236"

"$None_251":                                      ; preds = %"$have_gas_234"
  %"$addr_opt_252" = bitcast %TName_Option_ByStr20* %"$addr_opt_237" to %CName_None_ByStr20*
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$None_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$None_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_256"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_261"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* %"$retval_12", align 1
  br label %"$matchsucc_236"

"$empty_default_240":                             ; preds = %"$have_gas_234"
  br label %"$matchsucc_236"

"$matchsucc_236":                                 ; preds = %"$have_gas_266", %"$have_gas_248", %"$empty_default_240"
  %"$$retval_12_268" = load [20 x i8], [20 x i8]* %"$retval_12", align 1
  store [20 x i8] %"$$retval_12_268", [20 x i8]* %1, align 1
  ret void
}

define internal { void (i8*, [20 x i8]*, %Uint32)*, i8* } @"$fundef_9"(%"$$fundef_9_env_88"* %0, [64 x i8]* %1) {
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
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$fundef_11_cloval_111", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_10", align 8
  %"$$retval_10_115" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_10", align 8
  ret { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$retval_10_115"
}

define internal { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } @"$fundef_7"(%"$$fundef_7_env_89"* %0, %Bystr %1) {
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
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$fundef_9_cloval_98", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$retval_8", align 8
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

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %TName_Bool*, align 8
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %entry
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %ecrecover = alloca { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_299"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  store { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)* bitcast ({ { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (%"$$fundef_7_env_89"*, %Bystr)* @"$fundef_7" to { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*), i8* null }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 1, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_304"
  %"$consume_313" = sub i64 %"$gasrem_309", 1
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %header_hash = alloca { %Bystr (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_312"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  store { %Bystr (i8*, %Bystr)*, i8* } { %Bystr (i8*, %Bystr)* bitcast (%Bystr (%"$$fundef_13_env_86"*, %Bystr)* @"$fundef_13" to %Bystr (i8*, %Bystr)*), i8* null }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_317"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %sig = alloca [64 x i8], align 1
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_325"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  store [64 x i8] c"}X\8Dy\AC\9F\091\C6\91P\DEk\FER\89\F0\14x\93x\1B\FF\BC\C3+^\07\BDh}\10H\DD\A09\FF\C1\E8}\E2\E9\86\10\DC\87n\97A\1D`IHG9\04\B1+d\BE\D8\88\0B\CC", [64 x i8]* %sig, align 1
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_330"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %msg = alloca [1591 x i8], align 1
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_335"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  store [1591 x i8] c"\00\00\00\00\9B\91V\17\00\00\00\00\F4\8A@W\BE\F2h\CC?\DB\03Ni\DC.\94)\07\E0\8A\C4\A4 \D1\B1\96\B8\C2\8E\BF[\F2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\8B\E0\A1`Zc\A3\17\04\AE\C4\EBO\10#\F1\EC\C2\93K\D8o\11\9A\B7u&\F9Gz\F9\A5~\1A_P\8E\00\00A\07\82r\0A\B1\89\FF\FD\84\05{\22leader\22:3,\22vrf_value\22:\22BOO3oXyk2RIpeVQY38Tq3qJB82szJh6nOorJUp/JMX+GLpz4zIsG9LJl4xJo4etHgOV5qi6MHKftqOirOuZIZiY=\22,\22vrf_proof\22:\22cYSRWFPoi9GHABGRbUdh6a+5PoO1wv5JUzSAtWxhEcpqut0SjYXs4LtS55tSJt3AtI0YamLgRJyzROhVGVbm4g==\22,\22last_config_block_num\22:36432,\22new_chain_config\22:{\22version\22:1,\22view\22:4,\22n\22:8,\22c\22:2,\22block_msg_delay\22:10000000000,\22hash_msg_delay\22:10000000000,\22peer_handshake_timeout\22:10000000000,\22peers\22:[{\22index\22:1,\22id\22:\221205028172918540b2b512eae1872a2a2e3a28d989c60d95dab8829ada7d7dd706d658\22},{\22index\22:4,\22id\22:\22120502679930a42aaf3c69798ca8a3f12e134c019405818d783d11748e039de8515988\22},{\22index\22:3,\22id\22:\22120502482acb6564b19b90653f6e9c806292e8aa83f78e7a9382a24a6efe41c0c06f39\22},{\22index\22:5,\22id\22:\22120502468dd1899ed2d1cc2b829882a165a0ecb6a745af0c72eb2982d66b4311b4ef73\22},{\22index\22:8,\22id\22:\2212050393421445b9421bd4cc90d7bc88c9301558047a76b20c59e7c511ee7d229982b1\22},{\22index\22:2,\22id\22:\221205038b8af6210ecfdcbcab22552ef8d8cf41c6f86f9cf9ab53d865741cfdb833f06b\22},{\22index\22:7,\22id\22:\221205031e0779f5c5ccb2612352fe4a200f99d3e7758e70ba53f607c59ff22a30f678ff\22},{\22index\22:6,\22id\22:\22120502eb1baab602c5899282561cdaaa7aabbcdd0ccfcbc3e79793ac24acf90778f35a\22}],\22pos_table\22:[2,8,5,5,8,7,1,4,5,6,5,4,7,7,3,3,4,6,1,2,4,8,5,4,7,4,6,6,2,2,1,1,8,8,6,6,6,7,8,7,4,8,5,1,3,3,8,5,3,6,3,6,7,5,6,2,3,1,2,6,5,2,1,4,2,1,8,4,8,3,8,7,7,5,1,7,4,4,1,5,2,5,6,1,2,8,3,3,1,3,1,4,1,7,8,6,8,2,5,1,4,5,3,2,2,2,8,3,3,3,6,7,4,7,4,2,7,5,6,7],\22max_block_change_view\22:60000}}\F8\FCz\1Fj\85c\13\C5\91\A3\A7G\F4\EC\A7!\8A\82\0B", [1591 x i8]* %msg, align 1
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_340"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %addr_gold = alloca [20 x i8], align 1
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_345"
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  store [20 x i8] c"\A4*N\85\03M[\EB\C2%t=\A4\00\CCL\0ECrz", [20 x i8]* %addr_gold, align 1
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$have_gas_350"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %msg_bs = alloca %Bystr, align 8
  %"$execptr_load_357" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_msg_358" = alloca [1591 x i8], align 1
  %"$msg_359" = load [1591 x i8], [1591 x i8]* %msg, align 1
  store [1591 x i8] %"$msg_359", [1591 x i8]* %"$to_bystr_msg_358", align 1
  %"$$to_bystr_msg_358_360" = bitcast [1591 x i8]* %"$to_bystr_msg_358" to i8*
  %"$to_bystr_call_361" = call %Bystr @_to_bystr(i8* %"$execptr_load_357", i32 1591, i8* %"$$to_bystr_msg_358_360")
  store %Bystr %"$to_bystr_call_361", %Bystr* %msg_bs, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_355"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %msg_hashed = alloca %Bystr, align 8
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_365"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %"$header_hash_2" = alloca %Bystr, align 8
  %"$header_hash_372" = load { %Bystr (i8*, %Bystr)*, i8* }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8
  %"$header_hash_fptr_373" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_372", 0
  %"$header_hash_envptr_374" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_372", 1
  %"$msg_bs_375" = load %Bystr, %Bystr* %msg_bs, align 8
  %"$header_hash_call_376" = call %Bystr %"$header_hash_fptr_373"(i8* %"$header_hash_envptr_374", %Bystr %"$msg_bs_375")
  store %Bystr %"$header_hash_call_376", %Bystr* %"$header_hash_2", align 8
  %"$$header_hash_2_377" = load %Bystr, %Bystr* %"$header_hash_2", align 8
  store %Bystr %"$$header_hash_2_377", %Bystr* %msg_hashed, align 8
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_370"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %recid = alloca %Uint32, align 8
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_381"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %recid, align 4
  %"$gasrem_388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_389" = icmp ugt i64 1, %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_386"
  %"$consume_392" = sub i64 %"$gasrem_388", 1
  store i64 %"$consume_392", i64* @_gasrem, align 8
  %addr_computed = alloca [20 x i8], align 1
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_391"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %"$ecrecover_3" = alloca { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, align 8
  %"$ecrecover_398" = load { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8
  %"$ecrecover_fptr_399" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_398", 0
  %"$ecrecover_envptr_400" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_398", 1
  %"$msg_hashed_401" = load %Bystr, %Bystr* %msg_hashed, align 8
  %"$ecrecover_call_402" = call { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_fptr_399"(i8* %"$ecrecover_envptr_400", %Bystr %"$msg_hashed_401")
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_call_402", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_3", align 8
  %"$ecrecover_4" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }, align 8
  %"$$ecrecover_3_403" = load { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_3", align 8
  %"$$ecrecover_3_fptr_404" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_3_403", 0
  %"$$ecrecover_3_envptr_405" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_3_403", 1
  %"$$ecrecover_3_sig_406" = alloca [64 x i8], align 1
  %"$sig_407" = load [64 x i8], [64 x i8]* %sig, align 1
  store [64 x i8] %"$sig_407", [64 x i8]* %"$$ecrecover_3_sig_406", align 1
  %"$$ecrecover_3_call_408" = call { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_3_fptr_404"(i8* %"$$ecrecover_3_envptr_405", [64 x i8]* %"$$ecrecover_3_sig_406")
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_3_call_408", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_4", align 8
  %"$ecrecover_5" = alloca [20 x i8], align 1
  %"$$ecrecover_4_409" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_4", align 8
  %"$$ecrecover_4_fptr_410" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_4_409", 0
  %"$$ecrecover_4_envptr_411" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_4_409", 1
  %"$recid_412" = load %Uint32, %Uint32* %recid, align 4
  %"$$ecrecover_4_retalloca_413" = alloca [20 x i8], align 1
  call void %"$$ecrecover_4_fptr_410"(i8* %"$$ecrecover_4_envptr_411", [20 x i8]* %"$$ecrecover_4_retalloca_413", %Uint32 %"$recid_412")
  %"$$ecrecover_4_ret_414" = load [20 x i8], [20 x i8]* %"$$ecrecover_4_retalloca_413", align 1
  store [20 x i8] %"$$ecrecover_4_ret_414", [20 x i8]* %"$ecrecover_5", align 1
  %"$$ecrecover_5_415" = load [20 x i8], [20 x i8]* %"$ecrecover_5", align 1
  store [20 x i8] %"$$ecrecover_5_415", [20 x i8]* %addr_computed, align 1
  %"$execptr_load_416" = load i8*, i8** @_execptr, align 8
  %"$eq_addr_computed_417" = alloca [20 x i8], align 1
  %"$addr_computed_418" = load [20 x i8], [20 x i8]* %addr_computed, align 1
  store [20 x i8] %"$addr_computed_418", [20 x i8]* %"$eq_addr_computed_417", align 1
  %"$$eq_addr_computed_417_419" = bitcast [20 x i8]* %"$eq_addr_computed_417" to i8*
  %"$eq_addr_gold_420" = alloca [20 x i8], align 1
  %"$addr_gold_421" = load [20 x i8], [20 x i8]* %addr_gold, align 1
  store [20 x i8] %"$addr_gold_421", [20 x i8]* %"$eq_addr_gold_420", align 1
  %"$$eq_addr_gold_420_422" = bitcast [20 x i8]* %"$eq_addr_gold_420" to i8*
  %"$eq_call_423" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_416", i32 20, i8* %"$$eq_addr_computed_417_419", i8* %"$$eq_addr_gold_420_422")
  store %TName_Bool* %"$eq_call_423", %TName_Bool** %"$expr_6", align 8
  %"$$expr_6_424" = load %TName_Bool*, %TName_Bool** %"$expr_6", align 8
  ret %TName_Bool* %"$$expr_6_424"
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_425" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_426" = bitcast %TName_Bool* %"$exprval_425" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_57", i8* %"$memvoidcast_426")
  ret void
}
