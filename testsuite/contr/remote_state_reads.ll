

; gas_remaining: 4001999
; ModuleID = 'RRContract'
source_filename = "RRContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_31" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_65" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_64"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_64" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_66"**, %"$TyDescrTy_ADTTyp_65"* }
%"$TyDescrTy_ADTTyp_Constr_66" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_79" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrFieldTyp_88" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_89" = type { i32, %"$TyDescr_AddrFieldTyp_88"* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_1501" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1502" = type { %ParamDescrString, i32, %"$ParamDescr_1501"* }
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
@"$TyDescr_Int32_Prim_32" = global %"$TyDescrTy_PrimTyp_31" zeroinitializer
@"$TyDescr_Int32_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int32_Prim_32" to i8*) }
@"$TyDescr_Uint32_Prim_34" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 0 }
@"$TyDescr_Uint32_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint32_Prim_34" to i8*) }
@"$TyDescr_Int64_Prim_36" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 1 }
@"$TyDescr_Int64_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int64_Prim_36" to i8*) }
@"$TyDescr_Uint64_Prim_38" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 1 }
@"$TyDescr_Uint64_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint64_Prim_38" to i8*) }
@"$TyDescr_Int128_Prim_40" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 2 }
@"$TyDescr_Int128_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int128_Prim_40" to i8*) }
@"$TyDescr_Uint128_Prim_42" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 2 }
@"$TyDescr_Uint128_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint128_Prim_42" to i8*) }
@"$TyDescr_Int256_Prim_44" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 3 }
@"$TyDescr_Int256_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int256_Prim_44" to i8*) }
@"$TyDescr_Uint256_Prim_46" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 3 }
@"$TyDescr_Uint256_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint256_Prim_46" to i8*) }
@"$TyDescr_String_Prim_48" = global %"$TyDescrTy_PrimTyp_31" { i32 2, i32 0 }
@"$TyDescr_String_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_String_Prim_48" to i8*) }
@"$TyDescr_Bnum_Prim_50" = global %"$TyDescrTy_PrimTyp_31" { i32 3, i32 0 }
@"$TyDescr_Bnum_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bnum_Prim_50" to i8*) }
@"$TyDescr_Message_Prim_52" = global %"$TyDescrTy_PrimTyp_31" { i32 4, i32 0 }
@"$TyDescr_Message_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Message_Prim_52" to i8*) }
@"$TyDescr_Event_Prim_54" = global %"$TyDescrTy_PrimTyp_31" { i32 5, i32 0 }
@"$TyDescr_Event_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Event_Prim_54" to i8*) }
@"$TyDescr_Exception_Prim_56" = global %"$TyDescrTy_PrimTyp_31" { i32 6, i32 0 }
@"$TyDescr_Exception_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Exception_Prim_56" to i8*) }
@"$TyDescr_ReplicateContr_Prim_58" = global %"$TyDescrTy_PrimTyp_31" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_ReplicateContr_Prim_58" to i8*) }
@"$TyDescr_Bystr_Prim_60" = global %"$TyDescrTy_PrimTyp_31" { i32 7, i32 0 }
@"$TyDescr_Bystr_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr_Prim_60" to i8*) }
@"$TyDescr_Bystr20_Prim_62" = global %"$TyDescrTy_PrimTyp_31" { i32 8, i32 20 }
@"$TyDescr_Bystr20_63" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr20_Prim_62" to i8*) }
@"$TyDescr_ADT_List_Message_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_Message_ADTTyp_Specl_112" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_121" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_130" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_end_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_139" to i8*) }
@"$TyDescr_ADT_List_ByStr20_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_148" to i8*) }
@"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_157" to i8*) }
@"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_166" to i8*) }
@"$TyDescr_ADT_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_172" to i8*) }
@"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_75" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_184" to i8*) }
@"$TyDescr_ADT_Option_Bool_76" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Option_Bool_ADTTyp_Specl_193" to i8*) }
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_205" to i8*) }
@"$TyDescr_ADT_Bool_78" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Bool_ADTTyp_Specl_217" to i8*) }
@"$TyDescr_Map_80" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_79"* @"$TyDescr_MapTyp_220" to i8*) }
@"$TyDescr_Map_81" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_79"* @"$TyDescr_MapTyp_221" to i8*) }
@"$TyDescr_Map_82" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_79"* @"$TyDescr_MapTyp_222" to i8*) }
@"$TyDescr_Map_83" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_79"* @"$TyDescr_MapTyp_223" to i8*) }
@"$TyDescr_Map_84" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_79"* @"$TyDescr_MapTyp_224" to i8*) }
@"$TyDescr_Map_85" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_79"* @"$TyDescr_MapTyp_225" to i8*) }
@"$TyDescr_Map_86" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_79"* @"$TyDescr_MapTyp_226" to i8*) }
@"$TyDescr_Map_87" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_79"* @"$TyDescr_MapTyp_227" to i8*) }
@"$TyDescr_Addr_90" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_230" to i8*) }
@"$TyDescr_Addr_91" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_233" to i8*) }
@"$TyDescr_Addr_92" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_236" to i8*) }
@"$TyDescr_Addr_93" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_242" to i8*) }
@"$TyDescr_Addr_94" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_245" to i8*) }
@"$TyDescr_Addr_95" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_248" to i8*) }
@"$TyDescr_Addr_96" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_251" to i8*) }
@"$TyDescr_Addr_97" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_254" to i8*) }
@"$TyDescr_Addr_98" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_257" to i8*) }
@"$TyDescr_Addr_99" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_260" to i8*) }
@"$TyDescr_Addr_100" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_267" to i8*) }
@"$TyDescr_Addr_101" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_269" to i8*) }
@"$TyDescr_Addr_102" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_89"* @"$TyDescr_AddrFields_270" to i8*) }
@"$TyDescr_List_ADTTyp_103" = unnamed_addr constant %"$TyDescrTy_ADTTyp_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_159", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 6, %"$TyDescrTy_ADTTyp_Specl_64"** getelementptr inbounds ([6 x %"$TyDescrTy_ADTTyp_Specl_64"*], [6 x %"$TyDescrTy_ADTTyp_Specl_64"*]* @"$TyDescr_List_ADTTyp_m_specls_158", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_104" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_53", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_67"]
@"$TyDescr_ADT_Cons_105" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_106" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_105", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_104", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_107" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_108" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_109" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_108", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_107", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_110" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_106", %"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_109"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_111" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_53"]
@"$TyDescr_List_Message_ADTTyp_Specl_112" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_111", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_66"*], [2 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_110", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_List_ADTTyp_103" }
@"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_113" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_91", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_68"]
@"$TyDescr_ADT_Cons_114" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_115" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_114", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_113", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_116" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_117" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_118" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_117", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_116", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_constrs_119" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_115", %"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_118"]
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_TArgs_120" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_91"]
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_121" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_TArgs_120", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_66"*], [2 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_constrs_119", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_List_ADTTyp_103" }
@"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_122" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_92", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_69"]
@"$TyDescr_ADT_Cons_123" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_124" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_123", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_122", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_125" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_126" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_127" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_126", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_125", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_constrs_128" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_124", %"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_127"]
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_TArgs_129" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_92"]
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_130" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_TArgs_129", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_66"*], [2 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_constrs_128", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_List_ADTTyp_103" }
@"$TyDescr_List_Cons_ByStr20_with_end_Constr_m_args_131" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_102", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_70"]
@"$TyDescr_ADT_Cons_132" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_end_ADTTyp_Constr_133" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_132", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_end_Constr_m_args_131", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_end_Constr_m_args_134" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_135" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_end_ADTTyp_Constr_136" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_135", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_end_Constr_m_args_134", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_constrs_137" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Cons_ByStr20_with_end_ADTTyp_Constr_133", %"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Nil_ByStr20_with_end_ADTTyp_Constr_136"]
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_TArgs_138" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_102"]
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_139" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_TArgs_138", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_66"*], [2 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_constrs_137", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_List_ADTTyp_103" }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_140" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_63", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_71"]
@"$TyDescr_ADT_Cons_141" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_142" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_141", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_140", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_143" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_144" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_145" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_144", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_143", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_146" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_142", %"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_145"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_147" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_63"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_148" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_147", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_66"*], [2 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_146", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_List_ADTTyp_103" }
@"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_149" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72"]
@"$TyDescr_ADT_Cons_150" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_151" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_150", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_149", i32 0, i32 0) }
@"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_152" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_153" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_154" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_153", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_152", i32 0, i32 0) }
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_155" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_151", %"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_154"]
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_156" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77"]
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_157" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_156", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_66"*], [2 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_155", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_List_ADTTyp_103" }
@"$TyDescr_List_ADTTyp_m_specls_158" = unnamed_addr constant [6 x %"$TyDescrTy_ADTTyp_Specl_64"*] [%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_Message_ADTTyp_Specl_112", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_121", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_130", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_139", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_148", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_157"]
@"$TyDescr_ADT_List_159" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_160" = unnamed_addr constant %"$TyDescrTy_ADTTyp_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_174", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_64"*], [2 x %"$TyDescrTy_ADTTyp_Specl_64"*]* @"$TyDescr_Pair_ADTTyp_m_specls_173", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_161" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_102", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77"]
@"$TyDescr_ADT_Pair_162" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_163" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_162", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_161", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_164" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_163"]
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_165" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_102", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77"]
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_166" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_165", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_66"*], [1 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_164", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Pair_ADTTyp_160" }
@"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_167" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_63", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77"]
@"$TyDescr_ADT_Pair_168" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_169" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_168", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_167", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_170" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_169"]
@"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_171" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_63", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77"]
@"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_172" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_171", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_66"*], [1 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_170", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Pair_ADTTyp_160" }
@"$TyDescr_Pair_ADTTyp_m_specls_173" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_64"*] [%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_166", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_172"]
@"$TyDescr_ADT_Pair_174" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Option_ADTTyp_175" = unnamed_addr constant %"$TyDescrTy_ADTTyp_65" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_195", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_64"*], [2 x %"$TyDescrTy_ADTTyp_Specl_64"*]* @"$TyDescr_Option_ADTTyp_m_specls_194", i32 0, i32 0) }
@"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_176" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_86"]
@"$TyDescr_ADT_Some_177" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_178" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_177", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_176", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_179" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_180" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_181" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_180", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_179", i32 0, i32 0) }
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_constrs_182" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_178", %"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_181"]
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_TArgs_183" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_86"]
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_184" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_TArgs_183", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_66"*], [2 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_constrs_182", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Option_ADTTyp_175" }
@"$TyDescr_Option_Some_Bool_Constr_m_args_185" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78"]
@"$TyDescr_ADT_Some_186" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_187" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_186", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_185", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_188" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_189" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_190" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_189", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_188", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_191" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_187", %"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_190"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_192" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_193" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_192", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_66"*], [2 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_191", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Option_ADTTyp_175" }
@"$TyDescr_Option_ADTTyp_m_specls_194" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_64"*] [%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_184", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Option_Bool_ADTTyp_Specl_193"]
@"$TyDescr_ADT_Option_195" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_196" = unnamed_addr constant %"$TyDescrTy_ADTTyp_65" { %TyDescrString { i8* getelementptr inbounds ([53 x i8], [53 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_207", i32 0, i32 0), i32 53 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_64"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_64"*], [1 x %"$TyDescrTy_ADTTyp_Specl_64"*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_m_specls_206", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_Constr_m_args_197" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_102"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_198" = unnamed_addr constant [51 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.Address1"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_ADTTyp_Constr_199" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_198", i32 0, i32 0), i32 51 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_Constr_m_args_197", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_Constr_m_args_200" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_98"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_201" = unnamed_addr constant [51 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.Address2"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_ADTTyp_Constr_202" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_201", i32 0, i32 0), i32 51 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_Constr_m_args_200", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_203" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_ADTTyp_Constr_199", %"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_ADTTyp_Constr_202"]
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_204" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_205" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_204", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_66"*], [2 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_203", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_196" }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_m_specls_206" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_64"*] [%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_205"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_207" = unnamed_addr constant [53 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.AddressADT"
@"$TyDescr_Bool_ADTTyp_208" = unnamed_addr constant %"$TyDescrTy_ADTTyp_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_219", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_64"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_64"*], [1 x %"$TyDescrTy_ADTTyp_Specl_64"*]* @"$TyDescr_Bool_ADTTyp_m_specls_218", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_209" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_210" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_211" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_210", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_209", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_212" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_213" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_214" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_213", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_212", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_215" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Bool_True_ADTTyp_Constr_211", %"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Bool_False_ADTTyp_Constr_214"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_216" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_217" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_216", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_66"*], [2 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_215", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Bool_ADTTyp_208" }
@"$TyDescr_Bool_ADTTyp_m_specls_218" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_64"*] [%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Bool_ADTTyp_Specl_217"]
@"$TyDescr_ADT_Bool_219" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_220" = unnamed_addr constant %"$TyDescr_MapTyp_79" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77" }
@"$TyDescr_MapTyp_221" = unnamed_addr constant %"$TyDescr_MapTyp_79" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_Map_80" }
@"$TyDescr_MapTyp_222" = unnamed_addr constant %"$TyDescr_MapTyp_79" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_63" }
@"$TyDescr_MapTyp_223" = unnamed_addr constant %"$TyDescr_MapTyp_79" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Map_84" }
@"$TyDescr_MapTyp_224" = unnamed_addr constant %"$TyDescr_MapTyp_79" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_63", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78" }
@"$TyDescr_MapTyp_225" = unnamed_addr constant %"$TyDescr_MapTyp_79" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Map_86" }
@"$TyDescr_MapTyp_226" = unnamed_addr constant %"$TyDescr_MapTyp_79" { %_TyDescrTy_Typ* @"$TyDescr_Addr_102", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78" }
@"$TyDescr_MapTyp_227" = unnamed_addr constant %"$TyDescr_MapTyp_79" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }
@"$TyDescr_AddrField_228" = unnamed_addr constant [1 x i8] c"h"
@"$TyDescr_AddrFields_229" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_88"] [%"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_228", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Map_80" }]
@"$TyDescr_AddrFields_230" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 1, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_88"], [1 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_229", i32 0, i32 0) }
@"$TyDescr_AddrField_231" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_232" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_88"] [%"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_231", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77" }]
@"$TyDescr_AddrFields_233" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 1, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_88"], [1 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_232", i32 0, i32 0) }
@"$TyDescr_AddrField_234" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_235" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_88"] [%"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_234", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }]
@"$TyDescr_AddrFields_236" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 1, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_88"], [1 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_235", i32 0, i32 0) }
@"$TyDescr_AddrField_237" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrField_238" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrField_239" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrField_240" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_241" = unnamed_addr constant [4 x %"$TyDescr_AddrFieldTyp_88"] [%"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_237", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }, %"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_238", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_86" }, %"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_239", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_85" }, %"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_240", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_35" }]
@"$TyDescr_AddrFields_242" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 4, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([4 x %"$TyDescr_AddrFieldTyp_88"], [4 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_241", i32 0, i32 0) }
@"$TyDescr_AddrField_243" = unnamed_addr constant [9 x i8] c"other_map"
@"$TyDescr_AddrFields_244" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_88"] [%"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$TyDescr_AddrField_243", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_Map_82" }]
@"$TyDescr_AddrFields_245" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 1, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_88"], [1 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_244", i32 0, i32 0) }
@"$TyDescr_AddrField_246" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrFields_247" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_88"] [%"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_246", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_83" }]
@"$TyDescr_AddrFields_248" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 1, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_88"], [1 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_247", i32 0, i32 0) }
@"$TyDescr_AddrField_249" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrFields_250" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_88"] [%"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_249", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_84" }]
@"$TyDescr_AddrFields_251" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 1, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_88"], [1 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_250", i32 0, i32 0) }
@"$TyDescr_AddrField_252" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_253" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_88"] [%"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_252", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_63" }]
@"$TyDescr_AddrFields_254" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 1, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_88"], [1 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_253", i32 0, i32 0) }
@"$TyDescr_AddrField_255" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_256" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_88"] [%"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_255", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }]
@"$TyDescr_AddrFields_257" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 1, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_88"], [1 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_256", i32 0, i32 0) }
@"$TyDescr_AddrField_258" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_259" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_88"] [%"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_258", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_35" }]
@"$TyDescr_AddrFields_260" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 1, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_88"], [1 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_259", i32 0, i32 0) }
@"$TyDescr_AddrField_261" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrField_262" = unnamed_addr constant [9 x i8] c"other_map"
@"$TyDescr_AddrField_263" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrField_264" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrField_265" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_266" = unnamed_addr constant [5 x %"$TyDescr_AddrFieldTyp_88"] [%"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_261", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }, %"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$TyDescr_AddrField_262", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_Map_87" }, %"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_263", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_86" }, %"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_264", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_85" }, %"$TyDescr_AddrFieldTyp_88" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_265", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_35" }]
@"$TyDescr_AddrFields_267" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 5, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([5 x %"$TyDescr_AddrFieldTyp_88"], [5 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_266", i32 0, i32 0) }
@"$TyDescr_AddrFields_268" = unnamed_addr constant [0 x %"$TyDescr_AddrFieldTyp_88"] zeroinitializer
@"$TyDescr_AddrFields_269" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 0, %"$TyDescr_AddrFieldTyp_88"* getelementptr inbounds ([0 x %"$TyDescr_AddrFieldTyp_88"], [0 x %"$TyDescr_AddrFieldTyp_88"]* @"$TyDescr_AddrFields_268", i32 0, i32 0) }
@"$TyDescr_AddrFields_270" = unnamed_addr constant %"$TyDescr_AddrTyp_89" { i32 -3, %"$TyDescr_AddrFieldTyp_88"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_cparam1 = global [20 x i8] zeroinitializer
@_cparam_cparam2 = global [20 x i8] zeroinitializer
@_cparam_cparam3 = global [20 x i8] zeroinitializer
@"$assign_test_1_288" = unnamed_addr constant [14 x i8] c"assign_test_1\00"
@"$assign_test_2_299" = unnamed_addr constant [14 x i8] c"assign_test_2\00"
@"$assign_test_3_310" = unnamed_addr constant [14 x i8] c"assign_test_3\00"
@"$assign_test_4_321" = unnamed_addr constant [14 x i8] c"assign_test_4\00"
@"$assign_test_5_332" = unnamed_addr constant [14 x i8] c"assign_test_5\00"
@"$assign_test_6_343" = unnamed_addr constant [14 x i8] c"assign_test_6\00"
@"$assign_test_7_354" = unnamed_addr constant [14 x i8] c"assign_test_7\00"
@"$assign_test_8_369" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_381" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_393" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$remote_reads_test_res_1_1_402" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$remote_reads_test_res_2_1_412" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$remote_reads_test_res_3_1_422" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$remote_reads_test_res_3_3_432" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$remote_reads_test_res_3_4_443" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$remote_reads_test_res_3_5_453" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$remote_reads_test_res_3_6_466" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$remote_reads_test_res_3_7_478" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$remote_reads_test_res_3_8_505" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$remote_reads_test_res_3_9_517" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$remote_reads_test_res_3_10_529" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$remote_reads_test_res_3_11_541" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$remote_reads_test_res_3_12_553" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$remote_reads_test_res_3_13_565" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$sender_balance_pre_574" = unnamed_addr constant [19 x i8] c"sender_balance_pre\00"
@"$sender_balance_mid_584" = unnamed_addr constant [19 x i8] c"sender_balance_mid\00"
@"$sender_balance_post_594" = unnamed_addr constant [20 x i8] c"sender_balance_post\00"
@"$_balance_604" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_1_1_630" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$_balance_634" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_2_1_660" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$_balance_664" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_1_690" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$transactionCount_694" = unnamed_addr constant [17 x i8] c"transactionCount\00"
@"$remote_reads_test_res_3_3_720" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$admin_724" = unnamed_addr constant [6 x i8] c"admin\00"
@"$remote_reads_test_res_3_4_750" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$_balance_754" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_5_781" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$owners_785" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_6_811" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$owners_816" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_7_840" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$owners_845" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_8_869" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$signatures_872" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_9_898" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$signatures_914" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_10_938" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$signatures_944" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_11_971" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$signatures_978" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_12_1002" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$signatures_1009" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_13_1033" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$stringlit_1086" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_1091" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_1094" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_1101" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_1108" = unnamed_addr constant [5 x i8] c"param"
@"$stringlit_1168" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1173" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1176" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1206" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1211" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1214" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1254" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_1259" = unnamed_addr constant [13 x i8] c"TestException"
@"$stringlit_1262" = unnamed_addr constant [5 x i8] c"value"
@"$assign_test_8_1315" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_1357" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_1453" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$assign_test_10_1491" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@_tydescr_table = constant [49 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_86", %_TyDescrTy_Typ* @"$TyDescr_Event_55", %_TyDescrTy_Typ* @"$TyDescr_Int64_37", %_TyDescrTy_Typ* @"$TyDescr_Addr_98", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_68", %_TyDescrTy_Typ* @"$TyDescr_Addr_94", %_TyDescrTy_Typ* @"$TyDescr_Addr_91", %_TyDescrTy_Typ* @"$TyDescr_Map_84", %_TyDescrTy_Typ* @"$TyDescr_Exception_57", %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_75", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_69", %_TyDescrTy_Typ* @"$TyDescr_Int256_45", %_TyDescrTy_Typ* @"$TyDescr_Int128_41", %_TyDescrTy_Typ* @"$TyDescr_Addr_100", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_74", %_TyDescrTy_Typ* @"$TyDescr_Bystr_61", %_TyDescrTy_Typ* @"$TyDescr_Addr_96", %_TyDescrTy_Typ* @"$TyDescr_Map_87", %_TyDescrTy_Typ* @"$TyDescr_Map_83", %_TyDescrTy_Typ* @"$TyDescr_Map_81", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_67", %_TyDescrTy_Typ* @"$TyDescr_Map_85", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77", %_TyDescrTy_Typ* @"$TyDescr_Addr_102", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_63", %_TyDescrTy_Typ* @"$TyDescr_Uint256_47", %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Addr_101", %_TyDescrTy_Typ* @"$TyDescr_Addr_92", %_TyDescrTy_Typ* @"$TyDescr_Addr_90", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_76", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39", %_TyDescrTy_Typ* @"$TyDescr_Bnum_51", %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_Addr_97", %_TyDescrTy_Typ* @"$TyDescr_Map_82", %_TyDescrTy_Typ* @"$TyDescr_Addr_93", %_TyDescrTy_Typ* @"$TyDescr_Addr_95", %_TyDescrTy_Typ* @"$TyDescr_Map_80", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_59", %_TyDescrTy_Typ* @"$TyDescr_Message_53", %_TyDescrTy_Typ* @"$TyDescr_Addr_99", %_TyDescrTy_Typ* @"$TyDescr_Int32_33"]
@_tydescr_table_length = constant i32 49
@"$pname__scilla_version_1503" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_1504" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_1505" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_cparam1_1506" = unnamed_addr constant [7 x i8] c"cparam1"
@"$pname_cparam2_1507" = unnamed_addr constant [7 x i8] c"cparam2"
@"$pname_cparam3_1508" = unnamed_addr constant [7 x i8] c"cparam3"
@_contract_parameters = constant [6 x %"$ParamDescr_1501"] [%"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_1503", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_35" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_1504", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_63" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_1505", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_51" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam1_1506", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam2_1507", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_101" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam3_1508", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }]
@_contract_parameters_length = constant i32 6
@"$tpname__amount_1509" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1510" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1511" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote1_1512" = unnamed_addr constant [7 x i8] c"remote1"
@"$tpname_remote2_1513" = unnamed_addr constant [7 x i8] c"remote2"
@"$tpname_remote3_1514" = unnamed_addr constant [7 x i8] c"remote3"
@"$tparams_RemoteReadsTest_1515" = unnamed_addr constant [6 x %"$ParamDescr_1501"] [%"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1509", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1510", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1511", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1512", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote2_1513", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_101" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote3_1514", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_93" }]
@"$tname_RemoteReadsTest_1516" = unnamed_addr constant [15 x i8] c"RemoteReadsTest"
@"$tpname__amount_1517" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1518" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1519" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_list1_1520" = unnamed_addr constant [5 x i8] c"list1"
@"$tpname_list2_1521" = unnamed_addr constant [5 x i8] c"list2"
@"$tpname_list3_1522" = unnamed_addr constant [5 x i8] c"list3"
@"$tpname_pair1_1523" = unnamed_addr constant [5 x i8] c"pair1"
@"$tpname_adt1_1524" = unnamed_addr constant [4 x i8] c"adt1"
@"$tpname_remote1_1525" = unnamed_addr constant [7 x i8] c"remote1"
@"$tparams_RemoteReadsADTTest_1526" = unnamed_addr constant [9 x %"$ParamDescr_1501"] [%"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1517", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1518", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1519", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list1_1520", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_70" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list2_1521", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_69" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list3_1522", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_68" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_pair1_1523", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_73" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_adt1_1524", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1525", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_90" }]
@"$tname_RemoteReadsADTTest_1527" = unnamed_addr constant [18 x i8] c"RemoteReadsADTTest"
@"$tpname__amount_1528" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1529" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1530" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_OutgoingMsgTest_1531" = unnamed_addr constant [3 x %"$ParamDescr_1501"] [%"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1528", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1529", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1530", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }]
@"$tname_OutgoingMsgTest_1532" = unnamed_addr constant [15 x i8] c"OutgoingMsgTest"
@"$tpname__amount_1533" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1534" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1535" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ExceptionTest_1536" = unnamed_addr constant [3 x %"$ParamDescr_1501"] [%"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1533", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1534", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1535", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }]
@"$tname_ExceptionTest_1537" = unnamed_addr constant [13 x i8] c"ExceptionTest"
@"$tpname__amount_1538" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1539" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1540" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AssignTest_1541" = unnamed_addr constant [3 x %"$ParamDescr_1501"] [%"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1538", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1539", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }, %"$ParamDescr_1501" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1540", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_102" }]
@"$tname_AssignTest_1542" = unnamed_addr constant [10 x i8] c"AssignTest"
@_transition_parameters = constant [5 x %"$TransDescr_1502"] [%"$TransDescr_1502" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_RemoteReadsTest_1516", i32 0, i32 0), i32 15 }, i32 6, %"$ParamDescr_1501"* getelementptr inbounds ([6 x %"$ParamDescr_1501"], [6 x %"$ParamDescr_1501"]* @"$tparams_RemoteReadsTest_1515", i32 0, i32 0) }, %"$TransDescr_1502" { %ParamDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$tname_RemoteReadsADTTest_1527", i32 0, i32 0), i32 18 }, i32 9, %"$ParamDescr_1501"* getelementptr inbounds ([9 x %"$ParamDescr_1501"], [9 x %"$ParamDescr_1501"]* @"$tparams_RemoteReadsADTTest_1526", i32 0, i32 0) }, %"$TransDescr_1502" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_OutgoingMsgTest_1532", i32 0, i32 0), i32 15 }, i32 3, %"$ParamDescr_1501"* getelementptr inbounds ([3 x %"$ParamDescr_1501"], [3 x %"$ParamDescr_1501"]* @"$tparams_OutgoingMsgTest_1531", i32 0, i32 0) }, %"$TransDescr_1502" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_ExceptionTest_1537", i32 0, i32 0), i32 13 }, i32 3, %"$ParamDescr_1501"* getelementptr inbounds ([3 x %"$ParamDescr_1501"], [3 x %"$ParamDescr_1501"]* @"$tparams_ExceptionTest_1536", i32 0, i32 0) }, %"$TransDescr_1502" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_AssignTest_1542", i32 0, i32 0), i32 10 }, i32 3, %"$ParamDescr_1501"* getelementptr inbounds ([3 x %"$ParamDescr_1501"], [3 x %"$ParamDescr_1501"]* @"$tparams_AssignTest_1541", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define void @_init_libs() {
entry:
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 5, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %entry
  %"$consume_275" = sub i64 %"$gasrem_271", 5
  store i64 %"$consume_275", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
entry:
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %entry
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$assign_test_1_4" = alloca [20 x i8], align 1
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %"$cparam3_286" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_286", [20 x i8]* %"$assign_test_1_4", align 1
  %"$execptr_load_287" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_1_4_289" = load [20 x i8], [20 x i8]* %"$assign_test_1_4", align 1
  %"$update_value_290" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_1_4_289", [20 x i8]* %"$update_value_290", align 1
  %"$update_value_291" = bitcast [20 x i8]* %"$update_value_290" to i8*
  call void @_update_field(i8* %"$execptr_load_287", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_1_288", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i8* %"$update_value_291")
  %"$assign_test_2_5" = alloca [20 x i8], align 1
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 1, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_284"
  %"$consume_296" = sub i64 %"$gasrem_292", 1
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %"$cparam3_297" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_297", [20 x i8]* %"$assign_test_2_5", align 1
  %"$execptr_load_298" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_2_5_300" = load [20 x i8], [20 x i8]* %"$assign_test_2_5", align 1
  %"$update_value_301" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_2_5_300", [20 x i8]* %"$update_value_301", align 1
  %"$update_value_302" = bitcast [20 x i8]* %"$update_value_301" to i8*
  call void @_update_field(i8* %"$execptr_load_298", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_2_299", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i8* %"$update_value_302")
  %"$assign_test_3_6" = alloca [20 x i8], align 1
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_295"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %"$cparam3_308" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_308", [20 x i8]* %"$assign_test_3_6", align 1
  %"$execptr_load_309" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_3_6_311" = load [20 x i8], [20 x i8]* %"$assign_test_3_6", align 1
  %"$update_value_312" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_3_6_311", [20 x i8]* %"$update_value_312", align 1
  %"$update_value_313" = bitcast [20 x i8]* %"$update_value_312" to i8*
  call void @_update_field(i8* %"$execptr_load_309", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_3_310", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i8* %"$update_value_313")
  %"$assign_test_4_7" = alloca [20 x i8], align 1
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_306"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %"$cparam3_319" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_319", [20 x i8]* %"$assign_test_4_7", align 1
  %"$execptr_load_320" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_4_7_322" = load [20 x i8], [20 x i8]* %"$assign_test_4_7", align 1
  %"$update_value_323" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_4_7_322", [20 x i8]* %"$update_value_323", align 1
  %"$update_value_324" = bitcast [20 x i8]* %"$update_value_323" to i8*
  call void @_update_field(i8* %"$execptr_load_320", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_4_321", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i8* %"$update_value_324")
  %"$assign_test_5_8" = alloca [20 x i8], align 1
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_317"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$cparam3_330" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_330", [20 x i8]* %"$assign_test_5_8", align 1
  %"$execptr_load_331" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_5_8_333" = load [20 x i8], [20 x i8]* %"$assign_test_5_8", align 1
  %"$update_value_334" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_5_8_333", [20 x i8]* %"$update_value_334", align 1
  %"$update_value_335" = bitcast [20 x i8]* %"$update_value_334" to i8*
  call void @_update_field(i8* %"$execptr_load_331", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_5_332", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i8* %"$update_value_335")
  %"$assign_test_6_9" = alloca [20 x i8], align 1
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_328"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %"$cparam3_341" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_341", [20 x i8]* %"$assign_test_6_9", align 1
  %"$execptr_load_342" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_6_9_344" = load [20 x i8], [20 x i8]* %"$assign_test_6_9", align 1
  %"$update_value_345" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_6_9_344", [20 x i8]* %"$update_value_345", align 1
  %"$update_value_346" = bitcast [20 x i8]* %"$update_value_345" to i8*
  call void @_update_field(i8* %"$execptr_load_342", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_6_343", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i8* %"$update_value_346")
  %"$assign_test_7_10" = alloca [20 x i8], align 1
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_339"
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %"$cparam3_352" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_352", [20 x i8]* %"$assign_test_7_10", align 1
  %"$execptr_load_353" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_7_10_355" = load [20 x i8], [20 x i8]* %"$assign_test_7_10", align 1
  %"$update_value_356" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_7_10_355", [20 x i8]* %"$update_value_356", align 1
  %"$update_value_357" = bitcast [20 x i8]* %"$update_value_356" to i8*
  call void @_update_field(i8* %"$execptr_load_353", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_7_354", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i8* %"$update_value_357")
  %"$assign_test_8_11" = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_350"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %"$cparam1_363" = load [20 x i8], [20 x i8]* @_cparam_cparam1, align 1
  %"$adtval_364_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_364_salloc" = call i8* @_salloc(i8* %"$adtval_364_load", i64 21)
  %"$adtval_364" = bitcast i8* %"$adtval_364_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1*
  %"$adtgep_365" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_364", i32 0, i32 0
  store i8 0, i8* %"$adtgep_365", align 1
  %"$adtgep_366" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_364", i32 0, i32 1
  store [20 x i8] %"$cparam1_363", [20 x i8]* %"$adtgep_366", align 1
  %"$adtptr_367" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_364" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_367", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_11", align 8
  %"$execptr_load_368" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_8_11_370" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_11", align 8
  %"$update_value_371" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_8_11_370" to i8*
  call void @_update_field(i8* %"$execptr_load_368", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_369", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77", i32 0, i8* null, i8* %"$update_value_371")
  %"$assign_test_9_12" = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_361"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %"$adtval_377_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_377_salloc" = call i8* @_salloc(i8* %"$adtval_377_load", i64 1)
  %"$adtval_377" = bitcast i8* %"$adtval_377_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_378" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_377", i32 0, i32 0
  store i8 1, i8* %"$adtgep_378", align 1
  %"$adtptr_379" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_377" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_379", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_12", align 8
  %"$execptr_load_380" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_9_12_382" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_12", align 8
  %"$update_value_383" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_9_12_382" to i8*
  call void @_update_field(i8* %"$execptr_load_380", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_381", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", i32 0, i8* null, i8* %"$update_value_383")
  %"$assign_test_10_13" = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_375"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %"$execptr_load_389" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_390" = call i8* @_new_empty_map(i8* %"$execptr_load_389")
  %"$_new_empty_map_391" = bitcast i8* %"$_new_empty_map_call_390" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$_new_empty_map_391", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_13", align 8
  %"$execptr_load_392" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_10_13_394" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_13", align 8
  %"$update_value_395" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$assign_test_10_13_394" to i8*
  call void @_update_field(i8* %"$execptr_load_392", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_393", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_81", i32 0, i8* null, i8* %"$update_value_395")
  %"$remote_reads_test_res_1_1_14" = alloca %Uint128, align 8
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 1, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %"$have_gas_387"
  %"$consume_400" = sub i64 %"$gasrem_396", 1
  store i64 %"$consume_400", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_1_1_14", align 8
  %"$execptr_load_401" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_1_1_14_403" = load %Uint128, %Uint128* %"$remote_reads_test_res_1_1_14", align 8
  %"$update_value_404" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_1_1_14_403", %Uint128* %"$update_value_404", align 8
  %"$update_value_405" = bitcast %Uint128* %"$update_value_404" to i8*
  call void @_update_field(i8* %"$execptr_load_401", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_402", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_405")
  %"$remote_reads_test_res_2_1_15" = alloca %Uint128, align 8
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$have_gas_399"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$have_gas_399"
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_2_1_15", align 8
  %"$execptr_load_411" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_2_1_15_413" = load %Uint128, %Uint128* %"$remote_reads_test_res_2_1_15", align 8
  %"$update_value_414" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_2_1_15_413", %Uint128* %"$update_value_414", align 8
  %"$update_value_415" = bitcast %Uint128* %"$update_value_414" to i8*
  call void @_update_field(i8* %"$execptr_load_411", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_412", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_415")
  %"$remote_reads_test_res_3_1_16" = alloca %Uint128, align 8
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_409"
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_1_16", align 8
  %"$execptr_load_421" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_1_16_423" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_1_16", align 8
  %"$update_value_424" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_1_16_423", %Uint128* %"$update_value_424", align 8
  %"$update_value_425" = bitcast %Uint128* %"$update_value_424" to i8*
  call void @_update_field(i8* %"$execptr_load_421", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_422", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_425")
  %"$remote_reads_test_res_3_3_17" = alloca %Uint32, align 8
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 1, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_419"
  %"$consume_430" = sub i64 %"$gasrem_426", 1
  store i64 %"$consume_430", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$remote_reads_test_res_3_3_17", align 4
  %"$execptr_load_431" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_3_17_433" = load %Uint32, %Uint32* %"$remote_reads_test_res_3_3_17", align 4
  %"$update_value_434" = alloca %Uint32, align 8
  store %Uint32 %"$$remote_reads_test_res_3_3_17_433", %Uint32* %"$update_value_434", align 4
  %"$update_value_435" = bitcast %Uint32* %"$update_value_434" to i8*
  call void @_update_field(i8* %"$execptr_load_431", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_432", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i32 0, i8* null, i8* %"$update_value_435")
  %"$remote_reads_test_res_3_4_18" = alloca [20 x i8], align 1
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_429"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$cparam3_441" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_441", [20 x i8]* %"$remote_reads_test_res_3_4_18", align 1
  %"$execptr_load_442" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_4_18_444" = load [20 x i8], [20 x i8]* %"$remote_reads_test_res_3_4_18", align 1
  %"$update_value_445" = alloca [20 x i8], align 1
  store [20 x i8] %"$$remote_reads_test_res_3_4_18_444", [20 x i8]* %"$update_value_445", align 1
  %"$update_value_446" = bitcast [20 x i8]* %"$update_value_445" to i8*
  call void @_update_field(i8* %"$execptr_load_442", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_443", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i8* %"$update_value_446")
  %"$remote_reads_test_res_3_5_19" = alloca %Uint128, align 8
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_439"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_5_19", align 8
  %"$execptr_load_452" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_5_19_454" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_5_19", align 8
  %"$update_value_455" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_5_19_454", %Uint128* %"$update_value_455", align 8
  %"$update_value_456" = bitcast %Uint128* %"$update_value_455" to i8*
  call void @_update_field(i8* %"$execptr_load_452", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_453", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_456")
  %"$remote_reads_test_res_3_6_20" = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_450"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %"$execptr_load_462" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_463" = call i8* @_new_empty_map(i8* %"$execptr_load_462")
  %"$_new_empty_map_464" = bitcast i8* %"$_new_empty_map_call_463" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$_new_empty_map_464", %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_20", align 8
  %"$execptr_load_465" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_6_20_467" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_20", align 8
  %"$update_value_468" = bitcast %Map_ByStr20_with_end_Bool* %"$$remote_reads_test_res_3_6_20_467" to i8*
  call void @_update_field(i8* %"$execptr_load_465", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_466", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_86", i32 0, i8* null, i8* %"$update_value_468")
  %"$remote_reads_test_res_3_7_21" = alloca %TName_Bool*, align 8
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_460"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$adtval_474_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_474_salloc" = call i8* @_salloc(i8* %"$adtval_474_load", i64 1)
  %"$adtval_474" = bitcast i8* %"$adtval_474_salloc" to %CName_True*
  %"$adtgep_475" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_474", i32 0, i32 0
  store i8 0, i8* %"$adtgep_475", align 1
  %"$adtptr_476" = bitcast %CName_True* %"$adtval_474" to %TName_Bool*
  store %TName_Bool* %"$adtptr_476", %TName_Bool** %"$remote_reads_test_res_3_7_21", align 8
  %"$execptr_load_477" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_7_21_479" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_7_21", align 8
  %"$update_value_480" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_7_21_479" to i8*
  call void @_update_field(i8* %"$execptr_load_477", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_478", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i32 0, i8* null, i8* %"$update_value_480")
  %"$remote_reads_test_res_3_8_22" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_472"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %x = alloca %TName_Bool*, align 8
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %"$have_gas_484"
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  %"$adtval_491_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_491_salloc" = call i8* @_salloc(i8* %"$adtval_491_load", i64 1)
  %"$adtval_491" = bitcast i8* %"$adtval_491_salloc" to %CName_True*
  %"$adtgep_492" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_491", i32 0, i32 0
  store i8 0, i8* %"$adtgep_492", align 1
  %"$adtptr_493" = bitcast %CName_True* %"$adtval_491" to %TName_Bool*
  store %TName_Bool* %"$adtptr_493", %TName_Bool** %x, align 8
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_489"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_489"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$x_499" = load %TName_Bool*, %TName_Bool** %x, align 8
  %"$adtval_500_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_500_salloc" = call i8* @_salloc(i8* %"$adtval_500_load", i64 9)
  %"$adtval_500" = bitcast i8* %"$adtval_500_salloc" to %CName_Some_Bool*
  %"$adtgep_501" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_500", i32 0, i32 0
  store i8 0, i8* %"$adtgep_501", align 1
  %"$adtgep_502" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_500", i32 0, i32 1
  store %TName_Bool* %"$x_499", %TName_Bool** %"$adtgep_502", align 8
  %"$adtptr_503" = bitcast %CName_Some_Bool* %"$adtval_500" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_503", %TName_Option_Bool** %"$remote_reads_test_res_3_8_22", align 8
  %"$execptr_load_504" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_8_22_506" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_8_22", align 8
  %"$update_value_507" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_8_22_506" to i8*
  call void @_update_field(i8* %"$execptr_load_504", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_505", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_76", i32 0, i8* null, i8* %"$update_value_507")
  %"$remote_reads_test_res_3_9_23" = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_497"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %"$execptr_load_513" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_514" = call i8* @_new_empty_map(i8* %"$execptr_load_513")
  %"$_new_empty_map_515" = bitcast i8* %"$_new_empty_map_call_514" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$_new_empty_map_515", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_23", align 8
  %"$execptr_load_516" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_9_23_518" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_23", align 8
  %"$update_value_519" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_9_23_518" to i8*
  call void @_update_field(i8* %"$execptr_load_516", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_517", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_85", i32 0, i8* null, i8* %"$update_value_519")
  %"$remote_reads_test_res_3_10_24" = alloca %TName_Bool*, align 8
  %"$gasrem_520" = load i64, i64* @_gasrem, align 8
  %"$gascmp_521" = icmp ugt i64 1, %"$gasrem_520"
  br i1 %"$gascmp_521", label %"$out_of_gas_522", label %"$have_gas_523"

"$out_of_gas_522":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_523"

"$have_gas_523":                                  ; preds = %"$out_of_gas_522", %"$have_gas_511"
  %"$consume_524" = sub i64 %"$gasrem_520", 1
  store i64 %"$consume_524", i64* @_gasrem, align 8
  %"$adtval_525_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_525_salloc" = call i8* @_salloc(i8* %"$adtval_525_load", i64 1)
  %"$adtval_525" = bitcast i8* %"$adtval_525_salloc" to %CName_False*
  %"$adtgep_526" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_525", i32 0, i32 0
  store i8 1, i8* %"$adtgep_526", align 1
  %"$adtptr_527" = bitcast %CName_False* %"$adtval_525" to %TName_Bool*
  store %TName_Bool* %"$adtptr_527", %TName_Bool** %"$remote_reads_test_res_3_10_24", align 8
  %"$execptr_load_528" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_10_24_530" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_10_24", align 8
  %"$update_value_531" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_10_24_530" to i8*
  call void @_update_field(i8* %"$execptr_load_528", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_529", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i32 0, i8* null, i8* %"$update_value_531")
  %"$remote_reads_test_res_3_11_25" = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_533" = icmp ugt i64 1, %"$gasrem_532"
  br i1 %"$gascmp_533", label %"$out_of_gas_534", label %"$have_gas_535"

"$out_of_gas_534":                                ; preds = %"$have_gas_523"
  call void @_out_of_gas()
  br label %"$have_gas_535"

"$have_gas_535":                                  ; preds = %"$out_of_gas_534", %"$have_gas_523"
  %"$consume_536" = sub i64 %"$gasrem_532", 1
  store i64 %"$consume_536", i64* @_gasrem, align 8
  %"$adtval_537_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_537_salloc" = call i8* @_salloc(i8* %"$adtval_537_load", i64 1)
  %"$adtval_537" = bitcast i8* %"$adtval_537_salloc" to %"CName_None_Map_(ByStr20_with_end)_(Bool)"*
  %"$adtgep_538" = getelementptr inbounds %"CName_None_Map_(ByStr20_with_end)_(Bool)", %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_537", i32 0, i32 0
  store i8 1, i8* %"$adtgep_538", align 1
  %"$adtptr_539" = bitcast %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_537" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$adtptr_539", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_25", align 8
  %"$execptr_load_540" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_11_25_542" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_25", align 8
  %"$update_value_543" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_11_25_542" to i8*
  call void @_update_field(i8* %"$execptr_load_540", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_541", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_75", i32 0, i8* null, i8* %"$update_value_543")
  %"$remote_reads_test_res_3_12_26" = alloca %TName_Bool*, align 8
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %"$have_gas_535"
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %"$have_gas_535"
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  %"$adtval_549_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_549_salloc" = call i8* @_salloc(i8* %"$adtval_549_load", i64 1)
  %"$adtval_549" = bitcast i8* %"$adtval_549_salloc" to %CName_False*
  %"$adtgep_550" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_549", i32 0, i32 0
  store i8 1, i8* %"$adtgep_550", align 1
  %"$adtptr_551" = bitcast %CName_False* %"$adtval_549" to %TName_Bool*
  store %TName_Bool* %"$adtptr_551", %TName_Bool** %"$remote_reads_test_res_3_12_26", align 8
  %"$execptr_load_552" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_12_26_554" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_12_26", align 8
  %"$update_value_555" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_12_26_554" to i8*
  call void @_update_field(i8* %"$execptr_load_552", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_553", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i32 0, i8* null, i8* %"$update_value_555")
  %"$remote_reads_test_res_3_13_27" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_547"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  %"$adtval_561_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_561_salloc" = call i8* @_salloc(i8* %"$adtval_561_load", i64 1)
  %"$adtval_561" = bitcast i8* %"$adtval_561_salloc" to %CName_None_Bool*
  %"$adtgep_562" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_561", i32 0, i32 0
  store i8 1, i8* %"$adtgep_562", align 1
  %"$adtptr_563" = bitcast %CName_None_Bool* %"$adtval_561" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_563", %TName_Option_Bool** %"$remote_reads_test_res_3_13_27", align 8
  %"$execptr_load_564" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_13_27_566" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_13_27", align 8
  %"$update_value_567" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_13_27_566" to i8*
  call void @_update_field(i8* %"$execptr_load_564", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_565", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_76", i32 0, i8* null, i8* %"$update_value_567")
  %"$sender_balance_pre_28" = alloca %Uint128, align 8
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_559"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_pre_28", align 8
  %"$execptr_load_573" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_pre_28_575" = load %Uint128, %Uint128* %"$sender_balance_pre_28", align 8
  %"$update_value_576" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_pre_28_575", %Uint128* %"$update_value_576", align 8
  %"$update_value_577" = bitcast %Uint128* %"$update_value_576" to i8*
  call void @_update_field(i8* %"$execptr_load_573", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_pre_574", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_577")
  %"$sender_balance_mid_29" = alloca %Uint128, align 8
  %"$gasrem_578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_579" = icmp ugt i64 1, %"$gasrem_578"
  br i1 %"$gascmp_579", label %"$out_of_gas_580", label %"$have_gas_581"

"$out_of_gas_580":                                ; preds = %"$have_gas_571"
  call void @_out_of_gas()
  br label %"$have_gas_581"

"$have_gas_581":                                  ; preds = %"$out_of_gas_580", %"$have_gas_571"
  %"$consume_582" = sub i64 %"$gasrem_578", 1
  store i64 %"$consume_582", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_mid_29", align 8
  %"$execptr_load_583" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_mid_29_585" = load %Uint128, %Uint128* %"$sender_balance_mid_29", align 8
  %"$update_value_586" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_mid_29_585", %Uint128* %"$update_value_586", align 8
  %"$update_value_587" = bitcast %Uint128* %"$update_value_586" to i8*
  call void @_update_field(i8* %"$execptr_load_583", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_mid_584", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_587")
  %"$sender_balance_post_30" = alloca %Uint128, align 8
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_581"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_581"
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_post_30", align 8
  %"$execptr_load_593" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_post_30_595" = load %Uint128, %Uint128* %"$sender_balance_post_30", align 8
  %"$update_value_596" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_post_30_595", %Uint128* %"$update_value_596", align 8
  %"$update_value_597" = bitcast %Uint128* %"$update_value_596" to i8*
  call void @_update_field(i8* %"$execptr_load_593", i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$sender_balance_post_594", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_597")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_new_empty_map(i8*)

define internal void @"$RemoteReadsTest_598"(%Uint128 %_amount, [20 x i8]* %"$_origin_599", [20 x i8]* %"$_sender_600", [20 x i8]* %"$remote1_601", [20 x i8]* %"$remote2_602", [20 x i8]* %"$remote3_603") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_599", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_600", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_601", align 1
  %remote2 = load [20 x i8], [20 x i8]* %"$remote2_602", align 1
  %remote3 = load [20 x i8], [20 x i8]* %"$remote3_603", align 1
  %tmp_1_1 = alloca %Uint128, align 8
  %"$execptr_load_605" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_remote1_606" = alloca [20 x i8], align 1
  store [20 x i8] %remote1, [20 x i8]* %"$tmp_1_1_remote1_606", align 1
  %"$tmp_1_1_call_607" = call i8* @_fetch_remote_field(i8* %"$execptr_load_605", [20 x i8]* %"$tmp_1_1_remote1_606", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_604", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1)
  %"$tmp_1_1_608" = bitcast i8* %"$tmp_1_1_call_607" to %Uint128*
  %"$tmp_1_1_609" = load %Uint128, %Uint128* %"$tmp_1_1_608", align 8
  store %Uint128 %"$tmp_1_1_609", %Uint128* %tmp_1_1, align 8
  %"$_literal_cost_tmp_1_1_610" = alloca %Uint128, align 8
  %"$tmp_1_1_611" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_611", %Uint128* %"$_literal_cost_tmp_1_1_610", align 8
  %"$$_literal_cost_tmp_1_1_610_612" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_610" to i8*
  %"$_literal_cost_call_613" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_1_1_610_612")
  %"$gasadd_614" = add i64 %"$_literal_cost_call_613", 0
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 %"$gasadd_614", %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %entry
  %"$consume_619" = sub i64 %"$gasrem_615", %"$gasadd_614"
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_1_1_620" = alloca %Uint128, align 8
  %"$tmp_1_1_621" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_621", %Uint128* %"$_literal_cost_tmp_1_1_620", align 8
  %"$$_literal_cost_tmp_1_1_620_622" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_620" to i8*
  %"$_literal_cost_call_623" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_1_1_620_622")
  %"$gasrem_624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_625" = icmp ugt i64 %"$_literal_cost_call_623", %"$gasrem_624"
  br i1 %"$gascmp_625", label %"$out_of_gas_626", label %"$have_gas_627"

"$out_of_gas_626":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_627"

"$have_gas_627":                                  ; preds = %"$out_of_gas_626", %"$have_gas_618"
  %"$consume_628" = sub i64 %"$gasrem_624", %"$_literal_cost_call_623"
  store i64 %"$consume_628", i64* @_gasrem, align 8
  %"$execptr_load_629" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_631" = load %Uint128, %Uint128* %tmp_1_1, align 8
  %"$update_value_632" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_1_1_631", %Uint128* %"$update_value_632", align 8
  %"$update_value_633" = bitcast %Uint128* %"$update_value_632" to i8*
  call void @_update_field(i8* %"$execptr_load_629", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_630", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_633")
  %tmp_2_1 = alloca %Uint128, align 8
  %"$execptr_load_635" = load i8*, i8** @_execptr, align 8
  %"$tmp_2_1_remote2_636" = alloca [20 x i8], align 1
  store [20 x i8] %remote2, [20 x i8]* %"$tmp_2_1_remote2_636", align 1
  %"$tmp_2_1_call_637" = call i8* @_fetch_remote_field(i8* %"$execptr_load_635", [20 x i8]* %"$tmp_2_1_remote2_636", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_634", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1)
  %"$tmp_2_1_638" = bitcast i8* %"$tmp_2_1_call_637" to %Uint128*
  %"$tmp_2_1_639" = load %Uint128, %Uint128* %"$tmp_2_1_638", align 8
  store %Uint128 %"$tmp_2_1_639", %Uint128* %tmp_2_1, align 8
  %"$_literal_cost_tmp_2_1_640" = alloca %Uint128, align 8
  %"$tmp_2_1_641" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_641", %Uint128* %"$_literal_cost_tmp_2_1_640", align 8
  %"$$_literal_cost_tmp_2_1_640_642" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_640" to i8*
  %"$_literal_cost_call_643" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_2_1_640_642")
  %"$gasadd_644" = add i64 %"$_literal_cost_call_643", 0
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 %"$gasadd_644", %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_627"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_627"
  %"$consume_649" = sub i64 %"$gasrem_645", %"$gasadd_644"
  store i64 %"$consume_649", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_2_1_650" = alloca %Uint128, align 8
  %"$tmp_2_1_651" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_651", %Uint128* %"$_literal_cost_tmp_2_1_650", align 8
  %"$$_literal_cost_tmp_2_1_650_652" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_650" to i8*
  %"$_literal_cost_call_653" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_2_1_650_652")
  %"$gasrem_654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_655" = icmp ugt i64 %"$_literal_cost_call_653", %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_648"
  %"$consume_658" = sub i64 %"$gasrem_654", %"$_literal_cost_call_653"
  store i64 %"$consume_658", i64* @_gasrem, align 8
  %"$execptr_load_659" = load i8*, i8** @_execptr, align 8
  %"$tmp_2_1_661" = load %Uint128, %Uint128* %tmp_2_1, align 8
  %"$update_value_662" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_2_1_661", %Uint128* %"$update_value_662", align 8
  %"$update_value_663" = bitcast %Uint128* %"$update_value_662" to i8*
  call void @_update_field(i8* %"$execptr_load_659", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_660", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_663")
  %tmp_3_1 = alloca %Uint128, align 8
  %"$execptr_load_665" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_1_remote3_666" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_1_remote3_666", align 1
  %"$tmp_3_1_call_667" = call i8* @_fetch_remote_field(i8* %"$execptr_load_665", [20 x i8]* %"$tmp_3_1_remote3_666", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_664", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1)
  %"$tmp_3_1_668" = bitcast i8* %"$tmp_3_1_call_667" to %Uint128*
  %"$tmp_3_1_669" = load %Uint128, %Uint128* %"$tmp_3_1_668", align 8
  store %Uint128 %"$tmp_3_1_669", %Uint128* %tmp_3_1, align 8
  %"$_literal_cost_tmp_3_1_670" = alloca %Uint128, align 8
  %"$tmp_3_1_671" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_671", %Uint128* %"$_literal_cost_tmp_3_1_670", align 8
  %"$$_literal_cost_tmp_3_1_670_672" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_670" to i8*
  %"$_literal_cost_call_673" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_1_670_672")
  %"$gasadd_674" = add i64 %"$_literal_cost_call_673", 0
  %"$gasrem_675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_676" = icmp ugt i64 %"$gasadd_674", %"$gasrem_675"
  br i1 %"$gascmp_676", label %"$out_of_gas_677", label %"$have_gas_678"

"$out_of_gas_677":                                ; preds = %"$have_gas_657"
  call void @_out_of_gas()
  br label %"$have_gas_678"

"$have_gas_678":                                  ; preds = %"$out_of_gas_677", %"$have_gas_657"
  %"$consume_679" = sub i64 %"$gasrem_675", %"$gasadd_674"
  store i64 %"$consume_679", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_1_680" = alloca %Uint128, align 8
  %"$tmp_3_1_681" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_681", %Uint128* %"$_literal_cost_tmp_3_1_680", align 8
  %"$$_literal_cost_tmp_3_1_680_682" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_680" to i8*
  %"$_literal_cost_call_683" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_1_680_682")
  %"$gasrem_684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_685" = icmp ugt i64 %"$_literal_cost_call_683", %"$gasrem_684"
  br i1 %"$gascmp_685", label %"$out_of_gas_686", label %"$have_gas_687"

"$out_of_gas_686":                                ; preds = %"$have_gas_678"
  call void @_out_of_gas()
  br label %"$have_gas_687"

"$have_gas_687":                                  ; preds = %"$out_of_gas_686", %"$have_gas_678"
  %"$consume_688" = sub i64 %"$gasrem_684", %"$_literal_cost_call_683"
  store i64 %"$consume_688", i64* @_gasrem, align 8
  %"$execptr_load_689" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_1_691" = load %Uint128, %Uint128* %tmp_3_1, align 8
  %"$update_value_692" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_1_691", %Uint128* %"$update_value_692", align 8
  %"$update_value_693" = bitcast %Uint128* %"$update_value_692" to i8*
  call void @_update_field(i8* %"$execptr_load_689", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_690", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_693")
  %tmp_3_3 = alloca %Uint32, align 8
  %"$execptr_load_695" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_3_remote3_696" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_3_remote3_696", align 1
  %"$tmp_3_3_call_697" = call i8* @_fetch_remote_field(i8* %"$execptr_load_695", [20 x i8]* %"$tmp_3_3_remote3_696", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$transactionCount_694", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i32 0, i8* null, i32 1)
  %"$tmp_3_3_698" = bitcast i8* %"$tmp_3_3_call_697" to %Uint32*
  %"$tmp_3_3_699" = load %Uint32, %Uint32* %"$tmp_3_3_698", align 4
  store %Uint32 %"$tmp_3_3_699", %Uint32* %tmp_3_3, align 4
  %"$_literal_cost_tmp_3_3_700" = alloca %Uint32, align 8
  %"$tmp_3_3_701" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_701", %Uint32* %"$_literal_cost_tmp_3_3_700", align 4
  %"$$_literal_cost_tmp_3_3_700_702" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_700" to i8*
  %"$_literal_cost_call_703" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i8* %"$$_literal_cost_tmp_3_3_700_702")
  %"$gasadd_704" = add i64 %"$_literal_cost_call_703", 0
  %"$gasrem_705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_706" = icmp ugt i64 %"$gasadd_704", %"$gasrem_705"
  br i1 %"$gascmp_706", label %"$out_of_gas_707", label %"$have_gas_708"

"$out_of_gas_707":                                ; preds = %"$have_gas_687"
  call void @_out_of_gas()
  br label %"$have_gas_708"

"$have_gas_708":                                  ; preds = %"$out_of_gas_707", %"$have_gas_687"
  %"$consume_709" = sub i64 %"$gasrem_705", %"$gasadd_704"
  store i64 %"$consume_709", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_3_710" = alloca %Uint32, align 8
  %"$tmp_3_3_711" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_711", %Uint32* %"$_literal_cost_tmp_3_3_710", align 4
  %"$$_literal_cost_tmp_3_3_710_712" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_710" to i8*
  %"$_literal_cost_call_713" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i8* %"$$_literal_cost_tmp_3_3_710_712")
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 %"$_literal_cost_call_713", %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_708"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_708"
  %"$consume_718" = sub i64 %"$gasrem_714", %"$_literal_cost_call_713"
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %"$execptr_load_719" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_3_721" = load %Uint32, %Uint32* %tmp_3_3, align 4
  %"$update_value_722" = alloca %Uint32, align 8
  store %Uint32 %"$tmp_3_3_721", %Uint32* %"$update_value_722", align 4
  %"$update_value_723" = bitcast %Uint32* %"$update_value_722" to i8*
  call void @_update_field(i8* %"$execptr_load_719", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_720", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i32 0, i8* null, i8* %"$update_value_723")
  %tmp_3_4 = alloca [20 x i8], align 1
  %"$execptr_load_725" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_4_remote3_726" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_4_remote3_726", align 1
  %"$tmp_3_4_call_727" = call i8* @_fetch_remote_field(i8* %"$execptr_load_725", [20 x i8]* %"$tmp_3_4_remote3_726", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_724", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_102", i32 0, i8* null, i32 1)
  %"$tmp_3_4_728" = bitcast i8* %"$tmp_3_4_call_727" to [20 x i8]*
  %"$tmp_3_4_729" = load [20 x i8], [20 x i8]* %"$tmp_3_4_728", align 1
  store [20 x i8] %"$tmp_3_4_729", [20 x i8]* %tmp_3_4, align 1
  %"$_literal_cost_tmp_3_4_730" = alloca [20 x i8], align 1
  %"$tmp_3_4_731" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_731", [20 x i8]* %"$_literal_cost_tmp_3_4_730", align 1
  %"$$_literal_cost_tmp_3_4_730_732" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_730" to i8*
  %"$_literal_cost_call_733" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_102", i8* %"$$_literal_cost_tmp_3_4_730_732")
  %"$gasadd_734" = add i64 %"$_literal_cost_call_733", 0
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 %"$gasadd_734", %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %"$have_gas_717"
  %"$consume_739" = sub i64 %"$gasrem_735", %"$gasadd_734"
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_4_740" = alloca [20 x i8], align 1
  %"$tmp_3_4_741" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_741", [20 x i8]* %"$_literal_cost_tmp_3_4_740", align 1
  %"$$_literal_cost_tmp_3_4_740_742" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_740" to i8*
  %"$_literal_cost_call_743" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_102", i8* %"$$_literal_cost_tmp_3_4_740_742")
  %"$gasrem_744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_745" = icmp ugt i64 %"$_literal_cost_call_743", %"$gasrem_744"
  br i1 %"$gascmp_745", label %"$out_of_gas_746", label %"$have_gas_747"

"$out_of_gas_746":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_747"

"$have_gas_747":                                  ; preds = %"$out_of_gas_746", %"$have_gas_738"
  %"$consume_748" = sub i64 %"$gasrem_744", %"$_literal_cost_call_743"
  store i64 %"$consume_748", i64* @_gasrem, align 8
  %"$execptr_load_749" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_4_751" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  %"$update_value_752" = alloca [20 x i8], align 1
  store [20 x i8] %"$tmp_3_4_751", [20 x i8]* %"$update_value_752", align 1
  %"$update_value_753" = bitcast [20 x i8]* %"$update_value_752" to i8*
  call void @_update_field(i8* %"$execptr_load_749", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_750", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_102", i32 0, i8* null, i8* %"$update_value_753")
  %tmp_3_5 = alloca %Uint128, align 8
  %"$execptr_load_755" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_5_tmp_3_4_756" = alloca [20 x i8], align 1
  %"$tmp_3_4_757" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_757", [20 x i8]* %"$tmp_3_5_tmp_3_4_756", align 1
  %"$tmp_3_5_call_758" = call i8* @_fetch_remote_field(i8* %"$execptr_load_755", [20 x i8]* %"$tmp_3_5_tmp_3_4_756", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_754", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1)
  %"$tmp_3_5_759" = bitcast i8* %"$tmp_3_5_call_758" to %Uint128*
  %"$tmp_3_5_760" = load %Uint128, %Uint128* %"$tmp_3_5_759", align 8
  store %Uint128 %"$tmp_3_5_760", %Uint128* %tmp_3_5, align 8
  %"$_literal_cost_tmp_3_5_761" = alloca %Uint128, align 8
  %"$tmp_3_5_762" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_762", %Uint128* %"$_literal_cost_tmp_3_5_761", align 8
  %"$$_literal_cost_tmp_3_5_761_763" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_761" to i8*
  %"$_literal_cost_call_764" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_5_761_763")
  %"$gasadd_765" = add i64 %"$_literal_cost_call_764", 0
  %"$gasrem_766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_767" = icmp ugt i64 %"$gasadd_765", %"$gasrem_766"
  br i1 %"$gascmp_767", label %"$out_of_gas_768", label %"$have_gas_769"

"$out_of_gas_768":                                ; preds = %"$have_gas_747"
  call void @_out_of_gas()
  br label %"$have_gas_769"

"$have_gas_769":                                  ; preds = %"$out_of_gas_768", %"$have_gas_747"
  %"$consume_770" = sub i64 %"$gasrem_766", %"$gasadd_765"
  store i64 %"$consume_770", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_5_771" = alloca %Uint128, align 8
  %"$tmp_3_5_772" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_772", %Uint128* %"$_literal_cost_tmp_3_5_771", align 8
  %"$$_literal_cost_tmp_3_5_771_773" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_771" to i8*
  %"$_literal_cost_call_774" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_5_771_773")
  %"$gasrem_775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_776" = icmp ugt i64 %"$_literal_cost_call_774", %"$gasrem_775"
  br i1 %"$gascmp_776", label %"$out_of_gas_777", label %"$have_gas_778"

"$out_of_gas_777":                                ; preds = %"$have_gas_769"
  call void @_out_of_gas()
  br label %"$have_gas_778"

"$have_gas_778":                                  ; preds = %"$out_of_gas_777", %"$have_gas_769"
  %"$consume_779" = sub i64 %"$gasrem_775", %"$_literal_cost_call_774"
  store i64 %"$consume_779", i64* @_gasrem, align 8
  %"$execptr_load_780" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_5_782" = load %Uint128, %Uint128* %tmp_3_5, align 8
  %"$update_value_783" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_5_782", %Uint128* %"$update_value_783", align 8
  %"$update_value_784" = bitcast %Uint128* %"$update_value_783" to i8*
  call void @_update_field(i8* %"$execptr_load_780", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_781", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_784")
  %tmp_3_6 = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$execptr_load_786" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_remote3_787" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_6_remote3_787", align 1
  %"$tmp_3_6_call_788" = call i8* @_fetch_remote_field(i8* %"$execptr_load_786", [20 x i8]* %"$tmp_3_6_remote3_787", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_785", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_86", i32 0, i8* null, i32 1)
  %"$tmp_3_6_789" = bitcast i8* %"$tmp_3_6_call_788" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$tmp_3_6_789", %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$tmp_3_6_790" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_790_791" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_790" to i8*
  %"$_literal_cost_call_792" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_86", i8* %"$$tmp_3_6_790_791")
  %"$tmp_3_6_793" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_793_794" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_793" to i8*
  %"$_mapsortcost_call_795" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_86", i8* %"$$tmp_3_6_793_794")
  %"$gasadd_796" = add i64 %"$_literal_cost_call_792", %"$_mapsortcost_call_795"
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 %"$gasadd_796", %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %"$have_gas_778"
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %"$have_gas_778"
  %"$consume_801" = sub i64 %"$gasrem_797", %"$gasadd_796"
  store i64 %"$consume_801", i64* @_gasrem, align 8
  %"$tmp_3_6_802" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_802_803" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_802" to i8*
  %"$_literal_cost_call_804" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_86", i8* %"$$tmp_3_6_802_803")
  %"$gasrem_805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_806" = icmp ugt i64 %"$_literal_cost_call_804", %"$gasrem_805"
  br i1 %"$gascmp_806", label %"$out_of_gas_807", label %"$have_gas_808"

"$out_of_gas_807":                                ; preds = %"$have_gas_800"
  call void @_out_of_gas()
  br label %"$have_gas_808"

"$have_gas_808":                                  ; preds = %"$out_of_gas_807", %"$have_gas_800"
  %"$consume_809" = sub i64 %"$gasrem_805", %"$_literal_cost_call_804"
  store i64 %"$consume_809", i64* @_gasrem, align 8
  %"$execptr_load_810" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_812" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$update_value_813" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_812" to i8*
  call void @_update_field(i8* %"$execptr_load_810", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_811", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_86", i32 0, i8* null, i8* %"$update_value_813")
  %tmp_3_7 = alloca %TName_Bool*, align 8
  %"$indices_buf_814_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_814_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_814_salloc_load", i64 20)
  %"$indices_buf_814_salloc" = bitcast i8* %"$indices_buf_814_salloc_salloc" to [20 x i8]*
  %"$indices_buf_814" = bitcast [20 x i8]* %"$indices_buf_814_salloc" to i8*
  %"$indices_gep_815" = getelementptr i8, i8* %"$indices_buf_814", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_815" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_817" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_remote3_818" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_7_remote3_818", align 1
  %"$tmp_3_7_call_819" = call i8* @_fetch_remote_field(i8* %"$execptr_load_817", [20 x i8]* %"$tmp_3_7_remote3_818", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_816", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_86", i32 1, i8* %"$indices_buf_814", i32 0)
  %"$tmp_3_7_820" = bitcast i8* %"$tmp_3_7_call_819" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_7_820", %TName_Bool** %tmp_3_7, align 8
  %"$tmp_3_7_821" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_821_822" = bitcast %TName_Bool* %"$tmp_3_7_821" to i8*
  %"$_literal_cost_call_823" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i8* %"$$tmp_3_7_821_822")
  %"$gasadd_824" = add i64 %"$_literal_cost_call_823", 0
  %"$gasadd_825" = add i64 %"$gasadd_824", 1
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 %"$gasadd_825", %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_808"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_808"
  %"$consume_830" = sub i64 %"$gasrem_826", %"$gasadd_825"
  store i64 %"$consume_830", i64* @_gasrem, align 8
  %"$tmp_3_7_831" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_831_832" = bitcast %TName_Bool* %"$tmp_3_7_831" to i8*
  %"$_literal_cost_call_833" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i8* %"$$tmp_3_7_831_832")
  %"$gasrem_834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_835" = icmp ugt i64 %"$_literal_cost_call_833", %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %"$have_gas_829"
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %"$have_gas_829"
  %"$consume_838" = sub i64 %"$gasrem_834", %"$_literal_cost_call_833"
  store i64 %"$consume_838", i64* @_gasrem, align 8
  %"$execptr_load_839" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_841" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$update_value_842" = bitcast %TName_Bool* %"$tmp_3_7_841" to i8*
  call void @_update_field(i8* %"$execptr_load_839", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_840", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i32 0, i8* null, i8* %"$update_value_842")
  %tmp_3_8 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_843_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_843_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_843_salloc_load", i64 20)
  %"$indices_buf_843_salloc" = bitcast i8* %"$indices_buf_843_salloc_salloc" to [20 x i8]*
  %"$indices_buf_843" = bitcast [20 x i8]* %"$indices_buf_843_salloc" to i8*
  %"$indices_gep_844" = getelementptr i8, i8* %"$indices_buf_843", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_844" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_846" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_remote3_847" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_8_remote3_847", align 1
  %"$tmp_3_8_call_848" = call i8* @_fetch_remote_field(i8* %"$execptr_load_846", [20 x i8]* %"$tmp_3_8_remote3_847", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_845", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_86", i32 1, i8* %"$indices_buf_843", i32 1)
  %"$tmp_3_8_849" = bitcast i8* %"$tmp_3_8_call_848" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_8_849", %TName_Option_Bool** %tmp_3_8, align 8
  %"$tmp_3_8_850" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_850_851" = bitcast %TName_Option_Bool* %"$tmp_3_8_850" to i8*
  %"$_literal_cost_call_852" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_76", i8* %"$$tmp_3_8_850_851")
  %"$gasadd_853" = add i64 %"$_literal_cost_call_852", 0
  %"$gasadd_854" = add i64 %"$gasadd_853", 1
  %"$gasrem_855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_856" = icmp ugt i64 %"$gasadd_854", %"$gasrem_855"
  br i1 %"$gascmp_856", label %"$out_of_gas_857", label %"$have_gas_858"

"$out_of_gas_857":                                ; preds = %"$have_gas_837"
  call void @_out_of_gas()
  br label %"$have_gas_858"

"$have_gas_858":                                  ; preds = %"$out_of_gas_857", %"$have_gas_837"
  %"$consume_859" = sub i64 %"$gasrem_855", %"$gasadd_854"
  store i64 %"$consume_859", i64* @_gasrem, align 8
  %"$tmp_3_8_860" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_860_861" = bitcast %TName_Option_Bool* %"$tmp_3_8_860" to i8*
  %"$_literal_cost_call_862" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_76", i8* %"$$tmp_3_8_860_861")
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 %"$_literal_cost_call_862", %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_858"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_858"
  %"$consume_867" = sub i64 %"$gasrem_863", %"$_literal_cost_call_862"
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %"$execptr_load_868" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_870" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$update_value_871" = bitcast %TName_Option_Bool* %"$tmp_3_8_870" to i8*
  call void @_update_field(i8* %"$execptr_load_868", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_869", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_76", i32 0, i8* null, i8* %"$update_value_871")
  %tmp_3_9 = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$execptr_load_873" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_remote3_874" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_9_remote3_874", align 1
  %"$tmp_3_9_call_875" = call i8* @_fetch_remote_field(i8* %"$execptr_load_873", [20 x i8]* %"$tmp_3_9_remote3_874", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_872", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_85", i32 0, i8* null, i32 1)
  %"$tmp_3_9_876" = bitcast i8* %"$tmp_3_9_call_875" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_876", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$tmp_3_9_877" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_877_878" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_877" to i8*
  %"$_literal_cost_call_879" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_85", i8* %"$$tmp_3_9_877_878")
  %"$tmp_3_9_880" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_880_881" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_880" to i8*
  %"$_mapsortcost_call_882" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_85", i8* %"$$tmp_3_9_880_881")
  %"$gasadd_883" = add i64 %"$_literal_cost_call_879", %"$_mapsortcost_call_882"
  %"$gasrem_884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_885" = icmp ugt i64 %"$gasadd_883", %"$gasrem_884"
  br i1 %"$gascmp_885", label %"$out_of_gas_886", label %"$have_gas_887"

"$out_of_gas_886":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_887"

"$have_gas_887":                                  ; preds = %"$out_of_gas_886", %"$have_gas_866"
  %"$consume_888" = sub i64 %"$gasrem_884", %"$gasadd_883"
  store i64 %"$consume_888", i64* @_gasrem, align 8
  %"$tmp_3_9_889" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_889_890" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_889" to i8*
  %"$_literal_cost_call_891" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_85", i8* %"$$tmp_3_9_889_890")
  %"$gasrem_892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_893" = icmp ugt i64 %"$_literal_cost_call_891", %"$gasrem_892"
  br i1 %"$gascmp_893", label %"$out_of_gas_894", label %"$have_gas_895"

"$out_of_gas_894":                                ; preds = %"$have_gas_887"
  call void @_out_of_gas()
  br label %"$have_gas_895"

"$have_gas_895":                                  ; preds = %"$out_of_gas_894", %"$have_gas_887"
  %"$consume_896" = sub i64 %"$gasrem_892", %"$_literal_cost_call_891"
  store i64 %"$consume_896", i64* @_gasrem, align 8
  %"$execptr_load_897" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_899" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$update_value_900" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_899" to i8*
  call void @_update_field(i8* %"$execptr_load_897", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_898", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_85", i32 0, i8* null, i8* %"$update_value_900")
  %"$gasrem_901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_902" = icmp ugt i64 1, %"$gasrem_901"
  br i1 %"$gascmp_902", label %"$out_of_gas_903", label %"$have_gas_904"

"$out_of_gas_903":                                ; preds = %"$have_gas_895"
  call void @_out_of_gas()
  br label %"$have_gas_904"

"$have_gas_904":                                  ; preds = %"$out_of_gas_903", %"$have_gas_895"
  %"$consume_905" = sub i64 %"$gasrem_901", 1
  store i64 %"$consume_905", i64* @_gasrem, align 8
  %"$x_1" = alloca %Uint32, align 8
  %"$gasrem_906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_907" = icmp ugt i64 1, %"$gasrem_906"
  br i1 %"$gascmp_907", label %"$out_of_gas_908", label %"$have_gas_909"

"$out_of_gas_908":                                ; preds = %"$have_gas_904"
  call void @_out_of_gas()
  br label %"$have_gas_909"

"$have_gas_909":                                  ; preds = %"$out_of_gas_908", %"$have_gas_904"
  %"$consume_910" = sub i64 %"$gasrem_906", 1
  store i64 %"$consume_910", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$x_1", align 4
  %tmp_3_10 = alloca %TName_Bool*, align 8
  %"$indices_buf_911_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_911_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_911_salloc_load", i64 4)
  %"$indices_buf_911_salloc" = bitcast i8* %"$indices_buf_911_salloc_salloc" to [4 x i8]*
  %"$indices_buf_911" = bitcast [4 x i8]* %"$indices_buf_911_salloc" to i8*
  %"$$x_1_912" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_913" = getelementptr i8, i8* %"$indices_buf_911", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_913" to %Uint32*
  store %Uint32 %"$$x_1_912", %Uint32* %indices_cast2, align 4
  %"$execptr_load_915" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_remote3_916" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_10_remote3_916", align 1
  %"$tmp_3_10_call_917" = call i8* @_fetch_remote_field(i8* %"$execptr_load_915", [20 x i8]* %"$tmp_3_10_remote3_916", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_914", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_85", i32 1, i8* %"$indices_buf_911", i32 0)
  %"$tmp_3_10_918" = bitcast i8* %"$tmp_3_10_call_917" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_10_918", %TName_Bool** %tmp_3_10, align 8
  %"$tmp_3_10_919" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_919_920" = bitcast %TName_Bool* %"$tmp_3_10_919" to i8*
  %"$_literal_cost_call_921" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i8* %"$$tmp_3_10_919_920")
  %"$gasadd_922" = add i64 %"$_literal_cost_call_921", 0
  %"$gasadd_923" = add i64 %"$gasadd_922", 1
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 %"$gasadd_923", %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$have_gas_909"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$have_gas_909"
  %"$consume_928" = sub i64 %"$gasrem_924", %"$gasadd_923"
  store i64 %"$consume_928", i64* @_gasrem, align 8
  %"$tmp_3_10_929" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_929_930" = bitcast %TName_Bool* %"$tmp_3_10_929" to i8*
  %"$_literal_cost_call_931" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i8* %"$$tmp_3_10_929_930")
  %"$gasrem_932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_933" = icmp ugt i64 %"$_literal_cost_call_931", %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$have_gas_927"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$have_gas_927"
  %"$consume_936" = sub i64 %"$gasrem_932", %"$_literal_cost_call_931"
  store i64 %"$consume_936", i64* @_gasrem, align 8
  %"$execptr_load_937" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_939" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$update_value_940" = bitcast %TName_Bool* %"$tmp_3_10_939" to i8*
  call void @_update_field(i8* %"$execptr_load_937", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_938", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i32 0, i8* null, i8* %"$update_value_940")
  %tmp_3_11 = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$indices_buf_941_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_941_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_941_salloc_load", i64 4)
  %"$indices_buf_941_salloc" = bitcast i8* %"$indices_buf_941_salloc_salloc" to [4 x i8]*
  %"$indices_buf_941" = bitcast [4 x i8]* %"$indices_buf_941_salloc" to i8*
  %"$$x_1_942" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_943" = getelementptr i8, i8* %"$indices_buf_941", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_943" to %Uint32*
  store %Uint32 %"$$x_1_942", %Uint32* %indices_cast3, align 4
  %"$execptr_load_945" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_11_remote3_946" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_11_remote3_946", align 1
  %"$tmp_3_11_call_947" = call i8* @_fetch_remote_field(i8* %"$execptr_load_945", [20 x i8]* %"$tmp_3_11_remote3_946", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_944", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_85", i32 1, i8* %"$indices_buf_941", i32 1)
  %"$tmp_3_11_948" = bitcast i8* %"$tmp_3_11_call_947" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_948", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$tmp_3_11_949" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_949_950" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_949" to i8*
  %"$_literal_cost_call_951" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_75", i8* %"$$tmp_3_11_949_950")
  %"$tmp_3_11_952" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_952_953" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_952" to i8*
  %"$_mapsortcost_call_954" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_75", i8* %"$$tmp_3_11_952_953")
  %"$gasadd_955" = add i64 %"$_literal_cost_call_951", %"$_mapsortcost_call_954"
  %"$gasadd_956" = add i64 %"$gasadd_955", 1
  %"$gasrem_957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_958" = icmp ugt i64 %"$gasadd_956", %"$gasrem_957"
  br i1 %"$gascmp_958", label %"$out_of_gas_959", label %"$have_gas_960"

"$out_of_gas_959":                                ; preds = %"$have_gas_935"
  call void @_out_of_gas()
  br label %"$have_gas_960"

"$have_gas_960":                                  ; preds = %"$out_of_gas_959", %"$have_gas_935"
  %"$consume_961" = sub i64 %"$gasrem_957", %"$gasadd_956"
  store i64 %"$consume_961", i64* @_gasrem, align 8
  %"$tmp_3_11_962" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_962_963" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_962" to i8*
  %"$_literal_cost_call_964" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_75", i8* %"$$tmp_3_11_962_963")
  %"$gasrem_965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_966" = icmp ugt i64 %"$_literal_cost_call_964", %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %"$have_gas_960"
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %"$have_gas_960"
  %"$consume_969" = sub i64 %"$gasrem_965", %"$_literal_cost_call_964"
  store i64 %"$consume_969", i64* @_gasrem, align 8
  %"$execptr_load_970" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_11_972" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$update_value_973" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_972" to i8*
  call void @_update_field(i8* %"$execptr_load_970", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_971", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_75", i32 0, i8* null, i8* %"$update_value_973")
  %tmp_3_12 = alloca %TName_Bool*, align 8
  %"$indices_buf_974_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_974_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_974_salloc_load", i64 24)
  %"$indices_buf_974_salloc" = bitcast i8* %"$indices_buf_974_salloc_salloc" to [24 x i8]*
  %"$indices_buf_974" = bitcast [24 x i8]* %"$indices_buf_974_salloc" to i8*
  %"$$x_1_975" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_976" = getelementptr i8, i8* %"$indices_buf_974", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_976" to %Uint32*
  store %Uint32 %"$$x_1_975", %Uint32* %indices_cast4, align 4
  %"$indices_gep_977" = getelementptr i8, i8* %"$indices_buf_974", i32 4
  %indices_cast5 = bitcast i8* %"$indices_gep_977" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast5, align 1
  %"$execptr_load_979" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_12_remote3_980" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_12_remote3_980", align 1
  %"$tmp_3_12_call_981" = call i8* @_fetch_remote_field(i8* %"$execptr_load_979", [20 x i8]* %"$tmp_3_12_remote3_980", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_978", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_85", i32 2, i8* %"$indices_buf_974", i32 0)
  %"$tmp_3_12_982" = bitcast i8* %"$tmp_3_12_call_981" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_12_982", %TName_Bool** %tmp_3_12, align 8
  %"$tmp_3_12_983" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_983_984" = bitcast %TName_Bool* %"$tmp_3_12_983" to i8*
  %"$_literal_cost_call_985" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i8* %"$$tmp_3_12_983_984")
  %"$gasadd_986" = add i64 %"$_literal_cost_call_985", 0
  %"$gasadd_987" = add i64 %"$gasadd_986", 2
  %"$gasrem_988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_989" = icmp ugt i64 %"$gasadd_987", %"$gasrem_988"
  br i1 %"$gascmp_989", label %"$out_of_gas_990", label %"$have_gas_991"

"$out_of_gas_990":                                ; preds = %"$have_gas_968"
  call void @_out_of_gas()
  br label %"$have_gas_991"

"$have_gas_991":                                  ; preds = %"$out_of_gas_990", %"$have_gas_968"
  %"$consume_992" = sub i64 %"$gasrem_988", %"$gasadd_987"
  store i64 %"$consume_992", i64* @_gasrem, align 8
  %"$tmp_3_12_993" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_993_994" = bitcast %TName_Bool* %"$tmp_3_12_993" to i8*
  %"$_literal_cost_call_995" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i8* %"$$tmp_3_12_993_994")
  %"$gasrem_996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_997" = icmp ugt i64 %"$_literal_cost_call_995", %"$gasrem_996"
  br i1 %"$gascmp_997", label %"$out_of_gas_998", label %"$have_gas_999"

"$out_of_gas_998":                                ; preds = %"$have_gas_991"
  call void @_out_of_gas()
  br label %"$have_gas_999"

"$have_gas_999":                                  ; preds = %"$out_of_gas_998", %"$have_gas_991"
  %"$consume_1000" = sub i64 %"$gasrem_996", %"$_literal_cost_call_995"
  store i64 %"$consume_1000", i64* @_gasrem, align 8
  %"$execptr_load_1001" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_12_1003" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$update_value_1004" = bitcast %TName_Bool* %"$tmp_3_12_1003" to i8*
  call void @_update_field(i8* %"$execptr_load_1001", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_1002", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i32 0, i8* null, i8* %"$update_value_1004")
  %tmp_3_13 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_1005_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1005_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1005_salloc_load", i64 24)
  %"$indices_buf_1005_salloc" = bitcast i8* %"$indices_buf_1005_salloc_salloc" to [24 x i8]*
  %"$indices_buf_1005" = bitcast [24 x i8]* %"$indices_buf_1005_salloc" to i8*
  %"$$x_1_1006" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_1007" = getelementptr i8, i8* %"$indices_buf_1005", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_1007" to %Uint32*
  store %Uint32 %"$$x_1_1006", %Uint32* %indices_cast6, align 4
  %"$indices_gep_1008" = getelementptr i8, i8* %"$indices_buf_1005", i32 4
  %indices_cast7 = bitcast i8* %"$indices_gep_1008" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast7, align 1
  %"$execptr_load_1010" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_13_remote3_1011" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_13_remote3_1011", align 1
  %"$tmp_3_13_call_1012" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1010", [20 x i8]* %"$tmp_3_13_remote3_1011", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_1009", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_85", i32 2, i8* %"$indices_buf_1005", i32 1)
  %"$tmp_3_13_1013" = bitcast i8* %"$tmp_3_13_call_1012" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_13_1013", %TName_Option_Bool** %tmp_3_13, align 8
  %"$tmp_3_13_1014" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_1014_1015" = bitcast %TName_Option_Bool* %"$tmp_3_13_1014" to i8*
  %"$_literal_cost_call_1016" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_76", i8* %"$$tmp_3_13_1014_1015")
  %"$gasadd_1017" = add i64 %"$_literal_cost_call_1016", 0
  %"$gasadd_1018" = add i64 %"$gasadd_1017", 2
  %"$gasrem_1019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1020" = icmp ugt i64 %"$gasadd_1018", %"$gasrem_1019"
  br i1 %"$gascmp_1020", label %"$out_of_gas_1021", label %"$have_gas_1022"

"$out_of_gas_1021":                               ; preds = %"$have_gas_999"
  call void @_out_of_gas()
  br label %"$have_gas_1022"

"$have_gas_1022":                                 ; preds = %"$out_of_gas_1021", %"$have_gas_999"
  %"$consume_1023" = sub i64 %"$gasrem_1019", %"$gasadd_1018"
  store i64 %"$consume_1023", i64* @_gasrem, align 8
  %"$tmp_3_13_1024" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_1024_1025" = bitcast %TName_Option_Bool* %"$tmp_3_13_1024" to i8*
  %"$_literal_cost_call_1026" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_76", i8* %"$$tmp_3_13_1024_1025")
  %"$gasrem_1027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1028" = icmp ugt i64 %"$_literal_cost_call_1026", %"$gasrem_1027"
  br i1 %"$gascmp_1028", label %"$out_of_gas_1029", label %"$have_gas_1030"

"$out_of_gas_1029":                               ; preds = %"$have_gas_1022"
  call void @_out_of_gas()
  br label %"$have_gas_1030"

"$have_gas_1030":                                 ; preds = %"$out_of_gas_1029", %"$have_gas_1022"
  %"$consume_1031" = sub i64 %"$gasrem_1027", %"$_literal_cost_call_1026"
  store i64 %"$consume_1031", i64* @_gasrem, align 8
  %"$execptr_load_1032" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_13_1034" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$update_value_1035" = bitcast %TName_Option_Bool* %"$tmp_3_13_1034" to i8*
  call void @_update_field(i8* %"$execptr_load_1032", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_1033", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_76", i32 0, i8* null, i8* %"$update_value_1035")
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

define void @RemoteReadsTest(i8* %0) {
entry:
  %"$_amount_1037" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1038" = bitcast i8* %"$_amount_1037" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1038", align 8
  %"$_origin_1039" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1040" = bitcast i8* %"$_origin_1039" to [20 x i8]*
  %"$_sender_1041" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1042" = bitcast i8* %"$_sender_1041" to [20 x i8]*
  %"$remote1_1043" = getelementptr i8, i8* %0, i32 56
  %"$remote1_1044" = bitcast i8* %"$remote1_1043" to [20 x i8]*
  %"$remote2_1045" = getelementptr i8, i8* %0, i32 76
  %"$remote2_1046" = bitcast i8* %"$remote2_1045" to [20 x i8]*
  %"$remote3_1047" = getelementptr i8, i8* %0, i32 96
  %"$remote3_1048" = bitcast i8* %"$remote3_1047" to [20 x i8]*
  call void @"$RemoteReadsTest_598"(%Uint128 %_amount, [20 x i8]* %"$_origin_1040", [20 x i8]* %"$_sender_1042", [20 x i8]* %"$remote1_1044", [20 x i8]* %"$remote2_1046", [20 x i8]* %"$remote3_1048")
  ret void
}

define internal void @"$RemoteReadsADTTest_1049"(%Uint128 %_amount, [20 x i8]* %"$_origin_1050", [20 x i8]* %"$_sender_1051", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1052") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1050", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1051", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_1052", align 1
  ret void
}

define void @RemoteReadsADTTest(i8* %0) {
entry:
  %"$_amount_1054" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1055" = bitcast i8* %"$_amount_1054" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1055", align 8
  %"$_origin_1056" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1057" = bitcast i8* %"$_origin_1056" to [20 x i8]*
  %"$_sender_1058" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1059" = bitcast i8* %"$_sender_1058" to [20 x i8]*
  %"$list1_1060" = getelementptr i8, i8* %0, i32 56
  %"$list1_1061" = bitcast i8* %"$list1_1060" to %TName_List_ByStr20_with_end**
  %list1 = load %TName_List_ByStr20_with_end*, %TName_List_ByStr20_with_end** %"$list1_1061", align 8
  %"$list2_1062" = getelementptr i8, i8* %0, i32 64
  %"$list2_1063" = bitcast i8* %"$list2_1062" to %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"**
  %list2 = load %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"*, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"** %"$list2_1063", align 8
  %"$list3_1064" = getelementptr i8, i8* %0, i32 72
  %"$list3_1065" = bitcast i8* %"$list3_1064" to %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"**
  %list3 = load %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"*, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"** %"$list3_1065", align 8
  %"$pair1_1066" = getelementptr i8, i8* %0, i32 80
  %"$pair1_1067" = bitcast i8* %"$pair1_1066" to %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %pair1 = load %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$pair1_1067", align 8
  %"$adt1_1068" = getelementptr i8, i8* %0, i32 88
  %"$adt1_1069" = bitcast i8* %"$adt1_1068" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %adt1 = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adt1_1069", align 8
  %"$remote1_1070" = getelementptr i8, i8* %0, i32 96
  %"$remote1_1071" = bitcast i8* %"$remote1_1070" to [20 x i8]*
  call void @"$RemoteReadsADTTest_1049"(%Uint128 %_amount, [20 x i8]* %"$_origin_1057", [20 x i8]* %"$_sender_1059", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1071")
  ret void
}

define internal void @"$OutgoingMsgTest_1072"(%Uint128 %_amount, [20 x i8]* %"$_origin_1073", [20 x i8]* %"$_sender_1074") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1073", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1074", align 1
  %"$gasrem_1075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1076" = icmp ugt i64 1, %"$gasrem_1075"
  br i1 %"$gascmp_1076", label %"$out_of_gas_1077", label %"$have_gas_1078"

"$out_of_gas_1077":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1078"

"$have_gas_1078":                                 ; preds = %"$out_of_gas_1077", %entry
  %"$consume_1079" = sub i64 %"$gasrem_1075", 1
  store i64 %"$consume_1079", i64* @_gasrem, align 8
  %msg = alloca i8*, align 8
  %"$gasrem_1080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1081" = icmp ugt i64 1, %"$gasrem_1080"
  br i1 %"$gascmp_1081", label %"$out_of_gas_1082", label %"$have_gas_1083"

"$out_of_gas_1082":                               ; preds = %"$have_gas_1078"
  call void @_out_of_gas()
  br label %"$have_gas_1083"

"$have_gas_1083":                                 ; preds = %"$out_of_gas_1082", %"$have_gas_1078"
  %"$consume_1084" = sub i64 %"$gasrem_1080", 1
  store i64 %"$consume_1084", i64* @_gasrem, align 8
  %"$msgobj_1085_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1085_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1085_salloc_load", i64 169)
  %"$msgobj_1085_salloc" = bitcast i8* %"$msgobj_1085_salloc_salloc" to [169 x i8]*
  %"$msgobj_1085" = bitcast [169 x i8]* %"$msgobj_1085_salloc" to i8*
  store i8 4, i8* %"$msgobj_1085", align 1
  %"$msgobj_fname_1087" = getelementptr i8, i8* %"$msgobj_1085", i32 1
  %"$msgobj_fname_1088" = bitcast i8* %"$msgobj_fname_1087" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1086", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1088", align 8
  %"$msgobj_td_1089" = getelementptr i8, i8* %"$msgobj_1085", i32 17
  %"$msgobj_td_1090" = bitcast i8* %"$msgobj_td_1089" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1090", align 8
  %"$msgobj_v_1092" = getelementptr i8, i8* %"$msgobj_1085", i32 25
  %"$msgobj_v_1093" = bitcast i8* %"$msgobj_v_1092" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1091", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_1093", align 8
  %"$msgobj_fname_1095" = getelementptr i8, i8* %"$msgobj_1085", i32 41
  %"$msgobj_fname_1096" = bitcast i8* %"$msgobj_fname_1095" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1094", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1096", align 8
  %"$msgobj_td_1097" = getelementptr i8, i8* %"$msgobj_1085", i32 57
  %"$msgobj_td_1098" = bitcast i8* %"$msgobj_td_1097" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_63", %_TyDescrTy_Typ** %"$msgobj_td_1098", align 8
  %"$msgobj_v_1099" = getelementptr i8, i8* %"$msgobj_1085", i32 65
  %"$msgobj_v_1100" = bitcast i8* %"$msgobj_v_1099" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_1100", align 1
  %"$msgobj_fname_1102" = getelementptr i8, i8* %"$msgobj_1085", i32 85
  %"$msgobj_fname_1103" = bitcast i8* %"$msgobj_fname_1102" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1101", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1103", align 8
  %"$msgobj_td_1104" = getelementptr i8, i8* %"$msgobj_1085", i32 101
  %"$msgobj_td_1105" = bitcast i8* %"$msgobj_td_1104" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ** %"$msgobj_td_1105", align 8
  %"$msgobj_v_1106" = getelementptr i8, i8* %"$msgobj_1085", i32 109
  %"$msgobj_v_1107" = bitcast i8* %"$msgobj_v_1106" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_1107", align 8
  %"$msgobj_fname_1109" = getelementptr i8, i8* %"$msgobj_1085", i32 125
  %"$msgobj_fname_1110" = bitcast i8* %"$msgobj_fname_1109" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1108", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1110", align 8
  %"$msgobj_td_1111" = getelementptr i8, i8* %"$msgobj_1085", i32 141
  %"$msgobj_td_1112" = bitcast i8* %"$msgobj_td_1111" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_63", %_TyDescrTy_Typ** %"$msgobj_td_1112", align 8
  %"$cparam3_1113" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1114" = getelementptr i8, i8* %"$msgobj_1085", i32 149
  %"$msgobj_v_1115" = bitcast i8* %"$msgobj_v_1114" to [20 x i8]*
  store [20 x i8] %"$cparam3_1113", [20 x i8]* %"$msgobj_v_1115", align 1
  store i8* %"$msgobj_1085", i8** %msg, align 8
  %"$gasrem_1117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1118" = icmp ugt i64 1, %"$gasrem_1117"
  br i1 %"$gascmp_1118", label %"$out_of_gas_1119", label %"$have_gas_1120"

"$out_of_gas_1119":                               ; preds = %"$have_gas_1083"
  call void @_out_of_gas()
  br label %"$have_gas_1120"

"$have_gas_1120":                                 ; preds = %"$out_of_gas_1119", %"$have_gas_1083"
  %"$consume_1121" = sub i64 %"$gasrem_1117", 1
  store i64 %"$consume_1121", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_1122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1123" = icmp ugt i64 1, %"$gasrem_1122"
  br i1 %"$gascmp_1123", label %"$out_of_gas_1124", label %"$have_gas_1125"

"$out_of_gas_1124":                               ; preds = %"$have_gas_1120"
  call void @_out_of_gas()
  br label %"$have_gas_1125"

"$have_gas_1125":                                 ; preds = %"$out_of_gas_1124", %"$have_gas_1120"
  %"$consume_1126" = sub i64 %"$gasrem_1122", 1
  store i64 %"$consume_1126", i64* @_gasrem, align 8
  %n = alloca %TName_List_Message*, align 8
  %"$gasrem_1127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1128" = icmp ugt i64 1, %"$gasrem_1127"
  br i1 %"$gascmp_1128", label %"$out_of_gas_1129", label %"$have_gas_1130"

"$out_of_gas_1129":                               ; preds = %"$have_gas_1125"
  call void @_out_of_gas()
  br label %"$have_gas_1130"

"$have_gas_1130":                                 ; preds = %"$out_of_gas_1129", %"$have_gas_1125"
  %"$consume_1131" = sub i64 %"$gasrem_1127", 1
  store i64 %"$consume_1131", i64* @_gasrem, align 8
  %"$adtval_1132_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1132_salloc" = call i8* @_salloc(i8* %"$adtval_1132_load", i64 1)
  %"$adtval_1132" = bitcast i8* %"$adtval_1132_salloc" to %CName_Nil_Message*
  %"$adtgep_1133" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_1132", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1133", align 1
  %"$adtptr_1134" = bitcast %CName_Nil_Message* %"$adtval_1132" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1134", %TName_List_Message** %n, align 8
  %"$gasrem_1135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1136" = icmp ugt i64 1, %"$gasrem_1135"
  br i1 %"$gascmp_1136", label %"$out_of_gas_1137", label %"$have_gas_1138"

"$out_of_gas_1137":                               ; preds = %"$have_gas_1130"
  call void @_out_of_gas()
  br label %"$have_gas_1138"

"$have_gas_1138":                                 ; preds = %"$out_of_gas_1137", %"$have_gas_1130"
  %"$consume_1139" = sub i64 %"$gasrem_1135", 1
  store i64 %"$consume_1139", i64* @_gasrem, align 8
  %"$msg_1140" = load i8*, i8** %msg, align 8
  %"$n_1141" = load %TName_List_Message*, %TName_List_Message** %n, align 8
  %"$adtval_1142_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1142_salloc" = call i8* @_salloc(i8* %"$adtval_1142_load", i64 17)
  %"$adtval_1142" = bitcast i8* %"$adtval_1142_salloc" to %CName_Cons_Message*
  %"$adtgep_1143" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1142", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1143", align 1
  %"$adtgep_1144" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1142", i32 0, i32 1
  store i8* %"$msg_1140", i8** %"$adtgep_1144", align 8
  %"$adtgep_1145" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1142", i32 0, i32 2
  store %TName_List_Message* %"$n_1141", %TName_List_Message** %"$adtgep_1145", align 8
  %"$adtptr_1146" = bitcast %CName_Cons_Message* %"$adtval_1142" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1146", %TName_List_Message** %msgs, align 8
  %"$msgs_1147" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_1147_1148" = bitcast %TName_List_Message* %"$msgs_1147" to i8*
  %"$_literal_cost_call_1149" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_67", i8* %"$$msgs_1147_1148")
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 %"$_literal_cost_call_1149", %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1138"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1138"
  %"$consume_1154" = sub i64 %"$gasrem_1150", %"$_literal_cost_call_1149"
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  %"$execptr_load_1155" = load i8*, i8** @_execptr, align 8
  %"$msgs_1156" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_1155", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_67", %TName_List_Message* %"$msgs_1156")
  %"$gasrem_1157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1158" = icmp ugt i64 1, %"$gasrem_1157"
  br i1 %"$gascmp_1158", label %"$out_of_gas_1159", label %"$have_gas_1160"

"$out_of_gas_1159":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1160"

"$have_gas_1160":                                 ; preds = %"$out_of_gas_1159", %"$have_gas_1153"
  %"$consume_1161" = sub i64 %"$gasrem_1157", 1
  store i64 %"$consume_1161", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_1162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1163" = icmp ugt i64 1, %"$gasrem_1162"
  br i1 %"$gascmp_1163", label %"$out_of_gas_1164", label %"$have_gas_1165"

"$out_of_gas_1164":                               ; preds = %"$have_gas_1160"
  call void @_out_of_gas()
  br label %"$have_gas_1165"

"$have_gas_1165":                                 ; preds = %"$out_of_gas_1164", %"$have_gas_1160"
  %"$consume_1166" = sub i64 %"$gasrem_1162", 1
  store i64 %"$consume_1166", i64* @_gasrem, align 8
  %"$msgobj_1167_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1167_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1167_salloc_load", i64 85)
  %"$msgobj_1167_salloc" = bitcast i8* %"$msgobj_1167_salloc_salloc" to [85 x i8]*
  %"$msgobj_1167" = bitcast [85 x i8]* %"$msgobj_1167_salloc" to i8*
  store i8 2, i8* %"$msgobj_1167", align 1
  %"$msgobj_fname_1169" = getelementptr i8, i8* %"$msgobj_1167", i32 1
  %"$msgobj_fname_1170" = bitcast i8* %"$msgobj_fname_1169" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1168", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1170", align 8
  %"$msgobj_td_1171" = getelementptr i8, i8* %"$msgobj_1167", i32 17
  %"$msgobj_td_1172" = bitcast i8* %"$msgobj_td_1171" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1172", align 8
  %"$msgobj_v_1174" = getelementptr i8, i8* %"$msgobj_1167", i32 25
  %"$msgobj_v_1175" = bitcast i8* %"$msgobj_v_1174" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1173", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1175", align 8
  %"$msgobj_fname_1177" = getelementptr i8, i8* %"$msgobj_1167", i32 41
  %"$msgobj_fname_1178" = bitcast i8* %"$msgobj_fname_1177" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1176", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1178", align 8
  %"$msgobj_td_1179" = getelementptr i8, i8* %"$msgobj_1167", i32 57
  %"$msgobj_td_1180" = bitcast i8* %"$msgobj_td_1179" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_63", %_TyDescrTy_Typ** %"$msgobj_td_1180", align 8
  %"$cparam2_1181" = load [20 x i8], [20 x i8]* @_cparam_cparam2, align 1
  %"$msgobj_v_1182" = getelementptr i8, i8* %"$msgobj_1167", i32 65
  %"$msgobj_v_1183" = bitcast i8* %"$msgobj_v_1182" to [20 x i8]*
  store [20 x i8] %"$cparam2_1181", [20 x i8]* %"$msgobj_v_1183", align 1
  store i8* %"$msgobj_1167", i8** %e1, align 8
  %"$e1_1185" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_1187" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e1_1185")
  %"$gasrem_1188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1189" = icmp ugt i64 %"$_literal_cost_call_1187", %"$gasrem_1188"
  br i1 %"$gascmp_1189", label %"$out_of_gas_1190", label %"$have_gas_1191"

"$out_of_gas_1190":                               ; preds = %"$have_gas_1165"
  call void @_out_of_gas()
  br label %"$have_gas_1191"

"$have_gas_1191":                                 ; preds = %"$out_of_gas_1190", %"$have_gas_1165"
  %"$consume_1192" = sub i64 %"$gasrem_1188", %"$_literal_cost_call_1187"
  store i64 %"$consume_1192", i64* @_gasrem, align 8
  %"$execptr_load_1193" = load i8*, i8** @_execptr, align 8
  %"$e1_1194" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_1193", %_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e1_1194")
  %"$gasrem_1195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1196" = icmp ugt i64 1, %"$gasrem_1195"
  br i1 %"$gascmp_1196", label %"$out_of_gas_1197", label %"$have_gas_1198"

"$out_of_gas_1197":                               ; preds = %"$have_gas_1191"
  call void @_out_of_gas()
  br label %"$have_gas_1198"

"$have_gas_1198":                                 ; preds = %"$out_of_gas_1197", %"$have_gas_1191"
  %"$consume_1199" = sub i64 %"$gasrem_1195", 1
  store i64 %"$consume_1199", i64* @_gasrem, align 8
  %e2 = alloca i8*, align 8
  %"$gasrem_1200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1201" = icmp ugt i64 1, %"$gasrem_1200"
  br i1 %"$gascmp_1201", label %"$out_of_gas_1202", label %"$have_gas_1203"

"$out_of_gas_1202":                               ; preds = %"$have_gas_1198"
  call void @_out_of_gas()
  br label %"$have_gas_1203"

"$have_gas_1203":                                 ; preds = %"$out_of_gas_1202", %"$have_gas_1198"
  %"$consume_1204" = sub i64 %"$gasrem_1200", 1
  store i64 %"$consume_1204", i64* @_gasrem, align 8
  %"$msgobj_1205_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1205_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1205_salloc_load", i64 85)
  %"$msgobj_1205_salloc" = bitcast i8* %"$msgobj_1205_salloc_salloc" to [85 x i8]*
  %"$msgobj_1205" = bitcast [85 x i8]* %"$msgobj_1205_salloc" to i8*
  store i8 2, i8* %"$msgobj_1205", align 1
  %"$msgobj_fname_1207" = getelementptr i8, i8* %"$msgobj_1205", i32 1
  %"$msgobj_fname_1208" = bitcast i8* %"$msgobj_fname_1207" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1206", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1208", align 8
  %"$msgobj_td_1209" = getelementptr i8, i8* %"$msgobj_1205", i32 17
  %"$msgobj_td_1210" = bitcast i8* %"$msgobj_td_1209" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1210", align 8
  %"$msgobj_v_1212" = getelementptr i8, i8* %"$msgobj_1205", i32 25
  %"$msgobj_v_1213" = bitcast i8* %"$msgobj_v_1212" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1211", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1213", align 8
  %"$msgobj_fname_1215" = getelementptr i8, i8* %"$msgobj_1205", i32 41
  %"$msgobj_fname_1216" = bitcast i8* %"$msgobj_fname_1215" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1214", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1216", align 8
  %"$msgobj_td_1217" = getelementptr i8, i8* %"$msgobj_1205", i32 57
  %"$msgobj_td_1218" = bitcast i8* %"$msgobj_td_1217" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_63", %_TyDescrTy_Typ** %"$msgobj_td_1218", align 8
  %"$cparam3_1219" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1220" = getelementptr i8, i8* %"$msgobj_1205", i32 65
  %"$msgobj_v_1221" = bitcast i8* %"$msgobj_v_1220" to [20 x i8]*
  store [20 x i8] %"$cparam3_1219", [20 x i8]* %"$msgobj_v_1221", align 1
  store i8* %"$msgobj_1205", i8** %e2, align 8
  %"$e2_1223" = load i8*, i8** %e2, align 8
  %"$_literal_cost_call_1225" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e2_1223")
  %"$gasrem_1226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1227" = icmp ugt i64 %"$_literal_cost_call_1225", %"$gasrem_1226"
  br i1 %"$gascmp_1227", label %"$out_of_gas_1228", label %"$have_gas_1229"

"$out_of_gas_1228":                               ; preds = %"$have_gas_1203"
  call void @_out_of_gas()
  br label %"$have_gas_1229"

"$have_gas_1229":                                 ; preds = %"$out_of_gas_1228", %"$have_gas_1203"
  %"$consume_1230" = sub i64 %"$gasrem_1226", %"$_literal_cost_call_1225"
  store i64 %"$consume_1230", i64* @_gasrem, align 8
  %"$execptr_load_1231" = load i8*, i8** @_execptr, align 8
  %"$e2_1232" = load i8*, i8** %e2, align 8
  call void @_event(i8* %"$execptr_load_1231", %_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e2_1232")
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @OutgoingMsgTest(i8* %0) {
entry:
  %"$_amount_1234" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1235" = bitcast i8* %"$_amount_1234" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1235", align 8
  %"$_origin_1236" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1237" = bitcast i8* %"$_origin_1236" to [20 x i8]*
  %"$_sender_1238" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1239" = bitcast i8* %"$_sender_1238" to [20 x i8]*
  call void @"$OutgoingMsgTest_1072"(%Uint128 %_amount, [20 x i8]* %"$_origin_1237", [20 x i8]* %"$_sender_1239")
  ret void
}

define internal void @"$ExceptionTest_1240"(%Uint128 %_amount, [20 x i8]* %"$_origin_1241", [20 x i8]* %"$_sender_1242") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1241", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1242", align 1
  %"$gasrem_1243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1244" = icmp ugt i64 1, %"$gasrem_1243"
  br i1 %"$gascmp_1244", label %"$out_of_gas_1245", label %"$have_gas_1246"

"$out_of_gas_1245":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1246"

"$have_gas_1246":                                 ; preds = %"$out_of_gas_1245", %entry
  %"$consume_1247" = sub i64 %"$gasrem_1243", 1
  store i64 %"$consume_1247", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_1248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1249" = icmp ugt i64 1, %"$gasrem_1248"
  br i1 %"$gascmp_1249", label %"$out_of_gas_1250", label %"$have_gas_1251"

"$out_of_gas_1250":                               ; preds = %"$have_gas_1246"
  call void @_out_of_gas()
  br label %"$have_gas_1251"

"$have_gas_1251":                                 ; preds = %"$out_of_gas_1250", %"$have_gas_1246"
  %"$consume_1252" = sub i64 %"$gasrem_1248", 1
  store i64 %"$consume_1252", i64* @_gasrem, align 8
  %"$msgobj_1253_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1253_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1253_salloc_load", i64 85)
  %"$msgobj_1253_salloc" = bitcast i8* %"$msgobj_1253_salloc_salloc" to [85 x i8]*
  %"$msgobj_1253" = bitcast [85 x i8]* %"$msgobj_1253_salloc" to i8*
  store i8 2, i8* %"$msgobj_1253", align 1
  %"$msgobj_fname_1255" = getelementptr i8, i8* %"$msgobj_1253", i32 1
  %"$msgobj_fname_1256" = bitcast i8* %"$msgobj_fname_1255" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1254", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1256", align 8
  %"$msgobj_td_1257" = getelementptr i8, i8* %"$msgobj_1253", i32 17
  %"$msgobj_td_1258" = bitcast i8* %"$msgobj_td_1257" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1258", align 8
  %"$msgobj_v_1260" = getelementptr i8, i8* %"$msgobj_1253", i32 25
  %"$msgobj_v_1261" = bitcast i8* %"$msgobj_v_1260" to %String*
  store %String { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$stringlit_1259", i32 0, i32 0), i32 13 }, %String* %"$msgobj_v_1261", align 8
  %"$msgobj_fname_1263" = getelementptr i8, i8* %"$msgobj_1253", i32 41
  %"$msgobj_fname_1264" = bitcast i8* %"$msgobj_fname_1263" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1262", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1264", align 8
  %"$msgobj_td_1265" = getelementptr i8, i8* %"$msgobj_1253", i32 57
  %"$msgobj_td_1266" = bitcast i8* %"$msgobj_td_1265" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_63", %_TyDescrTy_Typ** %"$msgobj_td_1266", align 8
  %"$cparam3_1267" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1268" = getelementptr i8, i8* %"$msgobj_1253", i32 65
  %"$msgobj_v_1269" = bitcast i8* %"$msgobj_v_1268" to [20 x i8]*
  store [20 x i8] %"$cparam3_1267", [20 x i8]* %"$msgobj_v_1269", align 1
  store i8* %"$msgobj_1253", i8** %e, align 8
  %"$e_1271" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_1273" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_57", i8* %"$e_1271")
  %"$gasrem_1274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1275" = icmp ugt i64 %"$_literal_cost_call_1273", %"$gasrem_1274"
  br i1 %"$gascmp_1275", label %"$out_of_gas_1276", label %"$have_gas_1277"

"$out_of_gas_1276":                               ; preds = %"$have_gas_1251"
  call void @_out_of_gas()
  br label %"$have_gas_1277"

"$have_gas_1277":                                 ; preds = %"$out_of_gas_1276", %"$have_gas_1251"
  %"$consume_1278" = sub i64 %"$gasrem_1274", %"$_literal_cost_call_1273"
  store i64 %"$consume_1278", i64* @_gasrem, align 8
  %"$execptr_load_1279" = load i8*, i8** @_execptr, align 8
  %"$e_1280" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_1279", %_TyDescrTy_Typ* @"$TyDescr_Exception_57", i8* %"$e_1280")
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ExceptionTest(i8* %0) {
entry:
  %"$_amount_1282" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1283" = bitcast i8* %"$_amount_1282" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1283", align 8
  %"$_origin_1284" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1285" = bitcast i8* %"$_origin_1284" to [20 x i8]*
  %"$_sender_1286" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1287" = bitcast i8* %"$_sender_1286" to [20 x i8]*
  call void @"$ExceptionTest_1240"(%Uint128 %_amount, [20 x i8]* %"$_origin_1285", [20 x i8]* %"$_sender_1287")
  ret void
}

define internal void @"$AssignTest_1288"(%Uint128 %_amount, [20 x i8]* %"$_origin_1289", [20 x i8]* %"$_sender_1290") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1289", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1290", align 1
  %"$gasrem_1291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1292" = icmp ugt i64 1, %"$gasrem_1291"
  br i1 %"$gascmp_1292", label %"$out_of_gas_1293", label %"$have_gas_1294"

"$out_of_gas_1293":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1294"

"$have_gas_1294":                                 ; preds = %"$out_of_gas_1293", %entry
  %"$consume_1295" = sub i64 %"$gasrem_1291", 1
  store i64 %"$consume_1295", i64* @_gasrem, align 8
  %"$x_2" = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1297" = icmp ugt i64 1, %"$gasrem_1296"
  br i1 %"$gascmp_1297", label %"$out_of_gas_1298", label %"$have_gas_1299"

"$out_of_gas_1298":                               ; preds = %"$have_gas_1294"
  call void @_out_of_gas()
  br label %"$have_gas_1299"

"$have_gas_1299":                                 ; preds = %"$out_of_gas_1298", %"$have_gas_1294"
  %"$consume_1300" = sub i64 %"$gasrem_1296", 1
  store i64 %"$consume_1300", i64* @_gasrem, align 8
  %"$cparam3_1301" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$adtval_1302_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1302_salloc" = call i8* @_salloc(i8* %"$adtval_1302_load", i64 21)
  %"$adtval_1302" = bitcast i8* %"$adtval_1302_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2*
  %"$adtgep_1303" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1302", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1303", align 1
  %"$adtgep_1304" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1302", i32 0, i32 1
  store [20 x i8] %"$cparam3_1301", [20 x i8]* %"$adtgep_1304", align 1
  %"$adtptr_1305" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1302" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1305", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$$x_2_1306" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$$$x_2_1306_1307" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1306" to i8*
  %"$_literal_cost_call_1308" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77", i8* %"$$$x_2_1306_1307")
  %"$gasrem_1309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1310" = icmp ugt i64 %"$_literal_cost_call_1308", %"$gasrem_1309"
  br i1 %"$gascmp_1310", label %"$out_of_gas_1311", label %"$have_gas_1312"

"$out_of_gas_1311":                               ; preds = %"$have_gas_1299"
  call void @_out_of_gas()
  br label %"$have_gas_1312"

"$have_gas_1312":                                 ; preds = %"$out_of_gas_1311", %"$have_gas_1299"
  %"$consume_1313" = sub i64 %"$gasrem_1309", %"$_literal_cost_call_1308"
  store i64 %"$consume_1313", i64* @_gasrem, align 8
  %"$execptr_load_1314" = load i8*, i8** @_execptr, align 8
  %"$$x_2_1316" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$update_value_1317" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1316" to i8*
  call void @_update_field(i8* %"$execptr_load_1314", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_1315", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77", i32 0, i8* null, i8* %"$update_value_1317")
  %"$gasrem_1318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1319" = icmp ugt i64 1, %"$gasrem_1318"
  br i1 %"$gascmp_1319", label %"$out_of_gas_1320", label %"$have_gas_1321"

"$out_of_gas_1320":                               ; preds = %"$have_gas_1312"
  call void @_out_of_gas()
  br label %"$have_gas_1321"

"$have_gas_1321":                                 ; preds = %"$out_of_gas_1320", %"$have_gas_1312"
  %"$consume_1322" = sub i64 %"$gasrem_1318", 1
  store i64 %"$consume_1322", i64* @_gasrem, align 8
  %y = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1324" = icmp ugt i64 1, %"$gasrem_1323"
  br i1 %"$gascmp_1324", label %"$out_of_gas_1325", label %"$have_gas_1326"

"$out_of_gas_1325":                               ; preds = %"$have_gas_1321"
  call void @_out_of_gas()
  br label %"$have_gas_1326"

"$have_gas_1326":                                 ; preds = %"$out_of_gas_1325", %"$have_gas_1321"
  %"$consume_1327" = sub i64 %"$gasrem_1323", 1
  store i64 %"$consume_1327", i64* @_gasrem, align 8
  %n = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1329" = icmp ugt i64 1, %"$gasrem_1328"
  br i1 %"$gascmp_1329", label %"$out_of_gas_1330", label %"$have_gas_1331"

"$out_of_gas_1330":                               ; preds = %"$have_gas_1326"
  call void @_out_of_gas()
  br label %"$have_gas_1331"

"$have_gas_1331":                                 ; preds = %"$out_of_gas_1330", %"$have_gas_1326"
  %"$consume_1332" = sub i64 %"$gasrem_1328", 1
  store i64 %"$consume_1332", i64* @_gasrem, align 8
  %"$adtval_1333_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1333_salloc" = call i8* @_salloc(i8* %"$adtval_1333_load", i64 1)
  %"$adtval_1333" = bitcast i8* %"$adtval_1333_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1334" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1333", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1334", align 1
  %"$adtptr_1335" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1333" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1335", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8
  %"$gasrem_1336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1337" = icmp ugt i64 1, %"$gasrem_1336"
  br i1 %"$gascmp_1337", label %"$out_of_gas_1338", label %"$have_gas_1339"

"$out_of_gas_1338":                               ; preds = %"$have_gas_1331"
  call void @_out_of_gas()
  br label %"$have_gas_1339"

"$have_gas_1339":                                 ; preds = %"$out_of_gas_1338", %"$have_gas_1331"
  %"$consume_1340" = sub i64 %"$gasrem_1336", 1
  store i64 %"$consume_1340", i64* @_gasrem, align 8
  %"$$x_2_1341" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$n_1342" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8
  %"$adtval_1343_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1343_salloc" = call i8* @_salloc(i8* %"$adtval_1343_load", i64 17)
  %"$adtval_1343" = bitcast i8* %"$adtval_1343_salloc" to %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1344" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1343", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1344", align 1
  %"$adtgep_1345" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1343", i32 0, i32 1
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1341", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1345", align 8
  %"$adtgep_1346" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1343", i32 0, i32 2
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$n_1342", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1346", align 8
  %"$adtptr_1347" = bitcast %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1343" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1347", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$y_1348" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$$y_1348_1349" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1348" to i8*
  %"$_literal_cost_call_1350" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", i8* %"$$y_1348_1349")
  %"$gasrem_1351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1352" = icmp ugt i64 %"$_literal_cost_call_1350", %"$gasrem_1351"
  br i1 %"$gascmp_1352", label %"$out_of_gas_1353", label %"$have_gas_1354"

"$out_of_gas_1353":                               ; preds = %"$have_gas_1339"
  call void @_out_of_gas()
  br label %"$have_gas_1354"

"$have_gas_1354":                                 ; preds = %"$out_of_gas_1353", %"$have_gas_1339"
  %"$consume_1355" = sub i64 %"$gasrem_1351", %"$_literal_cost_call_1350"
  store i64 %"$consume_1355", i64* @_gasrem, align 8
  %"$execptr_load_1356" = load i8*, i8** @_execptr, align 8
  %"$y_1358" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$update_value_1359" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1358" to i8*
  call void @_update_field(i8* %"$execptr_load_1356", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_1357", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", i32 0, i8* null, i8* %"$update_value_1359")
  %"$gasrem_1360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1361" = icmp ugt i64 1, %"$gasrem_1360"
  br i1 %"$gascmp_1361", label %"$out_of_gas_1362", label %"$have_gas_1363"

"$out_of_gas_1362":                               ; preds = %"$have_gas_1354"
  call void @_out_of_gas()
  br label %"$have_gas_1363"

"$have_gas_1363":                                 ; preds = %"$out_of_gas_1362", %"$have_gas_1354"
  %"$consume_1364" = sub i64 %"$gasrem_1360", 1
  store i64 %"$consume_1364", i64* @_gasrem, align 8
  %z = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1366" = icmp ugt i64 1, %"$gasrem_1365"
  br i1 %"$gascmp_1366", label %"$out_of_gas_1367", label %"$have_gas_1368"

"$out_of_gas_1367":                               ; preds = %"$have_gas_1363"
  call void @_out_of_gas()
  br label %"$have_gas_1368"

"$have_gas_1368":                                 ; preds = %"$out_of_gas_1367", %"$have_gas_1363"
  %"$consume_1369" = sub i64 %"$gasrem_1365", 1
  store i64 %"$consume_1369", i64* @_gasrem, align 8
  %"$n_3" = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1371" = icmp ugt i64 1, %"$gasrem_1370"
  br i1 %"$gascmp_1371", label %"$out_of_gas_1372", label %"$have_gas_1373"

"$out_of_gas_1372":                               ; preds = %"$have_gas_1368"
  call void @_out_of_gas()
  br label %"$have_gas_1373"

"$have_gas_1373":                                 ; preds = %"$out_of_gas_1372", %"$have_gas_1368"
  %"$consume_1374" = sub i64 %"$gasrem_1370", 1
  store i64 %"$consume_1374", i64* @_gasrem, align 8
  %"$execptr_load_1375" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1376" = call i8* @_new_empty_map(i8* %"$execptr_load_1375")
  %"$_new_empty_map_1377" = bitcast i8* %"$_new_empty_map_call_1376" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$_new_empty_map_1377", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_3", align 8
  %"$gasrem_1378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1379" = icmp ugt i64 1, %"$gasrem_1378"
  br i1 %"$gascmp_1379", label %"$out_of_gas_1380", label %"$have_gas_1381"

"$out_of_gas_1380":                               ; preds = %"$have_gas_1373"
  call void @_out_of_gas()
  br label %"$have_gas_1381"

"$have_gas_1381":                                 ; preds = %"$out_of_gas_1380", %"$have_gas_1373"
  %"$consume_1382" = sub i64 %"$gasrem_1378", 1
  store i64 %"$consume_1382", i64* @_gasrem, align 8
  %sub_n = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1384" = icmp ugt i64 1, %"$gasrem_1383"
  br i1 %"$gascmp_1384", label %"$out_of_gas_1385", label %"$have_gas_1386"

"$out_of_gas_1385":                               ; preds = %"$have_gas_1381"
  call void @_out_of_gas()
  br label %"$have_gas_1386"

"$have_gas_1386":                                 ; preds = %"$out_of_gas_1385", %"$have_gas_1381"
  %"$consume_1387" = sub i64 %"$gasrem_1383", 1
  store i64 %"$consume_1387", i64* @_gasrem, align 8
  %"$execptr_load_1388" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1389" = call i8* @_new_empty_map(i8* %"$execptr_load_1388")
  %"$_new_empty_map_1390" = bitcast i8* %"$_new_empty_map_call_1389" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$_new_empty_map_1390", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$gasrem_1391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1392" = icmp ugt i64 1, %"$gasrem_1391"
  br i1 %"$gascmp_1392", label %"$out_of_gas_1393", label %"$have_gas_1394"

"$out_of_gas_1393":                               ; preds = %"$have_gas_1386"
  call void @_out_of_gas()
  br label %"$have_gas_1394"

"$have_gas_1394":                                 ; preds = %"$out_of_gas_1393", %"$have_gas_1386"
  %"$consume_1395" = sub i64 %"$gasrem_1391", 1
  store i64 %"$consume_1395", i64* @_gasrem, align 8
  %sub_k = alloca %Uint128, align 8
  %"$gasrem_1396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1397" = icmp ugt i64 1, %"$gasrem_1396"
  br i1 %"$gascmp_1397", label %"$out_of_gas_1398", label %"$have_gas_1399"

"$out_of_gas_1398":                               ; preds = %"$have_gas_1394"
  call void @_out_of_gas()
  br label %"$have_gas_1399"

"$have_gas_1399":                                 ; preds = %"$out_of_gas_1398", %"$have_gas_1394"
  %"$consume_1400" = sub i64 %"$gasrem_1396", 1
  store i64 %"$consume_1400", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %sub_k, align 8
  %"$gasrem_1401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1402" = icmp ugt i64 1, %"$gasrem_1401"
  br i1 %"$gascmp_1402", label %"$out_of_gas_1403", label %"$have_gas_1404"

"$out_of_gas_1403":                               ; preds = %"$have_gas_1399"
  call void @_out_of_gas()
  br label %"$have_gas_1404"

"$have_gas_1404":                                 ; preds = %"$out_of_gas_1403", %"$have_gas_1399"
  %"$consume_1405" = sub i64 %"$gasrem_1401", 1
  store i64 %"$consume_1405", i64* @_gasrem, align 8
  %sub_res = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$sub_n_1406" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$$sub_n_1406_1407" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_n_1406" to i8*
  %"$_lengthof_call_1408" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_80", i8* %"$$sub_n_1406_1407")
  %"$gasadd_1409" = add i64 1, %"$_lengthof_call_1408"
  %"$gasrem_1410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1411" = icmp ugt i64 %"$gasadd_1409", %"$gasrem_1410"
  br i1 %"$gascmp_1411", label %"$out_of_gas_1412", label %"$have_gas_1413"

"$out_of_gas_1412":                               ; preds = %"$have_gas_1404"
  call void @_out_of_gas()
  br label %"$have_gas_1413"

"$have_gas_1413":                                 ; preds = %"$out_of_gas_1412", %"$have_gas_1404"
  %"$consume_1414" = sub i64 %"$gasrem_1410", %"$gasadd_1409"
  store i64 %"$consume_1414", i64* @_gasrem, align 8
  %"$execptr_load_1415" = load i8*, i8** @_execptr, align 8
  %"$sub_n_1416" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$$sub_n_1416_1417" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_n_1416" to i8*
  %"$put_sub_k_1418" = alloca %Uint128, align 8
  %"$sub_k_1419" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1419", %Uint128* %"$put_sub_k_1418", align 8
  %"$$put_sub_k_1418_1420" = bitcast %Uint128* %"$put_sub_k_1418" to i8*
  %"$$x_2_1421" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$$$x_2_1421_1422" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1421" to i8*
  %"$put_call_1423" = call i8* @_put(i8* %"$execptr_load_1415", %_TyDescrTy_Typ* @"$TyDescr_Map_80", i8* %"$$sub_n_1416_1417", i8* %"$$put_sub_k_1418_1420", i8* %"$$$x_2_1421_1422")
  %"$put_1424" = bitcast i8* %"$put_call_1423" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$put_1424", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8
  %"$$n_3_1425" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_3", align 8
  %"$$$n_3_1425_1426" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$n_3_1425" to i8*
  %"$_lengthof_call_1427" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_81", i8* %"$$$n_3_1425_1426")
  %"$gasadd_1428" = add i64 1, %"$_lengthof_call_1427"
  %"$gasrem_1429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1430" = icmp ugt i64 %"$gasadd_1428", %"$gasrem_1429"
  br i1 %"$gascmp_1430", label %"$out_of_gas_1431", label %"$have_gas_1432"

"$out_of_gas_1431":                               ; preds = %"$have_gas_1413"
  call void @_out_of_gas()
  br label %"$have_gas_1432"

"$have_gas_1432":                                 ; preds = %"$out_of_gas_1431", %"$have_gas_1413"
  %"$consume_1433" = sub i64 %"$gasrem_1429", %"$gasadd_1428"
  store i64 %"$consume_1433", i64* @_gasrem, align 8
  %"$execptr_load_1434" = load i8*, i8** @_execptr, align 8
  %"$$n_3_1435" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_3", align 8
  %"$$$n_3_1435_1436" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$n_3_1435" to i8*
  %"$put_sub_k_1437" = alloca %Uint128, align 8
  %"$sub_k_1438" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1438", %Uint128* %"$put_sub_k_1437", align 8
  %"$$put_sub_k_1437_1439" = bitcast %Uint128* %"$put_sub_k_1437" to i8*
  %"$sub_res_1440" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8
  %"$$sub_res_1440_1441" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_res_1440" to i8*
  %"$put_call_1442" = call i8* @_put(i8* %"$execptr_load_1434", %_TyDescrTy_Typ* @"$TyDescr_Map_81", i8* %"$$$n_3_1435_1436", i8* %"$$put_sub_k_1437_1439", i8* %"$$sub_res_1440_1441")
  %"$put_1443" = bitcast i8* %"$put_call_1442" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$put_1443", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$z_1444" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$$z_1444_1445" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1444" to i8*
  %"$_literal_cost_call_1446" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_81", i8* %"$$z_1444_1445")
  %"$gasrem_1447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1448" = icmp ugt i64 %"$_literal_cost_call_1446", %"$gasrem_1447"
  br i1 %"$gascmp_1448", label %"$out_of_gas_1449", label %"$have_gas_1450"

"$out_of_gas_1449":                               ; preds = %"$have_gas_1432"
  call void @_out_of_gas()
  br label %"$have_gas_1450"

"$have_gas_1450":                                 ; preds = %"$out_of_gas_1449", %"$have_gas_1432"
  %"$consume_1451" = sub i64 %"$gasrem_1447", %"$_literal_cost_call_1446"
  store i64 %"$consume_1451", i64* @_gasrem, align 8
  %"$execptr_load_1452" = load i8*, i8** @_execptr, align 8
  %"$z_1454" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$update_value_1455" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1454" to i8*
  call void @_update_field(i8* %"$execptr_load_1452", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1453", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_81", i32 0, i8* null, i8* %"$update_value_1455")
  %"$gasrem_1456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1457" = icmp ugt i64 1, %"$gasrem_1456"
  br i1 %"$gascmp_1457", label %"$out_of_gas_1458", label %"$have_gas_1459"

"$out_of_gas_1458":                               ; preds = %"$have_gas_1450"
  call void @_out_of_gas()
  br label %"$have_gas_1459"

"$have_gas_1459":                                 ; preds = %"$out_of_gas_1458", %"$have_gas_1450"
  %"$consume_1460" = sub i64 %"$gasrem_1456", 1
  store i64 %"$consume_1460", i64* @_gasrem, align 8
  %k1 = alloca %Uint128, align 8
  %"$gasrem_1461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1462" = icmp ugt i64 1, %"$gasrem_1461"
  br i1 %"$gascmp_1462", label %"$out_of_gas_1463", label %"$have_gas_1464"

"$out_of_gas_1463":                               ; preds = %"$have_gas_1459"
  call void @_out_of_gas()
  br label %"$have_gas_1464"

"$have_gas_1464":                                 ; preds = %"$out_of_gas_1463", %"$have_gas_1459"
  %"$consume_1465" = sub i64 %"$gasrem_1461", 1
  store i64 %"$consume_1465", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %k1, align 8
  %"$gasrem_1466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1467" = icmp ugt i64 1, %"$gasrem_1466"
  br i1 %"$gascmp_1467", label %"$out_of_gas_1468", label %"$have_gas_1469"

"$out_of_gas_1468":                               ; preds = %"$have_gas_1464"
  call void @_out_of_gas()
  br label %"$have_gas_1469"

"$have_gas_1469":                                 ; preds = %"$out_of_gas_1468", %"$have_gas_1464"
  %"$consume_1470" = sub i64 %"$gasrem_1466", 1
  store i64 %"$consume_1470", i64* @_gasrem, align 8
  %k2 = alloca %Uint128, align 8
  %"$gasrem_1471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1472" = icmp ugt i64 1, %"$gasrem_1471"
  br i1 %"$gascmp_1472", label %"$out_of_gas_1473", label %"$have_gas_1474"

"$out_of_gas_1473":                               ; preds = %"$have_gas_1469"
  call void @_out_of_gas()
  br label %"$have_gas_1474"

"$have_gas_1474":                                 ; preds = %"$out_of_gas_1473", %"$have_gas_1469"
  %"$consume_1475" = sub i64 %"$gasrem_1471", 1
  store i64 %"$consume_1475", i64* @_gasrem, align 8
  store %Uint128 { i128 42 }, %Uint128* %k2, align 8
  %"$$x_2_1476" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$$$x_2_1476_1477" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1476" to i8*
  %"$_literal_cost_call_1478" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_77", i8* %"$$$x_2_1476_1477")
  %"$gasadd_1479" = add i64 %"$_literal_cost_call_1478", 2
  %"$gasrem_1480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1481" = icmp ugt i64 %"$gasadd_1479", %"$gasrem_1480"
  br i1 %"$gascmp_1481", label %"$out_of_gas_1482", label %"$have_gas_1483"

"$out_of_gas_1482":                               ; preds = %"$have_gas_1474"
  call void @_out_of_gas()
  br label %"$have_gas_1483"

"$have_gas_1483":                                 ; preds = %"$out_of_gas_1482", %"$have_gas_1474"
  %"$consume_1484" = sub i64 %"$gasrem_1480", %"$gasadd_1479"
  store i64 %"$consume_1484", i64* @_gasrem, align 8
  %"$indices_buf_1485_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1485_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1485_salloc_load", i64 32)
  %"$indices_buf_1485_salloc" = bitcast i8* %"$indices_buf_1485_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1485" = bitcast [32 x i8]* %"$indices_buf_1485_salloc" to i8*
  %"$k1_1486" = load %Uint128, %Uint128* %k1, align 8
  %"$indices_gep_1487" = getelementptr i8, i8* %"$indices_buf_1485", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1487" to %Uint128*
  store %Uint128 %"$k1_1486", %Uint128* %indices_cast, align 8
  %"$k2_1488" = load %Uint128, %Uint128* %k2, align 8
  %"$indices_gep_1489" = getelementptr i8, i8* %"$indices_buf_1485", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1489" to %Uint128*
  store %Uint128 %"$k2_1488", %Uint128* %indices_cast1, align 8
  %"$execptr_load_1490" = load i8*, i8** @_execptr, align 8
  %"$$x_2_1492" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$update_value_1493" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1492" to i8*
  call void @_update_field(i8* %"$execptr_load_1490", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1491", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_81", i32 2, i8* %"$indices_buf_1485", i8* %"$update_value_1493")
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @AssignTest(i8* %0) {
entry:
  %"$_amount_1495" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1496" = bitcast i8* %"$_amount_1495" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1496", align 8
  %"$_origin_1497" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1498" = bitcast i8* %"$_origin_1497" to [20 x i8]*
  %"$_sender_1499" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1500" = bitcast i8* %"$_sender_1499" to [20 x i8]*
  call void @"$AssignTest_1288"(%Uint128 %_amount, [20 x i8]* %"$_origin_1498", [20 x i8]* %"$_sender_1500")
  ret void
}
