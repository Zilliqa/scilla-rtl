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
%"$TyDescrTy_ADTTyp_61" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_60"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_60" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_62"**, %"$TyDescrTy_ADTTyp_61"* }
%"$TyDescrTy_ADTTyp_Constr_62" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_605" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_606" = type { %ParamDescrString, i32, %"$ParamDescr_605"* }
%"$$fundef_19_env_92" = type {}
%Bystr = type { i8*, i32 }
%"$$fundef_17_env_93" = type { %Bystr, [64 x i8] }
%Uint32 = type { i32 }
%TName_Option_ByStr20 = type { i8, %CName_Some_ByStr20*, %CName_None_ByStr20* }
%CName_Some_ByStr20 = type <{ i8, [20 x i8] }>
%CName_None_ByStr20 = type <{ i8 }>
%"$$fundef_15_env_94" = type { %Bystr }
%"$$fundef_13_env_95" = type {}
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
@"$TyDescr_Bystr_Prim_48" = global %"$TyDescrTy_PrimTyp_21" { i32 7, i32 0 }
@"$TyDescr_Bystr_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr_Prim_48" to i8*) }
@"$TyDescr_Bystr1591_Prim_50" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 1591 }
@"$TyDescr_Bystr1591_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr1591_Prim_50" to i8*) }
@"$TyDescr_Bystr32_Prim_52" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 32 }
@"$TyDescr_Bystr32_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr32_Prim_52" to i8*) }
@"$TyDescr_Bystr65_Prim_54" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 65 }
@"$TyDescr_Bystr65_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr65_Prim_54" to i8*) }
@"$TyDescr_Bystr64_Prim_56" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 64 }
@"$TyDescr_Bystr64_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr64_Prim_56" to i8*) }
@"$TyDescr_Bystr20_Prim_58" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 20 }
@"$TyDescr_Bystr20_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr20_Prim_58" to i8*) }
@"$TyDescr_ADT_Bool_63" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Bool_ADTTyp_Specl_77" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_89" to i8*) }
@"$TyDescr_Bool_ADTTyp_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_61" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_79", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_60"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_60"*], [1 x %"$TyDescrTy_ADTTyp_Specl_60"*]* @"$TyDescr_Bool_ADTTyp_m_specls_78", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_69" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_70" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_70", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_69", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_72" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_73" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_73", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_72", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_75" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Bool_True_ADTTyp_Constr_71", %"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Bool_False_ADTTyp_Constr_74"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_76" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_62"*], [2 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Bool_ADTTyp_68" }
@"$TyDescr_Bool_ADTTyp_m_specls_78" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_60"*] [%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Bool_ADTTyp_Specl_77"]
@"$TyDescr_ADT_Bool_79" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_Option_ADTTyp_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_61" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_91", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_60"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_60"*], [1 x %"$TyDescrTy_ADTTyp_Specl_60"*]* @"$TyDescr_Option_ADTTyp_m_specls_90", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr20_Constr_m_args_81" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_59"]
@"$TyDescr_ADT_Some_82" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_82", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_Constr_m_args_81", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_Constr_m_args_84" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_85" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_85", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_Constr_m_args_84", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_87" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_83", %"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_86"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_88" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_59"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_88", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_62"*], [2 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Option_ADTTyp_80" }
@"$TyDescr_Option_ADTTyp_m_specls_90" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_60"*] [%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_89"]
@"$TyDescr_ADT_Option_91" = unnamed_addr constant [6 x i8] c"Option"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_45", %_TyDescrTy_Typ* @"$TyDescr_Int64_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_64", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_59", %_TyDescrTy_Typ* @"$TyDescr_Uint256_37", %_TyDescrTy_Typ* @"$TyDescr_Uint32_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_57", %_TyDescrTy_Typ* @"$TyDescr_Uint64_29", %_TyDescrTy_Typ* @"$TyDescr_Bnum_41", %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", %_TyDescrTy_Typ* @"$TyDescr_Exception_47", %_TyDescrTy_Typ* @"$TyDescr_String_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr65_55", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_53", %_TyDescrTy_Typ* @"$TyDescr_Int256_35", %_TyDescrTy_Typ* @"$TyDescr_Int128_31", %_TyDescrTy_Typ* @"$TyDescr_Bystr_49", %_TyDescrTy_Typ* @"$TyDescr_Message_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr1591_51", %_TyDescrTy_Typ* @"$TyDescr_Int32_23"]
@_tydescr_table_length = constant i32 21
@_contract_parameters = constant [0 x %"$ParamDescr_605"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_606"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Bystr @"$fundef_19"(%"$$fundef_19_env_92"* %0, %Bystr %1) !dbg !4 {
entry:
  %"$retval_20" = alloca %Bystr, align 8
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %entry
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %h1 = alloca [32 x i8], align 1
  %"$_literal_cost_header_374" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$_literal_cost_header_374", align 8
  %"$$_literal_cost_header_374_375" = bitcast %Bystr* %"$_literal_cost_header_374" to i8*
  %"$_literal_cost_call_376" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_49", i8* %"$$_literal_cost_header_374_375")
  %"$gasadd_377" = add i64 %"$_literal_cost_call_376", 0
  %"$gasdivceil_378" = urem i64 %"$gasadd_377", 960
  %"$gasdivceil_379" = udiv i64 %"$gasadd_377", 960
  %"$gasdivceil_380" = icmp eq i64 %"$gasdivceil_378", 0
  %"$gasdivceil_381" = add i64 %"$gasdivceil_379", 1
  %"$gasdivceil_382" = select i1 %"$gasdivceil_380", i64 %"$gasdivceil_379", i64 %"$gasdivceil_381"
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 %"$gasdivceil_382", %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_372"
  %"$consume_387" = sub i64 %"$gasrem_383", %"$gasdivceil_382"
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %"$execptr_load_388" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_header_389" = alloca %Bystr, align 8
  store %Bystr %1, %Bystr* %"$sha256hash_header_389", align 8
  %"$$sha256hash_header_389_390" = bitcast %Bystr* %"$sha256hash_header_389" to i8*
  %"$sha256hash_call_391" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_388", %_TyDescrTy_Typ* @"$TyDescr_Bystr_49", i8* %"$$sha256hash_header_389_390"), !dbg !8
  %"$sha256hash_393" = load [32 x i8], [32 x i8]* %"$sha256hash_call_391", align 1
  store [32 x i8] %"$sha256hash_393", [32 x i8]* %h1, align 1, !dbg !8
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_386"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %h2 = alloca [32 x i8], align 1
  %"$_literal_cost_h1_399" = alloca [32 x i8], align 1
  %"$h1_400" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_400", [32 x i8]* %"$_literal_cost_h1_399", align 1
  %"$$_literal_cost_h1_399_401" = bitcast [32 x i8]* %"$_literal_cost_h1_399" to i8*
  %"$_literal_cost_call_402" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_53", i8* %"$$_literal_cost_h1_399_401")
  %"$gasadd_403" = add i64 %"$_literal_cost_call_402", 0
  %"$gasdivceil_404" = urem i64 %"$gasadd_403", 960
  %"$gasdivceil_405" = udiv i64 %"$gasadd_403", 960
  %"$gasdivceil_406" = icmp eq i64 %"$gasdivceil_404", 0
  %"$gasdivceil_407" = add i64 %"$gasdivceil_405", 1
  %"$gasdivceil_408" = select i1 %"$gasdivceil_406", i64 %"$gasdivceil_405", i64 %"$gasdivceil_407"
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 %"$gasdivceil_408", %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_397"
  %"$consume_413" = sub i64 %"$gasrem_409", %"$gasdivceil_408"
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$execptr_load_414" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_h1_415" = alloca [32 x i8], align 1
  %"$h1_416" = load [32 x i8], [32 x i8]* %h1, align 1
  store [32 x i8] %"$h1_416", [32 x i8]* %"$sha256hash_h1_415", align 1
  %"$$sha256hash_h1_415_417" = bitcast [32 x i8]* %"$sha256hash_h1_415" to i8*
  %"$sha256hash_call_418" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_414", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_53", i8* %"$$sha256hash_h1_415_417"), !dbg !9
  %"$sha256hash_420" = load [32 x i8], [32 x i8]* %"$sha256hash_call_418", align 1
  store [32 x i8] %"$sha256hash_420", [32 x i8]* %h2, align 1, !dbg !9
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 32, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_412"
  %"$consume_425" = sub i64 %"$gasrem_421", 32
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %"$execptr_load_426" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_h2_427" = alloca [32 x i8], align 1
  %"$h2_428" = load [32 x i8], [32 x i8]* %h2, align 1
  store [32 x i8] %"$h2_428", [32 x i8]* %"$to_bystr_h2_427", align 1
  %"$$to_bystr_h2_427_429" = bitcast [32 x i8]* %"$to_bystr_h2_427" to i8*
  %"$to_bystr_call_430" = call %Bystr @_to_bystr(i8* %"$execptr_load_426", i32 32, i8* %"$$to_bystr_h2_427_429"), !dbg !10
  store %Bystr %"$to_bystr_call_430", %Bystr* %"$retval_20", align 8, !dbg !10
  %"$$retval_20_431" = load %Bystr, %Bystr* %"$retval_20", align 8
  ret %Bystr %"$$retval_20_431"
}

define internal void @"$fundef_17"(%"$$fundef_17_env_93"* %0, [20 x i8]* %1, %Uint32 %2) !dbg !11 {
entry:
  %"$$fundef_17_env_msg_122" = getelementptr inbounds %"$$fundef_17_env_93", %"$$fundef_17_env_93"* %0, i32 0, i32 0
  %"$msg_envload_123" = load %Bystr, %Bystr* %"$$fundef_17_env_msg_122", align 8
  %msg = alloca %Bystr, align 8
  store %Bystr %"$msg_envload_123", %Bystr* %msg, align 8
  %"$$fundef_17_env_sig_124" = getelementptr inbounds %"$$fundef_17_env_93", %"$$fundef_17_env_93"* %0, i32 0, i32 1
  %"$sig_envload_125" = load [64 x i8], [64 x i8]* %"$$fundef_17_env_sig_124", align 1
  %sig = alloca [64 x i8], align 1
  store [64 x i8] %"$sig_envload_125", [64 x i8]* %sig, align 1
  %"$retval_18" = alloca [20 x i8], align 1
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %entry
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %pk = alloca [65 x i8], align 1
  %"$_literal_cost_msg_131" = alloca %Bystr, align 8
  %"$msg_132" = load %Bystr, %Bystr* %msg, align 8
  store %Bystr %"$msg_132", %Bystr* %"$_literal_cost_msg_131", align 8
  %"$$_literal_cost_msg_131_133" = bitcast %Bystr* %"$_literal_cost_msg_131" to i8*
  %"$_literal_cost_call_134" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_49", i8* %"$$_literal_cost_msg_131_133")
  %"$gasadd_135" = add i64 %"$_literal_cost_call_134", 0
  %"$gasdivceil_136" = urem i64 %"$gasadd_135", 960
  %"$gasdivceil_137" = udiv i64 %"$gasadd_135", 960
  %"$gasdivceil_138" = icmp eq i64 %"$gasdivceil_136", 0
  %"$gasdivceil_139" = add i64 %"$gasdivceil_137", 1
  %"$gasdivceil_140" = select i1 %"$gasdivceil_138", i64 %"$gasdivceil_137", i64 %"$gasdivceil_139"
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 %"$gasdivceil_140", %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_129"
  %"$consume_145" = sub i64 %"$gasrem_141", %"$gasdivceil_140"
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %"$execptr_load_146" = load i8*, i8** @_execptr, align 8
  %"$msg_147" = load %Bystr, %Bystr* %msg, align 8
  %"$ecdsa_recover_pk_sig_148" = alloca [64 x i8], align 1
  %"$sig_149" = load [64 x i8], [64 x i8]* %sig, align 1
  store [64 x i8] %"$sig_149", [64 x i8]* %"$ecdsa_recover_pk_sig_148", align 1
  %"$ecdsa_recover_pk_call_150" = call [65 x i8]* @_ecdsa_recover_pk(i8* %"$execptr_load_146", %Bystr %"$msg_147", [64 x i8]* %"$ecdsa_recover_pk_sig_148", %Uint32 %2), !dbg !12
  %"$ecdsa_recover_pk_152" = load [65 x i8], [65 x i8]* %"$ecdsa_recover_pk_call_150", align 1
  store [65 x i8] %"$ecdsa_recover_pk_152", [65 x i8]* %pk, align 1, !dbg !12
  %"$gasrem_153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_154" = icmp ugt i64 1, %"$gasrem_153"
  br i1 %"$gascmp_154", label %"$out_of_gas_155", label %"$have_gas_156"

"$out_of_gas_155":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_156"

"$have_gas_156":                                  ; preds = %"$out_of_gas_155", %"$have_gas_144"
  %"$consume_157" = sub i64 %"$gasrem_153", 1
  store i64 %"$consume_157", i64* @_gasrem, align 8
  %pos = alloca %Uint32, align 8
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_156"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_156"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %pos, align 4, !dbg !13
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_161"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_161"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %len = alloca %Uint32, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  store %Uint32 { i32 64 }, %Uint32* %len, align 4, !dbg !14
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_171"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %pk_bs = alloca %Bystr, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 65, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_176"
  %"$consume_182" = sub i64 %"$gasrem_178", 65
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %"$execptr_load_183" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pk_184" = alloca [65 x i8], align 1
  %"$pk_185" = load [65 x i8], [65 x i8]* %pk, align 1
  store [65 x i8] %"$pk_185", [65 x i8]* %"$to_bystr_pk_184", align 1
  %"$$to_bystr_pk_184_186" = bitcast [65 x i8]* %"$to_bystr_pk_184" to i8*
  %"$to_bystr_call_187" = call %Bystr @_to_bystr(i8* %"$execptr_load_183", i32 65, i8* %"$$to_bystr_pk_184_186"), !dbg !15
  store %Bystr %"$to_bystr_call_187", %Bystr* %pk_bs, align 8, !dbg !15
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %"$have_gas_181"
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %pk_ = alloca %Bystr, align 8
  %"$_literal_cost_pk_bs_193" = alloca %Bystr, align 8
  %"$pk_bs_194" = load %Bystr, %Bystr* %pk_bs, align 8
  store %Bystr %"$pk_bs_194", %Bystr* %"$_literal_cost_pk_bs_193", align 8
  %"$$_literal_cost_pk_bs_193_195" = bitcast %Bystr* %"$_literal_cost_pk_bs_193" to i8*
  %"$_literal_cost_call_196" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_49", i8* %"$$_literal_cost_pk_bs_193_195")
  %"$pos_197" = load %Uint32, %Uint32* %pos, align 4
  %"$valueof_198" = extractvalue %Uint32 %"$pos_197", 0
  %"$valueof_199" = zext i32 %"$valueof_198" to i64
  %"$len_200" = load %Uint32, %Uint32* %len, align 4
  %"$valueof_201" = extractvalue %Uint32 %"$len_200", 0
  %"$valueof_202" = zext i32 %"$valueof_201" to i64
  %"$gasadd_203" = add i64 %"$valueof_199", %"$valueof_202"
  %"$gasmin_204" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_196", i64 %"$gasadd_203")
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 %"$gasmin_204", %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_191"
  %"$consume_209" = sub i64 %"$gasrem_205", %"$gasmin_204"
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %"$execptr_load_210" = load i8*, i8** @_execptr, align 8
  %"$pk_bs_211" = load %Bystr, %Bystr* %pk_bs, align 8
  %"$pos_212" = load %Uint32, %Uint32* %pos, align 4
  %"$len_213" = load %Uint32, %Uint32* %len, align 4
  %"$substr_call_214" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_210", %Bystr %"$pk_bs_211", %Uint32 %"$pos_212", %Uint32 %"$len_213"), !dbg !16
  store %Bystr %"$substr_call_214", %Bystr* %pk_, align 8, !dbg !16
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_208"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %pkHash = alloca [32 x i8], align 1
  %"$_literal_cost_pk__220" = alloca %Bystr, align 8
  %"$pk__221" = load %Bystr, %Bystr* %pk_, align 8
  store %Bystr %"$pk__221", %Bystr* %"$_literal_cost_pk__220", align 8
  %"$$_literal_cost_pk__220_222" = bitcast %Bystr* %"$_literal_cost_pk__220" to i8*
  %"$_literal_cost_call_223" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_49", i8* %"$$_literal_cost_pk__220_222")
  %"$gasadd_224" = add i64 %"$_literal_cost_call_223", 0
  %"$gasdivceil_225" = urem i64 %"$gasadd_224", 2040
  %"$gasdivceil_226" = udiv i64 %"$gasadd_224", 2040
  %"$gasdivceil_227" = icmp eq i64 %"$gasdivceil_225", 0
  %"$gasdivceil_228" = add i64 %"$gasdivceil_226", 1
  %"$gasdivceil_229" = select i1 %"$gasdivceil_227", i64 %"$gasdivceil_226", i64 %"$gasdivceil_228"
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 %"$gasdivceil_229", %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_218"
  %"$consume_234" = sub i64 %"$gasrem_230", %"$gasdivceil_229"
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %"$execptr_load_235" = load i8*, i8** @_execptr, align 8
  %"$keccak256hash_pk__236" = alloca %Bystr, align 8
  %"$pk__237" = load %Bystr, %Bystr* %pk_, align 8
  store %Bystr %"$pk__237", %Bystr* %"$keccak256hash_pk__236", align 8
  %"$$keccak256hash_pk__236_238" = bitcast %Bystr* %"$keccak256hash_pk__236" to i8*
  %"$keccak256hash_call_239" = call [32 x i8]* @_keccak256hash(i8* %"$execptr_load_235", %_TyDescrTy_Typ* @"$TyDescr_Bystr_49", i8* %"$$keccak256hash_pk__236_238"), !dbg !17
  %"$keccak256hash_241" = load [32 x i8], [32 x i8]* %"$keccak256hash_call_239", align 1
  store [32 x i8] %"$keccak256hash_241", [32 x i8]* %pkHash, align 1, !dbg !17
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_233"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %pkHash_bs = alloca %Bystr, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 32, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 32
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$execptr_load_252" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_pkHash_253" = alloca [32 x i8], align 1
  %"$pkHash_254" = load [32 x i8], [32 x i8]* %pkHash, align 1
  store [32 x i8] %"$pkHash_254", [32 x i8]* %"$to_bystr_pkHash_253", align 1
  %"$$to_bystr_pkHash_253_255" = bitcast [32 x i8]* %"$to_bystr_pkHash_253" to i8*
  %"$to_bystr_call_256" = call %Bystr @_to_bystr(i8* %"$execptr_load_252", i32 32, i8* %"$$to_bystr_pkHash_253_255"), !dbg !18
  store %Bystr %"$to_bystr_call_256", %Bystr* %pkHash_bs, align 8, !dbg !18
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_250"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$pos_6" = alloca %Uint32, align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_260"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  store %Uint32 { i32 12 }, %Uint32* %"$pos_6", align 4, !dbg !19
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_265"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %"$len_7" = alloca %Uint32, align 8
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_270"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  store %Uint32 { i32 20 }, %Uint32* %"$len_7", align 4, !dbg !20
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %addr_bs = alloca %Bystr, align 8
  %"$_literal_cost_pkHash_bs_282" = alloca %Bystr, align 8
  %"$pkHash_bs_283" = load %Bystr, %Bystr* %pkHash_bs, align 8
  store %Bystr %"$pkHash_bs_283", %Bystr* %"$_literal_cost_pkHash_bs_282", align 8
  %"$$_literal_cost_pkHash_bs_282_284" = bitcast %Bystr* %"$_literal_cost_pkHash_bs_282" to i8*
  %"$_literal_cost_call_285" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_49", i8* %"$$_literal_cost_pkHash_bs_282_284")
  %"$$pos_6_286" = load %Uint32, %Uint32* %"$pos_6", align 4
  %"$valueof_287" = extractvalue %Uint32 %"$$pos_6_286", 0
  %"$valueof_288" = zext i32 %"$valueof_287" to i64
  %"$$len_7_289" = load %Uint32, %Uint32* %"$len_7", align 4
  %"$valueof_290" = extractvalue %Uint32 %"$$len_7_289", 0
  %"$valueof_291" = zext i32 %"$valueof_290" to i64
  %"$gasadd_292" = add i64 %"$valueof_288", %"$valueof_291"
  %"$gasmin_293" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_285", i64 %"$gasadd_292")
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 %"$gasmin_293", %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$have_gas_280"
  %"$consume_298" = sub i64 %"$gasrem_294", %"$gasmin_293"
  store i64 %"$consume_298", i64* @_gasrem, align 8
  %"$execptr_load_299" = load i8*, i8** @_execptr, align 8
  %"$pkHash_bs_300" = load %Bystr, %Bystr* %pkHash_bs, align 8
  %"$$pos_6_301" = load %Uint32, %Uint32* %"$pos_6", align 4
  %"$$len_7_302" = load %Uint32, %Uint32* %"$len_7", align 4
  %"$substr_call_303" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_299", %Bystr %"$pkHash_bs_300", %Uint32 %"$$pos_6_301", %Uint32 %"$$len_7_302"), !dbg !21
  store %Bystr %"$substr_call_303", %Bystr* %addr_bs, align 8, !dbg !21
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_297"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_297"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %addr_opt = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 20, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_307"
  %"$consume_313" = sub i64 %"$gasrem_309", 20
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %"$execptr_load_314" = load i8*, i8** @_execptr, align 8
  %"$addr_bs_315" = load %Bystr, %Bystr* %addr_bs, align 8
  %"$to_bystr20_call_316" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_314", i32 20, %Bystr %"$addr_bs_315"), !dbg !22
  %"$to_bystr20_317" = bitcast i8* %"$to_bystr20_call_316" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$to_bystr20_317", %TName_Option_ByStr20** %addr_opt, align 8, !dbg !22
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 2, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_312"
  %"$consume_322" = sub i64 %"$gasrem_318", 2
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$addr_opt_324" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %addr_opt, align 8
  %"$addr_opt_tag_325" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$addr_opt_324", i32 0, i32 0
  %"$addr_opt_tag_326" = load i8, i8* %"$addr_opt_tag_325", align 1
  switch i8 %"$addr_opt_tag_326", label %"$empty_default_327" [
    i8 0, label %"$Some_328"
    i8 1, label %"$None_338"
  ], !dbg !23

"$Some_328":                                      ; preds = %"$have_gas_321"
  %"$addr_opt_329" = bitcast %TName_Option_ByStr20* %"$addr_opt_324" to %CName_Some_ByStr20*
  %"$addr_gep_330" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$addr_opt_329", i32 0, i32 1
  %"$addr_load_331" = load [20 x i8], [20 x i8]* %"$addr_gep_330", align 1
  %addr = alloca [20 x i8], align 1
  store [20 x i8] %"$addr_load_331", [20 x i8]* %addr, align 1
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$Some_328"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$Some_328"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$addr_337" = load [20 x i8], [20 x i8]* %addr, align 1
  store [20 x i8] %"$addr_337", [20 x i8]* %"$retval_18", align 1, !dbg !24
  br label %"$matchsucc_323"

"$None_338":                                      ; preds = %"$have_gas_321"
  %"$addr_opt_339" = bitcast %TName_Option_ByStr20* %"$addr_opt_324" to %CName_None_ByStr20*
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$None_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$None_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !27
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_348"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  %ignore = alloca %Uint32, align 8
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 20, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_353"
  %"$consume_359" = sub i64 %"$gasrem_355", 20
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %"$zero_360" = load %Uint32, %Uint32* %zero, align 4
  %"$zero_361" = load %Uint32, %Uint32* %zero, align 4
  %"$div_call_362" = call %Uint32 @_div_Uint32(%Uint32 %"$zero_360", %Uint32 %"$zero_361"), !dbg !29
  store %Uint32 %"$div_call_362", %Uint32* %ignore, align 4, !dbg !29
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_358"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* %"$retval_18", align 1, !dbg !30
  br label %"$matchsucc_323"

"$empty_default_327":                             ; preds = %"$have_gas_321"
  br label %"$matchsucc_323"

"$matchsucc_323":                                 ; preds = %"$have_gas_366", %"$have_gas_335", %"$empty_default_327"
  %"$$retval_18_368" = load [20 x i8], [20 x i8]* %"$retval_18", align 1
  store [20 x i8] %"$$retval_18_368", [20 x i8]* %1, align 1
  ret void
}

define internal { void (i8*, [20 x i8]*, %Uint32)*, i8* } @"$fundef_15"(%"$$fundef_15_env_94"* %0, [64 x i8]* %1) !dbg !31 {
entry:
  %sig = load [64 x i8], [64 x i8]* %1, align 1
  %"$$fundef_15_env_msg_107" = getelementptr inbounds %"$$fundef_15_env_94", %"$$fundef_15_env_94"* %0, i32 0, i32 0
  %"$msg_envload_108" = load %Bystr, %Bystr* %"$$fundef_15_env_msg_107", align 8
  %msg = alloca %Bystr, align 8
  store %Bystr %"$msg_envload_108", %Bystr* %msg, align 8
  %"$retval_16" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }, align 8
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %entry
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %"$$fundef_17_envp_114_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_114_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_114_load", i64 80)
  %"$$fundef_17_envp_114" = bitcast i8* %"$$fundef_17_envp_114_salloc" to %"$$fundef_17_env_93"*
  %"$$fundef_17_env_voidp_116" = bitcast %"$$fundef_17_env_93"* %"$$fundef_17_envp_114" to i8*
  %"$$fundef_17_cloval_117" = insertvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } { void (i8*, [20 x i8]*, %Uint32)* bitcast (void (%"$$fundef_17_env_93"*, [20 x i8]*, %Uint32)* @"$fundef_17" to void (i8*, [20 x i8]*, %Uint32)*), i8* undef }, i8* %"$$fundef_17_env_voidp_116", 1
  %"$$fundef_17_env_msg_118" = getelementptr inbounds %"$$fundef_17_env_93", %"$$fundef_17_env_93"* %"$$fundef_17_envp_114", i32 0, i32 0
  %"$msg_119" = load %Bystr, %Bystr* %msg, align 8
  store %Bystr %"$msg_119", %Bystr* %"$$fundef_17_env_msg_118", align 8
  %"$$fundef_17_env_sig_120" = getelementptr inbounds %"$$fundef_17_env_93", %"$$fundef_17_env_93"* %"$$fundef_17_envp_114", i32 0, i32 1
  store [64 x i8] %sig, [64 x i8]* %"$$fundef_17_env_sig_120", align 1
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$fundef_17_cloval_117", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_16", align 8, !dbg !32
  %"$$retval_16_121" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$retval_16", align 8
  ret { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$retval_16_121"
}

define internal { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } @"$fundef_13"(%"$$fundef_13_env_95"* %0, %Bystr %1) !dbg !33 {
entry:
  %"$retval_14" = alloca { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %entry
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %"$$fundef_15_envp_101_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_15_envp_101_salloc" = call i8* @_salloc(i8* %"$$fundef_15_envp_101_load", i64 16)
  %"$$fundef_15_envp_101" = bitcast i8* %"$$fundef_15_envp_101_salloc" to %"$$fundef_15_env_94"*
  %"$$fundef_15_env_voidp_103" = bitcast %"$$fundef_15_env_94"* %"$$fundef_15_envp_101" to i8*
  %"$$fundef_15_cloval_104" = insertvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)* bitcast ({ void (i8*, [20 x i8]*, %Uint32)*, i8* } (%"$$fundef_15_env_94"*, [64 x i8]*)* @"$fundef_15" to { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*), i8* undef }, i8* %"$$fundef_15_env_voidp_103", 1
  %"$$fundef_15_env_msg_105" = getelementptr inbounds %"$$fundef_15_env_94", %"$$fundef_15_env_94"* %"$$fundef_15_envp_101", i32 0, i32 0
  store %Bystr %1, %Bystr* %"$$fundef_15_env_msg_105", align 8
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$fundef_15_cloval_104", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$retval_14", align 8, !dbg !34
  %"$$retval_14_106" = load { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$retval_14", align 8
  ret { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$retval_14_106"
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

declare %Uint32 @_div_Uint32(%Uint32, %Uint32)

declare [32 x i8]* @_sha256hash(i8*, %_TyDescrTy_Typ*, i8*)

define void @_init_libs() !dbg !35 {
entry:
  %"$gasrem_432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_433" = icmp ugt i64 5, %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %entry
  %"$consume_436" = sub i64 %"$gasrem_432", 5
  store i64 %"$consume_436", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !37
  %"$gasrem_437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_438" = icmp ugt i64 8, %"$gasrem_437"
  br i1 %"$gascmp_438", label %"$out_of_gas_439", label %"$have_gas_440"

"$out_of_gas_439":                                ; preds = %"$have_gas_435"
  call void @_out_of_gas()
  br label %"$have_gas_440"

"$have_gas_440":                                  ; preds = %"$out_of_gas_439", %"$have_gas_435"
  %"$consume_441" = sub i64 %"$gasrem_437", 8
  store i64 %"$consume_441", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !37
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 196, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_440"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_440"
  %"$consume_446" = sub i64 %"$gasrem_442", 196
  store i64 %"$consume_446", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !37
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 20, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_445"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_445"
  %"$consume_451" = sub i64 %"$gasrem_447", 20
  store i64 %"$consume_451", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !37
  %"$gasrem_452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_453" = icmp ugt i64 12, %"$gasrem_452"
  br i1 %"$gascmp_453", label %"$out_of_gas_454", label %"$have_gas_455"

"$out_of_gas_454":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_455"

"$have_gas_455":                                  ; preds = %"$out_of_gas_454", %"$have_gas_450"
  %"$consume_456" = sub i64 %"$gasrem_452", 12
  store i64 %"$consume_456", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !37
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 2, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_455"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_455"
  %"$consume_461" = sub i64 %"$gasrem_457", 2
  store i64 %"$consume_461", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !37
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !38 {
entry:
  %"$expr_12" = alloca %TName_Bool*, align 8
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %entry
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %ecrecover = alloca { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_465"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  store { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)* bitcast ({ { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (%"$$fundef_13_env_95"*, %Bystr)* @"$fundef_13" to { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*), i8* null }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8, !dbg !39
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_470"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %header_hash = alloca { %Bystr (i8*, %Bystr)*, i8* }, align 8
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_478"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  store { %Bystr (i8*, %Bystr)*, i8* } { %Bystr (i8*, %Bystr)* bitcast (%Bystr (%"$$fundef_19_env_92"*, %Bystr)* @"$fundef_19" to %Bystr (i8*, %Bystr)*), i8* null }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8, !dbg !40
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_483"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  %sig = alloca [64 x i8], align 1
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 1, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_491"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_491"
  %"$consume_497" = sub i64 %"$gasrem_493", 1
  store i64 %"$consume_497", i64* @_gasrem, align 8
  store [64 x i8] c"}X\8Dy\AC\9F\091\C6\91P\DEk\FER\89\F0\14x\93x\1B\FF\BC\C3+^\07\BDh}\10H\DD\A09\FF\C1\E8}\E2\E9\86\10\DC\87n\97A\1D`IHG9\04\B1+d\BE\D8\88\0B\CC", [64 x i8]* %sig, align 1, !dbg !41
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_496"
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %msg = alloca [1591 x i8], align 1
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$have_gas_501"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  store [1591 x i8] c"\00\00\00\00\9B\91V\17\00\00\00\00\F4\8A@W\BE\F2h\CC?\DB\03Ni\DC.\94)\07\E0\8A\C4\A4 \D1\B1\96\B8\C2\8E\BF[\F2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\8B\E0\A1`Zc\A3\17\04\AE\C4\EBO\10#\F1\EC\C2\93K\D8o\11\9A\B7u&\F9Gz\F9\A5~\1A_P\8E\00\00A\07\82r\0A\B1\89\FF\FD\84\05{\22leader\22:3,\22vrf_value\22:\22BOO3oXyk2RIpeVQY38Tq3qJB82szJh6nOorJUp/JMX+GLpz4zIsG9LJl4xJo4etHgOV5qi6MHKftqOirOuZIZiY=\22,\22vrf_proof\22:\22cYSRWFPoi9GHABGRbUdh6a+5PoO1wv5JUzSAtWxhEcpqut0SjYXs4LtS55tSJt3AtI0YamLgRJyzROhVGVbm4g==\22,\22last_config_block_num\22:36432,\22new_chain_config\22:{\22version\22:1,\22view\22:4,\22n\22:8,\22c\22:2,\22block_msg_delay\22:10000000000,\22hash_msg_delay\22:10000000000,\22peer_handshake_timeout\22:10000000000,\22peers\22:[{\22index\22:1,\22id\22:\221205028172918540b2b512eae1872a2a2e3a28d989c60d95dab8829ada7d7dd706d658\22},{\22index\22:4,\22id\22:\22120502679930a42aaf3c69798ca8a3f12e134c019405818d783d11748e039de8515988\22},{\22index\22:3,\22id\22:\22120502482acb6564b19b90653f6e9c806292e8aa83f78e7a9382a24a6efe41c0c06f39\22},{\22index\22:5,\22id\22:\22120502468dd1899ed2d1cc2b829882a165a0ecb6a745af0c72eb2982d66b4311b4ef73\22},{\22index\22:8,\22id\22:\2212050393421445b9421bd4cc90d7bc88c9301558047a76b20c59e7c511ee7d229982b1\22},{\22index\22:2,\22id\22:\221205038b8af6210ecfdcbcab22552ef8d8cf41c6f86f9cf9ab53d865741cfdb833f06b\22},{\22index\22:7,\22id\22:\221205031e0779f5c5ccb2612352fe4a200f99d3e7758e70ba53f607c59ff22a30f678ff\22},{\22index\22:6,\22id\22:\22120502eb1baab602c5899282561cdaaa7aabbcdd0ccfcbc3e79793ac24acf90778f35a\22}],\22pos_table\22:[2,8,5,5,8,7,1,4,5,6,5,4,7,7,3,3,4,6,1,2,4,8,5,4,7,4,6,6,2,2,1,1,8,8,6,6,6,7,8,7,4,8,5,1,3,3,8,5,3,6,3,6,7,5,6,2,3,1,2,6,5,2,1,4,2,1,8,4,8,3,8,7,7,5,1,7,4,4,1,5,2,5,6,1,2,8,3,3,1,3,1,4,1,7,8,6,8,2,5,1,4,5,3,2,2,2,8,3,3,3,6,7,4,7,4,2,7,5,6,7],\22max_block_change_view\22:60000}}\F8\FCz\1Fj\85c\13\C5\91\A3\A7G\F4\EC\A7!\8A\82\0B", [1591 x i8]* %msg, align 1, !dbg !42
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_506"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %addr_gold = alloca [20 x i8], align 1
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_511"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  store [20 x i8] c"\A4*N\85\03M[\EB\C2%t=\A4\00\CCL\0ECrz", [20 x i8]* %addr_gold, align 1, !dbg !43
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_516"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  %msg_bs = alloca %Bystr, align 8
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1591, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_521"
  %"$consume_527" = sub i64 %"$gasrem_523", 1591
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$execptr_load_528" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_msg_529" = alloca [1591 x i8], align 1
  %"$msg_530" = load [1591 x i8], [1591 x i8]* %msg, align 1
  store [1591 x i8] %"$msg_530", [1591 x i8]* %"$to_bystr_msg_529", align 1
  %"$$to_bystr_msg_529_531" = bitcast [1591 x i8]* %"$to_bystr_msg_529" to i8*
  %"$to_bystr_call_532" = call %Bystr @_to_bystr(i8* %"$execptr_load_528", i32 1591, i8* %"$$to_bystr_msg_529_531"), !dbg !44
  store %Bystr %"$to_bystr_call_532", %Bystr* %msg_bs, align 8, !dbg !44
  %"$gasrem_533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_534" = icmp ugt i64 1, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %"$have_gas_526"
  %"$consume_537" = sub i64 %"$gasrem_533", 1
  store i64 %"$consume_537", i64* @_gasrem, align 8
  %msg_hashed = alloca %Bystr, align 8
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_536"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_536"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem, align 8
  %"$header_hash_8" = alloca %Bystr, align 8
  %"$header_hash_543" = load { %Bystr (i8*, %Bystr)*, i8* }, { %Bystr (i8*, %Bystr)*, i8* }* %header_hash, align 8
  %"$header_hash_fptr_544" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_543", 0
  %"$header_hash_envptr_545" = extractvalue { %Bystr (i8*, %Bystr)*, i8* } %"$header_hash_543", 1
  %"$msg_bs_546" = load %Bystr, %Bystr* %msg_bs, align 8
  %"$header_hash_call_547" = call %Bystr %"$header_hash_fptr_544"(i8* %"$header_hash_envptr_545", %Bystr %"$msg_bs_546"), !dbg !45
  store %Bystr %"$header_hash_call_547", %Bystr* %"$header_hash_8", align 8, !dbg !45
  %"$$header_hash_8_548" = load %Bystr, %Bystr* %"$header_hash_8", align 8
  store %Bystr %"$$header_hash_8_548", %Bystr* %msg_hashed, align 8, !dbg !45
  %"$gasrem_549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_550" = icmp ugt i64 1, %"$gasrem_549"
  br i1 %"$gascmp_550", label %"$out_of_gas_551", label %"$have_gas_552"

"$out_of_gas_551":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_552"

"$have_gas_552":                                  ; preds = %"$out_of_gas_551", %"$have_gas_541"
  %"$consume_553" = sub i64 %"$gasrem_549", 1
  store i64 %"$consume_553", i64* @_gasrem, align 8
  %recid = alloca %Uint32, align 8
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 1, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_552"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_552"
  %"$consume_558" = sub i64 %"$gasrem_554", 1
  store i64 %"$consume_558", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %recid, align 4, !dbg !46
  %"$gasrem_559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_560" = icmp ugt i64 1, %"$gasrem_559"
  br i1 %"$gascmp_560", label %"$out_of_gas_561", label %"$have_gas_562"

"$out_of_gas_561":                                ; preds = %"$have_gas_557"
  call void @_out_of_gas()
  br label %"$have_gas_562"

"$have_gas_562":                                  ; preds = %"$out_of_gas_561", %"$have_gas_557"
  %"$consume_563" = sub i64 %"$gasrem_559", 1
  store i64 %"$consume_563", i64* @_gasrem, align 8
  %addr_computed = alloca [20 x i8], align 1
  %"$gasrem_564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_565" = icmp ugt i64 1, %"$gasrem_564"
  br i1 %"$gascmp_565", label %"$out_of_gas_566", label %"$have_gas_567"

"$out_of_gas_566":                                ; preds = %"$have_gas_562"
  call void @_out_of_gas()
  br label %"$have_gas_567"

"$have_gas_567":                                  ; preds = %"$out_of_gas_566", %"$have_gas_562"
  %"$consume_568" = sub i64 %"$gasrem_564", 1
  store i64 %"$consume_568", i64* @_gasrem, align 8
  %"$ecrecover_9" = alloca { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, align 8
  %"$ecrecover_569" = load { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }, { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* }* %ecrecover, align 8
  %"$ecrecover_fptr_570" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_569", 0
  %"$ecrecover_envptr_571" = extractvalue { { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } (i8*, %Bystr)*, i8* } %"$ecrecover_569", 1
  %"$msg_hashed_572" = load %Bystr, %Bystr* %msg_hashed, align 8
  %"$ecrecover_call_573" = call { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_fptr_570"(i8* %"$ecrecover_envptr_571", %Bystr %"$msg_hashed_572"), !dbg !47
  store { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$ecrecover_call_573", { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_9", align 8, !dbg !47
  %"$ecrecover_10" = alloca { void (i8*, [20 x i8]*, %Uint32)*, i8* }, align 8
  %"$$ecrecover_9_574" = load { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }, { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* }* %"$ecrecover_9", align 8
  %"$$ecrecover_9_fptr_575" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_9_574", 0
  %"$$ecrecover_9_envptr_576" = extractvalue { { void (i8*, [20 x i8]*, %Uint32)*, i8* } (i8*, [64 x i8]*)*, i8* } %"$$ecrecover_9_574", 1
  %"$$ecrecover_9_sig_577" = alloca [64 x i8], align 1
  %"$sig_578" = load [64 x i8], [64 x i8]* %sig, align 1
  store [64 x i8] %"$sig_578", [64 x i8]* %"$$ecrecover_9_sig_577", align 1
  %"$$ecrecover_9_call_579" = call { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_9_fptr_575"(i8* %"$$ecrecover_9_envptr_576", [64 x i8]* %"$$ecrecover_9_sig_577"), !dbg !47
  store { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_9_call_579", { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_10", align 8, !dbg !47
  %"$ecrecover_11" = alloca [20 x i8], align 1
  %"$$ecrecover_10_580" = load { void (i8*, [20 x i8]*, %Uint32)*, i8* }, { void (i8*, [20 x i8]*, %Uint32)*, i8* }* %"$ecrecover_10", align 8
  %"$$ecrecover_10_fptr_581" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_10_580", 0
  %"$$ecrecover_10_envptr_582" = extractvalue { void (i8*, [20 x i8]*, %Uint32)*, i8* } %"$$ecrecover_10_580", 1
  %"$recid_583" = load %Uint32, %Uint32* %recid, align 4
  %"$$ecrecover_10_retalloca_584" = alloca [20 x i8], align 1
  call void %"$$ecrecover_10_fptr_581"(i8* %"$$ecrecover_10_envptr_582", [20 x i8]* %"$$ecrecover_10_retalloca_584", %Uint32 %"$recid_583"), !dbg !47
  %"$$ecrecover_10_ret_585" = load [20 x i8], [20 x i8]* %"$$ecrecover_10_retalloca_584", align 1
  store [20 x i8] %"$$ecrecover_10_ret_585", [20 x i8]* %"$ecrecover_11", align 1, !dbg !47
  %"$$ecrecover_11_586" = load [20 x i8], [20 x i8]* %"$ecrecover_11", align 1
  store [20 x i8] %"$$ecrecover_11_586", [20 x i8]* %addr_computed, align 1, !dbg !47
  %"$gasrem_587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_588" = icmp ugt i64 20, %"$gasrem_587"
  br i1 %"$gascmp_588", label %"$out_of_gas_589", label %"$have_gas_590"

"$out_of_gas_589":                                ; preds = %"$have_gas_567"
  call void @_out_of_gas()
  br label %"$have_gas_590"

"$have_gas_590":                                  ; preds = %"$out_of_gas_589", %"$have_gas_567"
  %"$consume_591" = sub i64 %"$gasrem_587", 20
  store i64 %"$consume_591", i64* @_gasrem, align 8
  %"$execptr_load_592" = load i8*, i8** @_execptr, align 8
  %"$eq_addr_computed_593" = alloca [20 x i8], align 1
  %"$addr_computed_594" = load [20 x i8], [20 x i8]* %addr_computed, align 1
  store [20 x i8] %"$addr_computed_594", [20 x i8]* %"$eq_addr_computed_593", align 1
  %"$$eq_addr_computed_593_595" = bitcast [20 x i8]* %"$eq_addr_computed_593" to i8*
  %"$eq_addr_gold_596" = alloca [20 x i8], align 1
  %"$addr_gold_597" = load [20 x i8], [20 x i8]* %addr_gold, align 1
  store [20 x i8] %"$addr_gold_597", [20 x i8]* %"$eq_addr_gold_596", align 1
  %"$$eq_addr_gold_596_598" = bitcast [20 x i8]* %"$eq_addr_gold_596" to i8*
  %"$eq_call_599" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_592", i32 20, i8* %"$$eq_addr_computed_593_595", i8* %"$$eq_addr_gold_596_598"), !dbg !48
  store %TName_Bool* %"$eq_call_599", %TName_Bool** %"$expr_12", align 8, !dbg !48
  %"$$expr_12_601" = load %TName_Bool*, %TName_Bool** %"$expr_12", align 8
  ret %TName_Bool* %"$$expr_12_601"
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_602" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_603" = bitcast %TName_Bool* %"$exprval_602" to i8*
  %"$execptr_load_604" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_604", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i8* %"$memvoidcast_603")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin-ecdsa_recover.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !2, file: !2, line: 28, type: !5, scopeLine: 28, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 28, column: 14, scope: !4)
!9 = !DILocation(line: 29, column: 14, scope: !4)
!10 = !DILocation(line: 30, column: 5, scope: !4)
!11 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!27 = !DILocation(line: 20, column: 18, scope: !28)
!28 = distinct !DILexicalBlock(scope: !26, file: !2, line: 19, column: 7)
!29 = !DILocation(line: 21, column: 20, scope: !28)
!30 = !DILocation(line: 22, column: 7, scope: !28)
!31 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 5, column: 5, scope: !31)
!33 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DILocation(line: 4, column: 3, scope: !33)
!35 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !36, file: !36, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!36 = !DIFile(filename: ".", directory: ".")
!37 = !DILocation(line: 0, scope: !35)
!38 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!39 = !DILocation(line: 3, column: 3, scope: !38)
!40 = !DILocation(line: 28, column: 5, scope: !38)
!41 = !DILocation(line: 33, column: 11, scope: !38)
!42 = !DILocation(line: 34, column: 11, scope: !38)
!43 = !DILocation(line: 36, column: 17, scope: !38)
!44 = !DILocation(line: 37, column: 14, scope: !38)
!45 = !DILocation(line: 38, column: 18, scope: !38)
!46 = !DILocation(line: 39, column: 13, scope: !38)
!47 = !DILocation(line: 41, column: 21, scope: !38)
!48 = !DILocation(line: 42, column: 1, scope: !38)
