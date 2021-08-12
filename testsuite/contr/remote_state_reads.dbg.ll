

; gas_remaining: 4002000
; ModuleID = 'RRContract'
source_filename = "RRContract"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_30" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_62" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_61"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_61" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_63"**, %"$TyDescrTy_ADTTyp_62"* }
%"$TyDescrTy_ADTTyp_Constr_63" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_76" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrFieldTyp_85" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_86" = type { i32, %"$TyDescr_AddrFieldTyp_85"* }
%Uint32 = type { i32 }
%"$ParamDescr_1485" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1486" = type { %ParamDescrString, i32, %"$ParamDescr_1485"* }
%TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT = type { i8, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1*, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* }
%CName_0x3620c286757a29985cee194eb90064270fb65414.Address1 = type <{ i8, [20 x i8] }>
%CName_0x3620c286757a29985cee194eb90064270fb65414.Address2 = type <{ i8, [20 x i8] }>
%TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT = type { i8, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* }
%CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT = type <{ i8, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* }>
%CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT = type <{ i8 }>
%"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)" = type { %Uint128, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* }
%Uint128 = type { i128 }
%Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT = type { %Uint128, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* }
%Map_ByStr20_with_end_Bool = type { [20 x i8], %TName_Bool* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%TName_Option_Bool = type { i8, %CName_Some_Bool*, %CName_None_Bool* }
%CName_Some_Bool = type <{ i8, %TName_Bool* }>
%CName_None_Bool = type <{ i8 }>
%"Map_Uint32_Map_(ByStr20_with_end)_(Bool)" = type { %Uint32, %Map_ByStr20_with_end_Bool* }
%"TName_Option_Map_(ByStr20_with_end)_(Bool)" = type { i8, %"CName_Some_Map_(ByStr20_with_end)_(Bool)"*, %"CName_None_Map_(ByStr20_with_end)_(Bool)"* }
%"CName_Some_Map_(ByStr20_with_end)_(Bool)" = type <{ i8, %Map_ByStr20_with_end_Bool* }>
%"CName_None_Map_(ByStr20_with_end)_(Bool)" = type <{ i8 }>
%TName_List_ByStr20_with_end = type { i8, %CName_Cons_ByStr20_with_end*, %CName_Nil_ByStr20_with_end* }
%CName_Cons_ByStr20_with_end = type <{ i8, [20 x i8], %TName_List_ByStr20_with_end* }>
%CName_Nil_ByStr20_with_end = type <{ i8 }>
%"TName_List_ByStr20_with_contract_field_f_:_Uint128_end" = type { i8, %"CName_Cons_ByStr20_with_contract_field_f_:_Uint128_end"*, %"CName_Nil_ByStr20_with_contract_field_f_:_Uint128_end"* }
%"CName_Cons_ByStr20_with_contract_field_f_:_Uint128_end" = type <{ i8, [20 x i8], %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* }>
%"CName_Nil_ByStr20_with_contract_field_f_:_Uint128_end" = type <{ i8 }>
%"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end" = type { i8, %"CName_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"*, %"CName_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* }
%"CName_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end" = type <{ i8, [20 x i8], %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* }>
%"CName_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end" = type <{ i8 }>
%TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT = type { i8, %CName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* }
%CName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT = type <{ i8, [20 x i8], %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* }>
%String = type { i8*, i32 }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_31" = global %"$TyDescrTy_PrimTyp_30" zeroinitializer
@"$TyDescr_Int32_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Int32_Prim_31" to i8*) }
@"$TyDescr_Uint32_Prim_33" = global %"$TyDescrTy_PrimTyp_30" { i32 1, i32 0 }
@"$TyDescr_Uint32_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Uint32_Prim_33" to i8*) }
@"$TyDescr_Int64_Prim_35" = global %"$TyDescrTy_PrimTyp_30" { i32 0, i32 1 }
@"$TyDescr_Int64_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Int64_Prim_35" to i8*) }
@"$TyDescr_Uint64_Prim_37" = global %"$TyDescrTy_PrimTyp_30" { i32 1, i32 1 }
@"$TyDescr_Uint64_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Uint64_Prim_37" to i8*) }
@"$TyDescr_Int128_Prim_39" = global %"$TyDescrTy_PrimTyp_30" { i32 0, i32 2 }
@"$TyDescr_Int128_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Int128_Prim_39" to i8*) }
@"$TyDescr_Uint128_Prim_41" = global %"$TyDescrTy_PrimTyp_30" { i32 1, i32 2 }
@"$TyDescr_Uint128_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Uint128_Prim_41" to i8*) }
@"$TyDescr_Int256_Prim_43" = global %"$TyDescrTy_PrimTyp_30" { i32 0, i32 3 }
@"$TyDescr_Int256_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Int256_Prim_43" to i8*) }
@"$TyDescr_Uint256_Prim_45" = global %"$TyDescrTy_PrimTyp_30" { i32 1, i32 3 }
@"$TyDescr_Uint256_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Uint256_Prim_45" to i8*) }
@"$TyDescr_String_Prim_47" = global %"$TyDescrTy_PrimTyp_30" { i32 2, i32 0 }
@"$TyDescr_String_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_String_Prim_47" to i8*) }
@"$TyDescr_Bnum_Prim_49" = global %"$TyDescrTy_PrimTyp_30" { i32 3, i32 0 }
@"$TyDescr_Bnum_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Bnum_Prim_49" to i8*) }
@"$TyDescr_Message_Prim_51" = global %"$TyDescrTy_PrimTyp_30" { i32 4, i32 0 }
@"$TyDescr_Message_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Message_Prim_51" to i8*) }
@"$TyDescr_Event_Prim_53" = global %"$TyDescrTy_PrimTyp_30" { i32 5, i32 0 }
@"$TyDescr_Event_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Event_Prim_53" to i8*) }
@"$TyDescr_Exception_Prim_55" = global %"$TyDescrTy_PrimTyp_30" { i32 6, i32 0 }
@"$TyDescr_Exception_56" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Exception_Prim_55" to i8*) }
@"$TyDescr_Bystr_Prim_57" = global %"$TyDescrTy_PrimTyp_30" { i32 7, i32 0 }
@"$TyDescr_Bystr_58" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Bystr_Prim_57" to i8*) }
@"$TyDescr_Bystr20_Prim_59" = global %"$TyDescrTy_PrimTyp_30" { i32 8, i32 20 }
@"$TyDescr_Bystr20_60" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_30"* @"$TyDescr_Bystr20_Prim_59" to i8*) }
@"$TyDescr_ADT_List_Message_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_Message_ADTTyp_Specl_109" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_118" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_66" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_127" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_end_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_136" to i8*) }
@"$TyDescr_ADT_List_ByStr20_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_145" to i8*) }
@"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_154" to i8*) }
@"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_163" to i8*) }
@"$TyDescr_ADT_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_169" to i8*) }
@"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_181" to i8*) }
@"$TyDescr_ADT_Option_Bool_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Option_Bool_ADTTyp_Specl_190" to i8*) }
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_202" to i8*) }
@"$TyDescr_ADT_Bool_75" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Bool_ADTTyp_Specl_214" to i8*) }
@"$TyDescr_Map_77" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_76"* @"$TyDescr_MapTyp_217" to i8*) }
@"$TyDescr_Map_78" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_76"* @"$TyDescr_MapTyp_218" to i8*) }
@"$TyDescr_Map_79" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_76"* @"$TyDescr_MapTyp_219" to i8*) }
@"$TyDescr_Map_80" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_76"* @"$TyDescr_MapTyp_220" to i8*) }
@"$TyDescr_Map_81" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_76"* @"$TyDescr_MapTyp_221" to i8*) }
@"$TyDescr_Map_82" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_76"* @"$TyDescr_MapTyp_222" to i8*) }
@"$TyDescr_Map_83" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_76"* @"$TyDescr_MapTyp_223" to i8*) }
@"$TyDescr_Map_84" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_76"* @"$TyDescr_MapTyp_224" to i8*) }
@"$TyDescr_Addr_87" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_227" to i8*) }
@"$TyDescr_Addr_88" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_230" to i8*) }
@"$TyDescr_Addr_89" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_233" to i8*) }
@"$TyDescr_Addr_90" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_239" to i8*) }
@"$TyDescr_Addr_91" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_242" to i8*) }
@"$TyDescr_Addr_92" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_245" to i8*) }
@"$TyDescr_Addr_93" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_248" to i8*) }
@"$TyDescr_Addr_94" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_251" to i8*) }
@"$TyDescr_Addr_95" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_254" to i8*) }
@"$TyDescr_Addr_96" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_257" to i8*) }
@"$TyDescr_Addr_97" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_264" to i8*) }
@"$TyDescr_Addr_98" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_266" to i8*) }
@"$TyDescr_Addr_99" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_86"* @"$TyDescr_AddrFields_267" to i8*) }
@"$TyDescr_List_ADTTyp_100" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_156", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 6, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([6 x %"$TyDescrTy_ADTTyp_Specl_61"*], [6 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_List_ADTTyp_m_specls_155", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_101" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_52", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_64"]
@"$TyDescr_ADT_Cons_102" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_103" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_102", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_101", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_104" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_105" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_106" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_105", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_104", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_107" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_103", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_106"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_108" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_52"]
@"$TyDescr_List_Message_ADTTyp_Specl_109" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_108", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_107", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_List_ADTTyp_100" }
@"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_110" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_88", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_65"]
@"$TyDescr_ADT_Cons_111" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_112" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_111", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_110", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_113" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_114" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_115" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_114", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_113", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_constrs_116" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_112", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_115"]
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_TArgs_117" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_88"]
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_118" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_TArgs_117", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_constrs_116", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_List_ADTTyp_100" }
@"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_119" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_89", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_66"]
@"$TyDescr_ADT_Cons_120" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_121" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_120", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_119", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_122" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_123" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_124" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_123", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_122", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_constrs_125" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_121", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_124"]
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_TArgs_126" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_89"]
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_127" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_TArgs_126", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_constrs_125", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_List_ADTTyp_100" }
@"$TyDescr_List_Cons_ByStr20_with_end_Constr_m_args_128" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_99", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_67"]
@"$TyDescr_ADT_Cons_129" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_end_ADTTyp_Constr_130" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_129", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_end_Constr_m_args_128", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_end_Constr_m_args_131" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_132" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_end_ADTTyp_Constr_133" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_132", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_end_Constr_m_args_131", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_constrs_134" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Cons_ByStr20_with_end_ADTTyp_Constr_130", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Nil_ByStr20_with_end_ADTTyp_Constr_133"]
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_TArgs_135" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_99"]
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_136" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_TArgs_135", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_constrs_134", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_List_ADTTyp_100" }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_137" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_68"]
@"$TyDescr_ADT_Cons_138" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_139" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_138", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_137", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_140" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_141" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_142" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_141", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_140", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_143" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_139", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_142"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_144" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_60"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_145" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_144", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_143", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_List_ADTTyp_100" }
@"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_146" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69"]
@"$TyDescr_ADT_Cons_147" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_148" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_147", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_146", i32 0, i32 0) }
@"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_149" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_150" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_151" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_150", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_149", i32 0, i32 0) }
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_152" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_148", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_151"]
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_153" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74"]
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_154" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_153", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_152", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_List_ADTTyp_100" }
@"$TyDescr_List_ADTTyp_m_specls_155" = unnamed_addr constant [6 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_Message_ADTTyp_Specl_109", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_118", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_127", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_136", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_145", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_154"]
@"$TyDescr_ADT_List_156" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_157" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_171", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_61"*], [2 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_Pair_ADTTyp_m_specls_170", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_158" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_99", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74"]
@"$TyDescr_ADT_Pair_159" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_160" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_159", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_158", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_161" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_160"]
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_162" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_99", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74"]
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_163" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_162", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_63"*], [1 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_161", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_Pair_ADTTyp_157" }
@"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_164" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74"]
@"$TyDescr_ADT_Pair_165" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_166" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_165", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_164", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_167" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_166"]
@"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_168" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74"]
@"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_169" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_168", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_63"*], [1 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_167", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_Pair_ADTTyp_157" }
@"$TyDescr_Pair_ADTTyp_m_specls_170" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_163", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_169"]
@"$TyDescr_ADT_Pair_171" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Option_ADTTyp_172" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_192", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_61"*], [2 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_Option_ADTTyp_m_specls_191", i32 0, i32 0) }
@"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_173" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_83"]
@"$TyDescr_ADT_Some_174" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_175" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_174", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_173", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_176" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_177" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_178" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_177", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_176", i32 0, i32 0) }
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_constrs_179" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_175", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_178"]
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_TArgs_180" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_83"]
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_181" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_TArgs_180", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_constrs_179", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_Option_ADTTyp_172" }
@"$TyDescr_Option_Some_Bool_Constr_m_args_182" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75"]
@"$TyDescr_ADT_Some_183" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_184" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_183", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_182", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_185" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_186" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_187" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_186", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_185", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_188" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_184", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_187"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_189" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_190" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_189", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_188", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_Option_ADTTyp_172" }
@"$TyDescr_Option_ADTTyp_m_specls_191" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_181", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Option_Bool_ADTTyp_Specl_190"]
@"$TyDescr_ADT_Option_192" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_193" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([53 x i8], [53 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_204", i32 0, i32 0), i32 53 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_61"*], [1 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_m_specls_203", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_Constr_m_args_194" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_99"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_195" = unnamed_addr constant [51 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.Address1"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_ADTTyp_Constr_196" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_195", i32 0, i32 0), i32 51 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_Constr_m_args_194", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_Constr_m_args_197" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_95"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_198" = unnamed_addr constant [51 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.Address2"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_ADTTyp_Constr_199" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_198", i32 0, i32 0), i32 51 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_Constr_m_args_197", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_200" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_ADTTyp_Constr_196", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_ADTTyp_Constr_199"]
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_201" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_202" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_201", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_200", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_193" }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_m_specls_203" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_202"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_204" = unnamed_addr constant [53 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.AddressADT"
@"$TyDescr_Bool_ADTTyp_205" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_216", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_61"*], [1 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_Bool_ADTTyp_m_specls_215", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_206" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_207" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_208" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_207", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_206", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_209" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_210" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_211" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_210", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_209", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_212" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Bool_True_ADTTyp_Constr_208", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Bool_False_ADTTyp_Constr_211"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_213" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_214" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_213", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_212", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_Bool_ADTTyp_205" }
@"$TyDescr_Bool_ADTTyp_m_specls_215" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Bool_ADTTyp_Specl_214"]
@"$TyDescr_ADT_Bool_216" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_217" = unnamed_addr constant %"$TyDescr_MapTyp_76" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74" }
@"$TyDescr_MapTyp_218" = unnamed_addr constant %"$TyDescr_MapTyp_76" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ* @"$TyDescr_Map_77" }
@"$TyDescr_MapTyp_219" = unnamed_addr constant %"$TyDescr_MapTyp_76" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60" }
@"$TyDescr_MapTyp_220" = unnamed_addr constant %"$TyDescr_MapTyp_76" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", %_TyDescrTy_Typ* @"$TyDescr_Map_81" }
@"$TyDescr_MapTyp_221" = unnamed_addr constant %"$TyDescr_MapTyp_76" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75" }
@"$TyDescr_MapTyp_222" = unnamed_addr constant %"$TyDescr_MapTyp_76" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", %_TyDescrTy_Typ* @"$TyDescr_Map_83" }
@"$TyDescr_MapTyp_223" = unnamed_addr constant %"$TyDescr_MapTyp_76" { %_TyDescrTy_Typ* @"$TyDescr_Addr_99", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75" }
@"$TyDescr_MapTyp_224" = unnamed_addr constant %"$TyDescr_MapTyp_76" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }
@"$TyDescr_AddrField_225" = unnamed_addr constant [1 x i8] c"h"
@"$TyDescr_AddrFields_226" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_85"] [%"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_225", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Map_77" }]
@"$TyDescr_AddrFields_227" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 1, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_85"], [1 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_226", i32 0, i32 0) }
@"$TyDescr_AddrField_228" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_229" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_85"] [%"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_228", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74" }]
@"$TyDescr_AddrFields_230" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 1, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_85"], [1 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_229", i32 0, i32 0) }
@"$TyDescr_AddrField_231" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_232" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_85"] [%"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_231", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }]
@"$TyDescr_AddrFields_233" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 1, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_85"], [1 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_232", i32 0, i32 0) }
@"$TyDescr_AddrField_234" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrField_235" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrField_236" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrField_237" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_238" = unnamed_addr constant [4 x %"$TyDescr_AddrFieldTyp_85"] [%"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_234", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_235", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_83" }, %"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_236", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_82" }, %"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_237", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_34" }]
@"$TyDescr_AddrFields_239" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 4, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([4 x %"$TyDescr_AddrFieldTyp_85"], [4 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_238", i32 0, i32 0) }
@"$TyDescr_AddrField_240" = unnamed_addr constant [9 x i8] c"other_map"
@"$TyDescr_AddrFields_241" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_85"] [%"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$TyDescr_AddrField_240", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_Map_79" }]
@"$TyDescr_AddrFields_242" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 1, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_85"], [1 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_241", i32 0, i32 0) }
@"$TyDescr_AddrField_243" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrFields_244" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_85"] [%"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_243", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_80" }]
@"$TyDescr_AddrFields_245" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 1, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_85"], [1 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_244", i32 0, i32 0) }
@"$TyDescr_AddrField_246" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrFields_247" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_85"] [%"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_246", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_81" }]
@"$TyDescr_AddrFields_248" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 1, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_85"], [1 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_247", i32 0, i32 0) }
@"$TyDescr_AddrField_249" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_250" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_85"] [%"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_249", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60" }]
@"$TyDescr_AddrFields_251" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 1, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_85"], [1 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_250", i32 0, i32 0) }
@"$TyDescr_AddrField_252" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_253" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_85"] [%"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_252", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }]
@"$TyDescr_AddrFields_254" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 1, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_85"], [1 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_253", i32 0, i32 0) }
@"$TyDescr_AddrField_255" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_256" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_85"] [%"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_255", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_34" }]
@"$TyDescr_AddrFields_257" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 1, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_85"], [1 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_256", i32 0, i32 0) }
@"$TyDescr_AddrField_258" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrField_259" = unnamed_addr constant [9 x i8] c"other_map"
@"$TyDescr_AddrField_260" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrField_261" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrField_262" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_263" = unnamed_addr constant [5 x %"$TyDescr_AddrFieldTyp_85"] [%"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_258", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$TyDescr_AddrField_259", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_Map_84" }, %"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_260", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_83" }, %"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_261", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_82" }, %"$TyDescr_AddrFieldTyp_85" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_262", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_34" }]
@"$TyDescr_AddrFields_264" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 5, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([5 x %"$TyDescr_AddrFieldTyp_85"], [5 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_263", i32 0, i32 0) }
@"$TyDescr_AddrFields_265" = unnamed_addr constant [0 x %"$TyDescr_AddrFieldTyp_85"] zeroinitializer
@"$TyDescr_AddrFields_266" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 0, %"$TyDescr_AddrFieldTyp_85"* getelementptr inbounds ([0 x %"$TyDescr_AddrFieldTyp_85"], [0 x %"$TyDescr_AddrFieldTyp_85"]* @"$TyDescr_AddrFields_265", i32 0, i32 0) }
@"$TyDescr_AddrFields_267" = unnamed_addr constant %"$TyDescr_AddrTyp_86" { i32 -1, %"$TyDescr_AddrFieldTyp_85"* null }
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_cparam1 = global [20 x i8] zeroinitializer
@_cparam_cparam2 = global [20 x i8] zeroinitializer
@_cparam_cparam3 = global [20 x i8] zeroinitializer
@"$assign_test_1_275" = unnamed_addr constant [14 x i8] c"assign_test_1\00"
@"$assign_test_2_286" = unnamed_addr constant [14 x i8] c"assign_test_2\00"
@"$assign_test_3_297" = unnamed_addr constant [14 x i8] c"assign_test_3\00"
@"$assign_test_4_308" = unnamed_addr constant [14 x i8] c"assign_test_4\00"
@"$assign_test_5_319" = unnamed_addr constant [14 x i8] c"assign_test_5\00"
@"$assign_test_6_330" = unnamed_addr constant [14 x i8] c"assign_test_6\00"
@"$assign_test_7_341" = unnamed_addr constant [14 x i8] c"assign_test_7\00"
@"$assign_test_8_356" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_368" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_380" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$remote_reads_test_res_1_1_389" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$remote_reads_test_res_2_1_399" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$remote_reads_test_res_3_1_409" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$remote_reads_test_res_3_3_419" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$remote_reads_test_res_3_4_430" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$remote_reads_test_res_3_5_440" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$remote_reads_test_res_3_6_453" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$remote_reads_test_res_3_7_465" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$remote_reads_test_res_3_8_492" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$remote_reads_test_res_3_9_504" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$remote_reads_test_res_3_10_516" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$remote_reads_test_res_3_11_528" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$remote_reads_test_res_3_12_540" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$remote_reads_test_res_3_13_552" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$sender_balance_pre_561" = unnamed_addr constant [19 x i8] c"sender_balance_pre\00"
@"$sender_balance_mid_571" = unnamed_addr constant [19 x i8] c"sender_balance_mid\00"
@"$sender_balance_post_581" = unnamed_addr constant [20 x i8] c"sender_balance_post\00"
@"$_balance_591" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_1_1_617" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$_balance_621" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_2_1_647" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$_balance_651" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_1_677" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$transactionCount_681" = unnamed_addr constant [17 x i8] c"transactionCount\00"
@"$remote_reads_test_res_3_3_707" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$admin_711" = unnamed_addr constant [6 x i8] c"admin\00"
@"$remote_reads_test_res_3_4_737" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$_balance_741" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_5_768" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$owners_772" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_6_798" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$owners_803" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_7_827" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$owners_832" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_8_856" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$signatures_859" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_9_885" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$signatures_901" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_10_925" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$signatures_931" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_11_955" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$signatures_962" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_12_986" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$signatures_993" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_13_1017" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$stringlit_1070" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_1075" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_1078" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_1085" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_1092" = unnamed_addr constant [5 x i8] c"param"
@"$stringlit_1152" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1157" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1160" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1190" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1195" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1198" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1238" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_1243" = unnamed_addr constant [13 x i8] c"TestException"
@"$stringlit_1246" = unnamed_addr constant [5 x i8] c"value"
@"$assign_test_8_1299" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_1341" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_1437" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$assign_test_10_1475" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@_tydescr_table = constant [48 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_83", %_TyDescrTy_Typ* @"$TyDescr_Event_54", %_TyDescrTy_Typ* @"$TyDescr_Int64_36", %_TyDescrTy_Typ* @"$TyDescr_Addr_95", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_65", %_TyDescrTy_Typ* @"$TyDescr_Addr_91", %_TyDescrTy_Typ* @"$TyDescr_Addr_88", %_TyDescrTy_Typ* @"$TyDescr_Map_81", %_TyDescrTy_Typ* @"$TyDescr_Exception_56", %_TyDescrTy_Typ* @"$TyDescr_String_48", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_72", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_68", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_66", %_TyDescrTy_Typ* @"$TyDescr_Int256_44", %_TyDescrTy_Typ* @"$TyDescr_Int128_40", %_TyDescrTy_Typ* @"$TyDescr_Addr_97", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_71", %_TyDescrTy_Typ* @"$TyDescr_Bystr_58", %_TyDescrTy_Typ* @"$TyDescr_Addr_93", %_TyDescrTy_Typ* @"$TyDescr_Map_84", %_TyDescrTy_Typ* @"$TyDescr_Map_80", %_TyDescrTy_Typ* @"$TyDescr_Map_78", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_67", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_64", %_TyDescrTy_Typ* @"$TyDescr_Map_82", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74", %_TyDescrTy_Typ* @"$TyDescr_Addr_99", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ* @"$TyDescr_Uint256_46", %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", %_TyDescrTy_Typ* @"$TyDescr_Addr_98", %_TyDescrTy_Typ* @"$TyDescr_Addr_89", %_TyDescrTy_Typ* @"$TyDescr_Addr_87", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_73", %_TyDescrTy_Typ* @"$TyDescr_Uint64_38", %_TyDescrTy_Typ* @"$TyDescr_Bnum_50", %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ* @"$TyDescr_Addr_94", %_TyDescrTy_Typ* @"$TyDescr_Map_79", %_TyDescrTy_Typ* @"$TyDescr_Addr_90", %_TyDescrTy_Typ* @"$TyDescr_Addr_92", %_TyDescrTy_Typ* @"$TyDescr_Map_77", %_TyDescrTy_Typ* @"$TyDescr_Message_52", %_TyDescrTy_Typ* @"$TyDescr_Addr_96", %_TyDescrTy_Typ* @"$TyDescr_Int32_32"]
@_tydescr_table_length = constant i32 48
@"$pname__scilla_version_1487" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_1488" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_1489" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_cparam1_1490" = unnamed_addr constant [7 x i8] c"cparam1"
@"$pname_cparam2_1491" = unnamed_addr constant [7 x i8] c"cparam2"
@"$pname_cparam3_1492" = unnamed_addr constant [7 x i8] c"cparam3"
@_contract_parameters = constant [6 x %"$ParamDescr_1485"] [%"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_1487", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_34" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_1488", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_1489", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_50" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam1_1490", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam2_1491", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_98" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam3_1492", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }]
@_contract_parameters_length = constant i32 6
@"$tpname__amount_1493" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1494" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1495" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote1_1496" = unnamed_addr constant [7 x i8] c"remote1"
@"$tpname_remote2_1497" = unnamed_addr constant [7 x i8] c"remote2"
@"$tpname_remote3_1498" = unnamed_addr constant [7 x i8] c"remote3"
@"$tparams_RemoteReadsTest_1499" = unnamed_addr constant [6 x %"$ParamDescr_1485"] [%"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1493", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1494", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1495", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1496", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote2_1497", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_98" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote3_1498", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_90" }]
@"$tname_RemoteReadsTest_1500" = unnamed_addr constant [15 x i8] c"RemoteReadsTest"
@"$tpname__amount_1501" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1502" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1503" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_list1_1504" = unnamed_addr constant [5 x i8] c"list1"
@"$tpname_list2_1505" = unnamed_addr constant [5 x i8] c"list2"
@"$tpname_list3_1506" = unnamed_addr constant [5 x i8] c"list3"
@"$tpname_pair1_1507" = unnamed_addr constant [5 x i8] c"pair1"
@"$tpname_adt1_1508" = unnamed_addr constant [4 x i8] c"adt1"
@"$tpname_remote1_1509" = unnamed_addr constant [7 x i8] c"remote1"
@"$tparams_RemoteReadsADTTest_1510" = unnamed_addr constant [9 x %"$ParamDescr_1485"] [%"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1501", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1502", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1503", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list1_1504", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_67" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list2_1505", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_66" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list3_1506", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_65" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_pair1_1507", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_adt1_1508", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1509", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_87" }]
@"$tname_RemoteReadsADTTest_1511" = unnamed_addr constant [18 x i8] c"RemoteReadsADTTest"
@"$tpname__amount_1512" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1513" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1514" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_OutgoingMsgTest_1515" = unnamed_addr constant [3 x %"$ParamDescr_1485"] [%"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1512", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1513", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1514", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }]
@"$tname_OutgoingMsgTest_1516" = unnamed_addr constant [15 x i8] c"OutgoingMsgTest"
@"$tpname__amount_1517" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1518" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1519" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ExceptionTest_1520" = unnamed_addr constant [3 x %"$ParamDescr_1485"] [%"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1517", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1518", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1519", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }]
@"$tname_ExceptionTest_1521" = unnamed_addr constant [13 x i8] c"ExceptionTest"
@"$tpname__amount_1522" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1523" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1524" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AssignTest_1525" = unnamed_addr constant [3 x %"$ParamDescr_1485"] [%"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1522", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1523", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1485" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1524", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }]
@"$tname_AssignTest_1526" = unnamed_addr constant [10 x i8] c"AssignTest"
@_transition_parameters = constant [5 x %"$TransDescr_1486"] [%"$TransDescr_1486" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_RemoteReadsTest_1500", i32 0, i32 0), i32 15 }, i32 6, %"$ParamDescr_1485"* getelementptr inbounds ([6 x %"$ParamDescr_1485"], [6 x %"$ParamDescr_1485"]* @"$tparams_RemoteReadsTest_1499", i32 0, i32 0) }, %"$TransDescr_1486" { %ParamDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$tname_RemoteReadsADTTest_1511", i32 0, i32 0), i32 18 }, i32 9, %"$ParamDescr_1485"* getelementptr inbounds ([9 x %"$ParamDescr_1485"], [9 x %"$ParamDescr_1485"]* @"$tparams_RemoteReadsADTTest_1510", i32 0, i32 0) }, %"$TransDescr_1486" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_OutgoingMsgTest_1516", i32 0, i32 0), i32 15 }, i32 3, %"$ParamDescr_1485"* getelementptr inbounds ([3 x %"$ParamDescr_1485"], [3 x %"$ParamDescr_1485"]* @"$tparams_OutgoingMsgTest_1515", i32 0, i32 0) }, %"$TransDescr_1486" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_ExceptionTest_1521", i32 0, i32 0), i32 13 }, i32 3, %"$ParamDescr_1485"* getelementptr inbounds ([3 x %"$ParamDescr_1485"], [3 x %"$ParamDescr_1485"]* @"$tparams_ExceptionTest_1520", i32 0, i32 0) }, %"$TransDescr_1486" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_AssignTest_1526", i32 0, i32 0), i32 10 }, i32 3, %"$ParamDescr_1485"* getelementptr inbounds ([3 x %"$ParamDescr_1485"], [3 x %"$ParamDescr_1485"]* @"$tparams_AssignTest_1525", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define void @_init_state() !dbg !9 {
entry:
  %"$assign_test_1_3" = alloca [20 x i8], align 1
  %"$gasrem_268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_269" = icmp ugt i64 1, %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %entry
  %"$consume_272" = sub i64 %"$gasrem_268", 1
  store i64 %"$consume_272", i64* @_gasrem, align 8
  %"$cparam3_273" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_273", [20 x i8]* %"$assign_test_1_3", align 1, !dbg !10
  %"$execptr_load_274" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_1_3_276" = load [20 x i8], [20 x i8]* %"$assign_test_1_3", align 1
  %"$update_value_277" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_1_3_276", [20 x i8]* %"$update_value_277", align 1
  %"$update_value_278" = bitcast [20 x i8]* %"$update_value_277" to i8*
  call void @_update_field(i8* %"$execptr_load_274", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_1_275", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_97", i32 0, i8* null, i8* %"$update_value_278"), !dbg !10
  %"$assign_test_2_4" = alloca [20 x i8], align 1
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_271"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_271"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$cparam3_284" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_284", [20 x i8]* %"$assign_test_2_4", align 1, !dbg !11
  %"$execptr_load_285" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_2_4_287" = load [20 x i8], [20 x i8]* %"$assign_test_2_4", align 1
  %"$update_value_288" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_2_4_287", [20 x i8]* %"$update_value_288", align 1
  %"$update_value_289" = bitcast [20 x i8]* %"$update_value_288" to i8*
  call void @_update_field(i8* %"$execptr_load_285", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_2_286", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_97", i32 0, i8* null, i8* %"$update_value_289"), !dbg !11
  %"$assign_test_3_5" = alloca [20 x i8], align 1
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_282"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$cparam3_295" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_295", [20 x i8]* %"$assign_test_3_5", align 1, !dbg !12
  %"$execptr_load_296" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_3_5_298" = load [20 x i8], [20 x i8]* %"$assign_test_3_5", align 1
  %"$update_value_299" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_3_5_298", [20 x i8]* %"$update_value_299", align 1
  %"$update_value_300" = bitcast [20 x i8]* %"$update_value_299" to i8*
  call void @_update_field(i8* %"$execptr_load_296", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_3_297", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_97", i32 0, i8* null, i8* %"$update_value_300"), !dbg !12
  %"$assign_test_4_6" = alloca [20 x i8], align 1
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_293"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$cparam3_306" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_306", [20 x i8]* %"$assign_test_4_6", align 1, !dbg !13
  %"$execptr_load_307" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_4_6_309" = load [20 x i8], [20 x i8]* %"$assign_test_4_6", align 1
  %"$update_value_310" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_4_6_309", [20 x i8]* %"$update_value_310", align 1
  %"$update_value_311" = bitcast [20 x i8]* %"$update_value_310" to i8*
  call void @_update_field(i8* %"$execptr_load_307", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_4_308", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_97", i32 0, i8* null, i8* %"$update_value_311"), !dbg !13
  %"$assign_test_5_7" = alloca [20 x i8], align 1
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_304"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %"$cparam3_317" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_317", [20 x i8]* %"$assign_test_5_7", align 1, !dbg !14
  %"$execptr_load_318" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_5_7_320" = load [20 x i8], [20 x i8]* %"$assign_test_5_7", align 1
  %"$update_value_321" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_5_7_320", [20 x i8]* %"$update_value_321", align 1
  %"$update_value_322" = bitcast [20 x i8]* %"$update_value_321" to i8*
  call void @_update_field(i8* %"$execptr_load_318", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_5_319", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_97", i32 0, i8* null, i8* %"$update_value_322"), !dbg !14
  %"$assign_test_6_8" = alloca [20 x i8], align 1
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_315"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %"$cparam3_328" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_328", [20 x i8]* %"$assign_test_6_8", align 1, !dbg !15
  %"$execptr_load_329" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_6_8_331" = load [20 x i8], [20 x i8]* %"$assign_test_6_8", align 1
  %"$update_value_332" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_6_8_331", [20 x i8]* %"$update_value_332", align 1
  %"$update_value_333" = bitcast [20 x i8]* %"$update_value_332" to i8*
  call void @_update_field(i8* %"$execptr_load_329", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_6_330", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_97", i32 0, i8* null, i8* %"$update_value_333"), !dbg !15
  %"$assign_test_7_9" = alloca [20 x i8], align 1
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_326"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %"$cparam3_339" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_339", [20 x i8]* %"$assign_test_7_9", align 1, !dbg !16
  %"$execptr_load_340" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_7_9_342" = load [20 x i8], [20 x i8]* %"$assign_test_7_9", align 1
  %"$update_value_343" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_7_9_342", [20 x i8]* %"$update_value_343", align 1
  %"$update_value_344" = bitcast [20 x i8]* %"$update_value_343" to i8*
  call void @_update_field(i8* %"$execptr_load_340", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_7_341", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_97", i32 0, i8* null, i8* %"$update_value_344"), !dbg !16
  %"$assign_test_8_10" = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_337"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %"$cparam1_350" = load [20 x i8], [20 x i8]* @_cparam_cparam1, align 1
  %"$adtval_351_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_351_salloc" = call i8* @_salloc(i8* %"$adtval_351_load", i64 21)
  %"$adtval_351" = bitcast i8* %"$adtval_351_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1*
  %"$adtgep_352" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_351", i32 0, i32 0
  store i8 0, i8* %"$adtgep_352", align 1
  %"$adtgep_353" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_351", i32 0, i32 1
  store [20 x i8] %"$cparam1_350", [20 x i8]* %"$adtgep_353", align 1
  %"$adtptr_354" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_351" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_354", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_10", align 8, !dbg !17
  %"$execptr_load_355" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_8_10_357" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_10", align 8
  %"$update_value_358" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_8_10_357" to i8*
  call void @_update_field(i8* %"$execptr_load_355", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_356", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74", i32 0, i8* null, i8* %"$update_value_358"), !dbg !17
  %"$assign_test_9_11" = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_348"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %"$adtval_364_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_364_salloc" = call i8* @_salloc(i8* %"$adtval_364_load", i64 1)
  %"$adtval_364" = bitcast i8* %"$adtval_364_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_365" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_364", i32 0, i32 0
  store i8 1, i8* %"$adtgep_365", align 1
  %"$adtptr_366" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_364" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_366", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_11", align 8, !dbg !18
  %"$execptr_load_367" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_9_11_369" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_11", align 8
  %"$update_value_370" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_9_11_369" to i8*
  call void @_update_field(i8* %"$execptr_load_367", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_368", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69", i32 0, i8* null, i8* %"$update_value_370"), !dbg !18
  %"$assign_test_10_12" = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_362"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %"$execptr_load_376" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_377" = call i8* @_new_empty_map(i8* %"$execptr_load_376")
  %"$_new_empty_map_378" = bitcast i8* %"$_new_empty_map_call_377" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$_new_empty_map_378", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_12", align 8, !dbg !19
  %"$execptr_load_379" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_10_12_381" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_12", align 8
  %"$update_value_382" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$assign_test_10_12_381" to i8*
  call void @_update_field(i8* %"$execptr_load_379", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_380", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_78", i32 0, i8* null, i8* %"$update_value_382"), !dbg !19
  %"$remote_reads_test_res_1_1_13" = alloca %Uint128, align 8
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_374"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_1_1_13", align 8, !dbg !20
  %"$execptr_load_388" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_1_1_13_390" = load %Uint128, %Uint128* %"$remote_reads_test_res_1_1_13", align 8
  %"$update_value_391" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_1_1_13_390", %Uint128* %"$update_value_391", align 8
  %"$update_value_392" = bitcast %Uint128* %"$update_value_391" to i8*
  call void @_update_field(i8* %"$execptr_load_388", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_389", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_392"), !dbg !20
  %"$remote_reads_test_res_2_1_14" = alloca %Uint128, align 8
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_386"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_2_1_14", align 8, !dbg !21
  %"$execptr_load_398" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_2_1_14_400" = load %Uint128, %Uint128* %"$remote_reads_test_res_2_1_14", align 8
  %"$update_value_401" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_2_1_14_400", %Uint128* %"$update_value_401", align 8
  %"$update_value_402" = bitcast %Uint128* %"$update_value_401" to i8*
  call void @_update_field(i8* %"$execptr_load_398", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_399", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_402"), !dbg !21
  %"$remote_reads_test_res_3_1_15" = alloca %Uint128, align 8
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_396"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_1_15", align 8, !dbg !22
  %"$execptr_load_408" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_1_15_410" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_1_15", align 8
  %"$update_value_411" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_1_15_410", %Uint128* %"$update_value_411", align 8
  %"$update_value_412" = bitcast %Uint128* %"$update_value_411" to i8*
  call void @_update_field(i8* %"$execptr_load_408", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_409", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_412"), !dbg !22
  %"$remote_reads_test_res_3_3_16" = alloca %Uint32, align 8
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_406"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$remote_reads_test_res_3_3_16", align 4, !dbg !23
  %"$execptr_load_418" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_3_16_420" = load %Uint32, %Uint32* %"$remote_reads_test_res_3_3_16", align 4
  %"$update_value_421" = alloca %Uint32, align 8
  store %Uint32 %"$$remote_reads_test_res_3_3_16_420", %Uint32* %"$update_value_421", align 4
  %"$update_value_422" = bitcast %Uint32* %"$update_value_421" to i8*
  call void @_update_field(i8* %"$execptr_load_418", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_419", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", i32 0, i8* null, i8* %"$update_value_422"), !dbg !23
  %"$remote_reads_test_res_3_4_17" = alloca [20 x i8], align 1
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_416"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$cparam3_428" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_428", [20 x i8]* %"$remote_reads_test_res_3_4_17", align 1, !dbg !24
  %"$execptr_load_429" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_4_17_431" = load [20 x i8], [20 x i8]* %"$remote_reads_test_res_3_4_17", align 1
  %"$update_value_432" = alloca [20 x i8], align 1
  store [20 x i8] %"$$remote_reads_test_res_3_4_17_431", [20 x i8]* %"$update_value_432", align 1
  %"$update_value_433" = bitcast [20 x i8]* %"$update_value_432" to i8*
  call void @_update_field(i8* %"$execptr_load_429", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_430", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_97", i32 0, i8* null, i8* %"$update_value_433"), !dbg !24
  %"$remote_reads_test_res_3_5_18" = alloca %Uint128, align 8
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_426"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_5_18", align 8, !dbg !25
  %"$execptr_load_439" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_5_18_441" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_5_18", align 8
  %"$update_value_442" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_5_18_441", %Uint128* %"$update_value_442", align 8
  %"$update_value_443" = bitcast %Uint128* %"$update_value_442" to i8*
  call void @_update_field(i8* %"$execptr_load_439", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_440", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_443"), !dbg !25
  %"$remote_reads_test_res_3_6_19" = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_437"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %"$execptr_load_449" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_450" = call i8* @_new_empty_map(i8* %"$execptr_load_449")
  %"$_new_empty_map_451" = bitcast i8* %"$_new_empty_map_call_450" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$_new_empty_map_451", %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_19", align 8, !dbg !26
  %"$execptr_load_452" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_6_19_454" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_19", align 8
  %"$update_value_455" = bitcast %Map_ByStr20_with_end_Bool* %"$$remote_reads_test_res_3_6_19_454" to i8*
  call void @_update_field(i8* %"$execptr_load_452", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_453", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 0, i8* null, i8* %"$update_value_455"), !dbg !26
  %"$remote_reads_test_res_3_7_20" = alloca %TName_Bool*, align 8
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_447"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$adtval_461_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_461_salloc" = call i8* @_salloc(i8* %"$adtval_461_load", i64 1)
  %"$adtval_461" = bitcast i8* %"$adtval_461_salloc" to %CName_True*
  %"$adtgep_462" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_461", i32 0, i32 0
  store i8 0, i8* %"$adtgep_462", align 1
  %"$adtptr_463" = bitcast %CName_True* %"$adtval_461" to %TName_Bool*
  store %TName_Bool* %"$adtptr_463", %TName_Bool** %"$remote_reads_test_res_3_7_20", align 8, !dbg !27
  %"$execptr_load_464" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_7_20_466" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_7_20", align 8
  %"$update_value_467" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_7_20_466" to i8*
  call void @_update_field(i8* %"$execptr_load_464", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_465", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i32 0, i8* null, i8* %"$update_value_467"), !dbg !27
  %"$remote_reads_test_res_3_8_21" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_459"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %x = alloca %TName_Bool*, align 8
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_471"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %"$adtval_478_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_478_salloc" = call i8* @_salloc(i8* %"$adtval_478_load", i64 1)
  %"$adtval_478" = bitcast i8* %"$adtval_478_salloc" to %CName_True*
  %"$adtgep_479" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_478", i32 0, i32 0
  store i8 0, i8* %"$adtgep_479", align 1
  %"$adtptr_480" = bitcast %CName_True* %"$adtval_478" to %TName_Bool*
  store %TName_Bool* %"$adtptr_480", %TName_Bool** %x, align 8, !dbg !28
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_476"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %"$x_486" = load %TName_Bool*, %TName_Bool** %x, align 8
  %"$adtval_487_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_487_salloc" = call i8* @_salloc(i8* %"$adtval_487_load", i64 9)
  %"$adtval_487" = bitcast i8* %"$adtval_487_salloc" to %CName_Some_Bool*
  %"$adtgep_488" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_487", i32 0, i32 0
  store i8 0, i8* %"$adtgep_488", align 1
  %"$adtgep_489" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_487", i32 0, i32 1
  store %TName_Bool* %"$x_486", %TName_Bool** %"$adtgep_489", align 8
  %"$adtptr_490" = bitcast %CName_Some_Bool* %"$adtval_487" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_490", %TName_Option_Bool** %"$remote_reads_test_res_3_8_21", align 8, !dbg !29
  %"$execptr_load_491" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_8_21_493" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_8_21", align 8
  %"$update_value_494" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_8_21_493" to i8*
  call void @_update_field(i8* %"$execptr_load_491", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_492", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_73", i32 0, i8* null, i8* %"$update_value_494"), !dbg !28
  %"$remote_reads_test_res_3_9_22" = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 1, %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$have_gas_484"
  %"$consume_499" = sub i64 %"$gasrem_495", 1
  store i64 %"$consume_499", i64* @_gasrem, align 8
  %"$execptr_load_500" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_501" = call i8* @_new_empty_map(i8* %"$execptr_load_500")
  %"$_new_empty_map_502" = bitcast i8* %"$_new_empty_map_call_501" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$_new_empty_map_502", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_22", align 8, !dbg !30
  %"$execptr_load_503" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_9_22_505" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_22", align 8
  %"$update_value_506" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_9_22_505" to i8*
  call void @_update_field(i8* %"$execptr_load_503", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_504", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_82", i32 0, i8* null, i8* %"$update_value_506"), !dbg !30
  %"$remote_reads_test_res_3_10_23" = alloca %TName_Bool*, align 8
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 1, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %"$have_gas_498"
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %"$have_gas_498"
  %"$consume_511" = sub i64 %"$gasrem_507", 1
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %"$adtval_512_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_512_salloc" = call i8* @_salloc(i8* %"$adtval_512_load", i64 1)
  %"$adtval_512" = bitcast i8* %"$adtval_512_salloc" to %CName_False*
  %"$adtgep_513" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_512", i32 0, i32 0
  store i8 1, i8* %"$adtgep_513", align 1
  %"$adtptr_514" = bitcast %CName_False* %"$adtval_512" to %TName_Bool*
  store %TName_Bool* %"$adtptr_514", %TName_Bool** %"$remote_reads_test_res_3_10_23", align 8, !dbg !31
  %"$execptr_load_515" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_10_23_517" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_10_23", align 8
  %"$update_value_518" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_10_23_517" to i8*
  call void @_update_field(i8* %"$execptr_load_515", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_516", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i32 0, i8* null, i8* %"$update_value_518"), !dbg !31
  %"$remote_reads_test_res_3_11_24" = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 1, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %"$have_gas_510"
  %"$consume_523" = sub i64 %"$gasrem_519", 1
  store i64 %"$consume_523", i64* @_gasrem, align 8
  %"$adtval_524_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_524_salloc" = call i8* @_salloc(i8* %"$adtval_524_load", i64 1)
  %"$adtval_524" = bitcast i8* %"$adtval_524_salloc" to %"CName_None_Map_(ByStr20_with_end)_(Bool)"*
  %"$adtgep_525" = getelementptr inbounds %"CName_None_Map_(ByStr20_with_end)_(Bool)", %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_524", i32 0, i32 0
  store i8 1, i8* %"$adtgep_525", align 1
  %"$adtptr_526" = bitcast %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_524" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$adtptr_526", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_24", align 8, !dbg !32
  %"$execptr_load_527" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_11_24_529" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_24", align 8
  %"$update_value_530" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_11_24_529" to i8*
  call void @_update_field(i8* %"$execptr_load_527", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_528", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_72", i32 0, i8* null, i8* %"$update_value_530"), !dbg !32
  %"$remote_reads_test_res_3_12_25" = alloca %TName_Bool*, align 8
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_522"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$adtval_536_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_536_salloc" = call i8* @_salloc(i8* %"$adtval_536_load", i64 1)
  %"$adtval_536" = bitcast i8* %"$adtval_536_salloc" to %CName_False*
  %"$adtgep_537" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_536", i32 0, i32 0
  store i8 1, i8* %"$adtgep_537", align 1
  %"$adtptr_538" = bitcast %CName_False* %"$adtval_536" to %TName_Bool*
  store %TName_Bool* %"$adtptr_538", %TName_Bool** %"$remote_reads_test_res_3_12_25", align 8, !dbg !33
  %"$execptr_load_539" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_12_25_541" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_12_25", align 8
  %"$update_value_542" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_12_25_541" to i8*
  call void @_update_field(i8* %"$execptr_load_539", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_540", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i32 0, i8* null, i8* %"$update_value_542"), !dbg !33
  %"$remote_reads_test_res_3_13_26" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_544" = icmp ugt i64 1, %"$gasrem_543"
  br i1 %"$gascmp_544", label %"$out_of_gas_545", label %"$have_gas_546"

"$out_of_gas_545":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_546"

"$have_gas_546":                                  ; preds = %"$out_of_gas_545", %"$have_gas_534"
  %"$consume_547" = sub i64 %"$gasrem_543", 1
  store i64 %"$consume_547", i64* @_gasrem, align 8
  %"$adtval_548_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_548_salloc" = call i8* @_salloc(i8* %"$adtval_548_load", i64 1)
  %"$adtval_548" = bitcast i8* %"$adtval_548_salloc" to %CName_None_Bool*
  %"$adtgep_549" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_548", i32 0, i32 0
  store i8 1, i8* %"$adtgep_549", align 1
  %"$adtptr_550" = bitcast %CName_None_Bool* %"$adtval_548" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_550", %TName_Option_Bool** %"$remote_reads_test_res_3_13_26", align 8, !dbg !34
  %"$execptr_load_551" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_13_26_553" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_13_26", align 8
  %"$update_value_554" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_13_26_553" to i8*
  call void @_update_field(i8* %"$execptr_load_551", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_552", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_73", i32 0, i8* null, i8* %"$update_value_554"), !dbg !34
  %"$sender_balance_pre_27" = alloca %Uint128, align 8
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$have_gas_546"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$have_gas_546"
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_pre_27", align 8, !dbg !35
  %"$execptr_load_560" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_pre_27_562" = load %Uint128, %Uint128* %"$sender_balance_pre_27", align 8
  %"$update_value_563" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_pre_27_562", %Uint128* %"$update_value_563", align 8
  %"$update_value_564" = bitcast %Uint128* %"$update_value_563" to i8*
  call void @_update_field(i8* %"$execptr_load_560", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_pre_561", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_564"), !dbg !35
  %"$sender_balance_mid_28" = alloca %Uint128, align 8
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 1, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %"$have_gas_558"
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %"$have_gas_558"
  %"$consume_569" = sub i64 %"$gasrem_565", 1
  store i64 %"$consume_569", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_mid_28", align 8, !dbg !36
  %"$execptr_load_570" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_mid_28_572" = load %Uint128, %Uint128* %"$sender_balance_mid_28", align 8
  %"$update_value_573" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_mid_28_572", %Uint128* %"$update_value_573", align 8
  %"$update_value_574" = bitcast %Uint128* %"$update_value_573" to i8*
  call void @_update_field(i8* %"$execptr_load_570", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_mid_571", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_574"), !dbg !36
  %"$sender_balance_post_29" = alloca %Uint128, align 8
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 1, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$have_gas_568"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$have_gas_568"
  %"$consume_579" = sub i64 %"$gasrem_575", 1
  store i64 %"$consume_579", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_post_29", align 8, !dbg !37
  %"$execptr_load_580" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_post_29_582" = load %Uint128, %Uint128* %"$sender_balance_post_29", align 8
  %"$update_value_583" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_post_29_582", %Uint128* %"$update_value_583", align 8
  %"$update_value_584" = bitcast %Uint128* %"$update_value_583" to i8*
  call void @_update_field(i8* %"$execptr_load_580", i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$sender_balance_post_581", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_584"), !dbg !37
  ret void
}

declare void @_out_of_gas()

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_new_empty_map(i8*)

define internal void @"$RemoteReadsTest_585"(%Uint128 %_amount, [20 x i8]* %"$_origin_586", [20 x i8]* %"$_sender_587", [20 x i8]* %"$remote1_588", [20 x i8]* %"$remote2_589", [20 x i8]* %"$remote3_590") !dbg !38 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_586", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_587", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_588", align 1
  %remote2 = load [20 x i8], [20 x i8]* %"$remote2_589", align 1
  %remote3 = load [20 x i8], [20 x i8]* %"$remote3_590", align 1
  %tmp_1_1 = alloca %Uint128, align 8
  %"$execptr_load_592" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_remote1_593" = alloca [20 x i8], align 1
  store [20 x i8] %remote1, [20 x i8]* %"$tmp_1_1_remote1_593", align 1
  %"$tmp_1_1_call_594" = call i8* @_fetch_remote_field(i8* %"$execptr_load_592", [20 x i8]* %"$tmp_1_1_remote1_593", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_591", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i32 1), !dbg !39
  %"$tmp_1_1_595" = bitcast i8* %"$tmp_1_1_call_594" to %Uint128*
  %"$tmp_1_1_596" = load %Uint128, %Uint128* %"$tmp_1_1_595", align 8
  store %Uint128 %"$tmp_1_1_596", %Uint128* %tmp_1_1, align 8
  %"$_literal_cost_tmp_1_1_597" = alloca %Uint128, align 8
  %"$tmp_1_1_598" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_598", %Uint128* %"$_literal_cost_tmp_1_1_597", align 8
  %"$$_literal_cost_tmp_1_1_597_599" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_597" to i8*
  %"$_literal_cost_call_600" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_1_1_597_599")
  %"$gasadd_601" = add i64 %"$_literal_cost_call_600", 0
  %"$gasrem_602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_603" = icmp ugt i64 %"$gasadd_601", %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %entry
  %"$consume_606" = sub i64 %"$gasrem_602", %"$gasadd_601"
  store i64 %"$consume_606", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_1_1_607" = alloca %Uint128, align 8
  %"$tmp_1_1_608" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_608", %Uint128* %"$_literal_cost_tmp_1_1_607", align 8
  %"$$_literal_cost_tmp_1_1_607_609" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_607" to i8*
  %"$_literal_cost_call_610" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_1_1_607_609")
  %"$gasrem_611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_612" = icmp ugt i64 %"$_literal_cost_call_610", %"$gasrem_611"
  br i1 %"$gascmp_612", label %"$out_of_gas_613", label %"$have_gas_614"

"$out_of_gas_613":                                ; preds = %"$have_gas_605"
  call void @_out_of_gas()
  br label %"$have_gas_614"

"$have_gas_614":                                  ; preds = %"$out_of_gas_613", %"$have_gas_605"
  %"$consume_615" = sub i64 %"$gasrem_611", %"$_literal_cost_call_610"
  store i64 %"$consume_615", i64* @_gasrem, align 8
  %"$execptr_load_616" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_618" = load %Uint128, %Uint128* %tmp_1_1, align 8
  %"$update_value_619" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_1_1_618", %Uint128* %"$update_value_619", align 8
  %"$update_value_620" = bitcast %Uint128* %"$update_value_619" to i8*
  call void @_update_field(i8* %"$execptr_load_616", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_617", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_620"), !dbg !40
  %tmp_2_1 = alloca %Uint128, align 8
  %"$execptr_load_622" = load i8*, i8** @_execptr, align 8
  %"$tmp_2_1_remote2_623" = alloca [20 x i8], align 1
  store [20 x i8] %remote2, [20 x i8]* %"$tmp_2_1_remote2_623", align 1
  %"$tmp_2_1_call_624" = call i8* @_fetch_remote_field(i8* %"$execptr_load_622", [20 x i8]* %"$tmp_2_1_remote2_623", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_621", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i32 1), !dbg !41
  %"$tmp_2_1_625" = bitcast i8* %"$tmp_2_1_call_624" to %Uint128*
  %"$tmp_2_1_626" = load %Uint128, %Uint128* %"$tmp_2_1_625", align 8
  store %Uint128 %"$tmp_2_1_626", %Uint128* %tmp_2_1, align 8
  %"$_literal_cost_tmp_2_1_627" = alloca %Uint128, align 8
  %"$tmp_2_1_628" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_628", %Uint128* %"$_literal_cost_tmp_2_1_627", align 8
  %"$$_literal_cost_tmp_2_1_627_629" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_627" to i8*
  %"$_literal_cost_call_630" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_2_1_627_629")
  %"$gasadd_631" = add i64 %"$_literal_cost_call_630", 0
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 %"$gasadd_631", %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_614"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_614"
  %"$consume_636" = sub i64 %"$gasrem_632", %"$gasadd_631"
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_2_1_637" = alloca %Uint128, align 8
  %"$tmp_2_1_638" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_638", %Uint128* %"$_literal_cost_tmp_2_1_637", align 8
  %"$$_literal_cost_tmp_2_1_637_639" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_637" to i8*
  %"$_literal_cost_call_640" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_2_1_637_639")
  %"$gasrem_641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_642" = icmp ugt i64 %"$_literal_cost_call_640", %"$gasrem_641"
  br i1 %"$gascmp_642", label %"$out_of_gas_643", label %"$have_gas_644"

"$out_of_gas_643":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_644"

"$have_gas_644":                                  ; preds = %"$out_of_gas_643", %"$have_gas_635"
  %"$consume_645" = sub i64 %"$gasrem_641", %"$_literal_cost_call_640"
  store i64 %"$consume_645", i64* @_gasrem, align 8
  %"$execptr_load_646" = load i8*, i8** @_execptr, align 8
  %"$tmp_2_1_648" = load %Uint128, %Uint128* %tmp_2_1, align 8
  %"$update_value_649" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_2_1_648", %Uint128* %"$update_value_649", align 8
  %"$update_value_650" = bitcast %Uint128* %"$update_value_649" to i8*
  call void @_update_field(i8* %"$execptr_load_646", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_647", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_650"), !dbg !42
  %tmp_3_1 = alloca %Uint128, align 8
  %"$execptr_load_652" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_1_remote3_653" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_1_remote3_653", align 1
  %"$tmp_3_1_call_654" = call i8* @_fetch_remote_field(i8* %"$execptr_load_652", [20 x i8]* %"$tmp_3_1_remote3_653", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_651", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i32 1), !dbg !43
  %"$tmp_3_1_655" = bitcast i8* %"$tmp_3_1_call_654" to %Uint128*
  %"$tmp_3_1_656" = load %Uint128, %Uint128* %"$tmp_3_1_655", align 8
  store %Uint128 %"$tmp_3_1_656", %Uint128* %tmp_3_1, align 8
  %"$_literal_cost_tmp_3_1_657" = alloca %Uint128, align 8
  %"$tmp_3_1_658" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_658", %Uint128* %"$_literal_cost_tmp_3_1_657", align 8
  %"$$_literal_cost_tmp_3_1_657_659" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_657" to i8*
  %"$_literal_cost_call_660" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_3_1_657_659")
  %"$gasadd_661" = add i64 %"$_literal_cost_call_660", 0
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 %"$gasadd_661", %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_644"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_644"
  %"$consume_666" = sub i64 %"$gasrem_662", %"$gasadd_661"
  store i64 %"$consume_666", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_1_667" = alloca %Uint128, align 8
  %"$tmp_3_1_668" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_668", %Uint128* %"$_literal_cost_tmp_3_1_667", align 8
  %"$$_literal_cost_tmp_3_1_667_669" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_667" to i8*
  %"$_literal_cost_call_670" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_3_1_667_669")
  %"$gasrem_671" = load i64, i64* @_gasrem, align 8
  %"$gascmp_672" = icmp ugt i64 %"$_literal_cost_call_670", %"$gasrem_671"
  br i1 %"$gascmp_672", label %"$out_of_gas_673", label %"$have_gas_674"

"$out_of_gas_673":                                ; preds = %"$have_gas_665"
  call void @_out_of_gas()
  br label %"$have_gas_674"

"$have_gas_674":                                  ; preds = %"$out_of_gas_673", %"$have_gas_665"
  %"$consume_675" = sub i64 %"$gasrem_671", %"$_literal_cost_call_670"
  store i64 %"$consume_675", i64* @_gasrem, align 8
  %"$execptr_load_676" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_1_678" = load %Uint128, %Uint128* %tmp_3_1, align 8
  %"$update_value_679" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_1_678", %Uint128* %"$update_value_679", align 8
  %"$update_value_680" = bitcast %Uint128* %"$update_value_679" to i8*
  call void @_update_field(i8* %"$execptr_load_676", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_677", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_680"), !dbg !44
  %tmp_3_3 = alloca %Uint32, align 8
  %"$execptr_load_682" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_3_remote3_683" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_3_remote3_683", align 1
  %"$tmp_3_3_call_684" = call i8* @_fetch_remote_field(i8* %"$execptr_load_682", [20 x i8]* %"$tmp_3_3_remote3_683", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$transactionCount_681", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", i32 0, i8* null, i32 1), !dbg !45
  %"$tmp_3_3_685" = bitcast i8* %"$tmp_3_3_call_684" to %Uint32*
  %"$tmp_3_3_686" = load %Uint32, %Uint32* %"$tmp_3_3_685", align 4
  store %Uint32 %"$tmp_3_3_686", %Uint32* %tmp_3_3, align 4
  %"$_literal_cost_tmp_3_3_687" = alloca %Uint32, align 8
  %"$tmp_3_3_688" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_688", %Uint32* %"$_literal_cost_tmp_3_3_687", align 4
  %"$$_literal_cost_tmp_3_3_687_689" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_687" to i8*
  %"$_literal_cost_call_690" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_34", i8* %"$$_literal_cost_tmp_3_3_687_689")
  %"$gasadd_691" = add i64 %"$_literal_cost_call_690", 0
  %"$gasrem_692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_693" = icmp ugt i64 %"$gasadd_691", %"$gasrem_692"
  br i1 %"$gascmp_693", label %"$out_of_gas_694", label %"$have_gas_695"

"$out_of_gas_694":                                ; preds = %"$have_gas_674"
  call void @_out_of_gas()
  br label %"$have_gas_695"

"$have_gas_695":                                  ; preds = %"$out_of_gas_694", %"$have_gas_674"
  %"$consume_696" = sub i64 %"$gasrem_692", %"$gasadd_691"
  store i64 %"$consume_696", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_3_697" = alloca %Uint32, align 8
  %"$tmp_3_3_698" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_698", %Uint32* %"$_literal_cost_tmp_3_3_697", align 4
  %"$$_literal_cost_tmp_3_3_697_699" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_697" to i8*
  %"$_literal_cost_call_700" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_34", i8* %"$$_literal_cost_tmp_3_3_697_699")
  %"$gasrem_701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_702" = icmp ugt i64 %"$_literal_cost_call_700", %"$gasrem_701"
  br i1 %"$gascmp_702", label %"$out_of_gas_703", label %"$have_gas_704"

"$out_of_gas_703":                                ; preds = %"$have_gas_695"
  call void @_out_of_gas()
  br label %"$have_gas_704"

"$have_gas_704":                                  ; preds = %"$out_of_gas_703", %"$have_gas_695"
  %"$consume_705" = sub i64 %"$gasrem_701", %"$_literal_cost_call_700"
  store i64 %"$consume_705", i64* @_gasrem, align 8
  %"$execptr_load_706" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_3_708" = load %Uint32, %Uint32* %tmp_3_3, align 4
  %"$update_value_709" = alloca %Uint32, align 8
  store %Uint32 %"$tmp_3_3_708", %Uint32* %"$update_value_709", align 4
  %"$update_value_710" = bitcast %Uint32* %"$update_value_709" to i8*
  call void @_update_field(i8* %"$execptr_load_706", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_707", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", i32 0, i8* null, i8* %"$update_value_710"), !dbg !46
  %tmp_3_4 = alloca [20 x i8], align 1
  %"$execptr_load_712" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_4_remote3_713" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_4_remote3_713", align 1
  %"$tmp_3_4_call_714" = call i8* @_fetch_remote_field(i8* %"$execptr_load_712", [20 x i8]* %"$tmp_3_4_remote3_713", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_711", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_99", i32 0, i8* null, i32 1), !dbg !47
  %"$tmp_3_4_715" = bitcast i8* %"$tmp_3_4_call_714" to [20 x i8]*
  %"$tmp_3_4_716" = load [20 x i8], [20 x i8]* %"$tmp_3_4_715", align 1
  store [20 x i8] %"$tmp_3_4_716", [20 x i8]* %tmp_3_4, align 1
  %"$_literal_cost_tmp_3_4_717" = alloca [20 x i8], align 1
  %"$tmp_3_4_718" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_718", [20 x i8]* %"$_literal_cost_tmp_3_4_717", align 1
  %"$$_literal_cost_tmp_3_4_717_719" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_717" to i8*
  %"$_literal_cost_call_720" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_99", i8* %"$$_literal_cost_tmp_3_4_717_719")
  %"$gasadd_721" = add i64 %"$_literal_cost_call_720", 0
  %"$gasrem_722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_723" = icmp ugt i64 %"$gasadd_721", %"$gasrem_722"
  br i1 %"$gascmp_723", label %"$out_of_gas_724", label %"$have_gas_725"

"$out_of_gas_724":                                ; preds = %"$have_gas_704"
  call void @_out_of_gas()
  br label %"$have_gas_725"

"$have_gas_725":                                  ; preds = %"$out_of_gas_724", %"$have_gas_704"
  %"$consume_726" = sub i64 %"$gasrem_722", %"$gasadd_721"
  store i64 %"$consume_726", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_4_727" = alloca [20 x i8], align 1
  %"$tmp_3_4_728" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_728", [20 x i8]* %"$_literal_cost_tmp_3_4_727", align 1
  %"$$_literal_cost_tmp_3_4_727_729" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_727" to i8*
  %"$_literal_cost_call_730" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_99", i8* %"$$_literal_cost_tmp_3_4_727_729")
  %"$gasrem_731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_732" = icmp ugt i64 %"$_literal_cost_call_730", %"$gasrem_731"
  br i1 %"$gascmp_732", label %"$out_of_gas_733", label %"$have_gas_734"

"$out_of_gas_733":                                ; preds = %"$have_gas_725"
  call void @_out_of_gas()
  br label %"$have_gas_734"

"$have_gas_734":                                  ; preds = %"$out_of_gas_733", %"$have_gas_725"
  %"$consume_735" = sub i64 %"$gasrem_731", %"$_literal_cost_call_730"
  store i64 %"$consume_735", i64* @_gasrem, align 8
  %"$execptr_load_736" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_4_738" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  %"$update_value_739" = alloca [20 x i8], align 1
  store [20 x i8] %"$tmp_3_4_738", [20 x i8]* %"$update_value_739", align 1
  %"$update_value_740" = bitcast [20 x i8]* %"$update_value_739" to i8*
  call void @_update_field(i8* %"$execptr_load_736", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_737", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_99", i32 0, i8* null, i8* %"$update_value_740"), !dbg !48
  %tmp_3_5 = alloca %Uint128, align 8
  %"$execptr_load_742" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_5_tmp_3_4_743" = alloca [20 x i8], align 1
  %"$tmp_3_4_744" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_744", [20 x i8]* %"$tmp_3_5_tmp_3_4_743", align 1
  %"$tmp_3_5_call_745" = call i8* @_fetch_remote_field(i8* %"$execptr_load_742", [20 x i8]* %"$tmp_3_5_tmp_3_4_743", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_741", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i32 1), !dbg !49
  %"$tmp_3_5_746" = bitcast i8* %"$tmp_3_5_call_745" to %Uint128*
  %"$tmp_3_5_747" = load %Uint128, %Uint128* %"$tmp_3_5_746", align 8
  store %Uint128 %"$tmp_3_5_747", %Uint128* %tmp_3_5, align 8
  %"$_literal_cost_tmp_3_5_748" = alloca %Uint128, align 8
  %"$tmp_3_5_749" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_749", %Uint128* %"$_literal_cost_tmp_3_5_748", align 8
  %"$$_literal_cost_tmp_3_5_748_750" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_748" to i8*
  %"$_literal_cost_call_751" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_3_5_748_750")
  %"$gasadd_752" = add i64 %"$_literal_cost_call_751", 0
  %"$gasrem_753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_754" = icmp ugt i64 %"$gasadd_752", %"$gasrem_753"
  br i1 %"$gascmp_754", label %"$out_of_gas_755", label %"$have_gas_756"

"$out_of_gas_755":                                ; preds = %"$have_gas_734"
  call void @_out_of_gas()
  br label %"$have_gas_756"

"$have_gas_756":                                  ; preds = %"$out_of_gas_755", %"$have_gas_734"
  %"$consume_757" = sub i64 %"$gasrem_753", %"$gasadd_752"
  store i64 %"$consume_757", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_5_758" = alloca %Uint128, align 8
  %"$tmp_3_5_759" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_759", %Uint128* %"$_literal_cost_tmp_3_5_758", align 8
  %"$$_literal_cost_tmp_3_5_758_760" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_758" to i8*
  %"$_literal_cost_call_761" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_3_5_758_760")
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 %"$_literal_cost_call_761", %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_756"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_756"
  %"$consume_766" = sub i64 %"$gasrem_762", %"$_literal_cost_call_761"
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$execptr_load_767" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_5_769" = load %Uint128, %Uint128* %tmp_3_5, align 8
  %"$update_value_770" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_5_769", %Uint128* %"$update_value_770", align 8
  %"$update_value_771" = bitcast %Uint128* %"$update_value_770" to i8*
  call void @_update_field(i8* %"$execptr_load_767", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_768", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_771"), !dbg !50
  %tmp_3_6 = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$execptr_load_773" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_remote3_774" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_6_remote3_774", align 1
  %"$tmp_3_6_call_775" = call i8* @_fetch_remote_field(i8* %"$execptr_load_773", [20 x i8]* %"$tmp_3_6_remote3_774", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_772", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 0, i8* null, i32 1), !dbg !51
  %"$tmp_3_6_776" = bitcast i8* %"$tmp_3_6_call_775" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$tmp_3_6_776", %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$tmp_3_6_777" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_777_778" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_777" to i8*
  %"$_literal_cost_call_779" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_83", i8* %"$$tmp_3_6_777_778")
  %"$tmp_3_6_780" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_780_781" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_780" to i8*
  %"$_mapsortcost_call_782" = call i64 @_mapsortcost(i8* %"$$tmp_3_6_780_781")
  %"$gasadd_783" = add i64 %"$_literal_cost_call_779", %"$_mapsortcost_call_782"
  %"$gasrem_784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_785" = icmp ugt i64 %"$gasadd_783", %"$gasrem_784"
  br i1 %"$gascmp_785", label %"$out_of_gas_786", label %"$have_gas_787"

"$out_of_gas_786":                                ; preds = %"$have_gas_765"
  call void @_out_of_gas()
  br label %"$have_gas_787"

"$have_gas_787":                                  ; preds = %"$out_of_gas_786", %"$have_gas_765"
  %"$consume_788" = sub i64 %"$gasrem_784", %"$gasadd_783"
  store i64 %"$consume_788", i64* @_gasrem, align 8
  %"$tmp_3_6_789" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_789_790" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_789" to i8*
  %"$_literal_cost_call_791" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_83", i8* %"$$tmp_3_6_789_790")
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 %"$_literal_cost_call_791", %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %"$have_gas_787"
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %"$have_gas_787"
  %"$consume_796" = sub i64 %"$gasrem_792", %"$_literal_cost_call_791"
  store i64 %"$consume_796", i64* @_gasrem, align 8
  %"$execptr_load_797" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_799" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$update_value_800" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_799" to i8*
  call void @_update_field(i8* %"$execptr_load_797", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_798", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 0, i8* null, i8* %"$update_value_800"), !dbg !52
  %tmp_3_7 = alloca %TName_Bool*, align 8
  %"$indices_buf_801_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_801_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_801_salloc_load", i64 20)
  %"$indices_buf_801_salloc" = bitcast i8* %"$indices_buf_801_salloc_salloc" to [20 x i8]*
  %"$indices_buf_801" = bitcast [20 x i8]* %"$indices_buf_801_salloc" to i8*
  %"$indices_gep_802" = getelementptr i8, i8* %"$indices_buf_801", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_802" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_804" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_remote3_805" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_7_remote3_805", align 1
  %"$tmp_3_7_call_806" = call i8* @_fetch_remote_field(i8* %"$execptr_load_804", [20 x i8]* %"$tmp_3_7_remote3_805", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_803", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 1, i8* %"$indices_buf_801", i32 0), !dbg !53
  %"$tmp_3_7_807" = bitcast i8* %"$tmp_3_7_call_806" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_7_807", %TName_Bool** %tmp_3_7, align 8
  %"$tmp_3_7_808" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_808_809" = bitcast %TName_Bool* %"$tmp_3_7_808" to i8*
  %"$_literal_cost_call_810" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i8* %"$$tmp_3_7_808_809")
  %"$gasadd_811" = add i64 %"$_literal_cost_call_810", 0
  %"$gasadd_812" = add i64 %"$gasadd_811", 1
  %"$gasrem_813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_814" = icmp ugt i64 %"$gasadd_812", %"$gasrem_813"
  br i1 %"$gascmp_814", label %"$out_of_gas_815", label %"$have_gas_816"

"$out_of_gas_815":                                ; preds = %"$have_gas_795"
  call void @_out_of_gas()
  br label %"$have_gas_816"

"$have_gas_816":                                  ; preds = %"$out_of_gas_815", %"$have_gas_795"
  %"$consume_817" = sub i64 %"$gasrem_813", %"$gasadd_812"
  store i64 %"$consume_817", i64* @_gasrem, align 8
  %"$tmp_3_7_818" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_818_819" = bitcast %TName_Bool* %"$tmp_3_7_818" to i8*
  %"$_literal_cost_call_820" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i8* %"$$tmp_3_7_818_819")
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 %"$_literal_cost_call_820", %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %"$have_gas_816"
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %"$have_gas_816"
  %"$consume_825" = sub i64 %"$gasrem_821", %"$_literal_cost_call_820"
  store i64 %"$consume_825", i64* @_gasrem, align 8
  %"$execptr_load_826" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_828" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$update_value_829" = bitcast %TName_Bool* %"$tmp_3_7_828" to i8*
  call void @_update_field(i8* %"$execptr_load_826", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_827", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i32 0, i8* null, i8* %"$update_value_829"), !dbg !54
  %tmp_3_8 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_830_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_830_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_830_salloc_load", i64 20)
  %"$indices_buf_830_salloc" = bitcast i8* %"$indices_buf_830_salloc_salloc" to [20 x i8]*
  %"$indices_buf_830" = bitcast [20 x i8]* %"$indices_buf_830_salloc" to i8*
  %"$indices_gep_831" = getelementptr i8, i8* %"$indices_buf_830", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_831" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_833" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_remote3_834" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_8_remote3_834", align 1
  %"$tmp_3_8_call_835" = call i8* @_fetch_remote_field(i8* %"$execptr_load_833", [20 x i8]* %"$tmp_3_8_remote3_834", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_832", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 1, i8* %"$indices_buf_830", i32 1), !dbg !55
  %"$tmp_3_8_836" = bitcast i8* %"$tmp_3_8_call_835" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_8_836", %TName_Option_Bool** %tmp_3_8, align 8
  %"$tmp_3_8_837" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_837_838" = bitcast %TName_Option_Bool* %"$tmp_3_8_837" to i8*
  %"$_literal_cost_call_839" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_73", i8* %"$$tmp_3_8_837_838")
  %"$gasadd_840" = add i64 %"$_literal_cost_call_839", 0
  %"$gasadd_841" = add i64 %"$gasadd_840", 1
  %"$gasrem_842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_843" = icmp ugt i64 %"$gasadd_841", %"$gasrem_842"
  br i1 %"$gascmp_843", label %"$out_of_gas_844", label %"$have_gas_845"

"$out_of_gas_844":                                ; preds = %"$have_gas_824"
  call void @_out_of_gas()
  br label %"$have_gas_845"

"$have_gas_845":                                  ; preds = %"$out_of_gas_844", %"$have_gas_824"
  %"$consume_846" = sub i64 %"$gasrem_842", %"$gasadd_841"
  store i64 %"$consume_846", i64* @_gasrem, align 8
  %"$tmp_3_8_847" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_847_848" = bitcast %TName_Option_Bool* %"$tmp_3_8_847" to i8*
  %"$_literal_cost_call_849" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_73", i8* %"$$tmp_3_8_847_848")
  %"$gasrem_850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_851" = icmp ugt i64 %"$_literal_cost_call_849", %"$gasrem_850"
  br i1 %"$gascmp_851", label %"$out_of_gas_852", label %"$have_gas_853"

"$out_of_gas_852":                                ; preds = %"$have_gas_845"
  call void @_out_of_gas()
  br label %"$have_gas_853"

"$have_gas_853":                                  ; preds = %"$out_of_gas_852", %"$have_gas_845"
  %"$consume_854" = sub i64 %"$gasrem_850", %"$_literal_cost_call_849"
  store i64 %"$consume_854", i64* @_gasrem, align 8
  %"$execptr_load_855" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_857" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$update_value_858" = bitcast %TName_Option_Bool* %"$tmp_3_8_857" to i8*
  call void @_update_field(i8* %"$execptr_load_855", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_856", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_73", i32 0, i8* null, i8* %"$update_value_858"), !dbg !56
  %tmp_3_9 = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$execptr_load_860" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_remote3_861" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_9_remote3_861", align 1
  %"$tmp_3_9_call_862" = call i8* @_fetch_remote_field(i8* %"$execptr_load_860", [20 x i8]* %"$tmp_3_9_remote3_861", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_859", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_82", i32 0, i8* null, i32 1), !dbg !57
  %"$tmp_3_9_863" = bitcast i8* %"$tmp_3_9_call_862" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_863", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$tmp_3_9_864" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_864_865" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_864" to i8*
  %"$_literal_cost_call_866" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_82", i8* %"$$tmp_3_9_864_865")
  %"$tmp_3_9_867" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_867_868" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_867" to i8*
  %"$_mapsortcost_call_869" = call i64 @_mapsortcost(i8* %"$$tmp_3_9_867_868")
  %"$gasadd_870" = add i64 %"$_literal_cost_call_866", %"$_mapsortcost_call_869"
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 %"$gasadd_870", %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_853"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_853"
  %"$consume_875" = sub i64 %"$gasrem_871", %"$gasadd_870"
  store i64 %"$consume_875", i64* @_gasrem, align 8
  %"$tmp_3_9_876" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_876_877" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_876" to i8*
  %"$_literal_cost_call_878" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_82", i8* %"$$tmp_3_9_876_877")
  %"$gasrem_879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_880" = icmp ugt i64 %"$_literal_cost_call_878", %"$gasrem_879"
  br i1 %"$gascmp_880", label %"$out_of_gas_881", label %"$have_gas_882"

"$out_of_gas_881":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_882"

"$have_gas_882":                                  ; preds = %"$out_of_gas_881", %"$have_gas_874"
  %"$consume_883" = sub i64 %"$gasrem_879", %"$_literal_cost_call_878"
  store i64 %"$consume_883", i64* @_gasrem, align 8
  %"$execptr_load_884" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_886" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$update_value_887" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_886" to i8*
  call void @_update_field(i8* %"$execptr_load_884", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_885", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_82", i32 0, i8* null, i8* %"$update_value_887"), !dbg !58
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 1, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %"$have_gas_882"
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %"$have_gas_882"
  %"$consume_892" = sub i64 %"$gasrem_888", 1
  store i64 %"$consume_892", i64* @_gasrem, align 8
  %"$x_0" = alloca %Uint32, align 8
  %"$gasrem_893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_894" = icmp ugt i64 1, %"$gasrem_893"
  br i1 %"$gascmp_894", label %"$out_of_gas_895", label %"$have_gas_896"

"$out_of_gas_895":                                ; preds = %"$have_gas_891"
  call void @_out_of_gas()
  br label %"$have_gas_896"

"$have_gas_896":                                  ; preds = %"$out_of_gas_895", %"$have_gas_891"
  %"$consume_897" = sub i64 %"$gasrem_893", 1
  store i64 %"$consume_897", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$x_0", align 4, !dbg !59
  %tmp_3_10 = alloca %TName_Bool*, align 8
  %"$indices_buf_898_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_898_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_898_salloc_load", i64 4)
  %"$indices_buf_898_salloc" = bitcast i8* %"$indices_buf_898_salloc_salloc" to [4 x i8]*
  %"$indices_buf_898" = bitcast [4 x i8]* %"$indices_buf_898_salloc" to i8*
  %"$$x_0_899" = load %Uint32, %Uint32* %"$x_0", align 4
  %"$indices_gep_900" = getelementptr i8, i8* %"$indices_buf_898", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_900" to %Uint32*
  store %Uint32 %"$$x_0_899", %Uint32* %indices_cast2, align 4
  %"$execptr_load_902" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_remote3_903" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_10_remote3_903", align 1
  %"$tmp_3_10_call_904" = call i8* @_fetch_remote_field(i8* %"$execptr_load_902", [20 x i8]* %"$tmp_3_10_remote3_903", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_901", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_82", i32 1, i8* %"$indices_buf_898", i32 0), !dbg !60
  %"$tmp_3_10_905" = bitcast i8* %"$tmp_3_10_call_904" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_10_905", %TName_Bool** %tmp_3_10, align 8
  %"$tmp_3_10_906" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_906_907" = bitcast %TName_Bool* %"$tmp_3_10_906" to i8*
  %"$_literal_cost_call_908" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i8* %"$$tmp_3_10_906_907")
  %"$gasadd_909" = add i64 %"$_literal_cost_call_908", 0
  %"$gasadd_910" = add i64 %"$gasadd_909", 1
  %"$gasrem_911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_912" = icmp ugt i64 %"$gasadd_910", %"$gasrem_911"
  br i1 %"$gascmp_912", label %"$out_of_gas_913", label %"$have_gas_914"

"$out_of_gas_913":                                ; preds = %"$have_gas_896"
  call void @_out_of_gas()
  br label %"$have_gas_914"

"$have_gas_914":                                  ; preds = %"$out_of_gas_913", %"$have_gas_896"
  %"$consume_915" = sub i64 %"$gasrem_911", %"$gasadd_910"
  store i64 %"$consume_915", i64* @_gasrem, align 8
  %"$tmp_3_10_916" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_916_917" = bitcast %TName_Bool* %"$tmp_3_10_916" to i8*
  %"$_literal_cost_call_918" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i8* %"$$tmp_3_10_916_917")
  %"$gasrem_919" = load i64, i64* @_gasrem, align 8
  %"$gascmp_920" = icmp ugt i64 %"$_literal_cost_call_918", %"$gasrem_919"
  br i1 %"$gascmp_920", label %"$out_of_gas_921", label %"$have_gas_922"

"$out_of_gas_921":                                ; preds = %"$have_gas_914"
  call void @_out_of_gas()
  br label %"$have_gas_922"

"$have_gas_922":                                  ; preds = %"$out_of_gas_921", %"$have_gas_914"
  %"$consume_923" = sub i64 %"$gasrem_919", %"$_literal_cost_call_918"
  store i64 %"$consume_923", i64* @_gasrem, align 8
  %"$execptr_load_924" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_926" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$update_value_927" = bitcast %TName_Bool* %"$tmp_3_10_926" to i8*
  call void @_update_field(i8* %"$execptr_load_924", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_925", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i32 0, i8* null, i8* %"$update_value_927"), !dbg !61
  %tmp_3_11 = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$indices_buf_928_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_928_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_928_salloc_load", i64 4)
  %"$indices_buf_928_salloc" = bitcast i8* %"$indices_buf_928_salloc_salloc" to [4 x i8]*
  %"$indices_buf_928" = bitcast [4 x i8]* %"$indices_buf_928_salloc" to i8*
  %"$$x_0_929" = load %Uint32, %Uint32* %"$x_0", align 4
  %"$indices_gep_930" = getelementptr i8, i8* %"$indices_buf_928", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_930" to %Uint32*
  store %Uint32 %"$$x_0_929", %Uint32* %indices_cast3, align 4
  %"$execptr_load_932" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_11_remote3_933" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_11_remote3_933", align 1
  %"$tmp_3_11_call_934" = call i8* @_fetch_remote_field(i8* %"$execptr_load_932", [20 x i8]* %"$tmp_3_11_remote3_933", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_931", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_82", i32 1, i8* %"$indices_buf_928", i32 1), !dbg !62
  %"$tmp_3_11_935" = bitcast i8* %"$tmp_3_11_call_934" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_935", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$tmp_3_11_936" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_936_937" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_936" to i8*
  %"$_literal_cost_call_938" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_72", i8* %"$$tmp_3_11_936_937")
  %"$gasadd_939" = add i64 %"$_literal_cost_call_938", 0
  %"$gasadd_940" = add i64 %"$gasadd_939", 1
  %"$gasrem_941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_942" = icmp ugt i64 %"$gasadd_940", %"$gasrem_941"
  br i1 %"$gascmp_942", label %"$out_of_gas_943", label %"$have_gas_944"

"$out_of_gas_943":                                ; preds = %"$have_gas_922"
  call void @_out_of_gas()
  br label %"$have_gas_944"

"$have_gas_944":                                  ; preds = %"$out_of_gas_943", %"$have_gas_922"
  %"$consume_945" = sub i64 %"$gasrem_941", %"$gasadd_940"
  store i64 %"$consume_945", i64* @_gasrem, align 8
  %"$tmp_3_11_946" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_946_947" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_946" to i8*
  %"$_literal_cost_call_948" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_72", i8* %"$$tmp_3_11_946_947")
  %"$gasrem_949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_950" = icmp ugt i64 %"$_literal_cost_call_948", %"$gasrem_949"
  br i1 %"$gascmp_950", label %"$out_of_gas_951", label %"$have_gas_952"

"$out_of_gas_951":                                ; preds = %"$have_gas_944"
  call void @_out_of_gas()
  br label %"$have_gas_952"

"$have_gas_952":                                  ; preds = %"$out_of_gas_951", %"$have_gas_944"
  %"$consume_953" = sub i64 %"$gasrem_949", %"$_literal_cost_call_948"
  store i64 %"$consume_953", i64* @_gasrem, align 8
  %"$execptr_load_954" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_11_956" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$update_value_957" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_956" to i8*
  call void @_update_field(i8* %"$execptr_load_954", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_955", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_72", i32 0, i8* null, i8* %"$update_value_957"), !dbg !63
  %tmp_3_12 = alloca %TName_Bool*, align 8
  %"$indices_buf_958_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_958_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_958_salloc_load", i64 24)
  %"$indices_buf_958_salloc" = bitcast i8* %"$indices_buf_958_salloc_salloc" to [24 x i8]*
  %"$indices_buf_958" = bitcast [24 x i8]* %"$indices_buf_958_salloc" to i8*
  %"$$x_0_959" = load %Uint32, %Uint32* %"$x_0", align 4
  %"$indices_gep_960" = getelementptr i8, i8* %"$indices_buf_958", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_960" to %Uint32*
  store %Uint32 %"$$x_0_959", %Uint32* %indices_cast4, align 4
  %"$indices_gep_961" = getelementptr i8, i8* %"$indices_buf_958", i32 4
  %indices_cast5 = bitcast i8* %"$indices_gep_961" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast5, align 1
  %"$execptr_load_963" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_12_remote3_964" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_12_remote3_964", align 1
  %"$tmp_3_12_call_965" = call i8* @_fetch_remote_field(i8* %"$execptr_load_963", [20 x i8]* %"$tmp_3_12_remote3_964", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_962", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_82", i32 2, i8* %"$indices_buf_958", i32 0), !dbg !64
  %"$tmp_3_12_966" = bitcast i8* %"$tmp_3_12_call_965" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_12_966", %TName_Bool** %tmp_3_12, align 8
  %"$tmp_3_12_967" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_967_968" = bitcast %TName_Bool* %"$tmp_3_12_967" to i8*
  %"$_literal_cost_call_969" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i8* %"$$tmp_3_12_967_968")
  %"$gasadd_970" = add i64 %"$_literal_cost_call_969", 0
  %"$gasadd_971" = add i64 %"$gasadd_970", 2
  %"$gasrem_972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_973" = icmp ugt i64 %"$gasadd_971", %"$gasrem_972"
  br i1 %"$gascmp_973", label %"$out_of_gas_974", label %"$have_gas_975"

"$out_of_gas_974":                                ; preds = %"$have_gas_952"
  call void @_out_of_gas()
  br label %"$have_gas_975"

"$have_gas_975":                                  ; preds = %"$out_of_gas_974", %"$have_gas_952"
  %"$consume_976" = sub i64 %"$gasrem_972", %"$gasadd_971"
  store i64 %"$consume_976", i64* @_gasrem, align 8
  %"$tmp_3_12_977" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_977_978" = bitcast %TName_Bool* %"$tmp_3_12_977" to i8*
  %"$_literal_cost_call_979" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i8* %"$$tmp_3_12_977_978")
  %"$gasrem_980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_981" = icmp ugt i64 %"$_literal_cost_call_979", %"$gasrem_980"
  br i1 %"$gascmp_981", label %"$out_of_gas_982", label %"$have_gas_983"

"$out_of_gas_982":                                ; preds = %"$have_gas_975"
  call void @_out_of_gas()
  br label %"$have_gas_983"

"$have_gas_983":                                  ; preds = %"$out_of_gas_982", %"$have_gas_975"
  %"$consume_984" = sub i64 %"$gasrem_980", %"$_literal_cost_call_979"
  store i64 %"$consume_984", i64* @_gasrem, align 8
  %"$execptr_load_985" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_12_987" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$update_value_988" = bitcast %TName_Bool* %"$tmp_3_12_987" to i8*
  call void @_update_field(i8* %"$execptr_load_985", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_986", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_75", i32 0, i8* null, i8* %"$update_value_988"), !dbg !65
  %tmp_3_13 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_989_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_989_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_989_salloc_load", i64 24)
  %"$indices_buf_989_salloc" = bitcast i8* %"$indices_buf_989_salloc_salloc" to [24 x i8]*
  %"$indices_buf_989" = bitcast [24 x i8]* %"$indices_buf_989_salloc" to i8*
  %"$$x_0_990" = load %Uint32, %Uint32* %"$x_0", align 4
  %"$indices_gep_991" = getelementptr i8, i8* %"$indices_buf_989", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_991" to %Uint32*
  store %Uint32 %"$$x_0_990", %Uint32* %indices_cast6, align 4
  %"$indices_gep_992" = getelementptr i8, i8* %"$indices_buf_989", i32 4
  %indices_cast7 = bitcast i8* %"$indices_gep_992" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast7, align 1
  %"$execptr_load_994" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_13_remote3_995" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_13_remote3_995", align 1
  %"$tmp_3_13_call_996" = call i8* @_fetch_remote_field(i8* %"$execptr_load_994", [20 x i8]* %"$tmp_3_13_remote3_995", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_993", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_82", i32 2, i8* %"$indices_buf_989", i32 1), !dbg !66
  %"$tmp_3_13_997" = bitcast i8* %"$tmp_3_13_call_996" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_13_997", %TName_Option_Bool** %tmp_3_13, align 8
  %"$tmp_3_13_998" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_998_999" = bitcast %TName_Option_Bool* %"$tmp_3_13_998" to i8*
  %"$_literal_cost_call_1000" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_73", i8* %"$$tmp_3_13_998_999")
  %"$gasadd_1001" = add i64 %"$_literal_cost_call_1000", 0
  %"$gasadd_1002" = add i64 %"$gasadd_1001", 2
  %"$gasrem_1003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1004" = icmp ugt i64 %"$gasadd_1002", %"$gasrem_1003"
  br i1 %"$gascmp_1004", label %"$out_of_gas_1005", label %"$have_gas_1006"

"$out_of_gas_1005":                               ; preds = %"$have_gas_983"
  call void @_out_of_gas()
  br label %"$have_gas_1006"

"$have_gas_1006":                                 ; preds = %"$out_of_gas_1005", %"$have_gas_983"
  %"$consume_1007" = sub i64 %"$gasrem_1003", %"$gasadd_1002"
  store i64 %"$consume_1007", i64* @_gasrem, align 8
  %"$tmp_3_13_1008" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_1008_1009" = bitcast %TName_Option_Bool* %"$tmp_3_13_1008" to i8*
  %"$_literal_cost_call_1010" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_73", i8* %"$$tmp_3_13_1008_1009")
  %"$gasrem_1011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1012" = icmp ugt i64 %"$_literal_cost_call_1010", %"$gasrem_1011"
  br i1 %"$gascmp_1012", label %"$out_of_gas_1013", label %"$have_gas_1014"

"$out_of_gas_1013":                               ; preds = %"$have_gas_1006"
  call void @_out_of_gas()
  br label %"$have_gas_1014"

"$have_gas_1014":                                 ; preds = %"$out_of_gas_1013", %"$have_gas_1006"
  %"$consume_1015" = sub i64 %"$gasrem_1011", %"$_literal_cost_call_1010"
  store i64 %"$consume_1015", i64* @_gasrem, align 8
  %"$execptr_load_1016" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_13_1018" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$update_value_1019" = bitcast %TName_Option_Bool* %"$tmp_3_13_1018" to i8*
  call void @_update_field(i8* %"$execptr_load_1016", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_1017", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_73", i32 0, i8* null, i8* %"$update_value_1019"), !dbg !67
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i64 @_mapsortcost(i8*)

define void @RemoteReadsTest(i8* %0) !dbg !68 {
entry:
  %"$_amount_1021" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1022" = bitcast i8* %"$_amount_1021" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1022", align 8
  %"$_origin_1023" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1024" = bitcast i8* %"$_origin_1023" to [20 x i8]*
  %"$_sender_1025" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1026" = bitcast i8* %"$_sender_1025" to [20 x i8]*
  %"$remote1_1027" = getelementptr i8, i8* %0, i32 56
  %"$remote1_1028" = bitcast i8* %"$remote1_1027" to [20 x i8]*
  %"$remote2_1029" = getelementptr i8, i8* %0, i32 76
  %"$remote2_1030" = bitcast i8* %"$remote2_1029" to [20 x i8]*
  %"$remote3_1031" = getelementptr i8, i8* %0, i32 96
  %"$remote3_1032" = bitcast i8* %"$remote3_1031" to [20 x i8]*
  call void @"$RemoteReadsTest_585"(%Uint128 %_amount, [20 x i8]* %"$_origin_1024", [20 x i8]* %"$_sender_1026", [20 x i8]* %"$remote1_1028", [20 x i8]* %"$remote2_1030", [20 x i8]* %"$remote3_1032"), !dbg !69
  ret void
}

define internal void @"$RemoteReadsADTTest_1033"(%Uint128 %_amount, [20 x i8]* %"$_origin_1034", [20 x i8]* %"$_sender_1035", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1036") !dbg !70 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1034", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1035", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_1036", align 1
  ret void
}

define void @RemoteReadsADTTest(i8* %0) !dbg !71 {
entry:
  %"$_amount_1038" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1039" = bitcast i8* %"$_amount_1038" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1039", align 8
  %"$_origin_1040" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1041" = bitcast i8* %"$_origin_1040" to [20 x i8]*
  %"$_sender_1042" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1043" = bitcast i8* %"$_sender_1042" to [20 x i8]*
  %"$list1_1044" = getelementptr i8, i8* %0, i32 56
  %"$list1_1045" = bitcast i8* %"$list1_1044" to %TName_List_ByStr20_with_end**
  %list1 = load %TName_List_ByStr20_with_end*, %TName_List_ByStr20_with_end** %"$list1_1045", align 8
  %"$list2_1046" = getelementptr i8, i8* %0, i32 64
  %"$list2_1047" = bitcast i8* %"$list2_1046" to %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"**
  %list2 = load %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"*, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"** %"$list2_1047", align 8
  %"$list3_1048" = getelementptr i8, i8* %0, i32 72
  %"$list3_1049" = bitcast i8* %"$list3_1048" to %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"**
  %list3 = load %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"*, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"** %"$list3_1049", align 8
  %"$pair1_1050" = getelementptr i8, i8* %0, i32 80
  %"$pair1_1051" = bitcast i8* %"$pair1_1050" to %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %pair1 = load %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$pair1_1051", align 8
  %"$adt1_1052" = getelementptr i8, i8* %0, i32 88
  %"$adt1_1053" = bitcast i8* %"$adt1_1052" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %adt1 = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adt1_1053", align 8
  %"$remote1_1054" = getelementptr i8, i8* %0, i32 96
  %"$remote1_1055" = bitcast i8* %"$remote1_1054" to [20 x i8]*
  call void @"$RemoteReadsADTTest_1033"(%Uint128 %_amount, [20 x i8]* %"$_origin_1041", [20 x i8]* %"$_sender_1043", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1055"), !dbg !72
  ret void
}

define internal void @"$OutgoingMsgTest_1056"(%Uint128 %_amount, [20 x i8]* %"$_origin_1057", [20 x i8]* %"$_sender_1058") !dbg !73 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1057", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1058", align 1
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 1, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %entry
  %"$consume_1063" = sub i64 %"$gasrem_1059", 1
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  %msg = alloca i8*, align 8
  %"$gasrem_1064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1065" = icmp ugt i64 1, %"$gasrem_1064"
  br i1 %"$gascmp_1065", label %"$out_of_gas_1066", label %"$have_gas_1067"

"$out_of_gas_1066":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1067"

"$have_gas_1067":                                 ; preds = %"$out_of_gas_1066", %"$have_gas_1062"
  %"$consume_1068" = sub i64 %"$gasrem_1064", 1
  store i64 %"$consume_1068", i64* @_gasrem, align 8
  %"$msgobj_1069_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1069_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1069_salloc_load", i64 169)
  %"$msgobj_1069_salloc" = bitcast i8* %"$msgobj_1069_salloc_salloc" to [169 x i8]*
  %"$msgobj_1069" = bitcast [169 x i8]* %"$msgobj_1069_salloc" to i8*
  store i8 4, i8* %"$msgobj_1069", align 1
  %"$msgobj_fname_1071" = getelementptr i8, i8* %"$msgobj_1069", i32 1
  %"$msgobj_fname_1072" = bitcast i8* %"$msgobj_fname_1071" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1070", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1072", align 8
  %"$msgobj_td_1073" = getelementptr i8, i8* %"$msgobj_1069", i32 17
  %"$msgobj_td_1074" = bitcast i8* %"$msgobj_td_1073" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_48", %_TyDescrTy_Typ** %"$msgobj_td_1074", align 8
  %"$msgobj_v_1076" = getelementptr i8, i8* %"$msgobj_1069", i32 25
  %"$msgobj_v_1077" = bitcast i8* %"$msgobj_v_1076" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1075", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_1077", align 8
  %"$msgobj_fname_1079" = getelementptr i8, i8* %"$msgobj_1069", i32 41
  %"$msgobj_fname_1080" = bitcast i8* %"$msgobj_fname_1079" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1078", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1080", align 8
  %"$msgobj_td_1081" = getelementptr i8, i8* %"$msgobj_1069", i32 57
  %"$msgobj_td_1082" = bitcast i8* %"$msgobj_td_1081" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ** %"$msgobj_td_1082", align 8
  %"$msgobj_v_1083" = getelementptr i8, i8* %"$msgobj_1069", i32 65
  %"$msgobj_v_1084" = bitcast i8* %"$msgobj_v_1083" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_1084", align 1
  %"$msgobj_fname_1086" = getelementptr i8, i8* %"$msgobj_1069", i32 85
  %"$msgobj_fname_1087" = bitcast i8* %"$msgobj_fname_1086" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1085", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1087", align 8
  %"$msgobj_td_1088" = getelementptr i8, i8* %"$msgobj_1069", i32 101
  %"$msgobj_td_1089" = bitcast i8* %"$msgobj_td_1088" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ** %"$msgobj_td_1089", align 8
  %"$msgobj_v_1090" = getelementptr i8, i8* %"$msgobj_1069", i32 109
  %"$msgobj_v_1091" = bitcast i8* %"$msgobj_v_1090" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_1091", align 8
  %"$msgobj_fname_1093" = getelementptr i8, i8* %"$msgobj_1069", i32 125
  %"$msgobj_fname_1094" = bitcast i8* %"$msgobj_fname_1093" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1092", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1094", align 8
  %"$msgobj_td_1095" = getelementptr i8, i8* %"$msgobj_1069", i32 141
  %"$msgobj_td_1096" = bitcast i8* %"$msgobj_td_1095" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ** %"$msgobj_td_1096", align 8
  %"$cparam3_1097" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1098" = getelementptr i8, i8* %"$msgobj_1069", i32 149
  %"$msgobj_v_1099" = bitcast i8* %"$msgobj_v_1098" to [20 x i8]*
  store [20 x i8] %"$cparam3_1097", [20 x i8]* %"$msgobj_v_1099", align 1
  store i8* %"$msgobj_1069", i8** %msg, align 8, !dbg !74
  %"$gasrem_1101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1102" = icmp ugt i64 1, %"$gasrem_1101"
  br i1 %"$gascmp_1102", label %"$out_of_gas_1103", label %"$have_gas_1104"

"$out_of_gas_1103":                               ; preds = %"$have_gas_1067"
  call void @_out_of_gas()
  br label %"$have_gas_1104"

"$have_gas_1104":                                 ; preds = %"$out_of_gas_1103", %"$have_gas_1067"
  %"$consume_1105" = sub i64 %"$gasrem_1101", 1
  store i64 %"$consume_1105", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_1106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1107" = icmp ugt i64 1, %"$gasrem_1106"
  br i1 %"$gascmp_1107", label %"$out_of_gas_1108", label %"$have_gas_1109"

"$out_of_gas_1108":                               ; preds = %"$have_gas_1104"
  call void @_out_of_gas()
  br label %"$have_gas_1109"

"$have_gas_1109":                                 ; preds = %"$out_of_gas_1108", %"$have_gas_1104"
  %"$consume_1110" = sub i64 %"$gasrem_1106", 1
  store i64 %"$consume_1110", i64* @_gasrem, align 8
  %n = alloca %TName_List_Message*, align 8
  %"$gasrem_1111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1112" = icmp ugt i64 1, %"$gasrem_1111"
  br i1 %"$gascmp_1112", label %"$out_of_gas_1113", label %"$have_gas_1114"

"$out_of_gas_1113":                               ; preds = %"$have_gas_1109"
  call void @_out_of_gas()
  br label %"$have_gas_1114"

"$have_gas_1114":                                 ; preds = %"$out_of_gas_1113", %"$have_gas_1109"
  %"$consume_1115" = sub i64 %"$gasrem_1111", 1
  store i64 %"$consume_1115", i64* @_gasrem, align 8
  %"$adtval_1116_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1116_salloc" = call i8* @_salloc(i8* %"$adtval_1116_load", i64 1)
  %"$adtval_1116" = bitcast i8* %"$adtval_1116_salloc" to %CName_Nil_Message*
  %"$adtgep_1117" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_1116", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1117", align 1
  %"$adtptr_1118" = bitcast %CName_Nil_Message* %"$adtval_1116" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1118", %TName_List_Message** %n, align 8, !dbg !75
  %"$gasrem_1119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1120" = icmp ugt i64 1, %"$gasrem_1119"
  br i1 %"$gascmp_1120", label %"$out_of_gas_1121", label %"$have_gas_1122"

"$out_of_gas_1121":                               ; preds = %"$have_gas_1114"
  call void @_out_of_gas()
  br label %"$have_gas_1122"

"$have_gas_1122":                                 ; preds = %"$out_of_gas_1121", %"$have_gas_1114"
  %"$consume_1123" = sub i64 %"$gasrem_1119", 1
  store i64 %"$consume_1123", i64* @_gasrem, align 8
  %"$msg_1124" = load i8*, i8** %msg, align 8
  %"$n_1125" = load %TName_List_Message*, %TName_List_Message** %n, align 8
  %"$adtval_1126_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1126_salloc" = call i8* @_salloc(i8* %"$adtval_1126_load", i64 17)
  %"$adtval_1126" = bitcast i8* %"$adtval_1126_salloc" to %CName_Cons_Message*
  %"$adtgep_1127" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1126", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1127", align 1
  %"$adtgep_1128" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1126", i32 0, i32 1
  store i8* %"$msg_1124", i8** %"$adtgep_1128", align 8
  %"$adtgep_1129" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1126", i32 0, i32 2
  store %TName_List_Message* %"$n_1125", %TName_List_Message** %"$adtgep_1129", align 8
  %"$adtptr_1130" = bitcast %CName_Cons_Message* %"$adtval_1126" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1130", %TName_List_Message** %msgs, align 8, !dbg !76
  %"$msgs_1131" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_1131_1132" = bitcast %TName_List_Message* %"$msgs_1131" to i8*
  %"$_literal_cost_call_1133" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_64", i8* %"$$msgs_1131_1132")
  %"$gasrem_1134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1135" = icmp ugt i64 %"$_literal_cost_call_1133", %"$gasrem_1134"
  br i1 %"$gascmp_1135", label %"$out_of_gas_1136", label %"$have_gas_1137"

"$out_of_gas_1136":                               ; preds = %"$have_gas_1122"
  call void @_out_of_gas()
  br label %"$have_gas_1137"

"$have_gas_1137":                                 ; preds = %"$out_of_gas_1136", %"$have_gas_1122"
  %"$consume_1138" = sub i64 %"$gasrem_1134", %"$_literal_cost_call_1133"
  store i64 %"$consume_1138", i64* @_gasrem, align 8
  %"$execptr_load_1139" = load i8*, i8** @_execptr, align 8
  %"$msgs_1140" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_1139", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_64", %TName_List_Message* %"$msgs_1140"), !dbg !77
  %"$gasrem_1141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1142" = icmp ugt i64 1, %"$gasrem_1141"
  br i1 %"$gascmp_1142", label %"$out_of_gas_1143", label %"$have_gas_1144"

"$out_of_gas_1143":                               ; preds = %"$have_gas_1137"
  call void @_out_of_gas()
  br label %"$have_gas_1144"

"$have_gas_1144":                                 ; preds = %"$out_of_gas_1143", %"$have_gas_1137"
  %"$consume_1145" = sub i64 %"$gasrem_1141", 1
  store i64 %"$consume_1145", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_1146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1147" = icmp ugt i64 1, %"$gasrem_1146"
  br i1 %"$gascmp_1147", label %"$out_of_gas_1148", label %"$have_gas_1149"

"$out_of_gas_1148":                               ; preds = %"$have_gas_1144"
  call void @_out_of_gas()
  br label %"$have_gas_1149"

"$have_gas_1149":                                 ; preds = %"$out_of_gas_1148", %"$have_gas_1144"
  %"$consume_1150" = sub i64 %"$gasrem_1146", 1
  store i64 %"$consume_1150", i64* @_gasrem, align 8
  %"$msgobj_1151_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1151_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1151_salloc_load", i64 85)
  %"$msgobj_1151_salloc" = bitcast i8* %"$msgobj_1151_salloc_salloc" to [85 x i8]*
  %"$msgobj_1151" = bitcast [85 x i8]* %"$msgobj_1151_salloc" to i8*
  store i8 2, i8* %"$msgobj_1151", align 1
  %"$msgobj_fname_1153" = getelementptr i8, i8* %"$msgobj_1151", i32 1
  %"$msgobj_fname_1154" = bitcast i8* %"$msgobj_fname_1153" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1152", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1154", align 8
  %"$msgobj_td_1155" = getelementptr i8, i8* %"$msgobj_1151", i32 17
  %"$msgobj_td_1156" = bitcast i8* %"$msgobj_td_1155" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_48", %_TyDescrTy_Typ** %"$msgobj_td_1156", align 8
  %"$msgobj_v_1158" = getelementptr i8, i8* %"$msgobj_1151", i32 25
  %"$msgobj_v_1159" = bitcast i8* %"$msgobj_v_1158" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1157", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1159", align 8
  %"$msgobj_fname_1161" = getelementptr i8, i8* %"$msgobj_1151", i32 41
  %"$msgobj_fname_1162" = bitcast i8* %"$msgobj_fname_1161" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1160", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1162", align 8
  %"$msgobj_td_1163" = getelementptr i8, i8* %"$msgobj_1151", i32 57
  %"$msgobj_td_1164" = bitcast i8* %"$msgobj_td_1163" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ** %"$msgobj_td_1164", align 8
  %"$cparam2_1165" = load [20 x i8], [20 x i8]* @_cparam_cparam2, align 1
  %"$msgobj_v_1166" = getelementptr i8, i8* %"$msgobj_1151", i32 65
  %"$msgobj_v_1167" = bitcast i8* %"$msgobj_v_1166" to [20 x i8]*
  store [20 x i8] %"$cparam2_1165", [20 x i8]* %"$msgobj_v_1167", align 1
  store i8* %"$msgobj_1151", i8** %e1, align 8, !dbg !78
  %"$e1_1169" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_1171" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_54", i8* %"$e1_1169")
  %"$gasrem_1172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1173" = icmp ugt i64 %"$_literal_cost_call_1171", %"$gasrem_1172"
  br i1 %"$gascmp_1173", label %"$out_of_gas_1174", label %"$have_gas_1175"

"$out_of_gas_1174":                               ; preds = %"$have_gas_1149"
  call void @_out_of_gas()
  br label %"$have_gas_1175"

"$have_gas_1175":                                 ; preds = %"$out_of_gas_1174", %"$have_gas_1149"
  %"$consume_1176" = sub i64 %"$gasrem_1172", %"$_literal_cost_call_1171"
  store i64 %"$consume_1176", i64* @_gasrem, align 8
  %"$execptr_load_1177" = load i8*, i8** @_execptr, align 8
  %"$e1_1178" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_1177", %_TyDescrTy_Typ* @"$TyDescr_Event_54", i8* %"$e1_1178"), !dbg !79
  %"$gasrem_1179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1180" = icmp ugt i64 1, %"$gasrem_1179"
  br i1 %"$gascmp_1180", label %"$out_of_gas_1181", label %"$have_gas_1182"

"$out_of_gas_1181":                               ; preds = %"$have_gas_1175"
  call void @_out_of_gas()
  br label %"$have_gas_1182"

"$have_gas_1182":                                 ; preds = %"$out_of_gas_1181", %"$have_gas_1175"
  %"$consume_1183" = sub i64 %"$gasrem_1179", 1
  store i64 %"$consume_1183", i64* @_gasrem, align 8
  %e2 = alloca i8*, align 8
  %"$gasrem_1184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1185" = icmp ugt i64 1, %"$gasrem_1184"
  br i1 %"$gascmp_1185", label %"$out_of_gas_1186", label %"$have_gas_1187"

"$out_of_gas_1186":                               ; preds = %"$have_gas_1182"
  call void @_out_of_gas()
  br label %"$have_gas_1187"

"$have_gas_1187":                                 ; preds = %"$out_of_gas_1186", %"$have_gas_1182"
  %"$consume_1188" = sub i64 %"$gasrem_1184", 1
  store i64 %"$consume_1188", i64* @_gasrem, align 8
  %"$msgobj_1189_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1189_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1189_salloc_load", i64 85)
  %"$msgobj_1189_salloc" = bitcast i8* %"$msgobj_1189_salloc_salloc" to [85 x i8]*
  %"$msgobj_1189" = bitcast [85 x i8]* %"$msgobj_1189_salloc" to i8*
  store i8 2, i8* %"$msgobj_1189", align 1
  %"$msgobj_fname_1191" = getelementptr i8, i8* %"$msgobj_1189", i32 1
  %"$msgobj_fname_1192" = bitcast i8* %"$msgobj_fname_1191" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1190", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1192", align 8
  %"$msgobj_td_1193" = getelementptr i8, i8* %"$msgobj_1189", i32 17
  %"$msgobj_td_1194" = bitcast i8* %"$msgobj_td_1193" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_48", %_TyDescrTy_Typ** %"$msgobj_td_1194", align 8
  %"$msgobj_v_1196" = getelementptr i8, i8* %"$msgobj_1189", i32 25
  %"$msgobj_v_1197" = bitcast i8* %"$msgobj_v_1196" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1195", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1197", align 8
  %"$msgobj_fname_1199" = getelementptr i8, i8* %"$msgobj_1189", i32 41
  %"$msgobj_fname_1200" = bitcast i8* %"$msgobj_fname_1199" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1198", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1200", align 8
  %"$msgobj_td_1201" = getelementptr i8, i8* %"$msgobj_1189", i32 57
  %"$msgobj_td_1202" = bitcast i8* %"$msgobj_td_1201" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ** %"$msgobj_td_1202", align 8
  %"$cparam3_1203" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1204" = getelementptr i8, i8* %"$msgobj_1189", i32 65
  %"$msgobj_v_1205" = bitcast i8* %"$msgobj_v_1204" to [20 x i8]*
  store [20 x i8] %"$cparam3_1203", [20 x i8]* %"$msgobj_v_1205", align 1
  store i8* %"$msgobj_1189", i8** %e2, align 8, !dbg !80
  %"$e2_1207" = load i8*, i8** %e2, align 8
  %"$_literal_cost_call_1209" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_54", i8* %"$e2_1207")
  %"$gasrem_1210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1211" = icmp ugt i64 %"$_literal_cost_call_1209", %"$gasrem_1210"
  br i1 %"$gascmp_1211", label %"$out_of_gas_1212", label %"$have_gas_1213"

"$out_of_gas_1212":                               ; preds = %"$have_gas_1187"
  call void @_out_of_gas()
  br label %"$have_gas_1213"

"$have_gas_1213":                                 ; preds = %"$out_of_gas_1212", %"$have_gas_1187"
  %"$consume_1214" = sub i64 %"$gasrem_1210", %"$_literal_cost_call_1209"
  store i64 %"$consume_1214", i64* @_gasrem, align 8
  %"$execptr_load_1215" = load i8*, i8** @_execptr, align 8
  %"$e2_1216" = load i8*, i8** %e2, align 8
  call void @_event(i8* %"$execptr_load_1215", %_TyDescrTy_Typ* @"$TyDescr_Event_54", i8* %"$e2_1216"), !dbg !81
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @OutgoingMsgTest(i8* %0) !dbg !82 {
entry:
  %"$_amount_1218" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1219" = bitcast i8* %"$_amount_1218" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1219", align 8
  %"$_origin_1220" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1221" = bitcast i8* %"$_origin_1220" to [20 x i8]*
  %"$_sender_1222" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1223" = bitcast i8* %"$_sender_1222" to [20 x i8]*
  call void @"$OutgoingMsgTest_1056"(%Uint128 %_amount, [20 x i8]* %"$_origin_1221", [20 x i8]* %"$_sender_1223"), !dbg !83
  ret void
}

define internal void @"$ExceptionTest_1224"(%Uint128 %_amount, [20 x i8]* %"$_origin_1225", [20 x i8]* %"$_sender_1226") !dbg !84 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1225", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1226", align 1
  %"$gasrem_1227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1228" = icmp ugt i64 1, %"$gasrem_1227"
  br i1 %"$gascmp_1228", label %"$out_of_gas_1229", label %"$have_gas_1230"

"$out_of_gas_1229":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1230"

"$have_gas_1230":                                 ; preds = %"$out_of_gas_1229", %entry
  %"$consume_1231" = sub i64 %"$gasrem_1227", 1
  store i64 %"$consume_1231", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_1232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1233" = icmp ugt i64 1, %"$gasrem_1232"
  br i1 %"$gascmp_1233", label %"$out_of_gas_1234", label %"$have_gas_1235"

"$out_of_gas_1234":                               ; preds = %"$have_gas_1230"
  call void @_out_of_gas()
  br label %"$have_gas_1235"

"$have_gas_1235":                                 ; preds = %"$out_of_gas_1234", %"$have_gas_1230"
  %"$consume_1236" = sub i64 %"$gasrem_1232", 1
  store i64 %"$consume_1236", i64* @_gasrem, align 8
  %"$msgobj_1237_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1237_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1237_salloc_load", i64 85)
  %"$msgobj_1237_salloc" = bitcast i8* %"$msgobj_1237_salloc_salloc" to [85 x i8]*
  %"$msgobj_1237" = bitcast [85 x i8]* %"$msgobj_1237_salloc" to i8*
  store i8 2, i8* %"$msgobj_1237", align 1
  %"$msgobj_fname_1239" = getelementptr i8, i8* %"$msgobj_1237", i32 1
  %"$msgobj_fname_1240" = bitcast i8* %"$msgobj_fname_1239" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1238", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1240", align 8
  %"$msgobj_td_1241" = getelementptr i8, i8* %"$msgobj_1237", i32 17
  %"$msgobj_td_1242" = bitcast i8* %"$msgobj_td_1241" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_48", %_TyDescrTy_Typ** %"$msgobj_td_1242", align 8
  %"$msgobj_v_1244" = getelementptr i8, i8* %"$msgobj_1237", i32 25
  %"$msgobj_v_1245" = bitcast i8* %"$msgobj_v_1244" to %String*
  store %String { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$stringlit_1243", i32 0, i32 0), i32 13 }, %String* %"$msgobj_v_1245", align 8
  %"$msgobj_fname_1247" = getelementptr i8, i8* %"$msgobj_1237", i32 41
  %"$msgobj_fname_1248" = bitcast i8* %"$msgobj_fname_1247" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1246", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1248", align 8
  %"$msgobj_td_1249" = getelementptr i8, i8* %"$msgobj_1237", i32 57
  %"$msgobj_td_1250" = bitcast i8* %"$msgobj_td_1249" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ** %"$msgobj_td_1250", align 8
  %"$cparam3_1251" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1252" = getelementptr i8, i8* %"$msgobj_1237", i32 65
  %"$msgobj_v_1253" = bitcast i8* %"$msgobj_v_1252" to [20 x i8]*
  store [20 x i8] %"$cparam3_1251", [20 x i8]* %"$msgobj_v_1253", align 1
  store i8* %"$msgobj_1237", i8** %e, align 8, !dbg !85
  %"$e_1255" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_1257" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_56", i8* %"$e_1255")
  %"$gasrem_1258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1259" = icmp ugt i64 %"$_literal_cost_call_1257", %"$gasrem_1258"
  br i1 %"$gascmp_1259", label %"$out_of_gas_1260", label %"$have_gas_1261"

"$out_of_gas_1260":                               ; preds = %"$have_gas_1235"
  call void @_out_of_gas()
  br label %"$have_gas_1261"

"$have_gas_1261":                                 ; preds = %"$out_of_gas_1260", %"$have_gas_1235"
  %"$consume_1262" = sub i64 %"$gasrem_1258", %"$_literal_cost_call_1257"
  store i64 %"$consume_1262", i64* @_gasrem, align 8
  %"$execptr_load_1263" = load i8*, i8** @_execptr, align 8
  %"$e_1264" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_1263", %_TyDescrTy_Typ* @"$TyDescr_Exception_56", i8* %"$e_1264"), !dbg !86
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ExceptionTest(i8* %0) !dbg !87 {
entry:
  %"$_amount_1266" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1267" = bitcast i8* %"$_amount_1266" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1267", align 8
  %"$_origin_1268" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1269" = bitcast i8* %"$_origin_1268" to [20 x i8]*
  %"$_sender_1270" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1271" = bitcast i8* %"$_sender_1270" to [20 x i8]*
  call void @"$ExceptionTest_1224"(%Uint128 %_amount, [20 x i8]* %"$_origin_1269", [20 x i8]* %"$_sender_1271"), !dbg !88
  ret void
}

define internal void @"$AssignTest_1272"(%Uint128 %_amount, [20 x i8]* %"$_origin_1273", [20 x i8]* %"$_sender_1274") !dbg !89 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1273", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1274", align 1
  %"$gasrem_1275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1276" = icmp ugt i64 1, %"$gasrem_1275"
  br i1 %"$gascmp_1276", label %"$out_of_gas_1277", label %"$have_gas_1278"

"$out_of_gas_1277":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1278"

"$have_gas_1278":                                 ; preds = %"$out_of_gas_1277", %entry
  %"$consume_1279" = sub i64 %"$gasrem_1275", 1
  store i64 %"$consume_1279", i64* @_gasrem, align 8
  %"$x_1" = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1281" = icmp ugt i64 1, %"$gasrem_1280"
  br i1 %"$gascmp_1281", label %"$out_of_gas_1282", label %"$have_gas_1283"

"$out_of_gas_1282":                               ; preds = %"$have_gas_1278"
  call void @_out_of_gas()
  br label %"$have_gas_1283"

"$have_gas_1283":                                 ; preds = %"$out_of_gas_1282", %"$have_gas_1278"
  %"$consume_1284" = sub i64 %"$gasrem_1280", 1
  store i64 %"$consume_1284", i64* @_gasrem, align 8
  %"$cparam3_1285" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$adtval_1286_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1286_salloc" = call i8* @_salloc(i8* %"$adtval_1286_load", i64 21)
  %"$adtval_1286" = bitcast i8* %"$adtval_1286_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2*
  %"$adtgep_1287" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1286", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1287", align 1
  %"$adtgep_1288" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1286", i32 0, i32 1
  store [20 x i8] %"$cparam3_1285", [20 x i8]* %"$adtgep_1288", align 1
  %"$adtptr_1289" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1286" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1289", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8, !dbg !90
  %"$$x_1_1290" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$$$x_1_1290_1291" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1290" to i8*
  %"$_literal_cost_call_1292" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74", i8* %"$$$x_1_1290_1291")
  %"$gasrem_1293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1294" = icmp ugt i64 %"$_literal_cost_call_1292", %"$gasrem_1293"
  br i1 %"$gascmp_1294", label %"$out_of_gas_1295", label %"$have_gas_1296"

"$out_of_gas_1295":                               ; preds = %"$have_gas_1283"
  call void @_out_of_gas()
  br label %"$have_gas_1296"

"$have_gas_1296":                                 ; preds = %"$out_of_gas_1295", %"$have_gas_1283"
  %"$consume_1297" = sub i64 %"$gasrem_1293", %"$_literal_cost_call_1292"
  store i64 %"$consume_1297", i64* @_gasrem, align 8
  %"$execptr_load_1298" = load i8*, i8** @_execptr, align 8
  %"$$x_1_1300" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$update_value_1301" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1300" to i8*
  call void @_update_field(i8* %"$execptr_load_1298", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_1299", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74", i32 0, i8* null, i8* %"$update_value_1301"), !dbg !91
  %"$gasrem_1302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1303" = icmp ugt i64 1, %"$gasrem_1302"
  br i1 %"$gascmp_1303", label %"$out_of_gas_1304", label %"$have_gas_1305"

"$out_of_gas_1304":                               ; preds = %"$have_gas_1296"
  call void @_out_of_gas()
  br label %"$have_gas_1305"

"$have_gas_1305":                                 ; preds = %"$out_of_gas_1304", %"$have_gas_1296"
  %"$consume_1306" = sub i64 %"$gasrem_1302", 1
  store i64 %"$consume_1306", i64* @_gasrem, align 8
  %y = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1308" = icmp ugt i64 1, %"$gasrem_1307"
  br i1 %"$gascmp_1308", label %"$out_of_gas_1309", label %"$have_gas_1310"

"$out_of_gas_1309":                               ; preds = %"$have_gas_1305"
  call void @_out_of_gas()
  br label %"$have_gas_1310"

"$have_gas_1310":                                 ; preds = %"$out_of_gas_1309", %"$have_gas_1305"
  %"$consume_1311" = sub i64 %"$gasrem_1307", 1
  store i64 %"$consume_1311", i64* @_gasrem, align 8
  %n = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1313" = icmp ugt i64 1, %"$gasrem_1312"
  br i1 %"$gascmp_1313", label %"$out_of_gas_1314", label %"$have_gas_1315"

"$out_of_gas_1314":                               ; preds = %"$have_gas_1310"
  call void @_out_of_gas()
  br label %"$have_gas_1315"

"$have_gas_1315":                                 ; preds = %"$out_of_gas_1314", %"$have_gas_1310"
  %"$consume_1316" = sub i64 %"$gasrem_1312", 1
  store i64 %"$consume_1316", i64* @_gasrem, align 8
  %"$adtval_1317_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1317_salloc" = call i8* @_salloc(i8* %"$adtval_1317_load", i64 1)
  %"$adtval_1317" = bitcast i8* %"$adtval_1317_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1318" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1317", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1318", align 1
  %"$adtptr_1319" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1317" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1319", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8, !dbg !92
  %"$gasrem_1320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1321" = icmp ugt i64 1, %"$gasrem_1320"
  br i1 %"$gascmp_1321", label %"$out_of_gas_1322", label %"$have_gas_1323"

"$out_of_gas_1322":                               ; preds = %"$have_gas_1315"
  call void @_out_of_gas()
  br label %"$have_gas_1323"

"$have_gas_1323":                                 ; preds = %"$out_of_gas_1322", %"$have_gas_1315"
  %"$consume_1324" = sub i64 %"$gasrem_1320", 1
  store i64 %"$consume_1324", i64* @_gasrem, align 8
  %"$$x_1_1325" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$n_1326" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8
  %"$adtval_1327_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1327_salloc" = call i8* @_salloc(i8* %"$adtval_1327_load", i64 17)
  %"$adtval_1327" = bitcast i8* %"$adtval_1327_salloc" to %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1328" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1327", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1328", align 1
  %"$adtgep_1329" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1327", i32 0, i32 1
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1325", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1329", align 8
  %"$adtgep_1330" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1327", i32 0, i32 2
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$n_1326", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1330", align 8
  %"$adtptr_1331" = bitcast %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1327" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1331", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8, !dbg !93
  %"$y_1332" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$$y_1332_1333" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1332" to i8*
  %"$_literal_cost_call_1334" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69", i8* %"$$y_1332_1333")
  %"$gasrem_1335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1336" = icmp ugt i64 %"$_literal_cost_call_1334", %"$gasrem_1335"
  br i1 %"$gascmp_1336", label %"$out_of_gas_1337", label %"$have_gas_1338"

"$out_of_gas_1337":                               ; preds = %"$have_gas_1323"
  call void @_out_of_gas()
  br label %"$have_gas_1338"

"$have_gas_1338":                                 ; preds = %"$out_of_gas_1337", %"$have_gas_1323"
  %"$consume_1339" = sub i64 %"$gasrem_1335", %"$_literal_cost_call_1334"
  store i64 %"$consume_1339", i64* @_gasrem, align 8
  %"$execptr_load_1340" = load i8*, i8** @_execptr, align 8
  %"$y_1342" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$update_value_1343" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1342" to i8*
  call void @_update_field(i8* %"$execptr_load_1340", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_1341", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69", i32 0, i8* null, i8* %"$update_value_1343"), !dbg !94
  %"$gasrem_1344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1345" = icmp ugt i64 1, %"$gasrem_1344"
  br i1 %"$gascmp_1345", label %"$out_of_gas_1346", label %"$have_gas_1347"

"$out_of_gas_1346":                               ; preds = %"$have_gas_1338"
  call void @_out_of_gas()
  br label %"$have_gas_1347"

"$have_gas_1347":                                 ; preds = %"$out_of_gas_1346", %"$have_gas_1338"
  %"$consume_1348" = sub i64 %"$gasrem_1344", 1
  store i64 %"$consume_1348", i64* @_gasrem, align 8
  %z = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1350" = icmp ugt i64 1, %"$gasrem_1349"
  br i1 %"$gascmp_1350", label %"$out_of_gas_1351", label %"$have_gas_1352"

"$out_of_gas_1351":                               ; preds = %"$have_gas_1347"
  call void @_out_of_gas()
  br label %"$have_gas_1352"

"$have_gas_1352":                                 ; preds = %"$out_of_gas_1351", %"$have_gas_1347"
  %"$consume_1353" = sub i64 %"$gasrem_1349", 1
  store i64 %"$consume_1353", i64* @_gasrem, align 8
  %"$n_2" = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1355" = icmp ugt i64 1, %"$gasrem_1354"
  br i1 %"$gascmp_1355", label %"$out_of_gas_1356", label %"$have_gas_1357"

"$out_of_gas_1356":                               ; preds = %"$have_gas_1352"
  call void @_out_of_gas()
  br label %"$have_gas_1357"

"$have_gas_1357":                                 ; preds = %"$out_of_gas_1356", %"$have_gas_1352"
  %"$consume_1358" = sub i64 %"$gasrem_1354", 1
  store i64 %"$consume_1358", i64* @_gasrem, align 8
  %"$execptr_load_1359" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1360" = call i8* @_new_empty_map(i8* %"$execptr_load_1359")
  %"$_new_empty_map_1361" = bitcast i8* %"$_new_empty_map_call_1360" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$_new_empty_map_1361", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_2", align 8, !dbg !95
  %"$gasrem_1362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1363" = icmp ugt i64 1, %"$gasrem_1362"
  br i1 %"$gascmp_1363", label %"$out_of_gas_1364", label %"$have_gas_1365"

"$out_of_gas_1364":                               ; preds = %"$have_gas_1357"
  call void @_out_of_gas()
  br label %"$have_gas_1365"

"$have_gas_1365":                                 ; preds = %"$out_of_gas_1364", %"$have_gas_1357"
  %"$consume_1366" = sub i64 %"$gasrem_1362", 1
  store i64 %"$consume_1366", i64* @_gasrem, align 8
  %sub_n = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1368" = icmp ugt i64 1, %"$gasrem_1367"
  br i1 %"$gascmp_1368", label %"$out_of_gas_1369", label %"$have_gas_1370"

"$out_of_gas_1369":                               ; preds = %"$have_gas_1365"
  call void @_out_of_gas()
  br label %"$have_gas_1370"

"$have_gas_1370":                                 ; preds = %"$out_of_gas_1369", %"$have_gas_1365"
  %"$consume_1371" = sub i64 %"$gasrem_1367", 1
  store i64 %"$consume_1371", i64* @_gasrem, align 8
  %"$execptr_load_1372" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1373" = call i8* @_new_empty_map(i8* %"$execptr_load_1372")
  %"$_new_empty_map_1374" = bitcast i8* %"$_new_empty_map_call_1373" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$_new_empty_map_1374", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8, !dbg !96
  %"$gasrem_1375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1376" = icmp ugt i64 1, %"$gasrem_1375"
  br i1 %"$gascmp_1376", label %"$out_of_gas_1377", label %"$have_gas_1378"

"$out_of_gas_1377":                               ; preds = %"$have_gas_1370"
  call void @_out_of_gas()
  br label %"$have_gas_1378"

"$have_gas_1378":                                 ; preds = %"$out_of_gas_1377", %"$have_gas_1370"
  %"$consume_1379" = sub i64 %"$gasrem_1375", 1
  store i64 %"$consume_1379", i64* @_gasrem, align 8
  %sub_k = alloca %Uint128, align 8
  %"$gasrem_1380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1381" = icmp ugt i64 1, %"$gasrem_1380"
  br i1 %"$gascmp_1381", label %"$out_of_gas_1382", label %"$have_gas_1383"

"$out_of_gas_1382":                               ; preds = %"$have_gas_1378"
  call void @_out_of_gas()
  br label %"$have_gas_1383"

"$have_gas_1383":                                 ; preds = %"$out_of_gas_1382", %"$have_gas_1378"
  %"$consume_1384" = sub i64 %"$gasrem_1380", 1
  store i64 %"$consume_1384", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %sub_k, align 8, !dbg !97
  %"$gasrem_1385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1386" = icmp ugt i64 1, %"$gasrem_1385"
  br i1 %"$gascmp_1386", label %"$out_of_gas_1387", label %"$have_gas_1388"

"$out_of_gas_1387":                               ; preds = %"$have_gas_1383"
  call void @_out_of_gas()
  br label %"$have_gas_1388"

"$have_gas_1388":                                 ; preds = %"$out_of_gas_1387", %"$have_gas_1383"
  %"$consume_1389" = sub i64 %"$gasrem_1385", 1
  store i64 %"$consume_1389", i64* @_gasrem, align 8
  %sub_res = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$sub_n_1390" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$$sub_n_1390_1391" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_n_1390" to i8*
  %"$_lengthof_call_1392" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$sub_n_1390_1391")
  %"$gasadd_1393" = add i64 1, %"$_lengthof_call_1392"
  %"$gasrem_1394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1395" = icmp ugt i64 %"$gasadd_1393", %"$gasrem_1394"
  br i1 %"$gascmp_1395", label %"$out_of_gas_1396", label %"$have_gas_1397"

"$out_of_gas_1396":                               ; preds = %"$have_gas_1388"
  call void @_out_of_gas()
  br label %"$have_gas_1397"

"$have_gas_1397":                                 ; preds = %"$out_of_gas_1396", %"$have_gas_1388"
  %"$consume_1398" = sub i64 %"$gasrem_1394", %"$gasadd_1393"
  store i64 %"$consume_1398", i64* @_gasrem, align 8
  %"$execptr_load_1399" = load i8*, i8** @_execptr, align 8
  %"$sub_n_1400" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$$sub_n_1400_1401" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_n_1400" to i8*
  %"$put_sub_k_1402" = alloca %Uint128, align 8
  %"$sub_k_1403" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1403", %Uint128* %"$put_sub_k_1402", align 8
  %"$$put_sub_k_1402_1404" = bitcast %Uint128* %"$put_sub_k_1402" to i8*
  %"$$x_1_1405" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$$$x_1_1405_1406" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1405" to i8*
  %"$put_call_1407" = call i8* @_put(i8* %"$execptr_load_1399", %_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$sub_n_1400_1401", i8* %"$$put_sub_k_1402_1404", i8* %"$$$x_1_1405_1406"), !dbg !98
  %"$put_1408" = bitcast i8* %"$put_call_1407" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$put_1408", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8, !dbg !98
  %"$$n_2_1409" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_2", align 8
  %"$$$n_2_1409_1410" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$n_2_1409" to i8*
  %"$_lengthof_call_1411" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_78", i8* %"$$$n_2_1409_1410")
  %"$gasadd_1412" = add i64 1, %"$_lengthof_call_1411"
  %"$gasrem_1413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1414" = icmp ugt i64 %"$gasadd_1412", %"$gasrem_1413"
  br i1 %"$gascmp_1414", label %"$out_of_gas_1415", label %"$have_gas_1416"

"$out_of_gas_1415":                               ; preds = %"$have_gas_1397"
  call void @_out_of_gas()
  br label %"$have_gas_1416"

"$have_gas_1416":                                 ; preds = %"$out_of_gas_1415", %"$have_gas_1397"
  %"$consume_1417" = sub i64 %"$gasrem_1413", %"$gasadd_1412"
  store i64 %"$consume_1417", i64* @_gasrem, align 8
  %"$execptr_load_1418" = load i8*, i8** @_execptr, align 8
  %"$$n_2_1419" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_2", align 8
  %"$$$n_2_1419_1420" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$n_2_1419" to i8*
  %"$put_sub_k_1421" = alloca %Uint128, align 8
  %"$sub_k_1422" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1422", %Uint128* %"$put_sub_k_1421", align 8
  %"$$put_sub_k_1421_1423" = bitcast %Uint128* %"$put_sub_k_1421" to i8*
  %"$sub_res_1424" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8
  %"$$sub_res_1424_1425" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_res_1424" to i8*
  %"$put_call_1426" = call i8* @_put(i8* %"$execptr_load_1418", %_TyDescrTy_Typ* @"$TyDescr_Map_78", i8* %"$$$n_2_1419_1420", i8* %"$$put_sub_k_1421_1423", i8* %"$$sub_res_1424_1425"), !dbg !99
  %"$put_1427" = bitcast i8* %"$put_call_1426" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$put_1427", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8, !dbg !99
  %"$z_1428" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$$z_1428_1429" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1428" to i8*
  %"$_literal_cost_call_1430" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_78", i8* %"$$z_1428_1429")
  %"$gasrem_1431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1432" = icmp ugt i64 %"$_literal_cost_call_1430", %"$gasrem_1431"
  br i1 %"$gascmp_1432", label %"$out_of_gas_1433", label %"$have_gas_1434"

"$out_of_gas_1433":                               ; preds = %"$have_gas_1416"
  call void @_out_of_gas()
  br label %"$have_gas_1434"

"$have_gas_1434":                                 ; preds = %"$out_of_gas_1433", %"$have_gas_1416"
  %"$consume_1435" = sub i64 %"$gasrem_1431", %"$_literal_cost_call_1430"
  store i64 %"$consume_1435", i64* @_gasrem, align 8
  %"$execptr_load_1436" = load i8*, i8** @_execptr, align 8
  %"$z_1438" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$update_value_1439" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1438" to i8*
  call void @_update_field(i8* %"$execptr_load_1436", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1437", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_78", i32 0, i8* null, i8* %"$update_value_1439"), !dbg !100
  %"$gasrem_1440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1441" = icmp ugt i64 1, %"$gasrem_1440"
  br i1 %"$gascmp_1441", label %"$out_of_gas_1442", label %"$have_gas_1443"

"$out_of_gas_1442":                               ; preds = %"$have_gas_1434"
  call void @_out_of_gas()
  br label %"$have_gas_1443"

"$have_gas_1443":                                 ; preds = %"$out_of_gas_1442", %"$have_gas_1434"
  %"$consume_1444" = sub i64 %"$gasrem_1440", 1
  store i64 %"$consume_1444", i64* @_gasrem, align 8
  %k1 = alloca %Uint128, align 8
  %"$gasrem_1445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1446" = icmp ugt i64 1, %"$gasrem_1445"
  br i1 %"$gascmp_1446", label %"$out_of_gas_1447", label %"$have_gas_1448"

"$out_of_gas_1447":                               ; preds = %"$have_gas_1443"
  call void @_out_of_gas()
  br label %"$have_gas_1448"

"$have_gas_1448":                                 ; preds = %"$out_of_gas_1447", %"$have_gas_1443"
  %"$consume_1449" = sub i64 %"$gasrem_1445", 1
  store i64 %"$consume_1449", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %k1, align 8, !dbg !101
  %"$gasrem_1450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1451" = icmp ugt i64 1, %"$gasrem_1450"
  br i1 %"$gascmp_1451", label %"$out_of_gas_1452", label %"$have_gas_1453"

"$out_of_gas_1452":                               ; preds = %"$have_gas_1448"
  call void @_out_of_gas()
  br label %"$have_gas_1453"

"$have_gas_1453":                                 ; preds = %"$out_of_gas_1452", %"$have_gas_1448"
  %"$consume_1454" = sub i64 %"$gasrem_1450", 1
  store i64 %"$consume_1454", i64* @_gasrem, align 8
  %k2 = alloca %Uint128, align 8
  %"$gasrem_1455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1456" = icmp ugt i64 1, %"$gasrem_1455"
  br i1 %"$gascmp_1456", label %"$out_of_gas_1457", label %"$have_gas_1458"

"$out_of_gas_1457":                               ; preds = %"$have_gas_1453"
  call void @_out_of_gas()
  br label %"$have_gas_1458"

"$have_gas_1458":                                 ; preds = %"$out_of_gas_1457", %"$have_gas_1453"
  %"$consume_1459" = sub i64 %"$gasrem_1455", 1
  store i64 %"$consume_1459", i64* @_gasrem, align 8
  store %Uint128 { i128 42 }, %Uint128* %k2, align 8, !dbg !102
  %"$$x_1_1460" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$$$x_1_1460_1461" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1460" to i8*
  %"$_literal_cost_call_1462" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74", i8* %"$$$x_1_1460_1461")
  %"$gasadd_1463" = add i64 %"$_literal_cost_call_1462", 2
  %"$gasrem_1464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1465" = icmp ugt i64 %"$gasadd_1463", %"$gasrem_1464"
  br i1 %"$gascmp_1465", label %"$out_of_gas_1466", label %"$have_gas_1467"

"$out_of_gas_1466":                               ; preds = %"$have_gas_1458"
  call void @_out_of_gas()
  br label %"$have_gas_1467"

"$have_gas_1467":                                 ; preds = %"$out_of_gas_1466", %"$have_gas_1458"
  %"$consume_1468" = sub i64 %"$gasrem_1464", %"$gasadd_1463"
  store i64 %"$consume_1468", i64* @_gasrem, align 8
  %"$indices_buf_1469_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1469_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1469_salloc_load", i64 32)
  %"$indices_buf_1469_salloc" = bitcast i8* %"$indices_buf_1469_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1469" = bitcast [32 x i8]* %"$indices_buf_1469_salloc" to i8*
  %"$k1_1470" = load %Uint128, %Uint128* %k1, align 8
  %"$indices_gep_1471" = getelementptr i8, i8* %"$indices_buf_1469", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1471" to %Uint128*
  store %Uint128 %"$k1_1470", %Uint128* %indices_cast, align 8
  %"$k2_1472" = load %Uint128, %Uint128* %k2, align 8
  %"$indices_gep_1473" = getelementptr i8, i8* %"$indices_buf_1469", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1473" to %Uint128*
  store %Uint128 %"$k2_1472", %Uint128* %indices_cast1, align 8
  %"$execptr_load_1474" = load i8*, i8** @_execptr, align 8
  %"$$x_1_1476" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$update_value_1477" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1476" to i8*
  call void @_update_field(i8* %"$execptr_load_1474", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1475", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_78", i32 2, i8* %"$indices_buf_1469", i8* %"$update_value_1477"), !dbg !103
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @AssignTest(i8* %0) !dbg !104 {
entry:
  %"$_amount_1479" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1480" = bitcast i8* %"$_amount_1479" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1480", align 8
  %"$_origin_1481" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1482" = bitcast i8* %"$_origin_1481" to [20 x i8]*
  %"$_sender_1483" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1484" = bitcast i8* %"$_sender_1483" to [20 x i8]*
  call void @"$AssignTest_1272"(%Uint128 %_amount, [20 x i8]* %"$_origin_1482", [20 x i8]* %"$_sender_1484"), !dbg !105
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "remote_state_reads.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 25, column: 42, scope: !9)
!11 = !DILocation(line: 26, column: 83, scope: !9)
!12 = !DILocation(line: 27, column: 82, scope: !9)
!13 = !DILocation(line: 28, column: 73, scope: !9)
!14 = !DILocation(line: 29, column: 83, scope: !9)
!15 = !DILocation(line: 30, column: 100, scope: !9)
!16 = !DILocation(line: 31, column: 89, scope: !9)
!17 = !DILocation(line: 32, column: 36, scope: !9)
!18 = !DILocation(line: 33, column: 41, scope: !9)
!19 = !DILocation(line: 34, column: 63, scope: !9)
!20 = !DILocation(line: 36, column: 45, scope: !9)
!21 = !DILocation(line: 37, column: 45, scope: !9)
!22 = !DILocation(line: 38, column: 45, scope: !9)
!23 = !DILocation(line: 39, column: 44, scope: !9)
!24 = !DILocation(line: 40, column: 54, scope: !9)
!25 = !DILocation(line: 41, column: 45, scope: !9)
!26 = !DILocation(line: 42, column: 65, scope: !9)
!27 = !DILocation(line: 43, column: 42, scope: !9)
!28 = !DILocation(line: 44, column: 57, scope: !9)
!29 = !DILocation(line: 44, column: 65, scope: !9)
!30 = !DILocation(line: 45, column: 78, scope: !9)
!31 = !DILocation(line: 46, column: 43, scope: !9)
!32 = !DILocation(line: 47, column: 75, scope: !9)
!33 = !DILocation(line: 48, column: 43, scope: !9)
!34 = !DILocation(line: 49, column: 50, scope: !9)
!35 = !DILocation(line: 51, column: 38, scope: !9)
!36 = !DILocation(line: 52, column: 38, scope: !9)
!37 = !DILocation(line: 53, column: 39, scope: !9)
!38 = distinct !DISubprogram(name: "RemoteReadsTest", linkageName: "RemoteReadsTest", scope: !2, file: !2, line: 55, type: !6, scopeLine: 55, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!39 = !DILocation(line: 67, column: 3, scope: !38)
!40 = !DILocation(line: 68, column: 3, scope: !38)
!41 = !DILocation(line: 70, column: 3, scope: !38)
!42 = !DILocation(line: 71, column: 3, scope: !38)
!43 = !DILocation(line: 73, column: 3, scope: !38)
!44 = !DILocation(line: 74, column: 3, scope: !38)
!45 = !DILocation(line: 76, column: 3, scope: !38)
!46 = !DILocation(line: 77, column: 3, scope: !38)
!47 = !DILocation(line: 79, column: 3, scope: !38)
!48 = !DILocation(line: 80, column: 3, scope: !38)
!49 = !DILocation(line: 82, column: 3, scope: !38)
!50 = !DILocation(line: 83, column: 3, scope: !38)
!51 = !DILocation(line: 85, column: 3, scope: !38)
!52 = !DILocation(line: 86, column: 3, scope: !38)
!53 = !DILocation(line: 88, column: 3, scope: !38)
!54 = !DILocation(line: 89, column: 3, scope: !38)
!55 = !DILocation(line: 91, column: 3, scope: !38)
!56 = !DILocation(line: 92, column: 3, scope: !38)
!57 = !DILocation(line: 94, column: 3, scope: !38)
!58 = !DILocation(line: 95, column: 3, scope: !38)
!59 = !DILocation(line: 97, column: 7, scope: !38)
!60 = !DILocation(line: 98, column: 3, scope: !38)
!61 = !DILocation(line: 99, column: 3, scope: !38)
!62 = !DILocation(line: 101, column: 3, scope: !38)
!63 = !DILocation(line: 102, column: 3, scope: !38)
!64 = !DILocation(line: 104, column: 3, scope: !38)
!65 = !DILocation(line: 105, column: 3, scope: !38)
!66 = !DILocation(line: 107, column: 3, scope: !38)
!67 = !DILocation(line: 108, column: 3, scope: !38)
!68 = distinct !DISubprogram(name: "RemoteReadsTest", linkageName: "RemoteReadsTest", scope: !2, file: !2, line: 55, type: !6, scopeLine: 55, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!69 = !DILocation(line: 55, column: 12, scope: !68)
!70 = distinct !DISubprogram(name: "RemoteReadsADTTest", linkageName: "RemoteReadsADTTest", scope: !2, file: !2, line: 113, type: !6, scopeLine: 113, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!71 = distinct !DISubprogram(name: "RemoteReadsADTTest", linkageName: "RemoteReadsADTTest", scope: !2, file: !2, line: 113, type: !6, scopeLine: 113, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = !DILocation(line: 113, column: 12, scope: !71)
!73 = distinct !DISubprogram(name: "OutgoingMsgTest", linkageName: "OutgoingMsgTest", scope: !2, file: !2, line: 124, type: !6, scopeLine: 124, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!74 = !DILocation(line: 125, column: 9, scope: !73)
!75 = !DILocation(line: 129, column: 18, scope: !73)
!76 = !DILocation(line: 130, column: 10, scope: !73)
!77 = !DILocation(line: 131, column: 3, scope: !73)
!78 = !DILocation(line: 132, column: 8, scope: !73)
!79 = !DILocation(line: 134, column: 3, scope: !73)
!80 = !DILocation(line: 135, column: 8, scope: !73)
!81 = !DILocation(line: 137, column: 3, scope: !73)
!82 = distinct !DISubprogram(name: "OutgoingMsgTest", linkageName: "OutgoingMsgTest", scope: !2, file: !2, line: 124, type: !6, scopeLine: 124, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!83 = !DILocation(line: 124, column: 12, scope: !82)
!84 = distinct !DISubprogram(name: "ExceptionTest", linkageName: "ExceptionTest", scope: !2, file: !2, line: 141, type: !6, scopeLine: 141, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!85 = !DILocation(line: 142, column: 7, scope: !84)
!86 = !DILocation(line: 144, column: 3, scope: !84)
!87 = distinct !DISubprogram(name: "ExceptionTest", linkageName: "ExceptionTest", scope: !2, file: !2, line: 141, type: !6, scopeLine: 141, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!88 = !DILocation(line: 141, column: 12, scope: !87)
!89 = distinct !DISubprogram(name: "AssignTest", linkageName: "AssignTest", scope: !2, file: !2, line: 147, type: !6, scopeLine: 147, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!90 = !DILocation(line: 148, column: 7, scope: !89)
!91 = !DILocation(line: 149, column: 3, scope: !89)
!92 = !DILocation(line: 150, column: 15, scope: !89)
!93 = !DILocation(line: 151, column: 7, scope: !89)
!94 = !DILocation(line: 152, column: 3, scope: !89)
!95 = !DILocation(line: 153, column: 15, scope: !89)
!96 = !DILocation(line: 154, column: 19, scope: !89)
!97 = !DILocation(line: 155, column: 19, scope: !89)
!98 = !DILocation(line: 156, column: 21, scope: !89)
!99 = !DILocation(line: 157, column: 7, scope: !89)
!100 = !DILocation(line: 158, column: 3, scope: !89)
!101 = !DILocation(line: 159, column: 8, scope: !89)
!102 = !DILocation(line: 160, column: 8, scope: !89)
!103 = !DILocation(line: 161, column: 3, scope: !89)
!104 = distinct !DISubprogram(name: "AssignTest", linkageName: "AssignTest", scope: !2, file: !2, line: 147, type: !6, scopeLine: 147, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!105 = !DILocation(line: 147, column: 12, scope: !104)
