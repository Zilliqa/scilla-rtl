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
%"$ParamDescr_607" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_608" = type { %ParamDescrString, i32, %"$ParamDescr_607"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_607"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_608"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Bystr @"$fundef_19"(%"$$fundef_19_env_94"* %0, %Bystr %1) !dbg !3 {
entry:
  %"$retval_20" = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %"$retval_20", metadata !8, metadata !DIExpression()), !dbg !10
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %entry
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %h1 = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %h1, metadata !11, metadata !DIExpression()), !dbg !13
  %"$_literal_cost_header_376" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$_literal_cost_header_376", align 8
  %"$$_literal_cost_header_376_377" = bitcast %Bystr* %"$_literal_cost_header_376" to i8*
  %"$_literal_cost_call_378" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$_literal_cost_header_376_377")
  %"$gasadd_379" = add i64 %"$_literal_cost_call_378", 0
  %"$gasdivceil_380" = urem i64 %"$gasadd_379", 960
  %"$gasdivceil_381" = udiv i64 %"$gasadd_379", 960
  %"$gasdivceil_382" = icmp eq i64 %"$gasdivceil_380", 0
  %"$gasdivceil_383" = add i64 %"$gasdivceil_381", 1
  %"$gasdivceil_384" = select i1 %"$gasdivceil_382", i64 %"$gasdivceil_381", i64 %"$gasdivceil_383"
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 %"$gasdivceil_384", %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_374"
  %"$consume_389" = sub i64 %"$gasrem_385", %"$gasdivceil_384"
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$execptr_load_390" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_header_391" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$sha256hash_header_391", align 8
  %"$$sha256hash_header_391_392" = bitcast %Bystr* %"$sha256hash_header_391" to i8*
  %"$sha256hash_call_393" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_390", %_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$sha256hash_header_391_392"), !dbg !14
  %"$sha256hash_395" = load [32 x i8], [32 x i8]* %"$sha256hash_call_393", align 1
  store [32 x i8] %"$sha256hash_395", [32 x i8]* %h1, align 1, !dbg !14
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 1, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %"$have_gas_388"
  %"$consume_400" = sub i64 %"$gasrem_396", 1
  store i64 %"$consume_400", i64* @_gasrem, align 8
  %h2 = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %h2, metadata !15, metadata !DIExpression()), !dbg !16
  %"$_literal_cost_h1_401" = alloca [32 x i8], align 1
  %"$h1_402" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_402", [32 x i8]* %"$_literal_cost_h1_401", align 1
  %"$$_literal_cost_h1_401_403" = bitcast [32 x i8]* %"$_literal_cost_h1_401" to i8*
  %"$_literal_cost_call_404" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_55", i8* %"$$_literal_cost_h1_401_403")
  %"$gasadd_405" = add i64 %"$_literal_cost_call_404", 0
  %"$gasdivceil_406" = urem i64 %"$gasadd_405", 960
  %"$gasdivceil_407" = udiv i64 %"$gasadd_405", 960
  %"$gasdivceil_408" = icmp eq i64 %"$gasdivceil_406", 0
  %"$gasdivceil_409" = add i64 %"$gasdivceil_407", 1
  %"$gasdivceil_410" = select i1 %"$gasdivceil_408", i64 %"$gasdivceil_407", i64 %"$gasdivceil_409"
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 %"$gasdivceil_410", %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_399"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_399"
  %"$consume_415" = sub i64 %"$gasrem_411", %"$gasdivceil_410"
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %"$execptr_load_416" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_h1_417" = alloca [32 x i8], align 1
  %"$h1_418" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_418", [32 x i8]* %"$sha256hash_h1_417", align 1
  %"$$sha256hash_h1_417_419" = bitcast [32 x i8]* %"$sha256hash_h1_417" to i8*
  %"$sha256hash_call_420" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_416", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_55", i8* %"$$sha256hash_h1_417_419"), !dbg !17
  %"$sha256hash_422" = load [32 x i8], [32 x i8]* %"$sha256hash_call_420", align 1
  store [32 x i8] %"$sha256hash_422", [32 x i8]* %h2, align 1, !dbg !17
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 32, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_414"
  %"$consume_427" = sub i64 %"$gasrem_423", 32
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$execptr_load_428" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_h2_429" = alloca [32 x i8], align 1
  %"$h2_430" = load [32 x i8], [32 x i8]* %h2, align 1
  store [32 x i8] %"$h2_430", [32 x i8]* %"$to_bystr_h2_429", align 1
  %"$$to_bystr_h2_429_431" = bitcast [32 x i8]* %"$to_bystr_h2_429" to i8*
  %"$to_bystr_call_432" = call %Bystr @_to_bystr(i8* %"$execptr_load_428", i32 32, i8* %"$$to_bystr_h2_429_431"), !dbg !18
  store %Bystr %"$to_bystr_call_432", %Bystr* %"$retval_20", align 8, !dbg !18
  %"$$retval_20_433" = load %Bystr, %Bystr* %"$retval_20", align 8
  ret %Bystr %"$$retval_20_433"
}

define internal void @"$fundef_17"(%"$$fundef_17_env_95"* %0, [20 x i8]* %1, %Uint32 %2) !dbg !19 {
entry:
  %"$$fundef_17_env_msg_124" = getelementptr inbounds %"$$fundef_17_env_95", %"$$fundef_17_env_95"* %0, i32 0, i32 0
  %"$msg_envload_125" = load %Bystr, %Bystr* %"$$fundef_17_env_msg_124", align 8
  %msg = alloca %Bystr, align 8
  store %Bystr %"$msg_envload_125", %Bystr* %msg, align 8
  %"$$fundef_17_env_sig_126" = getelementptr inbounds %"$$fundef_17_env_95", %"$$fundef_17_env_95"* %0, i32 0, i32 1
  %"$sig_envload_127" = load [64 x i8], [64 x i8]* %"$$fundef_17_env_sig_126", align 1
  %sig = alloca [64 x i8], align 1
  store [64 x i8] %"$sig_envload_127", [64 x i8]* %sig, align 1
  %"$retval_18" = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %"$retval_18", metadata !20, metadata !DIExpression()), !dbg !22
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %entry
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %pk = alloca [65 x i8], align 1
  call void @llvm.dbg.declare(metadata [65 x i8]* %pk, metadata !23, metadata !DIExpression()), !dbg !25
  %"$_literal_cost_msg_133" = alloca %Bystr, align 8
  %"$msg_134" = load %Bystr, %Bystr* %msg, align 8
  store %Bystr %"$msg_134", %Bystr* %"$_literal_cost_msg_133", align 8
  %"$$_literal_cost_msg_133_135" = bitcast %Bystr* %"$_literal_cost_msg_133" to i8*
  %"$_literal_cost_call_136" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$_literal_cost_msg_133_135")
  %"$gasadd_137" = add i64 %"$_literal_cost_call_136", 0
  %"$gasdivceil_138" = urem i64 %"$gasadd_137", 960
  %"$gasdivceil_139" = udiv i64 %"$gasadd_137", 960
  %"$gasdivceil_140" = icmp eq i64 %"$gasdivceil_138", 0
  %"$gasdivceil_141" = add i64 %"$gasdivceil_139", 1
  %"$gasdivceil_142" = select i1 %"$gasdivceil_140", i64 %"$gasdivceil_139", i64 %"$gasdivceil_141"
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 %"$gasdivceil_142", %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_131"
  %"$consume_147" = sub i64 %"$gasrem_143", %"$gasdivceil_142"
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$execptr_load_148" = load i8*, i8** @_execptr, align 8
  %"$msg_149" = load %Bystr, %Bystr* %msg, align 8
  %"$ecdsa_recover_pk_sig_150" = alloca [64 x i8], align 1
  %"$sig_151" = load [64 x i8], [64 x i8]* %sig, align 1
  store [64 x i8] %"$sig_151", [64 x i8]* %"$ecdsa_recover_pk_sig_150", align 1
  %"$ecdsa_recover_pk_call_152" = call [65 x i8]* @_ecdsa_recover_pk(i8* %"$execptr_load_148", %Bystr %"$msg_149", [64 x i8]* %"$ecdsa_recover_pk_sig_150", %Uint32 %2), !dbg !26
  %"$ecdsa_recover_pk_154" = load [65 x i8], [65 x i8]* %"$ecdsa_recover_pk_call_152", align 1
  store [65 x i8] %"$ecdsa_recover_pk_154", [65 x i8]* %pk, align 1, !dbg !26
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_146"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %pos = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %pos, metadata !27, metadata !DIExpression()), !dbg !29
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %pos, align 4, !dbg !30
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_163"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %len = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %len, metadata !31, metadata !DIExpression()), !dbg !32
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  store %Uint32 { i32 64 }, %Uint32* %len, align 4, !dbg !33
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %pk_bs = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %pk_bs, metadata !34, metadata !DIExpression()), !dbg !35
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 65, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_178"
  %"$consume_184" = sub i64 %"$gasrem_180", 65
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$execptr_load_185" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pk_186" = alloca [65 x i8], align 1
  %"$pk_187" = load [65 x i8], [65 x i8]* %pk, align 1
  store [65 x i8] %"$pk_187", [65 x i8]* %"$to_bystr_pk_186", align 1
  %"$$to_bystr_pk_186_188" = bitcast [65 x i8]* %"$to_bystr_pk_186" to i8*
  %"$to_bystr_call_189" = call %Bystr @_to_bystr(i8* %"$execptr_load_185", i32 65, i8* %"$$to_bystr_pk_186_188"), !dbg !36
  store %Bystr %"$to_bystr_call_189", %Bystr* %pk_bs, align 8, !dbg !36
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$have_gas_183"
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %pk_ = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %pk_, metadata !37, metadata !DIExpression()), !dbg !38
  %"$_literal_cost_pk_bs_195" = alloca %Bystr, align 8
  %"$pk_bs_196" = load %Bystr, %Bystr* %pk_bs, align 8
  store %Bystr %"$pk_bs_196", %Bystr* %"$_literal_cost_pk_bs_195", align 8
  %"$$_literal_cost_pk_bs_195_197" = bitcast %Bystr* %"$_literal_cost_pk_bs_195" to i8*
  %"$_literal_cost_call_198" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$_literal_cost_pk_bs_195_197")
  %"$pos_199" = load %Uint32, %Uint32* %pos, align 4
  %"$valueof_200" = extractvalue %Uint32 %"$pos_199", 0
  %"$valueof_201" = zext i32 %"$valueof_200" to i64
  %"$len_202" = load %Uint32, %Uint32* %len, align 4
  %"$valueof_203" = extractvalue %Uint32 %"$len_202", 0
  %"$valueof_204" = zext i32 %"$valueof_203" to i64
  %"$gasadd_205" = add i64 %"$valueof_201", %"$valueof_204"
  %"$gasmin_206" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_198", i64 %"$gasadd_205")
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 %"$gasmin_206", %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_193"
  %"$consume_211" = sub i64 %"$gasrem_207", %"$gasmin_206"
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %"$execptr_load_212" = load i8*, i8** @_execptr, align 8
  %"$pk_bs_213" = load %Bystr, %Bystr* %pk_bs, align 8
  %"$pos_214" = load %Uint32, %Uint32* %pos, align 4
  %"$len_215" = load %Uint32, %Uint32* %len, align 4
  %"$substr_call_216" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_212", %Bystr %"$pk_bs_213", %Uint32 %"$pos_214", %Uint32 %"$len_215"), !dbg !39
  store %Bystr %"$substr_call_216", %Bystr* %pk_, align 8, !dbg !39
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_210"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %pkHash = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %pkHash, metadata !40, metadata !DIExpression()), !dbg !41
  %"$_literal_cost_pk__222" = alloca %Bystr, align 8
  %"$pk__223" = load %Bystr, %Bystr* %pk_, align 8
  store %Bystr %"$pk__223", %Bystr* %"$_literal_cost_pk__222", align 8
  %"$$_literal_cost_pk__222_224" = bitcast %Bystr* %"$_literal_cost_pk__222" to i8*
  %"$_literal_cost_call_225" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$_literal_cost_pk__222_224")
  %"$gasadd_226" = add i64 %"$_literal_cost_call_225", 0
  %"$gasdivceil_227" = urem i64 %"$gasadd_226", 2040
  %"$gasdivceil_228" = udiv i64 %"$gasadd_226", 2040
  %"$gasdivceil_229" = icmp eq i64 %"$gasdivceil_227", 0
  %"$gasdivceil_230" = add i64 %"$gasdivceil_228", 1
  %"$gasdivceil_231" = select i1 %"$gasdivceil_229", i64 %"$gasdivceil_228", i64 %"$gasdivceil_230"
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 %"$gasdivceil_231", %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_220"
  %"$consume_236" = sub i64 %"$gasrem_232", %"$gasdivceil_231"
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %"$execptr_load_237" = load i8*, i8** @_execptr, align 8
  %"$keccak256hash_pk__238" = alloca %Bystr, align 8
  %"$pk__239" = load %Bystr, %Bystr* %pk_, align 8
  store %Bystr %"$pk__239", %Bystr* %"$keccak256hash_pk__238", align 8
  %"$$keccak256hash_pk__238_240" = bitcast %Bystr* %"$keccak256hash_pk__238" to i8*
  %"$keccak256hash_call_241" = call [32 x i8]* @_keccak256hash(i8* %"$execptr_load_237", %_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$keccak256hash_pk__238_240"), !dbg !42
  %"$keccak256hash_243" = load [32 x i8], [32 x i8]* %"$keccak256hash_call_241", align 1
  store [32 x i8] %"$keccak256hash_243", [32 x i8]* %pkHash, align 1, !dbg !42
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_235"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %pkHash_bs = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %pkHash_bs, metadata !43, metadata !DIExpression()), !dbg !44
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 32, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 32
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$execptr_load_254" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pkHash_255" = alloca [32 x i8], align 1
  %"$pkHash_256" = load [32 x i8], [32 x i8]* %pkHash, align 1
  store [32 x i8] %"$pkHash_256", [32 x i8]* %"$to_bystr_pkHash_255", align 1
  %"$$to_bystr_pkHash_255_257" = bitcast [32 x i8]* %"$to_bystr_pkHash_255" to i8*
  %"$to_bystr_call_258" = call %Bystr @_to_bystr(i8* %"$execptr_load_254", i32 32, i8* %"$$to_bystr_pkHash_255_257"), !dbg !45
  store %Bystr %"$to_bystr_call_258", %Bystr* %pkHash_bs, align 8, !dbg !45
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_252"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$pos_6" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$pos_6", metadata !46, metadata !DIExpression()), !dbg !47
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  store %Uint32 { i32 12 }, %Uint32* %"$pos_6", align 4, !dbg !48
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_267"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$len_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$len_7", metadata !49, metadata !DIExpression()), !dbg !50
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  store %Uint32 { i32 20 }, %Uint32* %"$len_7", align 4, !dbg !51
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %addr_bs = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %addr_bs, metadata !52, metadata !DIExpression()), !dbg !53
  %"$_literal_cost_pkHash_bs_284" = alloca %Bystr, align 8
  %"$pkHash_bs_285" = load %Bystr, %Bystr* %pkHash_bs, align 8
  store %Bystr %"$pkHash_bs_285", %Bystr* %"$_literal_cost_pkHash_bs_284", align 8
  %"$$_literal_cost_pkHash_bs_284_286" = bitcast %Bystr* %"$_literal_cost_pkHash_bs_284" to i8*
  %"$_literal_cost_call_287" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_51", i8* %"$$_literal_cost_pkHash_bs_284_286")
  %"$$pos_6_288" = load %Uint32, %Uint32* %"$pos_6", align 4
  %"$valueof_289" = extractvalue %Uint32 %"$$pos_6_288", 0
  %"$valueof_290" = zext i32 %"$valueof_289" to i64
  %"$$len_7_291" = load %Uint32, %Uint32* %"$len_7", align 4
  %"$valueof_292" = extractvalue %Uint32 %"$$len_7_291", 0
  %"$valueof_293" = zext i32 %"$valueof_292" to i64
  %"$gasadd_294" = add i64 %"$valueof_290", %"$valueof_293"
  %"$gasmin_295" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_287", i64 %"$gasadd_294")
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 %"$gasmin_295", %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_282"
  %"$consume_300" = sub i64 %"$gasrem_296", %"$gasmin_295"
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$execptr_load_301" = load i8*, i8** @_execptr, align 8
  %"$pkHash_bs_302" = load %Bystr, %Bystr* %pkHash_bs, align 8
  %"$$pos_6_303" = load %Uint32, %Uint32* %"$pos_6", align 4
  %"$$len_7_304" = load %Uint32, %Uint32* %"$len_7", align 4
  %"$substr_call_305" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_301", %Bystr %"$pkHash_bs_302", %Uint32 %"$$pos_6_303", %Uint32 %"$$len_7_304"), !dbg !54
  store %Bystr %"$substr_call_305", %Bystr* %addr_bs, align 8, !dbg !54
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_299"
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %addr_opt = alloca %TName_Option_ByStr20*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20** %addr_opt, metadata !55, metadata !DIExpression()), !dbg !58
  %"$gasrem_311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_312" = icmp ugt i64 20, %"$gasrem_311"
  br i1 %"$gascmp_312", label %"$out_of_gas_313", label %"$have_gas_314"

"$out_of_gas_313":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_314"

"$have_gas_314":                                  ; preds = %"$out_of_gas_313", %"$have_gas_309"
  %"$consume_315" = sub i64 %"$gasrem_311", 20
  store i64 %"$consume_315", i64* @_gasrem, align 8
  %"$execptr_load_316" = load i8*, i8** @_execptr, align 8
  %"$addr_bs_317" = load %Bystr, %Bystr* %addr_bs, align 8
  %"$to_bystr20_call_318" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_316", i32 20, %Bystr %"$addr_bs_317"), !dbg !59
  %"$to_bystr20_319" = bitcast i8* %"$to_bystr20_call_318" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$to_bystr20_319", %TName_Option_ByStr20** %addr_opt, align 8, !dbg !59
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 2, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_314"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_314"
  %"$consume_324" = sub i64 %"$gasrem_320", 2
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$addr_opt_326" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %addr_opt, align 8
  %"$addr_opt_tag_327" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$addr_opt_326", i32 0, i32 0
  %"$addr_opt_tag_328" = load i8, i8* %"$addr_opt_tag_327", align 1
  switch i8 %"$addr_opt_tag_328", label %"$empty_default_329" [
    i8 0, label %"$Some_330"
    i8 1, label %"$None_340"
  ], !dbg !60

"$Some_330":                                      ; preds = %"$have_gas_323"
  %"$addr_opt_331" = bitcast %TName_Option_ByStr20* %"$addr_opt_326" to %CName_Some_ByStr20*
  %"$addr_gep_332" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$addr_opt_331", i32 0, i32 1
  %"$addr_load_333" = load [20 x i8], [20 x i8]* %"$addr_gep_332", align 1
  %addr = alloca [20 x i8], align 1
  store [20 x i8] %"$addr_load_333", [20 x i8]* %addr, align 1
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$Some_330"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$Some_330"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %"$addr_339" = load [20 x i8], [20 x i8]* %addr, align 1
  store [20 x i8] %"$addr_339", [20 x i8]* %"$retval_18", align 1, !dbg !61
  br label %"$matchsucc_325"

"$None_340":                                      ; preds = %"$have_gas_323"
  %"$addr_opt_341" = bitcast %TName_Option_ByStr20* %"$addr_opt_326" to %CName_None_ByStr20*
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$None_340"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$None_340"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero, metadata !64, metadata !DIExpression()), !dbg !66
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_345"
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !67
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$have_gas_350"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %ignore = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %ignore, metadata !68, metadata !DIExpression()), !dbg !69
  %"$gasrem_357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_358" = icmp ugt i64 20, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %"$have_gas_355"
  %"$consume_361" = sub i64 %"$gasrem_357", 20
  store i64 %"$consume_361", i64* @_gasrem, align 8
  %"$zero_362" = load %Uint32, %Uint32* %zero, align 4
  %"$zero_363" = load %Uint32, %Uint32* %zero, align 4
  %"$div_call_364" = call %Uint32 @_div_Uint32(%Uint32 %"$zero_362", %Uint32 %"$zero_363"), !dbg !70
  store %Uint32 %"$div_call_364", %Uint32* %ignore, align 4, !dbg !70
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_360"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_360"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* %"$retval_18", align 1, !dbg !71
  br label %"$matchsucc_325"

"$empty_default_329":                             ; preds = %"$have_gas_323"
  br label %"$matchsucc_325"

"$matchsucc_325":                                 ; preds = %"$have_gas_368", %"$have_gas_337", %"$empty_default_329"
  %"$$retval_18_370" = load [20 x i8], [20 x i8]* %"$retval_18", align 1
  store [20 x i8] %"$$retval_18_370", [20 x i8]* %1, align 1
  ret void
}

define internal { void (i8*, [20 x i8]*, %Uint32)*, i8* } @"$fundef_15"(%"$$fundef_15_env_96"* %0, [64 x i8]* %1) !dbg !72 {
entry:
  %sig = load [64 x i8], [64 x i8]* %1, align 1
  %"$$fundef_15_env_msg_109" = getelementptr inbounds %"$$fundef_15_env_96", %"$$fundef_15_env_96"* %0, i32 0, i32 0
  %"$msg_envload_110" = load %Bystr, %Bystr* %"$$fundef_15_env_msg_109", align 8
  %msg = alloca %Bystr, align 8
  store %Bystr %"$msg_envload_110", %Bystr* %msg, align 8
  %"$retval_16" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }, align 8
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %entry
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %"$$fundef_17_envp_116_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_116_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_116_load", i64 80)
  %"$$fundef_17_envp_116" = bitcast i8* %"$$fundef_17_envp_116_salloc" to %"$$fundef_17_env_95"*
  %"$$fundef_17_env_voidp_118" = bitcast %"$$fundef_17_env_95"* %"$$fundef_17_envp_116" to i8*
  %"$$fundef_17_cloval_119" = insertvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } { void (i8*, [20 x i8]*, %Uint32)* bitcast (void (%"$$fundef_17_env_95"*, [20 x i8]*, %Uint32)* @"$fundef_17" to void (i8*, [20 x i8]*, %Uint32)*), i8* undef }, i8* %"$$fundef_17_env_voidp_118", 1
  %"$$fundef_17_env_msg_120" = getelementptr inbounds %"$$fundef_17_env_95", %"$$fundef_17_env_95"* %"$$fundef_17_envp_116", i32 0, i32 0
  %"$msg_121" = load %Bystr, %Bystr* %msg, align 8
  store %Bystr %"$msg_121", %Bystr* %"$$fundef_17_env_msg_120", align 8
  %"$$fundef_17_env_sig_122" = getelementptr inbounds %"$$fundef_17_env_95", %"$$fundef_17_env_95"* %"$$fundef_17_envp_116", i32 0, i32 1
  store [64 x i8] %sig, [64 x i8]* %"$$fundef_17_env_sig_122", align 1
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$fundef_17_cloval_119", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_16", align 8, !dbg !73
  %"$$retval_16_123" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_16", align 8
  ret { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$retval_16_123"
}

define internal { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } @"$fundef_13"(%"$$fundef_13_env_97"* %0, %Bystr %1) !dbg !74 {
entry:
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
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$fundef_15_cloval_106", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$retval_14", align 8, !dbg !75
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

define void @_init_libs() !dbg !76 {
entry:
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 5, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %entry
  %"$consume_438" = sub i64 %"$gasrem_434", 5
  store i64 %"$consume_438", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !78
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 8, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 8
  store i64 %"$consume_443", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !78
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 196, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 196
  store i64 %"$consume_448", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !78
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 20, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 20
  store i64 %"$consume_453", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !78
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 12, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %"$have_gas_452"
  %"$consume_458" = sub i64 %"$gasrem_454", 12
  store i64 %"$consume_458", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !78
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 2, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_457"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_457"
  %"$consume_463" = sub i64 %"$gasrem_459", 2
  store i64 %"$consume_463", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !78
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !79 {
entry:
  %"$expr_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_12", metadata !80, metadata !DIExpression()), !dbg !83
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %entry
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %ecrecover = alloca { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_467"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  store { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)* bitcast ({ { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (%"$$fundef_13_env_97"*, %Bystr)* @"$fundef_13" to { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*), i8* null }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8, !dbg !84
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_472"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %header_hash = alloca { %Bystr (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  store { %Bystr (i8*, %Bystr)*, i8* } { %Bystr (i8*, %Bystr)* bitcast (%Bystr (%"$$fundef_19_env_94"*, %Bystr)* @"$fundef_19" to %Bystr (i8*, %Bystr)*), i8* null }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8, !dbg !85
  %"$gasrem_490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_491" = icmp ugt i64 1, %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %"$have_gas_485"
  %"$consume_494" = sub i64 %"$gasrem_490", 1
  store i64 %"$consume_494", i64* @_gasrem, align 8
  %sig = alloca [64 x i8], align 1
  call void @llvm.dbg.declare(metadata [64 x i8]* %sig, metadata !86, metadata !DIExpression()), !dbg !88
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 1, %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$have_gas_493"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$have_gas_493"
  %"$consume_499" = sub i64 %"$gasrem_495", 1
  store i64 %"$consume_499", i64* @_gasrem, align 8
  store [64 x i8] c"}X\8Dy\AC\9F\091\C6\91P\DEk\FER\89\F0\14x\93x\1B\FF\BC\C3+^\07\BDh}\10H\DD\A09\FF\C1\E8}\E2\E9\86\10\DC\87n\97A\1D`IHG9\04\B1+d\BE\D8\88\0B\CC", [64 x i8]* %sig, align 1, !dbg !89
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 1, %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %"$have_gas_498"
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %"$have_gas_498"
  %"$consume_504" = sub i64 %"$gasrem_500", 1
  store i64 %"$consume_504", i64* @_gasrem, align 8
  %msg = alloca [1591 x i8], align 1
  call void @llvm.dbg.declare(metadata [1591 x i8]* %msg, metadata !90, metadata !DIExpression()), !dbg !92
  %"$gasrem_505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_506" = icmp ugt i64 1, %"$gasrem_505"
  br i1 %"$gascmp_506", label %"$out_of_gas_507", label %"$have_gas_508"

"$out_of_gas_507":                                ; preds = %"$have_gas_503"
  call void @_out_of_gas()
  br label %"$have_gas_508"

"$have_gas_508":                                  ; preds = %"$out_of_gas_507", %"$have_gas_503"
  %"$consume_509" = sub i64 %"$gasrem_505", 1
  store i64 %"$consume_509", i64* @_gasrem, align 8
  store [1591 x i8] c"\00\00\00\00\9B\91V\17\00\00\00\00\F4\8A@W\BE\F2h\CC?\DB\03Ni\DC.\94)\07\E0\8A\C4\A4 \D1\B1\96\B8\C2\8E\BF[\F2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\8B\E0\A1`Zc\A3\17\04\AE\C4\EBO\10#\F1\EC\C2\93K\D8o\11\9A\B7u&\F9Gz\F9\A5~\1A_P\8E\00\00A\07\82r\0A\B1\89\FF\FD\84\05{\22leader\22:3,\22vrf_value\22:\22BOO3oXyk2RIpeVQY38Tq3qJB82szJh6nOorJUp/JMX+GLpz4zIsG9LJl4xJo4etHgOV5qi6MHKftqOirOuZIZiY=\22,\22vrf_proof\22:\22cYSRWFPoi9GHABGRbUdh6a+5PoO1wv5JUzSAtWxhEcpqut0SjYXs4LtS55tSJt3AtI0YamLgRJyzROhVGVbm4g==\22,\22last_config_block_num\22:36432,\22new_chain_config\22:{\22version\22:1,\22view\22:4,\22n\22:8,\22c\22:2,\22block_msg_delay\22:10000000000,\22hash_msg_delay\22:10000000000,\22peer_handshake_timeout\22:10000000000,\22peers\22:[{\22index\22:1,\22id\22:\221205028172918540b2b512eae1872a2a2e3a28d989c60d95dab8829ada7d7dd706d658\22},{\22index\22:4,\22id\22:\22120502679930a42aaf3c69798ca8a3f12e134c019405818d783d11748e039de8515988\22},{\22index\22:3,\22id\22:\22120502482acb6564b19b90653f6e9c806292e8aa83f78e7a9382a24a6efe41c0c06f39\22},{\22index\22:5,\22id\22:\22120502468dd1899ed2d1cc2b829882a165a0ecb6a745af0c72eb2982d66b4311b4ef73\22},{\22index\22:8,\22id\22:\2212050393421445b9421bd4cc90d7bc88c9301558047a76b20c59e7c511ee7d229982b1\22},{\22index\22:2,\22id\22:\221205038b8af6210ecfdcbcab22552ef8d8cf41c6f86f9cf9ab53d865741cfdb833f06b\22},{\22index\22:7,\22id\22:\221205031e0779f5c5ccb2612352fe4a200f99d3e7758e70ba53f607c59ff22a30f678ff\22},{\22index\22:6,\22id\22:\22120502eb1baab602c5899282561cdaaa7aabbcdd0ccfcbc3e79793ac24acf90778f35a\22}],\22pos_table\22:[2,8,5,5,8,7,1,4,5,6,5,4,7,7,3,3,4,6,1,2,4,8,5,4,7,4,6,6,2,2,1,1,8,8,6,6,6,7,8,7,4,8,5,1,3,3,8,5,3,6,3,6,7,5,6,2,3,1,2,6,5,2,1,4,2,1,8,4,8,3,8,7,7,5,1,7,4,4,1,5,2,5,6,1,2,8,3,3,1,3,1,4,1,7,8,6,8,2,5,1,4,5,3,2,2,2,8,3,3,3,6,7,4,7,4,2,7,5,6,7],\22max_block_change_view\22:60000}}\F8\FCz\1Fj\85c\13\C5\91\A3\A7G\F4\EC\A7!\8A\82\0B", [1591 x i8]* %msg, align 1, !dbg !93
  %"$gasrem_510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_511" = icmp ugt i64 1, %"$gasrem_510"
  br i1 %"$gascmp_511", label %"$out_of_gas_512", label %"$have_gas_513"

"$out_of_gas_512":                                ; preds = %"$have_gas_508"
  call void @_out_of_gas()
  br label %"$have_gas_513"

"$have_gas_513":                                  ; preds = %"$out_of_gas_512", %"$have_gas_508"
  %"$consume_514" = sub i64 %"$gasrem_510", 1
  store i64 %"$consume_514", i64* @_gasrem, align 8
  %addr_gold = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %addr_gold, metadata !94, metadata !DIExpression()), !dbg !95
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_513"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_513"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  store [20 x i8] c"\A4*N\85\03M[\EB\C2%t=\A4\00\CCL\0ECrz", [20 x i8]* %addr_gold, align 1, !dbg !96
  %"$gasrem_520" = load i64, i64* @_gasrem, align 8
  %"$gascmp_521" = icmp ugt i64 1, %"$gasrem_520"
  br i1 %"$gascmp_521", label %"$out_of_gas_522", label %"$have_gas_523"

"$out_of_gas_522":                                ; preds = %"$have_gas_518"
  call void @_out_of_gas()
  br label %"$have_gas_523"

"$have_gas_523":                                  ; preds = %"$out_of_gas_522", %"$have_gas_518"
  %"$consume_524" = sub i64 %"$gasrem_520", 1
  store i64 %"$consume_524", i64* @_gasrem, align 8
  %msg_bs = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %msg_bs, metadata !97, metadata !DIExpression()), !dbg !98
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1591, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_523"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_523"
  %"$consume_529" = sub i64 %"$gasrem_525", 1591
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$execptr_load_530" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_msg_531" = alloca [1591 x i8], align 1
  %"$msg_532" = load [1591 x i8], [1591 x i8]* %msg, align 1
  store [1591 x i8] %"$msg_532", [1591 x i8]* %"$to_bystr_msg_531", align 1
  %"$$to_bystr_msg_531_533" = bitcast [1591 x i8]* %"$to_bystr_msg_531" to i8*
  %"$to_bystr_call_534" = call %Bystr @_to_bystr(i8* %"$execptr_load_530", i32 1591, i8* %"$$to_bystr_msg_531_533"), !dbg !99
  store %Bystr %"$to_bystr_call_534", %Bystr* %msg_bs, align 8, !dbg !99
  %"$gasrem_535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_536" = icmp ugt i64 1, %"$gasrem_535"
  br i1 %"$gascmp_536", label %"$out_of_gas_537", label %"$have_gas_538"

"$out_of_gas_537":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_538"

"$have_gas_538":                                  ; preds = %"$out_of_gas_537", %"$have_gas_528"
  %"$consume_539" = sub i64 %"$gasrem_535", 1
  store i64 %"$consume_539", i64* @_gasrem, align 8
  %msg_hashed = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %msg_hashed, metadata !100, metadata !DIExpression()), !dbg !101
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 1, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %"$have_gas_538"
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %"$have_gas_538"
  %"$consume_544" = sub i64 %"$gasrem_540", 1
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %"$header_hash_8" = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %"$header_hash_8", metadata !102, metadata !DIExpression()), !dbg !103
  %"$header_hash_545" = load { %Bystr (i8*, %Bystr)*, i8* }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8
  %"$header_hash_fptr_546" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_545", 0
  %"$header_hash_envptr_547" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_545", 1
  %"$msg_bs_548" = load %Bystr, %Bystr* %msg_bs, align 8
  %"$header_hash_call_549" = call %Bystr %"$header_hash_fptr_546"(i8* %"$header_hash_envptr_547", %Bystr %"$msg_bs_548"), !dbg !103
  store %Bystr %"$header_hash_call_549", %Bystr* %"$header_hash_8", align 8, !dbg !103
  %"$$header_hash_8_550" = load %Bystr, %Bystr* %"$header_hash_8", align 8
  store %Bystr %"$$header_hash_8_550", %Bystr* %msg_hashed, align 8, !dbg !103
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_543"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %recid = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %recid, metadata !104, metadata !DIExpression()), !dbg !105
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_554"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %recid, align 4, !dbg !106
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_559"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  %addr_computed = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %addr_computed, metadata !107, metadata !DIExpression()), !dbg !108
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_564"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %"$ecrecover_9" = alloca { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, align 8
  %"$ecrecover_571" = load { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8
  %"$ecrecover_fptr_572" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_571", 0
  %"$ecrecover_envptr_573" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_571", 1
  %"$msg_hashed_574" = load %Bystr, %Bystr* %msg_hashed, align 8
  %"$ecrecover_call_575" = call { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_fptr_572"(i8* %"$ecrecover_envptr_573", %Bystr %"$msg_hashed_574"), !dbg !109
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_call_575", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_9", align 8, !dbg !109
  %"$ecrecover_10" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }, align 8
  %"$$ecrecover_9_576" = load { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_9", align 8
  %"$$ecrecover_9_fptr_577" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_9_576", 0
  %"$$ecrecover_9_envptr_578" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_9_576", 1
  %"$$ecrecover_9_sig_579" = alloca [64 x i8], align 1
  %"$sig_580" = load [64 x i8], [64 x i8]* %sig, align 1
  store [64 x i8] %"$sig_580", [64 x i8]* %"$$ecrecover_9_sig_579", align 1
  %"$$ecrecover_9_call_581" = call { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_9_fptr_577"(i8* %"$$ecrecover_9_envptr_578", [64 x i8]* %"$$ecrecover_9_sig_579"), !dbg !109
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_9_call_581", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_10", align 8, !dbg !109
  %"$ecrecover_11" = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %"$ecrecover_11", metadata !110, metadata !DIExpression()), !dbg !109
  %"$$ecrecover_10_582" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_10", align 8
  %"$$ecrecover_10_fptr_583" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_10_582", 0
  %"$$ecrecover_10_envptr_584" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_10_582", 1
  %"$recid_585" = load %Uint32, %Uint32* %recid, align 4
  %"$$ecrecover_10_retalloca_586" = alloca [20 x i8], align 1
  call void %"$$ecrecover_10_fptr_583"(i8* %"$$ecrecover_10_envptr_584", [20 x i8]* %"$$ecrecover_10_retalloca_586", %Uint32 %"$recid_585"), !dbg !109
  %"$$ecrecover_10_ret_587" = load [20 x i8], [20 x i8]* %"$$ecrecover_10_retalloca_586", align 1
  store [20 x i8] %"$$ecrecover_10_ret_587", [20 x i8]* %"$ecrecover_11", align 1, !dbg !109
  %"$$ecrecover_11_588" = load [20 x i8], [20 x i8]* %"$ecrecover_11", align 1
  store [20 x i8] %"$$ecrecover_11_588", [20 x i8]* %addr_computed, align 1, !dbg !109
  %"$gasrem_589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_590" = icmp ugt i64 20, %"$gasrem_589"
  br i1 %"$gascmp_590", label %"$out_of_gas_591", label %"$have_gas_592"

"$out_of_gas_591":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_592"

"$have_gas_592":                                  ; preds = %"$out_of_gas_591", %"$have_gas_569"
  %"$consume_593" = sub i64 %"$gasrem_589", 20
  store i64 %"$consume_593", i64* @_gasrem, align 8
  %"$execptr_load_594" = load i8*, i8** @_execptr, align 8
  %"$eq_addr_computed_595" = alloca [20 x i8], align 1
  %"$addr_computed_596" = load [20 x i8], [20 x i8]* %addr_computed, align 1
  store [20 x i8] %"$addr_computed_596", [20 x i8]* %"$eq_addr_computed_595", align 1
  %"$$eq_addr_computed_595_597" = bitcast [20 x i8]* %"$eq_addr_computed_595" to i8*
  %"$eq_addr_gold_598" = alloca [20 x i8], align 1
  %"$addr_gold_599" = load [20 x i8], [20 x i8]* %addr_gold, align 1
  store [20 x i8] %"$addr_gold_599", [20 x i8]* %"$eq_addr_gold_598", align 1
  %"$$eq_addr_gold_598_600" = bitcast [20 x i8]* %"$eq_addr_gold_598" to i8*
  %"$eq_call_601" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_594", i32 20, i8* %"$$eq_addr_computed_595_597", i8* %"$$eq_addr_gold_598_600"), !dbg !111
  store %TName_Bool* %"$eq_call_601", %TName_Bool** %"$expr_12", align 8, !dbg !111
  %"$$expr_12_603" = load %TName_Bool*, %TName_Bool** %"$expr_12", align 8
  ret %TName_Bool* %"$$expr_12_603"
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_604" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_605" = bitcast %TName_Bool* %"$exprval_604" to i8*
  %"$execptr_load_606" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_606", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_65", i8* %"$memvoidcast_605")
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
!8 = !DILocalVariable(name: "$retval_20", scope: !3, file: !2, line: 28, type: !9)
!9 = !DIBasicType(name: "ByStr", size: 16)
!10 = !DILocation(line: 28, column: 5, scope: !3)
!11 = !DILocalVariable(name: "h1", scope: !3, file: !2, line: 28, type: !12)
!12 = !DIBasicType(name: "ByStr32", size: 32)
!13 = !DILocation(line: 28, column: 9, scope: !3)
!14 = !DILocation(line: 28, column: 14, scope: !3)
!15 = !DILocalVariable(name: "h2", scope: !3, file: !2, line: 29, type: !12)
!16 = !DILocation(line: 29, column: 9, scope: !3)
!17 = !DILocation(line: 29, column: 14, scope: !3)
!18 = !DILocation(line: 30, column: 5, scope: !3)
!19 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!20 = !DILocalVariable(name: "$retval_18", scope: !19, file: !2, line: 5, type: !21)
!21 = !DIBasicType(name: "ByStr20", size: 20)
!22 = !DILocation(line: 5, column: 5, scope: !19)
!23 = !DILocalVariable(name: "pk", scope: !19, file: !2, line: 5, type: !24)
!24 = !DIBasicType(name: "ByStr65", size: 65)
!25 = !DILocation(line: 5, column: 9, scope: !19)
!26 = !DILocation(line: 5, column: 14, scope: !19)
!27 = !DILocalVariable(name: "pos", scope: !19, file: !2, line: 6, type: !28)
!28 = !DIBasicType(name: "Uint32", size: 4)
!29 = !DILocation(line: 6, column: 9, scope: !19)
!30 = !DILocation(line: 6, column: 15, scope: !19)
!31 = !DILocalVariable(name: "len", scope: !19, file: !2, line: 7, type: !28)
!32 = !DILocation(line: 7, column: 9, scope: !19)
!33 = !DILocation(line: 7, column: 15, scope: !19)
!34 = !DILocalVariable(name: "pk_bs", scope: !19, file: !2, line: 8, type: !9)
!35 = !DILocation(line: 8, column: 9, scope: !19)
!36 = !DILocation(line: 8, column: 17, scope: !19)
!37 = !DILocalVariable(name: "pk_", scope: !19, file: !2, line: 9, type: !9)
!38 = !DILocation(line: 9, column: 9, scope: !19)
!39 = !DILocation(line: 9, column: 15, scope: !19)
!40 = !DILocalVariable(name: "pkHash", scope: !19, file: !2, line: 10, type: !12)
!41 = !DILocation(line: 10, column: 9, scope: !19)
!42 = !DILocation(line: 10, column: 18, scope: !19)
!43 = !DILocalVariable(name: "pkHash_bs", scope: !19, file: !2, line: 11, type: !9)
!44 = !DILocation(line: 11, column: 9, scope: !19)
!45 = !DILocation(line: 11, column: 21, scope: !19)
!46 = !DILocalVariable(name: "$pos_6", scope: !19, file: !2, line: 12, type: !28)
!47 = !DILocation(line: 12, column: 9, scope: !19)
!48 = !DILocation(line: 12, column: 15, scope: !19)
!49 = !DILocalVariable(name: "$len_7", scope: !19, file: !2, line: 13, type: !28)
!50 = !DILocation(line: 13, column: 9, scope: !19)
!51 = !DILocation(line: 13, column: 15, scope: !19)
!52 = !DILocalVariable(name: "addr_bs", scope: !19, file: !2, line: 14, type: !9)
!53 = !DILocation(line: 14, column: 9, scope: !19)
!54 = !DILocation(line: 14, column: 19, scope: !19)
!55 = !DILocalVariable(name: "addr_opt", scope: !19, file: !2, line: 15, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (ByStr20)", baseType: !57, size: 8, align: 8, dwarfAddressSpace: 0)
!57 = !DIBasicType(name: "Option (ByStr20)", size: 8)
!58 = !DILocation(line: 15, column: 9, scope: !19)
!59 = !DILocation(line: 15, column: 20, scope: !19)
!60 = !DILocation(line: 16, column: 5, scope: !19)
!61 = !DILocation(line: 18, column: 7, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !2, line: 17, column: 7)
!63 = distinct !DILexicalBlock(scope: !19, file: !2, line: 16, column: 5)
!64 = !DILocalVariable(name: "zero", scope: !65, file: !2, line: 20, type: !28)
!65 = distinct !DILexicalBlock(scope: !63, file: !2, line: 19, column: 7)
!66 = !DILocation(line: 20, column: 11, scope: !65)
!67 = !DILocation(line: 20, column: 18, scope: !65)
!68 = !DILocalVariable(name: "ignore", scope: !65, file: !2, line: 21, type: !28)
!69 = !DILocation(line: 21, column: 11, scope: !65)
!70 = !DILocation(line: 21, column: 20, scope: !65)
!71 = !DILocation(line: 22, column: 7, scope: !65)
!72 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!73 = !DILocation(line: 5, column: 5, scope: !72)
!74 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!75 = !DILocation(line: 4, column: 3, scope: !74)
!76 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !77, file: !77, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!77 = !DIFile(filename: ".", directory: ".")
!78 = !DILocation(line: 0, scope: !76)
!79 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!80 = !DILocalVariable(name: "$expr_12", scope: !79, file: !2, line: 2, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !82, size: 8, align: 8, dwarfAddressSpace: 0)
!82 = !DIBasicType(name: "Bool", size: 8)
!83 = !DILocation(line: 2, column: 3, scope: !79)
!84 = !DILocation(line: 3, column: 3, scope: !79)
!85 = !DILocation(line: 28, column: 5, scope: !79)
!86 = !DILocalVariable(name: "sig", scope: !79, file: !2, line: 33, type: !87)
!87 = !DIBasicType(name: "ByStr64", size: 64)
!88 = !DILocation(line: 33, column: 5, scope: !79)
!89 = !DILocation(line: 33, column: 11, scope: !79)
!90 = !DILocalVariable(name: "msg", scope: !79, file: !2, line: 34, type: !91)
!91 = !DIBasicType(name: "ByStr1591", size: 1591)
!92 = !DILocation(line: 34, column: 5, scope: !79)
!93 = !DILocation(line: 34, column: 11, scope: !79)
!94 = !DILocalVariable(name: "addr_gold", scope: !79, file: !2, line: 36, type: !21)
!95 = !DILocation(line: 36, column: 5, scope: !79)
!96 = !DILocation(line: 36, column: 17, scope: !79)
!97 = !DILocalVariable(name: "msg_bs", scope: !79, file: !2, line: 37, type: !9)
!98 = !DILocation(line: 37, column: 5, scope: !79)
!99 = !DILocation(line: 37, column: 14, scope: !79)
!100 = !DILocalVariable(name: "msg_hashed", scope: !79, file: !2, line: 38, type: !9)
!101 = !DILocation(line: 38, column: 5, scope: !79)
!102 = !DILocalVariable(name: "$header_hash_8", scope: !79, file: !2, line: 38, type: !9)
!103 = !DILocation(line: 38, column: 18, scope: !79)
!104 = !DILocalVariable(name: "recid", scope: !79, file: !2, line: 39, type: !28)
!105 = !DILocation(line: 39, column: 5, scope: !79)
!106 = !DILocation(line: 39, column: 13, scope: !79)
!107 = !DILocalVariable(name: "addr_computed", scope: !79, file: !2, line: 41, type: !21)
!108 = !DILocation(line: 41, column: 5, scope: !79)
!109 = !DILocation(line: 41, column: 21, scope: !79)
!110 = !DILocalVariable(name: "$ecrecover_11", scope: !79, file: !2, line: 41, type: !21)
!111 = !DILocation(line: 42, column: 1, scope: !79)
