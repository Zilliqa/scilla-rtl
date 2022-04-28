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

%"$TyDescrTy_PrimTyp_21" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_63" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_62"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_62" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_64"**, %"$TyDescrTy_ADTTyp_63"* }
%"$TyDescrTy_ADTTyp_Constr_64" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_611" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_612" = type { %ParamDescrString, i32, %"$ParamDescr_611"* }
%"$$fundef_19_env_94" = type {}
%Bystr = type { i8*, i32 }
%"$$fundef_17_env_95" = type { %Bystr, [64 x i8] }
%Uint32 = type { i32 }
%TName_Option_ByStr20 = type { i8, %CName_Some_ByStr20*, %CName_None_ByStr20* }
%CName_Some_ByStr20 = type <{ i8, [20 x i8] }>
%CName_None_ByStr20 = type <{ i8 }>
%"$$fundef_15_env_96" = type { %Bystr }
%"$$fundef_13_env_97" = type {}
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_22" = global %"$TyDescrTy_PrimTyp_21" zeroinitializer
@"$TyDescr_Int32_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int32_Prim_22" to i8*) }
@"$TyDescr_Uint32_Prim_24" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 0 }
@"$TyDescr_Uint32_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint32_Prim_24" to i8*) }
@"$TyDescr_Int64_Prim_26" = global %"$TyDescrTy_PrimTyp_21" { i32 0, i32 1 }
@"$TyDescr_Int64_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int64_Prim_26" to i8*) }
@"$TyDescr_Uint64_Prim_28" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 1 }
@"$TyDescr_Uint64_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint64_Prim_28" to i8*) }
@"$TyDescr_Int128_Prim_30" = global %"$TyDescrTy_PrimTyp_21" { i32 0, i32 2 }
@"$TyDescr_Int128_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int128_Prim_30" to i8*) }
@"$TyDescr_Uint128_Prim_32" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 2 }
@"$TyDescr_Uint128_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint128_Prim_32" to i8*) }
@"$TyDescr_Int256_Prim_34" = global %"$TyDescrTy_PrimTyp_21" { i32 0, i32 3 }
@"$TyDescr_Int256_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int256_Prim_34" to i8*) }
@"$TyDescr_Uint256_Prim_36" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 3 }
@"$TyDescr_Uint256_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint256_Prim_36" to i8*) }
@"$TyDescr_String_Prim_38" = global %"$TyDescrTy_PrimTyp_21" { i32 2, i32 0 }
@"$TyDescr_String_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_String_Prim_38" to i8*) }
@"$TyDescr_Bnum_Prim_40" = global %"$TyDescrTy_PrimTyp_21" { i32 3, i32 0 }
@"$TyDescr_Bnum_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bnum_Prim_40" to i8*) }
@"$TyDescr_Message_Prim_42" = global %"$TyDescrTy_PrimTyp_21" { i32 4, i32 0 }
@"$TyDescr_Message_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Message_Prim_42" to i8*) }
@"$TyDescr_Event_Prim_44" = global %"$TyDescrTy_PrimTyp_21" { i32 5, i32 0 }
@"$TyDescr_Event_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Event_Prim_44" to i8*) }
@"$TyDescr_Exception_Prim_46" = global %"$TyDescrTy_PrimTyp_21" { i32 6, i32 0 }
@"$TyDescr_Exception_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Exception_Prim_46" to i8*) }
@"$TyDescr_ReplicateContr_Prim_48" = global %"$TyDescrTy_PrimTyp_21" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_ReplicateContr_Prim_48" to i8*) }
@"$TyDescr_Bystr_Prim_50" = global %"$TyDescrTy_PrimTyp_21" { i32 7, i32 0 }
@"$TyDescr_Bystr_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr_Prim_50" to i8*) }
@"$TyDescr_Bystr1591_Prim_52" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 1591 }
@"$TyDescr_Bystr1591_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr1591_Prim_52" to i8*) }
@"$TyDescr_Bystr32_Prim_54" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 32 }
@"$TyDescr_Bystr32_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr32_Prim_54" to i8*) }
@"$TyDescr_Bystr65_Prim_56" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 65 }
@"$TyDescr_Bystr65_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr65_Prim_56" to i8*) }
@"$TyDescr_Bystr64_Prim_58" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 64 }
@"$TyDescr_Bystr64_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr64_Prim_58" to i8*) }
@"$TyDescr_Bystr20_Prim_60" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 20 }
@"$TyDescr_Bystr20_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr20_Prim_60" to i8*) }
@"$TyDescr_ADT_Bool_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Bool_ADTTyp_Specl_79" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_66" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_91" to i8*) }
@"$TyDescr_Bool_ADTTyp_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_81", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_62"*], [1 x %"$TyDescrTy_ADTTyp_Specl_62"*]* @"$TyDescr_Bool_ADTTyp_m_specls_80", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_71" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_72" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_72", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_71", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_74" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_75" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_75", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_74", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_77" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Bool_True_ADTTyp_Constr_73", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Bool_False_ADTTyp_Constr_76"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_78" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Bool_ADTTyp_70" }
@"$TyDescr_Bool_ADTTyp_m_specls_80" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_62"*] [%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Bool_ADTTyp_Specl_79"]
@"$TyDescr_ADT_Bool_81" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_Option_ADTTyp_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_63" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_93", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_62"*], [1 x %"$TyDescrTy_ADTTyp_Specl_62"*]* @"$TyDescr_Option_ADTTyp_m_specls_92", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr20_Constr_m_args_83" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_61"]
@"$TyDescr_ADT_Some_84" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_84", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_Constr_m_args_86" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_87" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_87", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_Constr_m_args_86", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_89" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_85", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_88"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_90" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_61"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_91" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_90", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_89", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Option_ADTTyp_82" }
@"$TyDescr_Option_ADTTyp_m_specls_92" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_62"*] [%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_91"]
@"$TyDescr_ADT_Option_93" = unnamed_addr constant [6 x i8] c"Option"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [22 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_45", %_TyDescrTy_Typ* @"$TyDescr_Int64_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_66", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_65", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ* @"$TyDescr_Uint256_37", %_TyDescrTy_Typ* @"$TyDescr_Uint32_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_59", %_TyDescrTy_Typ* @"$TyDescr_Uint64_29", %_TyDescrTy_Typ* @"$TyDescr_Bnum_41", %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", %_TyDescrTy_Typ* @"$TyDescr_Exception_47", %_TyDescrTy_Typ* @"$TyDescr_String_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr65_57", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_55", %_TyDescrTy_Typ* @"$TyDescr_Int256_35", %_TyDescrTy_Typ* @"$TyDescr_Int128_31", %_TyDescrTy_Typ* @"$TyDescr_Bystr_51", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_49", %_TyDescrTy_Typ* @"$TyDescr_Message_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr1591_53", %_TyDescrTy_Typ* @"$TyDescr_Int32_23"]
@_tydescr_table_length = constant i32 22
@_contract_parameters = constant [0 x %"$ParamDescr_611"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_612"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Bystr @"$fundef_19"(%"$$fundef_19_env_94"* %0, %Bystr %1) !dbg !3 {
entry:
  %"$header_437" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$header_437", align 8
  call void @llvm.dbg.declare(metadata %Bystr* %"$header_437", metadata !8, metadata !DIExpression()), !dbg !10
  %"$retval_20" = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %"$retval_20", metadata !11, metadata !DIExpression()), !dbg !12
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %entry
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %h1 = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %h1, metadata !13, metadata !DIExpression()), !dbg !15
  %"$_literal_cost_header_379" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$_literal_cost_header_379", align 8
  %"$$_literal_cost_header_379_380" = bitcast %Bystr* %"$_literal_cost_header_379" to i8*
  %"$_literal_cost_call_381" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$_literal_cost_header_379_380")
  %"$gasadd_382" = add i64 %"$_literal_cost_call_381", 0
  %"$gasdivceil_383" = urem i64 %"$gasadd_382", 960
  %"$gasdivceil_384" = udiv i64 %"$gasadd_382", 960
  %"$gasdivceil_385" = icmp eq i64 %"$gasdivceil_383", 0
  %"$gasdivceil_386" = add i64 %"$gasdivceil_384", 1
  %"$gasdivceil_387" = select i1 %"$gasdivceil_385", i64 %"$gasdivceil_384", i64 %"$gasdivceil_386"
  %"$gasrem_388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_389" = icmp ugt i64 %"$gasdivceil_387", %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_377"
  %"$consume_392" = sub i64 %"$gasrem_388", %"$gasdivceil_387"
  store i64 %"$consume_392", i64* @_gasrem, align 8
  %"$execptr_load_393" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_header_394" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$sha256hash_header_394", align 8
  %"$$sha256hash_header_394_395" = bitcast %Bystr* %"$sha256hash_header_394" to i8*
  %"$sha256hash_call_396" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_393", %_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$sha256hash_header_394_395"), !dbg !16
  %"$sha256hash_398" = load [32 x i8], [32 x i8]* %"$sha256hash_call_396", align 1
  store [32 x i8] %"$sha256hash_398", [32 x i8]* %h1, align 1, !dbg !16
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_391"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %h2 = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %h2, metadata !17, metadata !DIExpression()), !dbg !18
  %"$_literal_cost_h1_404" = alloca [32 x i8], align 1
  %"$h1_405" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_405", [32 x i8]* %"$_literal_cost_h1_404", align 1
  %"$$_literal_cost_h1_404_406" = bitcast [32 x i8]* %"$_literal_cost_h1_404" to i8*
  %"$_literal_cost_call_407" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_55", i8* %"$$_literal_cost_h1_404_406")
  %"$gasadd_408" = add i64 %"$_literal_cost_call_407", 0
  %"$gasdivceil_409" = urem i64 %"$gasadd_408", 960
  %"$gasdivceil_410" = udiv i64 %"$gasadd_408", 960
  %"$gasdivceil_411" = icmp eq i64 %"$gasdivceil_409", 0
  %"$gasdivceil_412" = add i64 %"$gasdivceil_410", 1
  %"$gasdivceil_413" = select i1 %"$gasdivceil_411", i64 %"$gasdivceil_410", i64 %"$gasdivceil_412"
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 %"$gasdivceil_413", %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_402"
  %"$consume_418" = sub i64 %"$gasrem_414", %"$gasdivceil_413"
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %"$execptr_load_419" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_h1_420" = alloca [32 x i8], align 1
  %"$h1_421" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_421", [32 x i8]* %"$sha256hash_h1_420", align 1
  %"$$sha256hash_h1_420_422" = bitcast [32 x i8]* %"$sha256hash_h1_420" to i8*
  %"$sha256hash_call_423" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_419", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_55", i8* %"$$sha256hash_h1_420_422"), !dbg !19
  %"$sha256hash_425" = load [32 x i8], [32 x i8]* %"$sha256hash_call_423", align 1
  store [32 x i8] %"$sha256hash_425", [32 x i8]* %h2, align 1, !dbg !19
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 32, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_417"
  %"$consume_430" = sub i64 %"$gasrem_426", 32
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %"$execptr_load_431" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_h2_432" = alloca [32 x i8], align 1
  %"$h2_433" = load [32 x i8], [32 x i8]* %h2, align 1
  store [32 x i8] %"$h2_433", [32 x i8]* %"$to_bystr_h2_432", align 1
  %"$$to_bystr_h2_432_434" = bitcast [32 x i8]* %"$to_bystr_h2_432" to i8*
  %"$to_bystr_call_435" = call %Bystr @_to_bystr(i8* %"$execptr_load_431", i32 32, i8* %"$$to_bystr_h2_432_434"), !dbg !20
  store %Bystr %"$to_bystr_call_435", %Bystr* %"$retval_20", align 8, !dbg !20
  %"$$retval_20_436" = load %Bystr, %Bystr* %"$retval_20", align 8
  ret %Bystr %"$$retval_20_436"
}

define internal void @"$fundef_17"(%"$$fundef_17_env_95"* %0, [20 x i8]* %1, %Uint32 %2) !dbg !21 {
entry:
  %"$recid_373" = alloca %Uint32, align 8
  store %Uint32 %2, %Uint32* %"$recid_373", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$recid_373", metadata !22, metadata !DIExpression()), !dbg !24
  %"$$fundef_17_env_msg_126" = getelementptr inbounds %"$$fundef_17_env_95", %"$$fundef_17_env_95"* %0, i32 0, i32 0
  %"$msg_envload_127" = load %Bystr, %Bystr* %"$$fundef_17_env_msg_126", align 8
  %msg = alloca %Bystr, align 8
  store %Bystr %"$msg_envload_127", %Bystr* %msg, align 8
  %"$$fundef_17_env_sig_128" = getelementptr inbounds %"$$fundef_17_env_95", %"$$fundef_17_env_95"* %0, i32 0, i32 1
  %"$sig_envload_129" = load [64 x i8], [64 x i8]* %"$$fundef_17_env_sig_128", align 1
  %sig = alloca [64 x i8], align 1
  store [64 x i8] %"$sig_envload_129", [64 x i8]* %sig, align 1
  %"$retval_18" = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %"$retval_18", metadata !25, metadata !DIExpression()), !dbg !27
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %entry
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %pk = alloca [65 x i8], align 1
  call void @llvm.dbg.declare(metadata [65 x i8]* %pk, metadata !28, metadata !DIExpression()), !dbg !30
  %"$_literal_cost_msg_135" = alloca %Bystr, align 8
  %"$msg_136" = load %Bystr, %Bystr* %msg, align 8
  store %Bystr %"$msg_136", %Bystr* %"$_literal_cost_msg_135", align 8
  %"$$_literal_cost_msg_135_137" = bitcast %Bystr* %"$_literal_cost_msg_135" to i8*
  %"$_literal_cost_call_138" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$_literal_cost_msg_135_137")
  %"$gasadd_139" = add i64 %"$_literal_cost_call_138", 0
  %"$gasdivceil_140" = urem i64 %"$gasadd_139", 960
  %"$gasdivceil_141" = udiv i64 %"$gasadd_139", 960
  %"$gasdivceil_142" = icmp eq i64 %"$gasdivceil_140", 0
  %"$gasdivceil_143" = add i64 %"$gasdivceil_141", 1
  %"$gasdivceil_144" = select i1 %"$gasdivceil_142", i64 %"$gasdivceil_141", i64 %"$gasdivceil_143"
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 %"$gasdivceil_144", %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_133"
  %"$consume_149" = sub i64 %"$gasrem_145", %"$gasdivceil_144"
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$execptr_load_150" = load i8*, i8** @_execptr, align 8
  %"$msg_151" = load %Bystr, %Bystr* %msg, align 8
  %"$ecdsa_recover_pk_sig_152" = alloca [64 x i8], align 1
  %"$sig_153" = load [64 x i8], [64 x i8]* %sig, align 1
  store [64 x i8] %"$sig_153", [64 x i8]* %"$ecdsa_recover_pk_sig_152", align 1
  %"$ecdsa_recover_pk_call_154" = call [65 x i8]* @_ecdsa_recover_pk(i8* %"$execptr_load_150", %Bystr %"$msg_151", [64 x i8]* %"$ecdsa_recover_pk_sig_152", %Uint32 %2), !dbg !31
  %"$ecdsa_recover_pk_156" = load [65 x i8], [65 x i8]* %"$ecdsa_recover_pk_call_154", align 1
  store [65 x i8] %"$ecdsa_recover_pk_156", [65 x i8]* %pk, align 1, !dbg !31
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_148"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %pos = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %pos, metadata !32, metadata !DIExpression()), !dbg !33
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %pos, align 4, !dbg !34
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_165"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %len = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %len, metadata !35, metadata !DIExpression()), !dbg !36
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_170"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  store %Uint32 { i32 64 }, %Uint32* %len, align 4, !dbg !37
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %pk_bs = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %pk_bs, metadata !38, metadata !DIExpression()), !dbg !39
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 65, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_180"
  %"$consume_186" = sub i64 %"$gasrem_182", 65
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %"$execptr_load_187" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pk_188" = alloca [65 x i8], align 1
  %"$pk_189" = load [65 x i8], [65 x i8]* %pk, align 1
  store [65 x i8] %"$pk_189", [65 x i8]* %"$to_bystr_pk_188", align 1
  %"$$to_bystr_pk_188_190" = bitcast [65 x i8]* %"$to_bystr_pk_188" to i8*
  %"$to_bystr_call_191" = call %Bystr @_to_bystr(i8* %"$execptr_load_187", i32 65, i8* %"$$to_bystr_pk_188_190"), !dbg !40
  store %Bystr %"$to_bystr_call_191", %Bystr* %pk_bs, align 8, !dbg !40
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_185"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %pk_ = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %pk_, metadata !41, metadata !DIExpression()), !dbg !42
  %"$_literal_cost_pk_bs_197" = alloca %Bystr, align 8
  %"$pk_bs_198" = load %Bystr, %Bystr* %pk_bs, align 8
  store %Bystr %"$pk_bs_198", %Bystr* %"$_literal_cost_pk_bs_197", align 8
  %"$$_literal_cost_pk_bs_197_199" = bitcast %Bystr* %"$_literal_cost_pk_bs_197" to i8*
  %"$_literal_cost_call_200" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$_literal_cost_pk_bs_197_199")
  %"$pos_201" = load %Uint32, %Uint32* %pos, align 4
  %"$valueof_202" = extractvalue %Uint32 %"$pos_201", 0
  %"$valueof_203" = zext i32 %"$valueof_202" to i64
  %"$len_204" = load %Uint32, %Uint32* %len, align 4
  %"$valueof_205" = extractvalue %Uint32 %"$len_204", 0
  %"$valueof_206" = zext i32 %"$valueof_205" to i64
  %"$gasadd_207" = add i64 %"$valueof_203", %"$valueof_206"
  %"$gasmin_208" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_200", i64 %"$gasadd_207")
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 %"$gasmin_208", %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_195"
  %"$consume_213" = sub i64 %"$gasrem_209", %"$gasmin_208"
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %"$execptr_load_214" = load i8*, i8** @_execptr, align 8
  %"$pk_bs_215" = load %Bystr, %Bystr* %pk_bs, align 8
  %"$pos_216" = load %Uint32, %Uint32* %pos, align 4
  %"$len_217" = load %Uint32, %Uint32* %len, align 4
  %"$substr_call_218" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_214", %Bystr %"$pk_bs_215", %Uint32 %"$pos_216", %Uint32 %"$len_217"), !dbg !43
  store %Bystr %"$substr_call_218", %Bystr* %pk_, align 8, !dbg !43
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_212"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %pkHash = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %pkHash, metadata !44, metadata !DIExpression()), !dbg !45
  %"$_literal_cost_pk__224" = alloca %Bystr, align 8
  %"$pk__225" = load %Bystr, %Bystr* %pk_, align 8
  store %Bystr %"$pk__225", %Bystr* %"$_literal_cost_pk__224", align 8
  %"$$_literal_cost_pk__224_226" = bitcast %Bystr* %"$_literal_cost_pk__224" to i8*
  %"$_literal_cost_call_227" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$_literal_cost_pk__224_226")
  %"$gasadd_228" = add i64 %"$_literal_cost_call_227", 0
  %"$gasdivceil_229" = urem i64 %"$gasadd_228", 2040
  %"$gasdivceil_230" = udiv i64 %"$gasadd_228", 2040
  %"$gasdivceil_231" = icmp eq i64 %"$gasdivceil_229", 0
  %"$gasdivceil_232" = add i64 %"$gasdivceil_230", 1
  %"$gasdivceil_233" = select i1 %"$gasdivceil_231", i64 %"$gasdivceil_230", i64 %"$gasdivceil_232"
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 %"$gasdivceil_233", %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_222"
  %"$consume_238" = sub i64 %"$gasrem_234", %"$gasdivceil_233"
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$execptr_load_239" = load i8*, i8** @_execptr, align 8
  %"$keccak256hash_pk__240" = alloca %Bystr, align 8
  %"$pk__241" = load %Bystr, %Bystr* %pk_, align 8
  store %Bystr %"$pk__241", %Bystr* %"$keccak256hash_pk__240", align 8
  %"$$keccak256hash_pk__240_242" = bitcast %Bystr* %"$keccak256hash_pk__240" to i8*
  %"$keccak256hash_call_243" = call [32 x i8]* @_keccak256hash(i8* %"$execptr_load_239", %_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$keccak256hash_pk__240_242"), !dbg !46
  %"$keccak256hash_245" = load [32 x i8], [32 x i8]* %"$keccak256hash_call_243", align 1
  store [32 x i8] %"$keccak256hash_245", [32 x i8]* %pkHash, align 1, !dbg !46
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_237"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %pkHash_bs = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %pkHash_bs, metadata !47, metadata !DIExpression()), !dbg !48
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 32, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 32
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$execptr_load_256" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pkHash_257" = alloca [32 x i8], align 1
  %"$pkHash_258" = load [32 x i8], [32 x i8]* %pkHash, align 1
  store [32 x i8] %"$pkHash_258", [32 x i8]* %"$to_bystr_pkHash_257", align 1
  %"$$to_bystr_pkHash_257_259" = bitcast [32 x i8]* %"$to_bystr_pkHash_257" to i8*
  %"$to_bystr_call_260" = call %Bystr @_to_bystr(i8* %"$execptr_load_256", i32 32, i8* %"$$to_bystr_pkHash_257_259"), !dbg !49
  store %Bystr %"$to_bystr_call_260", %Bystr* %pkHash_bs, align 8, !dbg !49
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_254"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$pos_6" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$pos_6", metadata !50, metadata !DIExpression()), !dbg !51
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_264"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  store %Uint32 { i32 12 }, %Uint32* %"$pos_6", align 4, !dbg !52
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_269"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %"$len_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$len_7", metadata !53, metadata !DIExpression()), !dbg !54
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_274"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  store %Uint32 { i32 20 }, %Uint32* %"$len_7", align 4, !dbg !55
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %addr_bs = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %addr_bs, metadata !56, metadata !DIExpression()), !dbg !57
  %"$_literal_cost_pkHash_bs_286" = alloca %Bystr, align 8
  %"$pkHash_bs_287" = load %Bystr, %Bystr* %pkHash_bs, align 8
  store %Bystr %"$pkHash_bs_287", %Bystr* %"$_literal_cost_pkHash_bs_286", align 8
  %"$$_literal_cost_pkHash_bs_286_288" = bitcast %Bystr* %"$_literal_cost_pkHash_bs_286" to i8*
  %"$_literal_cost_call_289" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$_literal_cost_pkHash_bs_286_288")
  %"$$pos_6_290" = load %Uint32, %Uint32* %"$pos_6", align 4
  %"$valueof_291" = extractvalue %Uint32 %"$$pos_6_290", 0
  %"$valueof_292" = zext i32 %"$valueof_291" to i64
  %"$$len_7_293" = load %Uint32, %Uint32* %"$len_7", align 4
  %"$valueof_294" = extractvalue %Uint32 %"$$len_7_293", 0
  %"$valueof_295" = zext i32 %"$valueof_294" to i64
  %"$gasadd_296" = add i64 %"$valueof_292", %"$valueof_295"
  %"$gasmin_297" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_289", i64 %"$gasadd_296")
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 %"$gasmin_297", %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_284"
  %"$consume_302" = sub i64 %"$gasrem_298", %"$gasmin_297"
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$execptr_load_303" = load i8*, i8** @_execptr, align 8
  %"$pkHash_bs_304" = load %Bystr, %Bystr* %pkHash_bs, align 8
  %"$$pos_6_305" = load %Uint32, %Uint32* %"$pos_6", align 4
  %"$$len_7_306" = load %Uint32, %Uint32* %"$len_7", align 4
  %"$substr_call_307" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_303", %Bystr %"$pkHash_bs_304", %Uint32 %"$$pos_6_305", %Uint32 %"$$len_7_306"), !dbg !58
  store %Bystr %"$substr_call_307", %Bystr* %addr_bs, align 8, !dbg !58
  %"$gasrem_308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_301"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem, align 8
  %addr_opt = alloca %TName_Option_ByStr20*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20** %addr_opt, metadata !59, metadata !DIExpression()), !dbg !62
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 20, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_311"
  %"$consume_317" = sub i64 %"$gasrem_313", 20
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %"$execptr_load_318" = load i8*, i8** @_execptr, align 8
  %"$addr_bs_319" = load %Bystr, %Bystr* %addr_bs, align 8
  %"$to_bystr20_call_320" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_318", i32 20, %Bystr %"$addr_bs_319"), !dbg !63
  %"$to_bystr20_321" = bitcast i8* %"$to_bystr20_call_320" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$to_bystr20_321", %TName_Option_ByStr20** %addr_opt, align 8, !dbg !63
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 2, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_316"
  %"$consume_326" = sub i64 %"$gasrem_322", 2
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %"$addr_opt_328" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %addr_opt, align 8
  %"$addr_opt_tag_329" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$addr_opt_328", i32 0, i32 0
  %"$addr_opt_tag_330" = load i8, i8* %"$addr_opt_tag_329", align 1
  switch i8 %"$addr_opt_tag_330", label %"$empty_default_331" [
    i8 0, label %"$Some_332"
    i8 1, label %"$None_342"
  ], !dbg !64

"$Some_332":                                      ; preds = %"$have_gas_325"
  %"$addr_opt_333" = bitcast %TName_Option_ByStr20* %"$addr_opt_328" to %CName_Some_ByStr20*
  %"$addr_gep_334" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$addr_opt_333", i32 0, i32 1
  %"$addr_load_335" = load [20 x i8], [20 x i8]* %"$addr_gep_334", align 1
  %addr = alloca [20 x i8], align 1
  store [20 x i8] %"$addr_load_335", [20 x i8]* %addr, align 1
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$Some_332"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$Some_332"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %"$addr_341" = load [20 x i8], [20 x i8]* %addr, align 1
  store [20 x i8] %"$addr_341", [20 x i8]* %"$retval_18", align 1, !dbg !65
  br label %"$matchsucc_327"

"$None_342":                                      ; preds = %"$have_gas_325"
  %"$addr_opt_343" = bitcast %TName_Option_ByStr20* %"$addr_opt_328" to %CName_None_ByStr20*
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$None_342"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$None_342"
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero, metadata !68, metadata !DIExpression()), !dbg !70
  %"$gasrem_349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_350" = icmp ugt i64 1, %"$gasrem_349"
  br i1 %"$gascmp_350", label %"$out_of_gas_351", label %"$have_gas_352"

"$out_of_gas_351":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_352"

"$have_gas_352":                                  ; preds = %"$out_of_gas_351", %"$have_gas_347"
  %"$consume_353" = sub i64 %"$gasrem_349", 1
  store i64 %"$consume_353", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !71
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_352"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_352"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %ignore = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %ignore, metadata !72, metadata !DIExpression()), !dbg !73
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 20, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_357"
  %"$consume_363" = sub i64 %"$gasrem_359", 20
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %"$zero_364" = load %Uint32, %Uint32* %zero, align 4
  %"$zero_365" = load %Uint32, %Uint32* %zero, align 4
  %"$div_call_366" = call %Uint32 @_div_Uint32(%Uint32 %"$zero_364", %Uint32 %"$zero_365"), !dbg !74
  store %Uint32 %"$div_call_366", %Uint32* %ignore, align 4, !dbg !74
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_362"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* %"$retval_18", align 1, !dbg !75
  br label %"$matchsucc_327"

"$empty_default_331":                             ; preds = %"$have_gas_325"
  br label %"$matchsucc_327"

"$matchsucc_327":                                 ; preds = %"$have_gas_370", %"$have_gas_339", %"$empty_default_331"
  %"$$retval_18_372" = load [20 x i8], [20 x i8]* %"$retval_18", align 1
  store [20 x i8] %"$$retval_18_372", [20 x i8]* %1, align 1
  ret void
}

define internal { void (i8*, [20 x i8]*, %Uint32)*, i8* } @"$fundef_15"(%"$$fundef_15_env_96"* %0, [64 x i8]* %1) !dbg !76 {
entry:
  %"$sig_125" = alloca [64 x i8]*, align 8
  store [64 x i8]* %1, [64 x i8]** %"$sig_125", align 8
  call void @llvm.dbg.declare(metadata [64 x i8]** %"$sig_125", metadata !77, metadata !DIExpression()), !dbg !79
  %sig = load [64 x i8], [64 x i8]* %1, align 1
  %"$$fundef_15_env_msg_110" = getelementptr inbounds %"$$fundef_15_env_96", %"$$fundef_15_env_96"* %0, i32 0, i32 0
  %"$msg_envload_111" = load %Bystr, %Bystr* %"$$fundef_15_env_msg_110", align 8
  %msg = alloca %Bystr, align 8
  store %Bystr %"$msg_envload_111", %Bystr* %msg, align 8
  %"$retval_16" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }, align 8
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %"$$fundef_17_envp_117_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_117_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_117_load", i64 80)
  %"$$fundef_17_envp_117" = bitcast i8* %"$$fundef_17_envp_117_salloc" to %"$$fundef_17_env_95"*
  %"$$fundef_17_env_voidp_119" = bitcast %"$$fundef_17_env_95"* %"$$fundef_17_envp_117" to i8*
  %"$$fundef_17_cloval_120" = insertvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } { void (i8*, [20 x i8]*, %Uint32)* bitcast (void (%"$$fundef_17_env_95"*, [20 x i8]*, %Uint32)* @"$fundef_17" to void (i8*, [20 x i8]*, %Uint32)*), i8* undef }, i8* %"$$fundef_17_env_voidp_119", 1
  %"$$fundef_17_env_msg_121" = getelementptr inbounds %"$$fundef_17_env_95", %"$$fundef_17_env_95"* %"$$fundef_17_envp_117", i32 0, i32 0
  %"$msg_122" = load %Bystr, %Bystr* %msg, align 8
  store %Bystr %"$msg_122", %Bystr* %"$$fundef_17_env_msg_121", align 8
  %"$$fundef_17_env_sig_123" = getelementptr inbounds %"$$fundef_17_env_95", %"$$fundef_17_env_95"* %"$$fundef_17_envp_117", i32 0, i32 1
  store [64 x i8] %sig, [64 x i8]* %"$$fundef_17_env_sig_123", align 1
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$fundef_17_cloval_120", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_16", align 8, !dbg !80
  %"$$retval_16_124" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_16", align 8
  ret { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$retval_16_124"
}

define internal { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } @"$fundef_13"(%"$$fundef_13_env_97"* %0, %Bystr %1) !dbg !81 {
entry:
  %"$msg_109" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$msg_109", align 8
  call void @llvm.dbg.declare(metadata %Bystr* %"$msg_109", metadata !82, metadata !DIExpression()), !dbg !83
  %"$retval_14" = alloca { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %entry
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$$fundef_15_envp_103_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_15_envp_103_salloc" = call i8* @_salloc(i8* %"$$fundef_15_envp_103_load", i64 16)
  %"$$fundef_15_envp_103" = bitcast i8* %"$$fundef_15_envp_103_salloc" to %"$$fundef_15_env_96"*
  %"$$fundef_15_env_voidp_105" = bitcast %"$$fundef_15_env_96"* %"$$fundef_15_envp_103" to i8*
  %"$$fundef_15_cloval_106" = insertvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)* bitcast ({ void (i8*, [20 x i8]*, %Uint32)*, i8* } (%"$$fundef_15_env_96"*, [64 x i8]*)* @"$fundef_15" to { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*), i8* undef }, i8* %"$$fundef_15_env_voidp_105", 1
  %"$$fundef_15_env_msg_107" = getelementptr inbounds %"$$fundef_15_env_96", %"$$fundef_15_env_96"* %"$$fundef_15_envp_103", i32 0, i32 0
  store %Bystr %1, %Bystr* %"$$fundef_15_env_msg_107", align 8
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$fundef_15_cloval_106", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$retval_14", align 8, !dbg !84
  %"$$retval_14_108" = load { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$retval_14", align 8
  ret { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$retval_14_108"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare [65 x i8]* @_ecdsa_recover_pk(i8*, %Bystr, [64 x i8]*, %Uint32)

declare %Bystr @_to_bystr(i8*, i32, i8*)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #0

declare %Bystr @_substr_ByStr(i8*, %Bystr, %Uint32, %Uint32)

declare [32 x i8]* @_keccak256hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_bystr_to_bystrx(i8*, i32, %Bystr)

declare %Uint32 @_div_Uint32(%Uint32, %Uint32)

declare [32 x i8]* @_sha256hash(i8*, %_TyDescrTy_Typ*, i8*)

define void @_init_libs() !dbg !85 {
entry:
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 5, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %entry
  %"$consume_442" = sub i64 %"$gasrem_438", 5
  store i64 %"$consume_442", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !87
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 8, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_441"
  %"$consume_447" = sub i64 %"$gasrem_443", 8
  store i64 %"$consume_447", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !87
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 196, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 196
  store i64 %"$consume_452", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !87
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 20, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 20
  store i64 %"$consume_457", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !87
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 12, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 12
  store i64 %"$consume_462", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !87
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 2, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_461"
  %"$consume_467" = sub i64 %"$gasrem_463", 2
  store i64 %"$consume_467", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !87
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !88 {
entry:
  %"$expr_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_12", metadata !89, metadata !DIExpression()), !dbg !92
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %entry
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %ecrecover = alloca { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_471"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  store { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)* bitcast ({ { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (%"$$fundef_13_env_97"*, %Bystr)* @"$fundef_13" to { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*), i8* null }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8, !dbg !93
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_476"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %header_hash = alloca { %Bystr (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %"$have_gas_484"
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  store { %Bystr (i8*, %Bystr)*, i8* } { %Bystr (i8*, %Bystr)* bitcast (%Bystr (%"$$fundef_19_env_94"*, %Bystr)* @"$fundef_19" to %Bystr (i8*, %Bystr)*), i8* null }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8, !dbg !94
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_489"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_489"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %sig = alloca [64 x i8], align 1
  call void @llvm.dbg.declare(metadata [64 x i8]* %sig, metadata !95, metadata !DIExpression()), !dbg !96
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$have_gas_497"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  store [64 x i8] c"}X\8Dy\AC\9F\091\C6\91P\DEk\FER\89\F0\14x\93x\1B\FF\BC\C3+^\07\BDh}\10H\DD\A09\FF\C1\E8}\E2\E9\86\10\DC\87n\97A\1D`IHG9\04\B1+d\BE\D8\88\0B\CC", [64 x i8]* %sig, align 1, !dbg !97
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 1, %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %"$have_gas_502"
  %"$consume_508" = sub i64 %"$gasrem_504", 1
  store i64 %"$consume_508", i64* @_gasrem, align 8
  %msg = alloca [1591 x i8], align 1
  call void @llvm.dbg.declare(metadata [1591 x i8]* %msg, metadata !98, metadata !DIExpression()), !dbg !100
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_507"
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  store [1591 x i8] c"\00\00\00\00\9B\91V\17\00\00\00\00\F4\8A@W\BE\F2h\CC?\DB\03Ni\DC.\94)\07\E0\8A\C4\A4 \D1\B1\96\B8\C2\8E\BF[\F2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\8B\E0\A1`Zc\A3\17\04\AE\C4\EBO\10#\F1\EC\C2\93K\D8o\11\9A\B7u&\F9Gz\F9\A5~\1A_P\8E\00\00A\07\82r\0A\B1\89\FF\FD\84\05{\22leader\22:3,\22vrf_value\22:\22BOO3oXyk2RIpeVQY38Tq3qJB82szJh6nOorJUp/JMX+GLpz4zIsG9LJl4xJo4etHgOV5qi6MHKftqOirOuZIZiY=\22,\22vrf_proof\22:\22cYSRWFPoi9GHABGRbUdh6a+5PoO1wv5JUzSAtWxhEcpqut0SjYXs4LtS55tSJt3AtI0YamLgRJyzROhVGVbm4g==\22,\22last_config_block_num\22:36432,\22new_chain_config\22:{\22version\22:1,\22view\22:4,\22n\22:8,\22c\22:2,\22block_msg_delay\22:10000000000,\22hash_msg_delay\22:10000000000,\22peer_handshake_timeout\22:10000000000,\22peers\22:[{\22index\22:1,\22id\22:\221205028172918540b2b512eae1872a2a2e3a28d989c60d95dab8829ada7d7dd706d658\22},{\22index\22:4,\22id\22:\22120502679930a42aaf3c69798ca8a3f12e134c019405818d783d11748e039de8515988\22},{\22index\22:3,\22id\22:\22120502482acb6564b19b90653f6e9c806292e8aa83f78e7a9382a24a6efe41c0c06f39\22},{\22index\22:5,\22id\22:\22120502468dd1899ed2d1cc2b829882a165a0ecb6a745af0c72eb2982d66b4311b4ef73\22},{\22index\22:8,\22id\22:\2212050393421445b9421bd4cc90d7bc88c9301558047a76b20c59e7c511ee7d229982b1\22},{\22index\22:2,\22id\22:\221205038b8af6210ecfdcbcab22552ef8d8cf41c6f86f9cf9ab53d865741cfdb833f06b\22},{\22index\22:7,\22id\22:\221205031e0779f5c5ccb2612352fe4a200f99d3e7758e70ba53f607c59ff22a30f678ff\22},{\22index\22:6,\22id\22:\22120502eb1baab602c5899282561cdaaa7aabbcdd0ccfcbc3e79793ac24acf90778f35a\22}],\22pos_table\22:[2,8,5,5,8,7,1,4,5,6,5,4,7,7,3,3,4,6,1,2,4,8,5,4,7,4,6,6,2,2,1,1,8,8,6,6,6,7,8,7,4,8,5,1,3,3,8,5,3,6,3,6,7,5,6,2,3,1,2,6,5,2,1,4,2,1,8,4,8,3,8,7,7,5,1,7,4,4,1,5,2,5,6,1,2,8,3,3,1,3,1,4,1,7,8,6,8,2,5,1,4,5,3,2,2,2,8,3,3,3,6,7,4,7,4,2,7,5,6,7],\22max_block_change_view\22:60000}}\F8\FCz\1Fj\85c\13\C5\91\A3\A7G\F4\EC\A7!\8A\82\0B", [1591 x i8]* %msg, align 1, !dbg !101
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_512"
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %addr_gold = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %addr_gold, metadata !102, metadata !DIExpression()), !dbg !103
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 1, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %"$have_gas_517"
  %"$consume_523" = sub i64 %"$gasrem_519", 1
  store i64 %"$consume_523", i64* @_gasrem, align 8
  store [20 x i8] c"\A4*N\85\03M[\EB\C2%t=\A4\00\CCL\0ECrz", [20 x i8]* %addr_gold, align 1, !dbg !104
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_522"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %msg_bs = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %msg_bs, metadata !105, metadata !DIExpression()), !dbg !106
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1591, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_527"
  %"$consume_533" = sub i64 %"$gasrem_529", 1591
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$execptr_load_534" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_msg_535" = alloca [1591 x i8], align 1
  %"$msg_536" = load [1591 x i8], [1591 x i8]* %msg, align 1
  store [1591 x i8] %"$msg_536", [1591 x i8]* %"$to_bystr_msg_535", align 1
  %"$$to_bystr_msg_535_537" = bitcast [1591 x i8]* %"$to_bystr_msg_535" to i8*
  %"$to_bystr_call_538" = call %Bystr @_to_bystr(i8* %"$execptr_load_534", i32 1591, i8* %"$$to_bystr_msg_535_537"), !dbg !107
  store %Bystr %"$to_bystr_call_538", %Bystr* %msg_bs, align 8, !dbg !107
  %"$gasrem_539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_540" = icmp ugt i64 1, %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_532"
  %"$consume_543" = sub i64 %"$gasrem_539", 1
  store i64 %"$consume_543", i64* @_gasrem, align 8
  %msg_hashed = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %msg_hashed, metadata !108, metadata !DIExpression()), !dbg !109
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %"$have_gas_542"
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %"$have_gas_542"
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  %"$header_hash_8" = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %"$header_hash_8", metadata !110, metadata !DIExpression()), !dbg !111
  %"$header_hash_549" = load { %Bystr (i8*, %Bystr)*, i8* }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8
  %"$header_hash_fptr_550" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_549", 0
  %"$header_hash_envptr_551" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_549", 1
  %"$msg_bs_552" = load %Bystr, %Bystr* %msg_bs, align 8
  %"$header_hash_call_553" = call %Bystr %"$header_hash_fptr_550"(i8* %"$header_hash_envptr_551", %Bystr %"$msg_bs_552"), !dbg !111
  store %Bystr %"$header_hash_call_553", %Bystr* %"$header_hash_8", align 8, !dbg !111
  %"$$header_hash_8_554" = load %Bystr, %Bystr* %"$header_hash_8", align 8
  store %Bystr %"$$header_hash_8_554", %Bystr* %msg_hashed, align 8, !dbg !111
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$have_gas_547"
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  %recid = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %recid, metadata !112, metadata !DIExpression()), !dbg !113
  %"$gasrem_560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_561" = icmp ugt i64 1, %"$gasrem_560"
  br i1 %"$gascmp_561", label %"$out_of_gas_562", label %"$have_gas_563"

"$out_of_gas_562":                                ; preds = %"$have_gas_558"
  call void @_out_of_gas()
  br label %"$have_gas_563"

"$have_gas_563":                                  ; preds = %"$out_of_gas_562", %"$have_gas_558"
  %"$consume_564" = sub i64 %"$gasrem_560", 1
  store i64 %"$consume_564", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %recid, align 4, !dbg !114
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 1, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %"$have_gas_563"
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %"$have_gas_563"
  %"$consume_569" = sub i64 %"$gasrem_565", 1
  store i64 %"$consume_569", i64* @_gasrem, align 8
  %addr_computed = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %addr_computed, metadata !115, metadata !DIExpression()), !dbg !116
  %"$gasrem_570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_571" = icmp ugt i64 1, %"$gasrem_570"
  br i1 %"$gascmp_571", label %"$out_of_gas_572", label %"$have_gas_573"

"$out_of_gas_572":                                ; preds = %"$have_gas_568"
  call void @_out_of_gas()
  br label %"$have_gas_573"

"$have_gas_573":                                  ; preds = %"$out_of_gas_572", %"$have_gas_568"
  %"$consume_574" = sub i64 %"$gasrem_570", 1
  store i64 %"$consume_574", i64* @_gasrem, align 8
  %"$ecrecover_9" = alloca { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, align 8
  %"$ecrecover_575" = load { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8
  %"$ecrecover_fptr_576" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_575", 0
  %"$ecrecover_envptr_577" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_575", 1
  %"$msg_hashed_578" = load %Bystr, %Bystr* %msg_hashed, align 8
  %"$ecrecover_call_579" = call { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_fptr_576"(i8* %"$ecrecover_envptr_577", %Bystr %"$msg_hashed_578"), !dbg !117
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_call_579", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_9", align 8, !dbg !117
  %"$ecrecover_10" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }, align 8
  %"$$ecrecover_9_580" = load { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_9", align 8
  %"$$ecrecover_9_fptr_581" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_9_580", 0
  %"$$ecrecover_9_envptr_582" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_9_580", 1
  %"$$ecrecover_9_sig_583" = alloca [64 x i8], align 1
  %"$sig_584" = load [64 x i8], [64 x i8]* %sig, align 1
  store [64 x i8] %"$sig_584", [64 x i8]* %"$$ecrecover_9_sig_583", align 1
  %"$$ecrecover_9_call_585" = call { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_9_fptr_581"(i8* %"$$ecrecover_9_envptr_582", [64 x i8]* %"$$ecrecover_9_sig_583"), !dbg !117
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_9_call_585", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_10", align 8, !dbg !117
  %"$ecrecover_11" = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %"$ecrecover_11", metadata !118, metadata !DIExpression()), !dbg !117
  %"$$ecrecover_10_586" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_10", align 8
  %"$$ecrecover_10_fptr_587" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_10_586", 0
  %"$$ecrecover_10_envptr_588" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_10_586", 1
  %"$recid_589" = load %Uint32, %Uint32* %recid, align 4
  %"$$ecrecover_10_retalloca_590" = alloca [20 x i8], align 1
  call void %"$$ecrecover_10_fptr_587"(i8* %"$$ecrecover_10_envptr_588", [20 x i8]* %"$$ecrecover_10_retalloca_590", %Uint32 %"$recid_589"), !dbg !117
  %"$$ecrecover_10_ret_591" = load [20 x i8], [20 x i8]* %"$$ecrecover_10_retalloca_590", align 1
  store [20 x i8] %"$$ecrecover_10_ret_591", [20 x i8]* %"$ecrecover_11", align 1, !dbg !117
  %"$$ecrecover_11_592" = load [20 x i8], [20 x i8]* %"$ecrecover_11", align 1
  store [20 x i8] %"$$ecrecover_11_592", [20 x i8]* %addr_computed, align 1, !dbg !117
  %"$gasrem_593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_594" = icmp ugt i64 20, %"$gasrem_593"
  br i1 %"$gascmp_594", label %"$out_of_gas_595", label %"$have_gas_596"

"$out_of_gas_595":                                ; preds = %"$have_gas_573"
  call void @_out_of_gas()
  br label %"$have_gas_596"

"$have_gas_596":                                  ; preds = %"$out_of_gas_595", %"$have_gas_573"
  %"$consume_597" = sub i64 %"$gasrem_593", 20
  store i64 %"$consume_597", i64* @_gasrem, align 8
  %"$execptr_load_598" = load i8*, i8** @_execptr, align 8
  %"$eq_addr_computed_599" = alloca [20 x i8], align 1
  %"$addr_computed_600" = load [20 x i8], [20 x i8]* %addr_computed, align 1
  store [20 x i8] %"$addr_computed_600", [20 x i8]* %"$eq_addr_computed_599", align 1
  %"$$eq_addr_computed_599_601" = bitcast [20 x i8]* %"$eq_addr_computed_599" to i8*
  %"$eq_addr_gold_602" = alloca [20 x i8], align 1
  %"$addr_gold_603" = load [20 x i8], [20 x i8]* %addr_gold, align 1
  store [20 x i8] %"$addr_gold_603", [20 x i8]* %"$eq_addr_gold_602", align 1
  %"$$eq_addr_gold_602_604" = bitcast [20 x i8]* %"$eq_addr_gold_602" to i8*
  %"$eq_call_605" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_598", i32 20, i8* %"$$eq_addr_computed_599_601", i8* %"$$eq_addr_gold_602_604"), !dbg !119
  store %TName_Bool* %"$eq_call_605", %TName_Bool** %"$expr_12", align 8, !dbg !119
  %"$$expr_12_607" = load %TName_Bool*, %TName_Bool** %"$expr_12", align 8
  ret %TName_Bool* %"$$expr_12_607"
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_608" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_609" = bitcast %TName_Bool* %"$exprval_608" to i8*
  %"$execptr_load_610" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_610", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_65", i8* %"$memvoidcast_609")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin-ecdsa_recover.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !2, file: !2, line: 28, type: !4, scopeLine: 28, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "header", scope: !3, file: !2, line: 27, type: !9)
!9 = !DIBasicType(name: "ByStr", size: 16)
!10 = !DILocation(line: 27, column: 8, scope: !3)
!11 = !DILocalVariable(name: "$retval_20", scope: !3, file: !2, line: 28, type: !9)
!12 = !DILocation(line: 28, column: 5, scope: !3)
!13 = !DILocalVariable(name: "h1", scope: !3, file: !2, line: 28, type: !14)
!14 = !DIBasicType(name: "ByStr32", size: 32)
!15 = !DILocation(line: 28, column: 9, scope: !3)
!16 = !DILocation(line: 28, column: 14, scope: !3)
!17 = !DILocalVariable(name: "h2", scope: !3, file: !2, line: 29, type: !14)
!18 = !DILocation(line: 29, column: 9, scope: !3)
!19 = !DILocation(line: 29, column: 14, scope: !3)
!20 = !DILocation(line: 30, column: 5, scope: !3)
!21 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!22 = !DILocalVariable(name: "recid", scope: !21, file: !2, line: 4, type: !23)
!23 = !DIBasicType(name: "Uint32", size: 4)
!24 = !DILocation(line: 4, column: 8, scope: !21)
!25 = !DILocalVariable(name: "$retval_18", scope: !21, file: !2, line: 5, type: !26)
!26 = !DIBasicType(name: "ByStr20", size: 20)
!27 = !DILocation(line: 5, column: 5, scope: !21)
!28 = !DILocalVariable(name: "pk", scope: !21, file: !2, line: 5, type: !29)
!29 = !DIBasicType(name: "ByStr65", size: 65)
!30 = !DILocation(line: 5, column: 9, scope: !21)
!31 = !DILocation(line: 5, column: 14, scope: !21)
!32 = !DILocalVariable(name: "pos", scope: !21, file: !2, line: 6, type: !23)
!33 = !DILocation(line: 6, column: 9, scope: !21)
!34 = !DILocation(line: 6, column: 15, scope: !21)
!35 = !DILocalVariable(name: "len", scope: !21, file: !2, line: 7, type: !23)
!36 = !DILocation(line: 7, column: 9, scope: !21)
!37 = !DILocation(line: 7, column: 15, scope: !21)
!38 = !DILocalVariable(name: "pk_bs", scope: !21, file: !2, line: 8, type: !9)
!39 = !DILocation(line: 8, column: 9, scope: !21)
!40 = !DILocation(line: 8, column: 17, scope: !21)
!41 = !DILocalVariable(name: "pk_", scope: !21, file: !2, line: 9, type: !9)
!42 = !DILocation(line: 9, column: 9, scope: !21)
!43 = !DILocation(line: 9, column: 15, scope: !21)
!44 = !DILocalVariable(name: "pkHash", scope: !21, file: !2, line: 10, type: !14)
!45 = !DILocation(line: 10, column: 9, scope: !21)
!46 = !DILocation(line: 10, column: 18, scope: !21)
!47 = !DILocalVariable(name: "pkHash_bs", scope: !21, file: !2, line: 11, type: !9)
!48 = !DILocation(line: 11, column: 9, scope: !21)
!49 = !DILocation(line: 11, column: 21, scope: !21)
!50 = !DILocalVariable(name: "$pos_6", scope: !21, file: !2, line: 12, type: !23)
!51 = !DILocation(line: 12, column: 9, scope: !21)
!52 = !DILocation(line: 12, column: 15, scope: !21)
!53 = !DILocalVariable(name: "$len_7", scope: !21, file: !2, line: 13, type: !23)
!54 = !DILocation(line: 13, column: 9, scope: !21)
!55 = !DILocation(line: 13, column: 15, scope: !21)
!56 = !DILocalVariable(name: "addr_bs", scope: !21, file: !2, line: 14, type: !9)
!57 = !DILocation(line: 14, column: 9, scope: !21)
!58 = !DILocation(line: 14, column: 19, scope: !21)
!59 = !DILocalVariable(name: "addr_opt", scope: !21, file: !2, line: 15, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (ByStr20)", baseType: !61, size: 8, align: 8, dwarfAddressSpace: 0)
!61 = !DIBasicType(name: "Option (ByStr20)", size: 8)
!62 = !DILocation(line: 15, column: 9, scope: !21)
!63 = !DILocation(line: 15, column: 20, scope: !21)
!64 = !DILocation(line: 16, column: 5, scope: !21)
!65 = !DILocation(line: 18, column: 7, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !2, line: 17, column: 7)
!67 = distinct !DILexicalBlock(scope: !21, file: !2, line: 16, column: 5)
!68 = !DILocalVariable(name: "zero", scope: !69, file: !2, line: 20, type: !23)
!69 = distinct !DILexicalBlock(scope: !67, file: !2, line: 19, column: 7)
!70 = !DILocation(line: 20, column: 11, scope: !69)
!71 = !DILocation(line: 20, column: 18, scope: !69)
!72 = !DILocalVariable(name: "ignore", scope: !69, file: !2, line: 21, type: !23)
!73 = !DILocation(line: 21, column: 11, scope: !69)
!74 = !DILocation(line: 21, column: 20, scope: !69)
!75 = !DILocation(line: 22, column: 7, scope: !69)
!76 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!77 = !DILocalVariable(name: "sig", scope: !76, file: !2, line: 3, type: !78)
!78 = !DIBasicType(name: "ByStr64", size: 64)
!79 = !DILocation(line: 3, column: 8, scope: !76)
!80 = !DILocation(line: 5, column: 5, scope: !76)
!81 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!82 = !DILocalVariable(name: "msg", scope: !81, file: !2, line: 2, type: !9)
!83 = !DILocation(line: 2, column: 8, scope: !81)
!84 = !DILocation(line: 4, column: 3, scope: !81)
!85 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !86, file: !86, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!86 = !DIFile(filename: ".", directory: ".")
!87 = !DILocation(line: 0, scope: !85)
!88 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!89 = !DILocalVariable(name: "$expr_12", scope: !88, file: !2, line: 2, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !91, size: 8, align: 8, dwarfAddressSpace: 0)
!91 = !DIBasicType(name: "Bool", size: 8)
!92 = !DILocation(line: 2, column: 3, scope: !88)
!93 = !DILocation(line: 3, column: 3, scope: !88)
!94 = !DILocation(line: 28, column: 5, scope: !88)
!95 = !DILocalVariable(name: "sig", scope: !88, file: !2, line: 33, type: !78)
!96 = !DILocation(line: 33, column: 5, scope: !88)
!97 = !DILocation(line: 33, column: 11, scope: !88)
!98 = !DILocalVariable(name: "msg", scope: !88, file: !2, line: 34, type: !99)
!99 = !DIBasicType(name: "ByStr1591", size: 1591)
!100 = !DILocation(line: 34, column: 5, scope: !88)
!101 = !DILocation(line: 34, column: 11, scope: !88)
!102 = !DILocalVariable(name: "addr_gold", scope: !88, file: !2, line: 36, type: !26)
!103 = !DILocation(line: 36, column: 5, scope: !88)
!104 = !DILocation(line: 36, column: 17, scope: !88)
!105 = !DILocalVariable(name: "msg_bs", scope: !88, file: !2, line: 37, type: !9)
!106 = !DILocation(line: 37, column: 5, scope: !88)
!107 = !DILocation(line: 37, column: 14, scope: !88)
!108 = !DILocalVariable(name: "msg_hashed", scope: !88, file: !2, line: 38, type: !9)
!109 = !DILocation(line: 38, column: 5, scope: !88)
!110 = !DILocalVariable(name: "$header_hash_8", scope: !88, file: !2, line: 38, type: !9)
!111 = !DILocation(line: 38, column: 18, scope: !88)
!112 = !DILocalVariable(name: "recid", scope: !88, file: !2, line: 39, type: !23)
!113 = !DILocation(line: 39, column: 5, scope: !88)
!114 = !DILocation(line: 39, column: 13, scope: !88)
!115 = !DILocalVariable(name: "addr_computed", scope: !88, file: !2, line: 41, type: !26)
!116 = !DILocation(line: 41, column: 5, scope: !88)
!117 = !DILocation(line: 41, column: 21, scope: !88)
!118 = !DILocalVariable(name: "$ecrecover_11", scope: !88, file: !2, line: 41, type: !26)
!119 = !DILocation(line: 42, column: 1, scope: !88)
