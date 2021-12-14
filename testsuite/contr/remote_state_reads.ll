

; gas_remaining: 4001999
; ModuleID = 'RRContract'
source_filename = "RRContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_31" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_63" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_62"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_62" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_64"**, %"$TyDescrTy_ADTTyp_63"* }
%"$TyDescrTy_ADTTyp_Constr_64" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_77" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrFieldTyp_86" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_87" = type { i32, %"$TyDescr_AddrFieldTyp_86"* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_1494" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1495" = type { %ParamDescrString, i32, %"$ParamDescr_1494"* }
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
@"$TyDescr_Bystr_Prim_58" = global %"$TyDescrTy_PrimTyp_31" { i32 7, i32 0 }
@"$TyDescr_Bystr_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr_Prim_58" to i8*) }
@"$TyDescr_Bystr20_Prim_60" = global %"$TyDescrTy_PrimTyp_31" { i32 8, i32 20 }
@"$TyDescr_Bystr20_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr20_Prim_60" to i8*) }
@"$TyDescr_ADT_List_Message_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_Message_ADTTyp_Specl_110" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_66" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_119" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_128" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_end_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_137" to i8*) }
@"$TyDescr_ADT_List_ByStr20_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_146" to i8*) }
@"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_155" to i8*) }
@"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_164" to i8*) }
@"$TyDescr_ADT_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_170" to i8*) }
@"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_182" to i8*) }
@"$TyDescr_ADT_Option_Bool_74" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_Bool_ADTTyp_Specl_191" to i8*) }
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_203" to i8*) }
@"$TyDescr_ADT_Bool_76" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Bool_ADTTyp_Specl_215" to i8*) }
@"$TyDescr_Map_78" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_77"* @"$TyDescr_MapTyp_218" to i8*) }
@"$TyDescr_Map_79" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_77"* @"$TyDescr_MapTyp_219" to i8*) }
@"$TyDescr_Map_80" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_77"* @"$TyDescr_MapTyp_220" to i8*) }
@"$TyDescr_Map_81" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_77"* @"$TyDescr_MapTyp_221" to i8*) }
@"$TyDescr_Map_82" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_77"* @"$TyDescr_MapTyp_222" to i8*) }
@"$TyDescr_Map_83" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_77"* @"$TyDescr_MapTyp_223" to i8*) }
@"$TyDescr_Map_84" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_77"* @"$TyDescr_MapTyp_224" to i8*) }
@"$TyDescr_Map_85" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_77"* @"$TyDescr_MapTyp_225" to i8*) }
@"$TyDescr_Addr_88" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_228" to i8*) }
@"$TyDescr_Addr_89" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_231" to i8*) }
@"$TyDescr_Addr_90" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_234" to i8*) }
@"$TyDescr_Addr_91" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_240" to i8*) }
@"$TyDescr_Addr_92" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_243" to i8*) }
@"$TyDescr_Addr_93" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_246" to i8*) }
@"$TyDescr_Addr_94" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_249" to i8*) }
@"$TyDescr_Addr_95" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_252" to i8*) }
@"$TyDescr_Addr_96" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_255" to i8*) }
@"$TyDescr_Addr_97" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_258" to i8*) }
@"$TyDescr_Addr_98" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_265" to i8*) }
@"$TyDescr_Addr_99" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_267" to i8*) }
@"$TyDescr_Addr_100" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_87"* @"$TyDescr_AddrFields_268" to i8*) }
@"$TyDescr_List_ADTTyp_101" = unnamed_addr constant %"$TyDescrTy_ADTTyp_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_157", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 6, %"$TyDescrTy_ADTTyp_Specl_62"** getelementptr inbounds ([6 x %"$TyDescrTy_ADTTyp_Specl_62"*], [6 x %"$TyDescrTy_ADTTyp_Specl_62"*]* @"$TyDescr_List_ADTTyp_m_specls_156", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_102" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_53", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_65"]
@"$TyDescr_ADT_Cons_103" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_104" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_103", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_102", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_105" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_106" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_107" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_106", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_105", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_108" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_104", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_107"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_109" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_53"]
@"$TyDescr_List_Message_ADTTyp_Specl_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_109", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_108", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_List_ADTTyp_101" }
@"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_111" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_89", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_66"]
@"$TyDescr_ADT_Cons_112" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_112", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_111", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_114" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_115" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_115", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_114", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_constrs_117" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_113", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_116"]
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_TArgs_118" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_89"]
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_TArgs_118", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_constrs_117", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_List_ADTTyp_101" }
@"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_120" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_90", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_67"]
@"$TyDescr_ADT_Cons_121" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_121", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_120", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_123" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_124" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_124", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_123", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_constrs_126" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_122", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_125"]
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_TArgs_127" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_90"]
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_128" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_TArgs_127", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_constrs_126", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_List_ADTTyp_101" }
@"$TyDescr_List_Cons_ByStr20_with_end_Constr_m_args_129" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_100", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_68"]
@"$TyDescr_ADT_Cons_130" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_end_ADTTyp_Constr_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_130", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_end_Constr_m_args_129", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_end_Constr_m_args_132" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_133" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_end_ADTTyp_Constr_134" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_133", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_end_Constr_m_args_132", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_constrs_135" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Cons_ByStr20_with_end_ADTTyp_Constr_131", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Nil_ByStr20_with_end_ADTTyp_Constr_134"]
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_TArgs_136" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_100"]
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_137" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_TArgs_136", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_constrs_135", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_List_ADTTyp_101" }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_138" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_69"]
@"$TyDescr_ADT_Cons_139" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_140" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_139", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_138", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_141" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_142" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_143" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_142", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_141", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_144" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_140", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_143"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_145" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_61"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_146" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_145", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_144", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_List_ADTTyp_101" }
@"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_147" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70"]
@"$TyDescr_ADT_Cons_148" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_149" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_148", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_147", i32 0, i32 0) }
@"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_150" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_151" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_152" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_151", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_150", i32 0, i32 0) }
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_153" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_149", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_152"]
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_154" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75"]
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_155" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_154", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_153", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_List_ADTTyp_101" }
@"$TyDescr_List_ADTTyp_m_specls_156" = unnamed_addr constant [6 x %"$TyDescrTy_ADTTyp_Specl_62"*] [%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_Message_ADTTyp_Specl_110", %"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_119", %"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_128", %"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_137", %"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_146", %"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_155"]
@"$TyDescr_ADT_List_157" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_158" = unnamed_addr constant %"$TyDescrTy_ADTTyp_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_172", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_62"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_62"*], [2 x %"$TyDescrTy_ADTTyp_Specl_62"*]* @"$TyDescr_Pair_ADTTyp_m_specls_171", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_159" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_100", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75"]
@"$TyDescr_ADT_Pair_160" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_161" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_160", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_159", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_162" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_161"]
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_163" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_100", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75"]
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_164" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_163", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_64"*], [1 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_162", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Pair_ADTTyp_158" }
@"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_165" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75"]
@"$TyDescr_ADT_Pair_166" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_167" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_166", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_165", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_168" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Pair_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_167"]
@"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_169" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75"]
@"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_170" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_169", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_64"*], [1 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_168", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Pair_ADTTyp_158" }
@"$TyDescr_Pair_ADTTyp_m_specls_171" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_62"*] [%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_164", %"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_170"]
@"$TyDescr_ADT_Pair_172" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Option_ADTTyp_173" = unnamed_addr constant %"$TyDescrTy_ADTTyp_63" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_193", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_62"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_62"*], [2 x %"$TyDescrTy_ADTTyp_Specl_62"*]* @"$TyDescr_Option_ADTTyp_m_specls_192", i32 0, i32 0) }
@"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_174" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_84"]
@"$TyDescr_ADT_Some_175" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_176" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_175", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_174", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_177" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_178" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_179" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_178", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_177", i32 0, i32 0) }
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_constrs_180" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_176", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_179"]
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_TArgs_181" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_84"]
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_182" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_TArgs_181", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_constrs_180", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Option_ADTTyp_173" }
@"$TyDescr_Option_Some_Bool_Constr_m_args_183" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76"]
@"$TyDescr_ADT_Some_184" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_185" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_184", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_183", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_186" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_187" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_188" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_187", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_186", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_189" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_185", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_188"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_190" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_191" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_190", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_189", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Option_ADTTyp_173" }
@"$TyDescr_Option_ADTTyp_m_specls_192" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_62"*] [%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_182", %"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Option_Bool_ADTTyp_Specl_191"]
@"$TyDescr_ADT_Option_193" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_194" = unnamed_addr constant %"$TyDescrTy_ADTTyp_63" { %TyDescrString { i8* getelementptr inbounds ([53 x i8], [53 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_205", i32 0, i32 0), i32 53 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_62"*], [1 x %"$TyDescrTy_ADTTyp_Specl_62"*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_m_specls_204", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_Constr_m_args_195" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_100"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_196" = unnamed_addr constant [51 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.Address1"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_ADTTyp_Constr_197" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_196", i32 0, i32 0), i32 51 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_Constr_m_args_195", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_Constr_m_args_198" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_96"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_199" = unnamed_addr constant [51 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.Address2"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_ADTTyp_Constr_200" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_199", i32 0, i32 0), i32 51 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_Constr_m_args_198", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_201" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_ADTTyp_Constr_197", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_ADTTyp_Constr_200"]
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_202" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_203" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_202", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_201", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_194" }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_m_specls_204" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_62"*] [%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_203"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_205" = unnamed_addr constant [53 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.AddressADT"
@"$TyDescr_Bool_ADTTyp_206" = unnamed_addr constant %"$TyDescrTy_ADTTyp_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_217", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_62"*], [1 x %"$TyDescrTy_ADTTyp_Specl_62"*]* @"$TyDescr_Bool_ADTTyp_m_specls_216", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_207" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_208" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_209" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_208", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_207", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_210" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_211" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_212" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_211", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_210", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_213" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Bool_True_ADTTyp_Constr_209", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Bool_False_ADTTyp_Constr_212"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_214" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_215" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_214", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_213", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Bool_ADTTyp_206" }
@"$TyDescr_Bool_ADTTyp_m_specls_216" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_62"*] [%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Bool_ADTTyp_Specl_215"]
@"$TyDescr_ADT_Bool_217" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_218" = unnamed_addr constant %"$TyDescr_MapTyp_77" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75" }
@"$TyDescr_MapTyp_219" = unnamed_addr constant %"$TyDescr_MapTyp_77" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_Map_78" }
@"$TyDescr_MapTyp_220" = unnamed_addr constant %"$TyDescr_MapTyp_77" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61" }
@"$TyDescr_MapTyp_221" = unnamed_addr constant %"$TyDescr_MapTyp_77" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Map_82" }
@"$TyDescr_MapTyp_222" = unnamed_addr constant %"$TyDescr_MapTyp_77" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76" }
@"$TyDescr_MapTyp_223" = unnamed_addr constant %"$TyDescr_MapTyp_77" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Map_84" }
@"$TyDescr_MapTyp_224" = unnamed_addr constant %"$TyDescr_MapTyp_77" { %_TyDescrTy_Typ* @"$TyDescr_Addr_100", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76" }
@"$TyDescr_MapTyp_225" = unnamed_addr constant %"$TyDescr_MapTyp_77" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }
@"$TyDescr_AddrField_226" = unnamed_addr constant [1 x i8] c"h"
@"$TyDescr_AddrFields_227" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_86"] [%"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_226", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Map_78" }]
@"$TyDescr_AddrFields_228" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 1, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_86"], [1 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_227", i32 0, i32 0) }
@"$TyDescr_AddrField_229" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_230" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_86"] [%"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_229", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75" }]
@"$TyDescr_AddrFields_231" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 1, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_86"], [1 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_230", i32 0, i32 0) }
@"$TyDescr_AddrField_232" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_233" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_86"] [%"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_232", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }]
@"$TyDescr_AddrFields_234" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 1, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_86"], [1 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_233", i32 0, i32 0) }
@"$TyDescr_AddrField_235" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrField_236" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrField_237" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrField_238" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_239" = unnamed_addr constant [4 x %"$TyDescr_AddrFieldTyp_86"] [%"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_235", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_236", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_84" }, %"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_237", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_83" }, %"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_238", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_35" }]
@"$TyDescr_AddrFields_240" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 4, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([4 x %"$TyDescr_AddrFieldTyp_86"], [4 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_239", i32 0, i32 0) }
@"$TyDescr_AddrField_241" = unnamed_addr constant [9 x i8] c"other_map"
@"$TyDescr_AddrFields_242" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_86"] [%"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$TyDescr_AddrField_241", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_Map_80" }]
@"$TyDescr_AddrFields_243" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 1, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_86"], [1 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_242", i32 0, i32 0) }
@"$TyDescr_AddrField_244" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrFields_245" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_86"] [%"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_244", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_81" }]
@"$TyDescr_AddrFields_246" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 1, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_86"], [1 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_245", i32 0, i32 0) }
@"$TyDescr_AddrField_247" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrFields_248" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_86"] [%"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_247", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_82" }]
@"$TyDescr_AddrFields_249" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 1, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_86"], [1 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_248", i32 0, i32 0) }
@"$TyDescr_AddrField_250" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_251" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_86"] [%"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_250", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61" }]
@"$TyDescr_AddrFields_252" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 1, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_86"], [1 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_251", i32 0, i32 0) }
@"$TyDescr_AddrField_253" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_254" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_86"] [%"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_253", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }]
@"$TyDescr_AddrFields_255" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 1, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_86"], [1 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_254", i32 0, i32 0) }
@"$TyDescr_AddrField_256" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_257" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_86"] [%"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_256", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_35" }]
@"$TyDescr_AddrFields_258" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 1, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_86"], [1 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_257", i32 0, i32 0) }
@"$TyDescr_AddrField_259" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrField_260" = unnamed_addr constant [9 x i8] c"other_map"
@"$TyDescr_AddrField_261" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrField_262" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrField_263" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_264" = unnamed_addr constant [5 x %"$TyDescr_AddrFieldTyp_86"] [%"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_259", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$TyDescr_AddrField_260", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_Map_85" }, %"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_261", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_84" }, %"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_262", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_83" }, %"$TyDescr_AddrFieldTyp_86" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_263", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_35" }]
@"$TyDescr_AddrFields_265" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 5, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([5 x %"$TyDescr_AddrFieldTyp_86"], [5 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_264", i32 0, i32 0) }
@"$TyDescr_AddrFields_266" = unnamed_addr constant [0 x %"$TyDescr_AddrFieldTyp_86"] zeroinitializer
@"$TyDescr_AddrFields_267" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 0, %"$TyDescr_AddrFieldTyp_86"* getelementptr inbounds ([0 x %"$TyDescr_AddrFieldTyp_86"], [0 x %"$TyDescr_AddrFieldTyp_86"]* @"$TyDescr_AddrFields_266", i32 0, i32 0) }
@"$TyDescr_AddrFields_268" = unnamed_addr constant %"$TyDescr_AddrTyp_87" { i32 -1, %"$TyDescr_AddrFieldTyp_86"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_cparam1 = global [20 x i8] zeroinitializer
@_cparam_cparam2 = global [20 x i8] zeroinitializer
@_cparam_cparam3 = global [20 x i8] zeroinitializer
@"$assign_test_1_281" = unnamed_addr constant [14 x i8] c"assign_test_1\00"
@"$assign_test_2_292" = unnamed_addr constant [14 x i8] c"assign_test_2\00"
@"$assign_test_3_303" = unnamed_addr constant [14 x i8] c"assign_test_3\00"
@"$assign_test_4_314" = unnamed_addr constant [14 x i8] c"assign_test_4\00"
@"$assign_test_5_325" = unnamed_addr constant [14 x i8] c"assign_test_5\00"
@"$assign_test_6_336" = unnamed_addr constant [14 x i8] c"assign_test_6\00"
@"$assign_test_7_347" = unnamed_addr constant [14 x i8] c"assign_test_7\00"
@"$assign_test_8_362" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_374" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_386" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$remote_reads_test_res_1_1_395" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$remote_reads_test_res_2_1_405" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$remote_reads_test_res_3_1_415" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$remote_reads_test_res_3_3_425" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$remote_reads_test_res_3_4_436" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$remote_reads_test_res_3_5_446" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$remote_reads_test_res_3_6_459" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$remote_reads_test_res_3_7_471" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$remote_reads_test_res_3_8_498" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$remote_reads_test_res_3_9_510" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$remote_reads_test_res_3_10_522" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$remote_reads_test_res_3_11_534" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$remote_reads_test_res_3_12_546" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$remote_reads_test_res_3_13_558" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$sender_balance_pre_567" = unnamed_addr constant [19 x i8] c"sender_balance_pre\00"
@"$sender_balance_mid_577" = unnamed_addr constant [19 x i8] c"sender_balance_mid\00"
@"$sender_balance_post_587" = unnamed_addr constant [20 x i8] c"sender_balance_post\00"
@"$_balance_597" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_1_1_623" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$_balance_627" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_2_1_653" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$_balance_657" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_1_683" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$transactionCount_687" = unnamed_addr constant [17 x i8] c"transactionCount\00"
@"$remote_reads_test_res_3_3_713" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$admin_717" = unnamed_addr constant [6 x i8] c"admin\00"
@"$remote_reads_test_res_3_4_743" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$_balance_747" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_5_774" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$owners_778" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_6_804" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$owners_809" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_7_833" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$owners_838" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_8_862" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$signatures_865" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_9_891" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$signatures_907" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_10_931" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$signatures_937" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_11_964" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$signatures_971" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_12_995" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$signatures_1002" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_13_1026" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$stringlit_1079" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_1084" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_1087" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_1094" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_1101" = unnamed_addr constant [5 x i8] c"param"
@"$stringlit_1161" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1166" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1169" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1199" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1204" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1207" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1247" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_1252" = unnamed_addr constant [13 x i8] c"TestException"
@"$stringlit_1255" = unnamed_addr constant [5 x i8] c"value"
@"$assign_test_8_1308" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_1350" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_1446" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$assign_test_10_1484" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@_tydescr_table = constant [48 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_84", %_TyDescrTy_Typ* @"$TyDescr_Event_55", %_TyDescrTy_Typ* @"$TyDescr_Int64_37", %_TyDescrTy_Typ* @"$TyDescr_Addr_96", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_66", %_TyDescrTy_Typ* @"$TyDescr_Addr_92", %_TyDescrTy_Typ* @"$TyDescr_Addr_89", %_TyDescrTy_Typ* @"$TyDescr_Map_82", %_TyDescrTy_Typ* @"$TyDescr_Exception_57", %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_69", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_67", %_TyDescrTy_Typ* @"$TyDescr_Int256_45", %_TyDescrTy_Typ* @"$TyDescr_Int128_41", %_TyDescrTy_Typ* @"$TyDescr_Addr_98", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", %_TyDescrTy_Typ* @"$TyDescr_Bystr_59", %_TyDescrTy_Typ* @"$TyDescr_Addr_94", %_TyDescrTy_Typ* @"$TyDescr_Map_85", %_TyDescrTy_Typ* @"$TyDescr_Map_81", %_TyDescrTy_Typ* @"$TyDescr_Map_79", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_68", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_65", %_TyDescrTy_Typ* @"$TyDescr_Map_83", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75", %_TyDescrTy_Typ* @"$TyDescr_Addr_100", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ* @"$TyDescr_Uint256_47", %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Addr_99", %_TyDescrTy_Typ* @"$TyDescr_Addr_90", %_TyDescrTy_Typ* @"$TyDescr_Addr_88", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39", %_TyDescrTy_Typ* @"$TyDescr_Bnum_51", %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_Addr_95", %_TyDescrTy_Typ* @"$TyDescr_Map_80", %_TyDescrTy_Typ* @"$TyDescr_Addr_91", %_TyDescrTy_Typ* @"$TyDescr_Addr_93", %_TyDescrTy_Typ* @"$TyDescr_Map_78", %_TyDescrTy_Typ* @"$TyDescr_Message_53", %_TyDescrTy_Typ* @"$TyDescr_Addr_97", %_TyDescrTy_Typ* @"$TyDescr_Int32_33"]
@_tydescr_table_length = constant i32 48
@"$pname__scilla_version_1496" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_1497" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_1498" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_cparam1_1499" = unnamed_addr constant [7 x i8] c"cparam1"
@"$pname_cparam2_1500" = unnamed_addr constant [7 x i8] c"cparam2"
@"$pname_cparam3_1501" = unnamed_addr constant [7 x i8] c"cparam3"
@_contract_parameters = constant [6 x %"$ParamDescr_1494"] [%"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_1496", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_35" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_1497", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_1498", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_51" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam1_1499", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam2_1500", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam3_1501", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_98" }]
@_contract_parameters_length = constant i32 6
@"$tpname__amount_1502" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1503" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1504" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote1_1505" = unnamed_addr constant [7 x i8] c"remote1"
@"$tpname_remote2_1506" = unnamed_addr constant [7 x i8] c"remote2"
@"$tpname_remote3_1507" = unnamed_addr constant [7 x i8] c"remote3"
@"$tparams_RemoteReadsTest_1508" = unnamed_addr constant [6 x %"$ParamDescr_1494"] [%"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1502", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1503", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1504", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1505", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote2_1506", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote3_1507", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_91" }]
@"$tname_RemoteReadsTest_1509" = unnamed_addr constant [15 x i8] c"RemoteReadsTest"
@"$tpname__amount_1510" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1511" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1512" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_list1_1513" = unnamed_addr constant [5 x i8] c"list1"
@"$tpname_list2_1514" = unnamed_addr constant [5 x i8] c"list2"
@"$tpname_list3_1515" = unnamed_addr constant [5 x i8] c"list3"
@"$tpname_pair1_1516" = unnamed_addr constant [5 x i8] c"pair1"
@"$tpname_adt1_1517" = unnamed_addr constant [4 x i8] c"adt1"
@"$tpname_remote1_1518" = unnamed_addr constant [7 x i8] c"remote1"
@"$tparams_RemoteReadsADTTest_1519" = unnamed_addr constant [9 x %"$ParamDescr_1494"] [%"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1510", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1511", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1512", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list1_1513", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_68" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list2_1514", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_67" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list3_1515", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_66" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_pair1_1516", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_71" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_adt1_1517", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1518", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_88" }]
@"$tname_RemoteReadsADTTest_1520" = unnamed_addr constant [18 x i8] c"RemoteReadsADTTest"
@"$tpname__amount_1521" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1522" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1523" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_OutgoingMsgTest_1524" = unnamed_addr constant [3 x %"$ParamDescr_1494"] [%"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1521", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1522", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1523", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }]
@"$tname_OutgoingMsgTest_1525" = unnamed_addr constant [15 x i8] c"OutgoingMsgTest"
@"$tpname__amount_1526" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1527" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1528" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ExceptionTest_1529" = unnamed_addr constant [3 x %"$ParamDescr_1494"] [%"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1526", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1527", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1528", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }]
@"$tname_ExceptionTest_1530" = unnamed_addr constant [13 x i8] c"ExceptionTest"
@"$tpname__amount_1531" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1532" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1533" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AssignTest_1534" = unnamed_addr constant [3 x %"$ParamDescr_1494"] [%"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1531", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1532", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1494" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1533", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }]
@"$tname_AssignTest_1535" = unnamed_addr constant [10 x i8] c"AssignTest"
@_transition_parameters = constant [5 x %"$TransDescr_1495"] [%"$TransDescr_1495" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_RemoteReadsTest_1509", i32 0, i32 0), i32 15 }, i32 6, %"$ParamDescr_1494"* getelementptr inbounds ([6 x %"$ParamDescr_1494"], [6 x %"$ParamDescr_1494"]* @"$tparams_RemoteReadsTest_1508", i32 0, i32 0) }, %"$TransDescr_1495" { %ParamDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$tname_RemoteReadsADTTest_1520", i32 0, i32 0), i32 18 }, i32 9, %"$ParamDescr_1494"* getelementptr inbounds ([9 x %"$ParamDescr_1494"], [9 x %"$ParamDescr_1494"]* @"$tparams_RemoteReadsADTTest_1519", i32 0, i32 0) }, %"$TransDescr_1495" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_OutgoingMsgTest_1525", i32 0, i32 0), i32 15 }, i32 3, %"$ParamDescr_1494"* getelementptr inbounds ([3 x %"$ParamDescr_1494"], [3 x %"$ParamDescr_1494"]* @"$tparams_OutgoingMsgTest_1524", i32 0, i32 0) }, %"$TransDescr_1495" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_ExceptionTest_1530", i32 0, i32 0), i32 13 }, i32 3, %"$ParamDescr_1494"* getelementptr inbounds ([3 x %"$ParamDescr_1494"], [3 x %"$ParamDescr_1494"]* @"$tparams_ExceptionTest_1529", i32 0, i32 0) }, %"$TransDescr_1495" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_AssignTest_1535", i32 0, i32 0), i32 10 }, i32 3, %"$ParamDescr_1494"* getelementptr inbounds ([3 x %"$ParamDescr_1494"], [3 x %"$ParamDescr_1494"]* @"$tparams_AssignTest_1534", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define void @_init_libs() {
entry:
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 5, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %entry
  %"$consume_273" = sub i64 %"$gasrem_269", 5
  store i64 %"$consume_273", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_init_state() {
entry:
  %"$assign_test_1_4" = alloca [20 x i8], align 1
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %entry
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$cparam3_279" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_279", [20 x i8]* %"$assign_test_1_4", align 1
  %"$execptr_load_280" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_1_4_282" = load [20 x i8], [20 x i8]* %"$assign_test_1_4", align 1
  %"$update_value_283" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_1_4_282", [20 x i8]* %"$update_value_283", align 1
  %"$update_value_284" = bitcast [20 x i8]* %"$update_value_283" to i8*
  call void @_update_field(i8* %"$execptr_load_280", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_1_281", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_284")
  %"$assign_test_2_5" = alloca [20 x i8], align 1
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_277"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %"$cparam3_290" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_290", [20 x i8]* %"$assign_test_2_5", align 1
  %"$execptr_load_291" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_2_5_293" = load [20 x i8], [20 x i8]* %"$assign_test_2_5", align 1
  %"$update_value_294" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_2_5_293", [20 x i8]* %"$update_value_294", align 1
  %"$update_value_295" = bitcast [20 x i8]* %"$update_value_294" to i8*
  call void @_update_field(i8* %"$execptr_load_291", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_2_292", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_295")
  %"$assign_test_3_6" = alloca [20 x i8], align 1
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_288"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$cparam3_301" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_301", [20 x i8]* %"$assign_test_3_6", align 1
  %"$execptr_load_302" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_3_6_304" = load [20 x i8], [20 x i8]* %"$assign_test_3_6", align 1
  %"$update_value_305" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_3_6_304", [20 x i8]* %"$update_value_305", align 1
  %"$update_value_306" = bitcast [20 x i8]* %"$update_value_305" to i8*
  call void @_update_field(i8* %"$execptr_load_302", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_3_303", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_306")
  %"$assign_test_4_7" = alloca [20 x i8], align 1
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_299"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$cparam3_312" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_312", [20 x i8]* %"$assign_test_4_7", align 1
  %"$execptr_load_313" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_4_7_315" = load [20 x i8], [20 x i8]* %"$assign_test_4_7", align 1
  %"$update_value_316" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_4_7_315", [20 x i8]* %"$update_value_316", align 1
  %"$update_value_317" = bitcast [20 x i8]* %"$update_value_316" to i8*
  call void @_update_field(i8* %"$execptr_load_313", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_4_314", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_317")
  %"$assign_test_5_8" = alloca [20 x i8], align 1
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_310"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$cparam3_323" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_323", [20 x i8]* %"$assign_test_5_8", align 1
  %"$execptr_load_324" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_5_8_326" = load [20 x i8], [20 x i8]* %"$assign_test_5_8", align 1
  %"$update_value_327" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_5_8_326", [20 x i8]* %"$update_value_327", align 1
  %"$update_value_328" = bitcast [20 x i8]* %"$update_value_327" to i8*
  call void @_update_field(i8* %"$execptr_load_324", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_5_325", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_328")
  %"$assign_test_6_9" = alloca [20 x i8], align 1
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_321"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$cparam3_334" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_334", [20 x i8]* %"$assign_test_6_9", align 1
  %"$execptr_load_335" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_6_9_337" = load [20 x i8], [20 x i8]* %"$assign_test_6_9", align 1
  %"$update_value_338" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_6_9_337", [20 x i8]* %"$update_value_338", align 1
  %"$update_value_339" = bitcast [20 x i8]* %"$update_value_338" to i8*
  call void @_update_field(i8* %"$execptr_load_335", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_6_336", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_339")
  %"$assign_test_7_10" = alloca [20 x i8], align 1
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_332"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %"$cparam3_345" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_345", [20 x i8]* %"$assign_test_7_10", align 1
  %"$execptr_load_346" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_7_10_348" = load [20 x i8], [20 x i8]* %"$assign_test_7_10", align 1
  %"$update_value_349" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_7_10_348", [20 x i8]* %"$update_value_349", align 1
  %"$update_value_350" = bitcast [20 x i8]* %"$update_value_349" to i8*
  call void @_update_field(i8* %"$execptr_load_346", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_7_347", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_350")
  %"$assign_test_8_11" = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_343"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %"$cparam1_356" = load [20 x i8], [20 x i8]* @_cparam_cparam1, align 1
  %"$adtval_357_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_357_salloc" = call i8* @_salloc(i8* %"$adtval_357_load", i64 21)
  %"$adtval_357" = bitcast i8* %"$adtval_357_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1*
  %"$adtgep_358" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_357", i32 0, i32 0
  store i8 0, i8* %"$adtgep_358", align 1
  %"$adtgep_359" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_357", i32 0, i32 1
  store [20 x i8] %"$cparam1_356", [20 x i8]* %"$adtgep_359", align 1
  %"$adtptr_360" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_357" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_360", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_11", align 8
  %"$execptr_load_361" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_8_11_363" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_11", align 8
  %"$update_value_364" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_8_11_363" to i8*
  call void @_update_field(i8* %"$execptr_load_361", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_362", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75", i32 0, i8* null, i8* %"$update_value_364")
  %"$assign_test_9_12" = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_354"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %"$adtval_370_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_370_salloc" = call i8* @_salloc(i8* %"$adtval_370_load", i64 1)
  %"$adtval_370" = bitcast i8* %"$adtval_370_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_371" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_370", i32 0, i32 0
  store i8 1, i8* %"$adtgep_371", align 1
  %"$adtptr_372" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_370" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_372", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_12", align 8
  %"$execptr_load_373" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_9_12_375" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_12", align 8
  %"$update_value_376" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_9_12_375" to i8*
  call void @_update_field(i8* %"$execptr_load_373", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_374", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70", i32 0, i8* null, i8* %"$update_value_376")
  %"$assign_test_10_13" = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_368"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %"$execptr_load_382" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_383" = call i8* @_new_empty_map(i8* %"$execptr_load_382")
  %"$_new_empty_map_384" = bitcast i8* %"$_new_empty_map_call_383" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$_new_empty_map_384", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_13", align 8
  %"$execptr_load_385" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_10_13_387" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_13", align 8
  %"$update_value_388" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$assign_test_10_13_387" to i8*
  call void @_update_field(i8* %"$execptr_load_385", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_386", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_79", i32 0, i8* null, i8* %"$update_value_388")
  %"$remote_reads_test_res_1_1_14" = alloca %Uint128, align 8
  %"$gasrem_389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_380"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_1_1_14", align 8
  %"$execptr_load_394" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_1_1_14_396" = load %Uint128, %Uint128* %"$remote_reads_test_res_1_1_14", align 8
  %"$update_value_397" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_1_1_14_396", %Uint128* %"$update_value_397", align 8
  %"$update_value_398" = bitcast %Uint128* %"$update_value_397" to i8*
  call void @_update_field(i8* %"$execptr_load_394", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_395", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_398")
  %"$remote_reads_test_res_2_1_15" = alloca %Uint128, align 8
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_392"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_2_1_15", align 8
  %"$execptr_load_404" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_2_1_15_406" = load %Uint128, %Uint128* %"$remote_reads_test_res_2_1_15", align 8
  %"$update_value_407" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_2_1_15_406", %Uint128* %"$update_value_407", align 8
  %"$update_value_408" = bitcast %Uint128* %"$update_value_407" to i8*
  call void @_update_field(i8* %"$execptr_load_404", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_405", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_408")
  %"$remote_reads_test_res_3_1_16" = alloca %Uint128, align 8
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_402"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_1_16", align 8
  %"$execptr_load_414" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_1_16_416" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_1_16", align 8
  %"$update_value_417" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_1_16_416", %Uint128* %"$update_value_417", align 8
  %"$update_value_418" = bitcast %Uint128* %"$update_value_417" to i8*
  call void @_update_field(i8* %"$execptr_load_414", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_415", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_418")
  %"$remote_reads_test_res_3_3_17" = alloca %Uint32, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_412"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$remote_reads_test_res_3_3_17", align 4
  %"$execptr_load_424" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_3_17_426" = load %Uint32, %Uint32* %"$remote_reads_test_res_3_3_17", align 4
  %"$update_value_427" = alloca %Uint32, align 8
  store %Uint32 %"$$remote_reads_test_res_3_3_17_426", %Uint32* %"$update_value_427", align 4
  %"$update_value_428" = bitcast %Uint32* %"$update_value_427" to i8*
  call void @_update_field(i8* %"$execptr_load_424", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_425", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i32 0, i8* null, i8* %"$update_value_428")
  %"$remote_reads_test_res_3_4_18" = alloca [20 x i8], align 1
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_422"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %"$cparam3_434" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_434", [20 x i8]* %"$remote_reads_test_res_3_4_18", align 1
  %"$execptr_load_435" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_4_18_437" = load [20 x i8], [20 x i8]* %"$remote_reads_test_res_3_4_18", align 1
  %"$update_value_438" = alloca [20 x i8], align 1
  store [20 x i8] %"$$remote_reads_test_res_3_4_18_437", [20 x i8]* %"$update_value_438", align 1
  %"$update_value_439" = bitcast [20 x i8]* %"$update_value_438" to i8*
  call void @_update_field(i8* %"$execptr_load_435", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_436", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_439")
  %"$remote_reads_test_res_3_5_19" = alloca %Uint128, align 8
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_432"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_5_19", align 8
  %"$execptr_load_445" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_5_19_447" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_5_19", align 8
  %"$update_value_448" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_5_19_447", %Uint128* %"$update_value_448", align 8
  %"$update_value_449" = bitcast %Uint128* %"$update_value_448" to i8*
  call void @_update_field(i8* %"$execptr_load_445", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_446", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_449")
  %"$remote_reads_test_res_3_6_20" = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_443"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  %"$execptr_load_455" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_456" = call i8* @_new_empty_map(i8* %"$execptr_load_455")
  %"$_new_empty_map_457" = bitcast i8* %"$_new_empty_map_call_456" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$_new_empty_map_457", %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_20", align 8
  %"$execptr_load_458" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_6_20_460" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_20", align 8
  %"$update_value_461" = bitcast %Map_ByStr20_with_end_Bool* %"$$remote_reads_test_res_3_6_20_460" to i8*
  call void @_update_field(i8* %"$execptr_load_458", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_459", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_84", i32 0, i8* null, i8* %"$update_value_461")
  %"$remote_reads_test_res_3_7_21" = alloca %TName_Bool*, align 8
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_453"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %"$adtval_467_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_467_salloc" = call i8* @_salloc(i8* %"$adtval_467_load", i64 1)
  %"$adtval_467" = bitcast i8* %"$adtval_467_salloc" to %CName_True*
  %"$adtgep_468" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_467", i32 0, i32 0
  store i8 0, i8* %"$adtgep_468", align 1
  %"$adtptr_469" = bitcast %CName_True* %"$adtval_467" to %TName_Bool*
  store %TName_Bool* %"$adtptr_469", %TName_Bool** %"$remote_reads_test_res_3_7_21", align 8
  %"$execptr_load_470" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_7_21_472" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_7_21", align 8
  %"$update_value_473" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_7_21_472" to i8*
  call void @_update_field(i8* %"$execptr_load_470", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_471", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_473")
  %"$remote_reads_test_res_3_8_22" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_475" = icmp ugt i64 1, %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %"$have_gas_465"
  %"$consume_478" = sub i64 %"$gasrem_474", 1
  store i64 %"$consume_478", i64* @_gasrem, align 8
  %x = alloca %TName_Bool*, align 8
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_477"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_477"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %"$adtval_484_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_484_salloc" = call i8* @_salloc(i8* %"$adtval_484_load", i64 1)
  %"$adtval_484" = bitcast i8* %"$adtval_484_salloc" to %CName_True*
  %"$adtgep_485" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_484", i32 0, i32 0
  store i8 0, i8* %"$adtgep_485", align 1
  %"$adtptr_486" = bitcast %CName_True* %"$adtval_484" to %TName_Bool*
  store %TName_Bool* %"$adtptr_486", %TName_Bool** %x, align 8
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_482"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %"$x_492" = load %TName_Bool*, %TName_Bool** %x, align 8
  %"$adtval_493_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_493_salloc" = call i8* @_salloc(i8* %"$adtval_493_load", i64 9)
  %"$adtval_493" = bitcast i8* %"$adtval_493_salloc" to %CName_Some_Bool*
  %"$adtgep_494" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_493", i32 0, i32 0
  store i8 0, i8* %"$adtgep_494", align 1
  %"$adtgep_495" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_493", i32 0, i32 1
  store %TName_Bool* %"$x_492", %TName_Bool** %"$adtgep_495", align 8
  %"$adtptr_496" = bitcast %CName_Some_Bool* %"$adtval_493" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_496", %TName_Option_Bool** %"$remote_reads_test_res_3_8_22", align 8
  %"$execptr_load_497" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_8_22_499" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_8_22", align 8
  %"$update_value_500" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_8_22_499" to i8*
  call void @_update_field(i8* %"$execptr_load_497", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_498", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i32 0, i8* null, i8* %"$update_value_500")
  %"$remote_reads_test_res_3_9_23" = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_490"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %"$execptr_load_506" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_507" = call i8* @_new_empty_map(i8* %"$execptr_load_506")
  %"$_new_empty_map_508" = bitcast i8* %"$_new_empty_map_call_507" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$_new_empty_map_508", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_23", align 8
  %"$execptr_load_509" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_9_23_511" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_23", align 8
  %"$update_value_512" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_9_23_511" to i8*
  call void @_update_field(i8* %"$execptr_load_509", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_510", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 0, i8* null, i8* %"$update_value_512")
  %"$remote_reads_test_res_3_10_24" = alloca %TName_Bool*, align 8
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_504"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$adtval_518_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_518_salloc" = call i8* @_salloc(i8* %"$adtval_518_load", i64 1)
  %"$adtval_518" = bitcast i8* %"$adtval_518_salloc" to %CName_False*
  %"$adtgep_519" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_518", i32 0, i32 0
  store i8 1, i8* %"$adtgep_519", align 1
  %"$adtptr_520" = bitcast %CName_False* %"$adtval_518" to %TName_Bool*
  store %TName_Bool* %"$adtptr_520", %TName_Bool** %"$remote_reads_test_res_3_10_24", align 8
  %"$execptr_load_521" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_10_24_523" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_10_24", align 8
  %"$update_value_524" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_10_24_523" to i8*
  call void @_update_field(i8* %"$execptr_load_521", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_522", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_524")
  %"$remote_reads_test_res_3_11_25" = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_516"
  %"$consume_529" = sub i64 %"$gasrem_525", 1
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$adtval_530_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_530_salloc" = call i8* @_salloc(i8* %"$adtval_530_load", i64 1)
  %"$adtval_530" = bitcast i8* %"$adtval_530_salloc" to %"CName_None_Map_(ByStr20_with_end)_(Bool)"*
  %"$adtgep_531" = getelementptr inbounds %"CName_None_Map_(ByStr20_with_end)_(Bool)", %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_530", i32 0, i32 0
  store i8 1, i8* %"$adtgep_531", align 1
  %"$adtptr_532" = bitcast %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_530" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$adtptr_532", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_25", align 8
  %"$execptr_load_533" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_11_25_535" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_25", align 8
  %"$update_value_536" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_11_25_535" to i8*
  call void @_update_field(i8* %"$execptr_load_533", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_534", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", i32 0, i8* null, i8* %"$update_value_536")
  %"$remote_reads_test_res_3_12_26" = alloca %TName_Bool*, align 8
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 1, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_528"
  %"$consume_541" = sub i64 %"$gasrem_537", 1
  store i64 %"$consume_541", i64* @_gasrem, align 8
  %"$adtval_542_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_542_salloc" = call i8* @_salloc(i8* %"$adtval_542_load", i64 1)
  %"$adtval_542" = bitcast i8* %"$adtval_542_salloc" to %CName_False*
  %"$adtgep_543" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_542", i32 0, i32 0
  store i8 1, i8* %"$adtgep_543", align 1
  %"$adtptr_544" = bitcast %CName_False* %"$adtval_542" to %TName_Bool*
  store %TName_Bool* %"$adtptr_544", %TName_Bool** %"$remote_reads_test_res_3_12_26", align 8
  %"$execptr_load_545" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_12_26_547" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_12_26", align 8
  %"$update_value_548" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_12_26_547" to i8*
  call void @_update_field(i8* %"$execptr_load_545", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_546", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_548")
  %"$remote_reads_test_res_3_13_27" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_550" = icmp ugt i64 1, %"$gasrem_549"
  br i1 %"$gascmp_550", label %"$out_of_gas_551", label %"$have_gas_552"

"$out_of_gas_551":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_552"

"$have_gas_552":                                  ; preds = %"$out_of_gas_551", %"$have_gas_540"
  %"$consume_553" = sub i64 %"$gasrem_549", 1
  store i64 %"$consume_553", i64* @_gasrem, align 8
  %"$adtval_554_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_554_salloc" = call i8* @_salloc(i8* %"$adtval_554_load", i64 1)
  %"$adtval_554" = bitcast i8* %"$adtval_554_salloc" to %CName_None_Bool*
  %"$adtgep_555" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_554", i32 0, i32 0
  store i8 1, i8* %"$adtgep_555", align 1
  %"$adtptr_556" = bitcast %CName_None_Bool* %"$adtval_554" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_556", %TName_Option_Bool** %"$remote_reads_test_res_3_13_27", align 8
  %"$execptr_load_557" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_13_27_559" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_13_27", align 8
  %"$update_value_560" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_13_27_559" to i8*
  call void @_update_field(i8* %"$execptr_load_557", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_558", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i32 0, i8* null, i8* %"$update_value_560")
  %"$sender_balance_pre_28" = alloca %Uint128, align 8
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_552"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_552"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_pre_28", align 8
  %"$execptr_load_566" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_pre_28_568" = load %Uint128, %Uint128* %"$sender_balance_pre_28", align 8
  %"$update_value_569" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_pre_28_568", %Uint128* %"$update_value_569", align 8
  %"$update_value_570" = bitcast %Uint128* %"$update_value_569" to i8*
  call void @_update_field(i8* %"$execptr_load_566", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_pre_567", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_570")
  %"$sender_balance_mid_29" = alloca %Uint128, align 8
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_564"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_mid_29", align 8
  %"$execptr_load_576" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_mid_29_578" = load %Uint128, %Uint128* %"$sender_balance_mid_29", align 8
  %"$update_value_579" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_mid_29_578", %Uint128* %"$update_value_579", align 8
  %"$update_value_580" = bitcast %Uint128* %"$update_value_579" to i8*
  call void @_update_field(i8* %"$execptr_load_576", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_mid_577", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_580")
  %"$sender_balance_post_30" = alloca %Uint128, align 8
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_574"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_post_30", align 8
  %"$execptr_load_586" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_post_30_588" = load %Uint128, %Uint128* %"$sender_balance_post_30", align 8
  %"$update_value_589" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_post_30_588", %Uint128* %"$update_value_589", align 8
  %"$update_value_590" = bitcast %Uint128* %"$update_value_589" to i8*
  call void @_update_field(i8* %"$execptr_load_586", i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$sender_balance_post_587", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_590")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_new_empty_map(i8*)

define internal void @"$RemoteReadsTest_591"(%Uint128 %_amount, [20 x i8]* %"$_origin_592", [20 x i8]* %"$_sender_593", [20 x i8]* %"$remote1_594", [20 x i8]* %"$remote2_595", [20 x i8]* %"$remote3_596") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_592", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_593", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_594", align 1
  %remote2 = load [20 x i8], [20 x i8]* %"$remote2_595", align 1
  %remote3 = load [20 x i8], [20 x i8]* %"$remote3_596", align 1
  %tmp_1_1 = alloca %Uint128, align 8
  %"$execptr_load_598" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_remote1_599" = alloca [20 x i8], align 1
  store [20 x i8] %remote1, [20 x i8]* %"$tmp_1_1_remote1_599", align 1
  %"$tmp_1_1_call_600" = call i8* @_fetch_remote_field(i8* %"$execptr_load_598", [20 x i8]* %"$tmp_1_1_remote1_599", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_597", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1)
  %"$tmp_1_1_601" = bitcast i8* %"$tmp_1_1_call_600" to %Uint128*
  %"$tmp_1_1_602" = load %Uint128, %Uint128* %"$tmp_1_1_601", align 8
  store %Uint128 %"$tmp_1_1_602", %Uint128* %tmp_1_1, align 8
  %"$_literal_cost_tmp_1_1_603" = alloca %Uint128, align 8
  %"$tmp_1_1_604" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_604", %Uint128* %"$_literal_cost_tmp_1_1_603", align 8
  %"$$_literal_cost_tmp_1_1_603_605" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_603" to i8*
  %"$_literal_cost_call_606" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_1_1_603_605")
  %"$gasadd_607" = add i64 %"$_literal_cost_call_606", 0
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 %"$gasadd_607", %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %entry
  %"$consume_612" = sub i64 %"$gasrem_608", %"$gasadd_607"
  store i64 %"$consume_612", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_1_1_613" = alloca %Uint128, align 8
  %"$tmp_1_1_614" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_614", %Uint128* %"$_literal_cost_tmp_1_1_613", align 8
  %"$$_literal_cost_tmp_1_1_613_615" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_613" to i8*
  %"$_literal_cost_call_616" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_1_1_613_615")
  %"$gasrem_617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_618" = icmp ugt i64 %"$_literal_cost_call_616", %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %"$have_gas_611"
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %"$have_gas_611"
  %"$consume_621" = sub i64 %"$gasrem_617", %"$_literal_cost_call_616"
  store i64 %"$consume_621", i64* @_gasrem, align 8
  %"$execptr_load_622" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_624" = load %Uint128, %Uint128* %tmp_1_1, align 8
  %"$update_value_625" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_1_1_624", %Uint128* %"$update_value_625", align 8
  %"$update_value_626" = bitcast %Uint128* %"$update_value_625" to i8*
  call void @_update_field(i8* %"$execptr_load_622", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_623", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_626")
  %tmp_2_1 = alloca %Uint128, align 8
  %"$execptr_load_628" = load i8*, i8** @_execptr, align 8
  %"$tmp_2_1_remote2_629" = alloca [20 x i8], align 1
  store [20 x i8] %remote2, [20 x i8]* %"$tmp_2_1_remote2_629", align 1
  %"$tmp_2_1_call_630" = call i8* @_fetch_remote_field(i8* %"$execptr_load_628", [20 x i8]* %"$tmp_2_1_remote2_629", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_627", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1)
  %"$tmp_2_1_631" = bitcast i8* %"$tmp_2_1_call_630" to %Uint128*
  %"$tmp_2_1_632" = load %Uint128, %Uint128* %"$tmp_2_1_631", align 8
  store %Uint128 %"$tmp_2_1_632", %Uint128* %tmp_2_1, align 8
  %"$_literal_cost_tmp_2_1_633" = alloca %Uint128, align 8
  %"$tmp_2_1_634" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_634", %Uint128* %"$_literal_cost_tmp_2_1_633", align 8
  %"$$_literal_cost_tmp_2_1_633_635" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_633" to i8*
  %"$_literal_cost_call_636" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_2_1_633_635")
  %"$gasadd_637" = add i64 %"$_literal_cost_call_636", 0
  %"$gasrem_638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_639" = icmp ugt i64 %"$gasadd_637", %"$gasrem_638"
  br i1 %"$gascmp_639", label %"$out_of_gas_640", label %"$have_gas_641"

"$out_of_gas_640":                                ; preds = %"$have_gas_620"
  call void @_out_of_gas()
  br label %"$have_gas_641"

"$have_gas_641":                                  ; preds = %"$out_of_gas_640", %"$have_gas_620"
  %"$consume_642" = sub i64 %"$gasrem_638", %"$gasadd_637"
  store i64 %"$consume_642", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_2_1_643" = alloca %Uint128, align 8
  %"$tmp_2_1_644" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_644", %Uint128* %"$_literal_cost_tmp_2_1_643", align 8
  %"$$_literal_cost_tmp_2_1_643_645" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_643" to i8*
  %"$_literal_cost_call_646" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_2_1_643_645")
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 %"$_literal_cost_call_646", %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$have_gas_641"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$have_gas_641"
  %"$consume_651" = sub i64 %"$gasrem_647", %"$_literal_cost_call_646"
  store i64 %"$consume_651", i64* @_gasrem, align 8
  %"$execptr_load_652" = load i8*, i8** @_execptr, align 8
  %"$tmp_2_1_654" = load %Uint128, %Uint128* %tmp_2_1, align 8
  %"$update_value_655" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_2_1_654", %Uint128* %"$update_value_655", align 8
  %"$update_value_656" = bitcast %Uint128* %"$update_value_655" to i8*
  call void @_update_field(i8* %"$execptr_load_652", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_653", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_656")
  %tmp_3_1 = alloca %Uint128, align 8
  %"$execptr_load_658" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_1_remote3_659" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_1_remote3_659", align 1
  %"$tmp_3_1_call_660" = call i8* @_fetch_remote_field(i8* %"$execptr_load_658", [20 x i8]* %"$tmp_3_1_remote3_659", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_657", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1)
  %"$tmp_3_1_661" = bitcast i8* %"$tmp_3_1_call_660" to %Uint128*
  %"$tmp_3_1_662" = load %Uint128, %Uint128* %"$tmp_3_1_661", align 8
  store %Uint128 %"$tmp_3_1_662", %Uint128* %tmp_3_1, align 8
  %"$_literal_cost_tmp_3_1_663" = alloca %Uint128, align 8
  %"$tmp_3_1_664" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_664", %Uint128* %"$_literal_cost_tmp_3_1_663", align 8
  %"$$_literal_cost_tmp_3_1_663_665" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_663" to i8*
  %"$_literal_cost_call_666" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_1_663_665")
  %"$gasadd_667" = add i64 %"$_literal_cost_call_666", 0
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 %"$gasadd_667", %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$have_gas_650"
  %"$consume_672" = sub i64 %"$gasrem_668", %"$gasadd_667"
  store i64 %"$consume_672", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_1_673" = alloca %Uint128, align 8
  %"$tmp_3_1_674" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_674", %Uint128* %"$_literal_cost_tmp_3_1_673", align 8
  %"$$_literal_cost_tmp_3_1_673_675" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_673" to i8*
  %"$_literal_cost_call_676" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_1_673_675")
  %"$gasrem_677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_678" = icmp ugt i64 %"$_literal_cost_call_676", %"$gasrem_677"
  br i1 %"$gascmp_678", label %"$out_of_gas_679", label %"$have_gas_680"

"$out_of_gas_679":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_680"

"$have_gas_680":                                  ; preds = %"$out_of_gas_679", %"$have_gas_671"
  %"$consume_681" = sub i64 %"$gasrem_677", %"$_literal_cost_call_676"
  store i64 %"$consume_681", i64* @_gasrem, align 8
  %"$execptr_load_682" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_1_684" = load %Uint128, %Uint128* %tmp_3_1, align 8
  %"$update_value_685" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_1_684", %Uint128* %"$update_value_685", align 8
  %"$update_value_686" = bitcast %Uint128* %"$update_value_685" to i8*
  call void @_update_field(i8* %"$execptr_load_682", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_683", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_686")
  %tmp_3_3 = alloca %Uint32, align 8
  %"$execptr_load_688" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_3_remote3_689" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_3_remote3_689", align 1
  %"$tmp_3_3_call_690" = call i8* @_fetch_remote_field(i8* %"$execptr_load_688", [20 x i8]* %"$tmp_3_3_remote3_689", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$transactionCount_687", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i32 0, i8* null, i32 1)
  %"$tmp_3_3_691" = bitcast i8* %"$tmp_3_3_call_690" to %Uint32*
  %"$tmp_3_3_692" = load %Uint32, %Uint32* %"$tmp_3_3_691", align 4
  store %Uint32 %"$tmp_3_3_692", %Uint32* %tmp_3_3, align 4
  %"$_literal_cost_tmp_3_3_693" = alloca %Uint32, align 8
  %"$tmp_3_3_694" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_694", %Uint32* %"$_literal_cost_tmp_3_3_693", align 4
  %"$$_literal_cost_tmp_3_3_693_695" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_693" to i8*
  %"$_literal_cost_call_696" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i8* %"$$_literal_cost_tmp_3_3_693_695")
  %"$gasadd_697" = add i64 %"$_literal_cost_call_696", 0
  %"$gasrem_698" = load i64, i64* @_gasrem, align 8
  %"$gascmp_699" = icmp ugt i64 %"$gasadd_697", %"$gasrem_698"
  br i1 %"$gascmp_699", label %"$out_of_gas_700", label %"$have_gas_701"

"$out_of_gas_700":                                ; preds = %"$have_gas_680"
  call void @_out_of_gas()
  br label %"$have_gas_701"

"$have_gas_701":                                  ; preds = %"$out_of_gas_700", %"$have_gas_680"
  %"$consume_702" = sub i64 %"$gasrem_698", %"$gasadd_697"
  store i64 %"$consume_702", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_3_703" = alloca %Uint32, align 8
  %"$tmp_3_3_704" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_704", %Uint32* %"$_literal_cost_tmp_3_3_703", align 4
  %"$$_literal_cost_tmp_3_3_703_705" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_703" to i8*
  %"$_literal_cost_call_706" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i8* %"$$_literal_cost_tmp_3_3_703_705")
  %"$gasrem_707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_708" = icmp ugt i64 %"$_literal_cost_call_706", %"$gasrem_707"
  br i1 %"$gascmp_708", label %"$out_of_gas_709", label %"$have_gas_710"

"$out_of_gas_709":                                ; preds = %"$have_gas_701"
  call void @_out_of_gas()
  br label %"$have_gas_710"

"$have_gas_710":                                  ; preds = %"$out_of_gas_709", %"$have_gas_701"
  %"$consume_711" = sub i64 %"$gasrem_707", %"$_literal_cost_call_706"
  store i64 %"$consume_711", i64* @_gasrem, align 8
  %"$execptr_load_712" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_3_714" = load %Uint32, %Uint32* %tmp_3_3, align 4
  %"$update_value_715" = alloca %Uint32, align 8
  store %Uint32 %"$tmp_3_3_714", %Uint32* %"$update_value_715", align 4
  %"$update_value_716" = bitcast %Uint32* %"$update_value_715" to i8*
  call void @_update_field(i8* %"$execptr_load_712", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_713", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i32 0, i8* null, i8* %"$update_value_716")
  %tmp_3_4 = alloca [20 x i8], align 1
  %"$execptr_load_718" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_4_remote3_719" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_4_remote3_719", align 1
  %"$tmp_3_4_call_720" = call i8* @_fetch_remote_field(i8* %"$execptr_load_718", [20 x i8]* %"$tmp_3_4_remote3_719", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_717", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i32 1)
  %"$tmp_3_4_721" = bitcast i8* %"$tmp_3_4_call_720" to [20 x i8]*
  %"$tmp_3_4_722" = load [20 x i8], [20 x i8]* %"$tmp_3_4_721", align 1
  store [20 x i8] %"$tmp_3_4_722", [20 x i8]* %tmp_3_4, align 1
  %"$_literal_cost_tmp_3_4_723" = alloca [20 x i8], align 1
  %"$tmp_3_4_724" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_724", [20 x i8]* %"$_literal_cost_tmp_3_4_723", align 1
  %"$$_literal_cost_tmp_3_4_723_725" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_723" to i8*
  %"$_literal_cost_call_726" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_100", i8* %"$$_literal_cost_tmp_3_4_723_725")
  %"$gasadd_727" = add i64 %"$_literal_cost_call_726", 0
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 %"$gasadd_727", %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$have_gas_710"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$have_gas_710"
  %"$consume_732" = sub i64 %"$gasrem_728", %"$gasadd_727"
  store i64 %"$consume_732", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_4_733" = alloca [20 x i8], align 1
  %"$tmp_3_4_734" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_734", [20 x i8]* %"$_literal_cost_tmp_3_4_733", align 1
  %"$$_literal_cost_tmp_3_4_733_735" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_733" to i8*
  %"$_literal_cost_call_736" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_100", i8* %"$$_literal_cost_tmp_3_4_733_735")
  %"$gasrem_737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_738" = icmp ugt i64 %"$_literal_cost_call_736", %"$gasrem_737"
  br i1 %"$gascmp_738", label %"$out_of_gas_739", label %"$have_gas_740"

"$out_of_gas_739":                                ; preds = %"$have_gas_731"
  call void @_out_of_gas()
  br label %"$have_gas_740"

"$have_gas_740":                                  ; preds = %"$out_of_gas_739", %"$have_gas_731"
  %"$consume_741" = sub i64 %"$gasrem_737", %"$_literal_cost_call_736"
  store i64 %"$consume_741", i64* @_gasrem, align 8
  %"$execptr_load_742" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_4_744" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  %"$update_value_745" = alloca [20 x i8], align 1
  store [20 x i8] %"$tmp_3_4_744", [20 x i8]* %"$update_value_745", align 1
  %"$update_value_746" = bitcast [20 x i8]* %"$update_value_745" to i8*
  call void @_update_field(i8* %"$execptr_load_742", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_743", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i8* %"$update_value_746")
  %tmp_3_5 = alloca %Uint128, align 8
  %"$execptr_load_748" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_5_tmp_3_4_749" = alloca [20 x i8], align 1
  %"$tmp_3_4_750" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_750", [20 x i8]* %"$tmp_3_5_tmp_3_4_749", align 1
  %"$tmp_3_5_call_751" = call i8* @_fetch_remote_field(i8* %"$execptr_load_748", [20 x i8]* %"$tmp_3_5_tmp_3_4_749", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_747", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1)
  %"$tmp_3_5_752" = bitcast i8* %"$tmp_3_5_call_751" to %Uint128*
  %"$tmp_3_5_753" = load %Uint128, %Uint128* %"$tmp_3_5_752", align 8
  store %Uint128 %"$tmp_3_5_753", %Uint128* %tmp_3_5, align 8
  %"$_literal_cost_tmp_3_5_754" = alloca %Uint128, align 8
  %"$tmp_3_5_755" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_755", %Uint128* %"$_literal_cost_tmp_3_5_754", align 8
  %"$$_literal_cost_tmp_3_5_754_756" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_754" to i8*
  %"$_literal_cost_call_757" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_5_754_756")
  %"$gasadd_758" = add i64 %"$_literal_cost_call_757", 0
  %"$gasrem_759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_760" = icmp ugt i64 %"$gasadd_758", %"$gasrem_759"
  br i1 %"$gascmp_760", label %"$out_of_gas_761", label %"$have_gas_762"

"$out_of_gas_761":                                ; preds = %"$have_gas_740"
  call void @_out_of_gas()
  br label %"$have_gas_762"

"$have_gas_762":                                  ; preds = %"$out_of_gas_761", %"$have_gas_740"
  %"$consume_763" = sub i64 %"$gasrem_759", %"$gasadd_758"
  store i64 %"$consume_763", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_5_764" = alloca %Uint128, align 8
  %"$tmp_3_5_765" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_765", %Uint128* %"$_literal_cost_tmp_3_5_764", align 8
  %"$$_literal_cost_tmp_3_5_764_766" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_764" to i8*
  %"$_literal_cost_call_767" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_5_764_766")
  %"$gasrem_768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_769" = icmp ugt i64 %"$_literal_cost_call_767", %"$gasrem_768"
  br i1 %"$gascmp_769", label %"$out_of_gas_770", label %"$have_gas_771"

"$out_of_gas_770":                                ; preds = %"$have_gas_762"
  call void @_out_of_gas()
  br label %"$have_gas_771"

"$have_gas_771":                                  ; preds = %"$out_of_gas_770", %"$have_gas_762"
  %"$consume_772" = sub i64 %"$gasrem_768", %"$_literal_cost_call_767"
  store i64 %"$consume_772", i64* @_gasrem, align 8
  %"$execptr_load_773" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_5_775" = load %Uint128, %Uint128* %tmp_3_5, align 8
  %"$update_value_776" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_5_775", %Uint128* %"$update_value_776", align 8
  %"$update_value_777" = bitcast %Uint128* %"$update_value_776" to i8*
  call void @_update_field(i8* %"$execptr_load_773", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_774", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_777")
  %tmp_3_6 = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$execptr_load_779" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_remote3_780" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_6_remote3_780", align 1
  %"$tmp_3_6_call_781" = call i8* @_fetch_remote_field(i8* %"$execptr_load_779", [20 x i8]* %"$tmp_3_6_remote3_780", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_778", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_84", i32 0, i8* null, i32 1)
  %"$tmp_3_6_782" = bitcast i8* %"$tmp_3_6_call_781" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$tmp_3_6_782", %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$tmp_3_6_783" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_783_784" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_783" to i8*
  %"$_literal_cost_call_785" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_84", i8* %"$$tmp_3_6_783_784")
  %"$tmp_3_6_786" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_786_787" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_786" to i8*
  %"$_mapsortcost_call_788" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_84", i8* %"$$tmp_3_6_786_787")
  %"$gasadd_789" = add i64 %"$_literal_cost_call_785", %"$_mapsortcost_call_788"
  %"$gasrem_790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_791" = icmp ugt i64 %"$gasadd_789", %"$gasrem_790"
  br i1 %"$gascmp_791", label %"$out_of_gas_792", label %"$have_gas_793"

"$out_of_gas_792":                                ; preds = %"$have_gas_771"
  call void @_out_of_gas()
  br label %"$have_gas_793"

"$have_gas_793":                                  ; preds = %"$out_of_gas_792", %"$have_gas_771"
  %"$consume_794" = sub i64 %"$gasrem_790", %"$gasadd_789"
  store i64 %"$consume_794", i64* @_gasrem, align 8
  %"$tmp_3_6_795" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_795_796" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_795" to i8*
  %"$_literal_cost_call_797" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_84", i8* %"$$tmp_3_6_795_796")
  %"$gasrem_798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_799" = icmp ugt i64 %"$_literal_cost_call_797", %"$gasrem_798"
  br i1 %"$gascmp_799", label %"$out_of_gas_800", label %"$have_gas_801"

"$out_of_gas_800":                                ; preds = %"$have_gas_793"
  call void @_out_of_gas()
  br label %"$have_gas_801"

"$have_gas_801":                                  ; preds = %"$out_of_gas_800", %"$have_gas_793"
  %"$consume_802" = sub i64 %"$gasrem_798", %"$_literal_cost_call_797"
  store i64 %"$consume_802", i64* @_gasrem, align 8
  %"$execptr_load_803" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_805" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$update_value_806" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_805" to i8*
  call void @_update_field(i8* %"$execptr_load_803", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_804", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_84", i32 0, i8* null, i8* %"$update_value_806")
  %tmp_3_7 = alloca %TName_Bool*, align 8
  %"$indices_buf_807_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_807_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_807_salloc_load", i64 20)
  %"$indices_buf_807_salloc" = bitcast i8* %"$indices_buf_807_salloc_salloc" to [20 x i8]*
  %"$indices_buf_807" = bitcast [20 x i8]* %"$indices_buf_807_salloc" to i8*
  %"$indices_gep_808" = getelementptr i8, i8* %"$indices_buf_807", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_808" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_810" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_remote3_811" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_7_remote3_811", align 1
  %"$tmp_3_7_call_812" = call i8* @_fetch_remote_field(i8* %"$execptr_load_810", [20 x i8]* %"$tmp_3_7_remote3_811", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_809", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_84", i32 1, i8* %"$indices_buf_807", i32 0)
  %"$tmp_3_7_813" = bitcast i8* %"$tmp_3_7_call_812" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_7_813", %TName_Bool** %tmp_3_7, align 8
  %"$tmp_3_7_814" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_814_815" = bitcast %TName_Bool* %"$tmp_3_7_814" to i8*
  %"$_literal_cost_call_816" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_7_814_815")
  %"$gasadd_817" = add i64 %"$_literal_cost_call_816", 0
  %"$gasadd_818" = add i64 %"$gasadd_817", 1
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 %"$gasadd_818", %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$have_gas_801"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$have_gas_801"
  %"$consume_823" = sub i64 %"$gasrem_819", %"$gasadd_818"
  store i64 %"$consume_823", i64* @_gasrem, align 8
  %"$tmp_3_7_824" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_824_825" = bitcast %TName_Bool* %"$tmp_3_7_824" to i8*
  %"$_literal_cost_call_826" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_7_824_825")
  %"$gasrem_827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_828" = icmp ugt i64 %"$_literal_cost_call_826", %"$gasrem_827"
  br i1 %"$gascmp_828", label %"$out_of_gas_829", label %"$have_gas_830"

"$out_of_gas_829":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_830"

"$have_gas_830":                                  ; preds = %"$out_of_gas_829", %"$have_gas_822"
  %"$consume_831" = sub i64 %"$gasrem_827", %"$_literal_cost_call_826"
  store i64 %"$consume_831", i64* @_gasrem, align 8
  %"$execptr_load_832" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_834" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$update_value_835" = bitcast %TName_Bool* %"$tmp_3_7_834" to i8*
  call void @_update_field(i8* %"$execptr_load_832", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_833", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_835")
  %tmp_3_8 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_836_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_836_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_836_salloc_load", i64 20)
  %"$indices_buf_836_salloc" = bitcast i8* %"$indices_buf_836_salloc_salloc" to [20 x i8]*
  %"$indices_buf_836" = bitcast [20 x i8]* %"$indices_buf_836_salloc" to i8*
  %"$indices_gep_837" = getelementptr i8, i8* %"$indices_buf_836", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_837" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_839" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_remote3_840" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_8_remote3_840", align 1
  %"$tmp_3_8_call_841" = call i8* @_fetch_remote_field(i8* %"$execptr_load_839", [20 x i8]* %"$tmp_3_8_remote3_840", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_838", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_84", i32 1, i8* %"$indices_buf_836", i32 1)
  %"$tmp_3_8_842" = bitcast i8* %"$tmp_3_8_call_841" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_8_842", %TName_Option_Bool** %tmp_3_8, align 8
  %"$tmp_3_8_843" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_843_844" = bitcast %TName_Option_Bool* %"$tmp_3_8_843" to i8*
  %"$_literal_cost_call_845" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i8* %"$$tmp_3_8_843_844")
  %"$gasadd_846" = add i64 %"$_literal_cost_call_845", 0
  %"$gasadd_847" = add i64 %"$gasadd_846", 1
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 %"$gasadd_847", %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %"$have_gas_830"
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %"$have_gas_830"
  %"$consume_852" = sub i64 %"$gasrem_848", %"$gasadd_847"
  store i64 %"$consume_852", i64* @_gasrem, align 8
  %"$tmp_3_8_853" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_853_854" = bitcast %TName_Option_Bool* %"$tmp_3_8_853" to i8*
  %"$_literal_cost_call_855" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i8* %"$$tmp_3_8_853_854")
  %"$gasrem_856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_857" = icmp ugt i64 %"$_literal_cost_call_855", %"$gasrem_856"
  br i1 %"$gascmp_857", label %"$out_of_gas_858", label %"$have_gas_859"

"$out_of_gas_858":                                ; preds = %"$have_gas_851"
  call void @_out_of_gas()
  br label %"$have_gas_859"

"$have_gas_859":                                  ; preds = %"$out_of_gas_858", %"$have_gas_851"
  %"$consume_860" = sub i64 %"$gasrem_856", %"$_literal_cost_call_855"
  store i64 %"$consume_860", i64* @_gasrem, align 8
  %"$execptr_load_861" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_863" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$update_value_864" = bitcast %TName_Option_Bool* %"$tmp_3_8_863" to i8*
  call void @_update_field(i8* %"$execptr_load_861", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_862", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i32 0, i8* null, i8* %"$update_value_864")
  %tmp_3_9 = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$execptr_load_866" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_remote3_867" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_9_remote3_867", align 1
  %"$tmp_3_9_call_868" = call i8* @_fetch_remote_field(i8* %"$execptr_load_866", [20 x i8]* %"$tmp_3_9_remote3_867", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_865", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 0, i8* null, i32 1)
  %"$tmp_3_9_869" = bitcast i8* %"$tmp_3_9_call_868" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_869", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$tmp_3_9_870" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_870_871" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_870" to i8*
  %"$_literal_cost_call_872" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_83", i8* %"$$tmp_3_9_870_871")
  %"$tmp_3_9_873" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_873_874" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_873" to i8*
  %"$_mapsortcost_call_875" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_83", i8* %"$$tmp_3_9_873_874")
  %"$gasadd_876" = add i64 %"$_literal_cost_call_872", %"$_mapsortcost_call_875"
  %"$gasrem_877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_878" = icmp ugt i64 %"$gasadd_876", %"$gasrem_877"
  br i1 %"$gascmp_878", label %"$out_of_gas_879", label %"$have_gas_880"

"$out_of_gas_879":                                ; preds = %"$have_gas_859"
  call void @_out_of_gas()
  br label %"$have_gas_880"

"$have_gas_880":                                  ; preds = %"$out_of_gas_879", %"$have_gas_859"
  %"$consume_881" = sub i64 %"$gasrem_877", %"$gasadd_876"
  store i64 %"$consume_881", i64* @_gasrem, align 8
  %"$tmp_3_9_882" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_882_883" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_882" to i8*
  %"$_literal_cost_call_884" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_83", i8* %"$$tmp_3_9_882_883")
  %"$gasrem_885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_886" = icmp ugt i64 %"$_literal_cost_call_884", %"$gasrem_885"
  br i1 %"$gascmp_886", label %"$out_of_gas_887", label %"$have_gas_888"

"$out_of_gas_887":                                ; preds = %"$have_gas_880"
  call void @_out_of_gas()
  br label %"$have_gas_888"

"$have_gas_888":                                  ; preds = %"$out_of_gas_887", %"$have_gas_880"
  %"$consume_889" = sub i64 %"$gasrem_885", %"$_literal_cost_call_884"
  store i64 %"$consume_889", i64* @_gasrem, align 8
  %"$execptr_load_890" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_892" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$update_value_893" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_892" to i8*
  call void @_update_field(i8* %"$execptr_load_890", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_891", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 0, i8* null, i8* %"$update_value_893")
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_888"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_888"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$x_1" = alloca %Uint32, align 8
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 1, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_897"
  %"$consume_903" = sub i64 %"$gasrem_899", 1
  store i64 %"$consume_903", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$x_1", align 4
  %tmp_3_10 = alloca %TName_Bool*, align 8
  %"$indices_buf_904_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_904_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_904_salloc_load", i64 4)
  %"$indices_buf_904_salloc" = bitcast i8* %"$indices_buf_904_salloc_salloc" to [4 x i8]*
  %"$indices_buf_904" = bitcast [4 x i8]* %"$indices_buf_904_salloc" to i8*
  %"$$x_1_905" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_906" = getelementptr i8, i8* %"$indices_buf_904", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_906" to %Uint32*
  store %Uint32 %"$$x_1_905", %Uint32* %indices_cast2, align 4
  %"$execptr_load_908" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_remote3_909" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_10_remote3_909", align 1
  %"$tmp_3_10_call_910" = call i8* @_fetch_remote_field(i8* %"$execptr_load_908", [20 x i8]* %"$tmp_3_10_remote3_909", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_907", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 1, i8* %"$indices_buf_904", i32 0)
  %"$tmp_3_10_911" = bitcast i8* %"$tmp_3_10_call_910" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_10_911", %TName_Bool** %tmp_3_10, align 8
  %"$tmp_3_10_912" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_912_913" = bitcast %TName_Bool* %"$tmp_3_10_912" to i8*
  %"$_literal_cost_call_914" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_10_912_913")
  %"$gasadd_915" = add i64 %"$_literal_cost_call_914", 0
  %"$gasadd_916" = add i64 %"$gasadd_915", 1
  %"$gasrem_917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_918" = icmp ugt i64 %"$gasadd_916", %"$gasrem_917"
  br i1 %"$gascmp_918", label %"$out_of_gas_919", label %"$have_gas_920"

"$out_of_gas_919":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_920"

"$have_gas_920":                                  ; preds = %"$out_of_gas_919", %"$have_gas_902"
  %"$consume_921" = sub i64 %"$gasrem_917", %"$gasadd_916"
  store i64 %"$consume_921", i64* @_gasrem, align 8
  %"$tmp_3_10_922" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_922_923" = bitcast %TName_Bool* %"$tmp_3_10_922" to i8*
  %"$_literal_cost_call_924" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_10_922_923")
  %"$gasrem_925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_926" = icmp ugt i64 %"$_literal_cost_call_924", %"$gasrem_925"
  br i1 %"$gascmp_926", label %"$out_of_gas_927", label %"$have_gas_928"

"$out_of_gas_927":                                ; preds = %"$have_gas_920"
  call void @_out_of_gas()
  br label %"$have_gas_928"

"$have_gas_928":                                  ; preds = %"$out_of_gas_927", %"$have_gas_920"
  %"$consume_929" = sub i64 %"$gasrem_925", %"$_literal_cost_call_924"
  store i64 %"$consume_929", i64* @_gasrem, align 8
  %"$execptr_load_930" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_932" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$update_value_933" = bitcast %TName_Bool* %"$tmp_3_10_932" to i8*
  call void @_update_field(i8* %"$execptr_load_930", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_931", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_933")
  %tmp_3_11 = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$indices_buf_934_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_934_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_934_salloc_load", i64 4)
  %"$indices_buf_934_salloc" = bitcast i8* %"$indices_buf_934_salloc_salloc" to [4 x i8]*
  %"$indices_buf_934" = bitcast [4 x i8]* %"$indices_buf_934_salloc" to i8*
  %"$$x_1_935" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_936" = getelementptr i8, i8* %"$indices_buf_934", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_936" to %Uint32*
  store %Uint32 %"$$x_1_935", %Uint32* %indices_cast3, align 4
  %"$execptr_load_938" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_11_remote3_939" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_11_remote3_939", align 1
  %"$tmp_3_11_call_940" = call i8* @_fetch_remote_field(i8* %"$execptr_load_938", [20 x i8]* %"$tmp_3_11_remote3_939", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_937", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 1, i8* %"$indices_buf_934", i32 1)
  %"$tmp_3_11_941" = bitcast i8* %"$tmp_3_11_call_940" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_941", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$tmp_3_11_942" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_942_943" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_942" to i8*
  %"$_literal_cost_call_944" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", i8* %"$$tmp_3_11_942_943")
  %"$tmp_3_11_945" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_945_946" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_945" to i8*
  %"$_mapsortcost_call_947" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", i8* %"$$tmp_3_11_945_946")
  %"$gasadd_948" = add i64 %"$_literal_cost_call_944", %"$_mapsortcost_call_947"
  %"$gasadd_949" = add i64 %"$gasadd_948", 1
  %"$gasrem_950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_951" = icmp ugt i64 %"$gasadd_949", %"$gasrem_950"
  br i1 %"$gascmp_951", label %"$out_of_gas_952", label %"$have_gas_953"

"$out_of_gas_952":                                ; preds = %"$have_gas_928"
  call void @_out_of_gas()
  br label %"$have_gas_953"

"$have_gas_953":                                  ; preds = %"$out_of_gas_952", %"$have_gas_928"
  %"$consume_954" = sub i64 %"$gasrem_950", %"$gasadd_949"
  store i64 %"$consume_954", i64* @_gasrem, align 8
  %"$tmp_3_11_955" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_955_956" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_955" to i8*
  %"$_literal_cost_call_957" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", i8* %"$$tmp_3_11_955_956")
  %"$gasrem_958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_959" = icmp ugt i64 %"$_literal_cost_call_957", %"$gasrem_958"
  br i1 %"$gascmp_959", label %"$out_of_gas_960", label %"$have_gas_961"

"$out_of_gas_960":                                ; preds = %"$have_gas_953"
  call void @_out_of_gas()
  br label %"$have_gas_961"

"$have_gas_961":                                  ; preds = %"$out_of_gas_960", %"$have_gas_953"
  %"$consume_962" = sub i64 %"$gasrem_958", %"$_literal_cost_call_957"
  store i64 %"$consume_962", i64* @_gasrem, align 8
  %"$execptr_load_963" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_11_965" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$update_value_966" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_965" to i8*
  call void @_update_field(i8* %"$execptr_load_963", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_964", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", i32 0, i8* null, i8* %"$update_value_966")
  %tmp_3_12 = alloca %TName_Bool*, align 8
  %"$indices_buf_967_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_967_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_967_salloc_load", i64 24)
  %"$indices_buf_967_salloc" = bitcast i8* %"$indices_buf_967_salloc_salloc" to [24 x i8]*
  %"$indices_buf_967" = bitcast [24 x i8]* %"$indices_buf_967_salloc" to i8*
  %"$$x_1_968" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_969" = getelementptr i8, i8* %"$indices_buf_967", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_969" to %Uint32*
  store %Uint32 %"$$x_1_968", %Uint32* %indices_cast4, align 4
  %"$indices_gep_970" = getelementptr i8, i8* %"$indices_buf_967", i32 4
  %indices_cast5 = bitcast i8* %"$indices_gep_970" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast5, align 1
  %"$execptr_load_972" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_12_remote3_973" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_12_remote3_973", align 1
  %"$tmp_3_12_call_974" = call i8* @_fetch_remote_field(i8* %"$execptr_load_972", [20 x i8]* %"$tmp_3_12_remote3_973", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_971", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 2, i8* %"$indices_buf_967", i32 0)
  %"$tmp_3_12_975" = bitcast i8* %"$tmp_3_12_call_974" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_12_975", %TName_Bool** %tmp_3_12, align 8
  %"$tmp_3_12_976" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_976_977" = bitcast %TName_Bool* %"$tmp_3_12_976" to i8*
  %"$_literal_cost_call_978" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_12_976_977")
  %"$gasadd_979" = add i64 %"$_literal_cost_call_978", 0
  %"$gasadd_980" = add i64 %"$gasadd_979", 2
  %"$gasrem_981" = load i64, i64* @_gasrem, align 8
  %"$gascmp_982" = icmp ugt i64 %"$gasadd_980", %"$gasrem_981"
  br i1 %"$gascmp_982", label %"$out_of_gas_983", label %"$have_gas_984"

"$out_of_gas_983":                                ; preds = %"$have_gas_961"
  call void @_out_of_gas()
  br label %"$have_gas_984"

"$have_gas_984":                                  ; preds = %"$out_of_gas_983", %"$have_gas_961"
  %"$consume_985" = sub i64 %"$gasrem_981", %"$gasadd_980"
  store i64 %"$consume_985", i64* @_gasrem, align 8
  %"$tmp_3_12_986" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_986_987" = bitcast %TName_Bool* %"$tmp_3_12_986" to i8*
  %"$_literal_cost_call_988" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_12_986_987")
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 %"$_literal_cost_call_988", %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_984"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_984"
  %"$consume_993" = sub i64 %"$gasrem_989", %"$_literal_cost_call_988"
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %"$execptr_load_994" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_12_996" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$update_value_997" = bitcast %TName_Bool* %"$tmp_3_12_996" to i8*
  call void @_update_field(i8* %"$execptr_load_994", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_995", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_997")
  %tmp_3_13 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_998_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_998_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_998_salloc_load", i64 24)
  %"$indices_buf_998_salloc" = bitcast i8* %"$indices_buf_998_salloc_salloc" to [24 x i8]*
  %"$indices_buf_998" = bitcast [24 x i8]* %"$indices_buf_998_salloc" to i8*
  %"$$x_1_999" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_1000" = getelementptr i8, i8* %"$indices_buf_998", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_1000" to %Uint32*
  store %Uint32 %"$$x_1_999", %Uint32* %indices_cast6, align 4
  %"$indices_gep_1001" = getelementptr i8, i8* %"$indices_buf_998", i32 4
  %indices_cast7 = bitcast i8* %"$indices_gep_1001" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast7, align 1
  %"$execptr_load_1003" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_13_remote3_1004" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_13_remote3_1004", align 1
  %"$tmp_3_13_call_1005" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1003", [20 x i8]* %"$tmp_3_13_remote3_1004", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_1002", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 2, i8* %"$indices_buf_998", i32 1)
  %"$tmp_3_13_1006" = bitcast i8* %"$tmp_3_13_call_1005" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_13_1006", %TName_Option_Bool** %tmp_3_13, align 8
  %"$tmp_3_13_1007" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_1007_1008" = bitcast %TName_Option_Bool* %"$tmp_3_13_1007" to i8*
  %"$_literal_cost_call_1009" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i8* %"$$tmp_3_13_1007_1008")
  %"$gasadd_1010" = add i64 %"$_literal_cost_call_1009", 0
  %"$gasadd_1011" = add i64 %"$gasadd_1010", 2
  %"$gasrem_1012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1013" = icmp ugt i64 %"$gasadd_1011", %"$gasrem_1012"
  br i1 %"$gascmp_1013", label %"$out_of_gas_1014", label %"$have_gas_1015"

"$out_of_gas_1014":                               ; preds = %"$have_gas_992"
  call void @_out_of_gas()
  br label %"$have_gas_1015"

"$have_gas_1015":                                 ; preds = %"$out_of_gas_1014", %"$have_gas_992"
  %"$consume_1016" = sub i64 %"$gasrem_1012", %"$gasadd_1011"
  store i64 %"$consume_1016", i64* @_gasrem, align 8
  %"$tmp_3_13_1017" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_1017_1018" = bitcast %TName_Option_Bool* %"$tmp_3_13_1017" to i8*
  %"$_literal_cost_call_1019" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i8* %"$$tmp_3_13_1017_1018")
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 %"$_literal_cost_call_1019", %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %"$have_gas_1015"
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %"$have_gas_1015"
  %"$consume_1024" = sub i64 %"$gasrem_1020", %"$_literal_cost_call_1019"
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  %"$execptr_load_1025" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_13_1027" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$update_value_1028" = bitcast %TName_Option_Bool* %"$tmp_3_13_1027" to i8*
  call void @_update_field(i8* %"$execptr_load_1025", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_1026", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i32 0, i8* null, i8* %"$update_value_1028")
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

define void @RemoteReadsTest(i8* %0) {
entry:
  %"$_amount_1030" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1031" = bitcast i8* %"$_amount_1030" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1031", align 8
  %"$_origin_1032" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1033" = bitcast i8* %"$_origin_1032" to [20 x i8]*
  %"$_sender_1034" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1035" = bitcast i8* %"$_sender_1034" to [20 x i8]*
  %"$remote1_1036" = getelementptr i8, i8* %0, i32 56
  %"$remote1_1037" = bitcast i8* %"$remote1_1036" to [20 x i8]*
  %"$remote2_1038" = getelementptr i8, i8* %0, i32 76
  %"$remote2_1039" = bitcast i8* %"$remote2_1038" to [20 x i8]*
  %"$remote3_1040" = getelementptr i8, i8* %0, i32 96
  %"$remote3_1041" = bitcast i8* %"$remote3_1040" to [20 x i8]*
  call void @"$RemoteReadsTest_591"(%Uint128 %_amount, [20 x i8]* %"$_origin_1033", [20 x i8]* %"$_sender_1035", [20 x i8]* %"$remote1_1037", [20 x i8]* %"$remote2_1039", [20 x i8]* %"$remote3_1041")
  ret void
}

define internal void @"$RemoteReadsADTTest_1042"(%Uint128 %_amount, [20 x i8]* %"$_origin_1043", [20 x i8]* %"$_sender_1044", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1045") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1043", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1044", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_1045", align 1
  ret void
}

define void @RemoteReadsADTTest(i8* %0) {
entry:
  %"$_amount_1047" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1048" = bitcast i8* %"$_amount_1047" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1048", align 8
  %"$_origin_1049" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1050" = bitcast i8* %"$_origin_1049" to [20 x i8]*
  %"$_sender_1051" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1052" = bitcast i8* %"$_sender_1051" to [20 x i8]*
  %"$list1_1053" = getelementptr i8, i8* %0, i32 56
  %"$list1_1054" = bitcast i8* %"$list1_1053" to %TName_List_ByStr20_with_end**
  %list1 = load %TName_List_ByStr20_with_end*, %TName_List_ByStr20_with_end** %"$list1_1054", align 8
  %"$list2_1055" = getelementptr i8, i8* %0, i32 64
  %"$list2_1056" = bitcast i8* %"$list2_1055" to %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"**
  %list2 = load %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"*, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"** %"$list2_1056", align 8
  %"$list3_1057" = getelementptr i8, i8* %0, i32 72
  %"$list3_1058" = bitcast i8* %"$list3_1057" to %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"**
  %list3 = load %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"*, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"** %"$list3_1058", align 8
  %"$pair1_1059" = getelementptr i8, i8* %0, i32 80
  %"$pair1_1060" = bitcast i8* %"$pair1_1059" to %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %pair1 = load %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$pair1_1060", align 8
  %"$adt1_1061" = getelementptr i8, i8* %0, i32 88
  %"$adt1_1062" = bitcast i8* %"$adt1_1061" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %adt1 = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adt1_1062", align 8
  %"$remote1_1063" = getelementptr i8, i8* %0, i32 96
  %"$remote1_1064" = bitcast i8* %"$remote1_1063" to [20 x i8]*
  call void @"$RemoteReadsADTTest_1042"(%Uint128 %_amount, [20 x i8]* %"$_origin_1050", [20 x i8]* %"$_sender_1052", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1064")
  ret void
}

define internal void @"$OutgoingMsgTest_1065"(%Uint128 %_amount, [20 x i8]* %"$_origin_1066", [20 x i8]* %"$_sender_1067") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1066", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1067", align 1
  %"$gasrem_1068" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1069" = icmp ugt i64 1, %"$gasrem_1068"
  br i1 %"$gascmp_1069", label %"$out_of_gas_1070", label %"$have_gas_1071"

"$out_of_gas_1070":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1071"

"$have_gas_1071":                                 ; preds = %"$out_of_gas_1070", %entry
  %"$consume_1072" = sub i64 %"$gasrem_1068", 1
  store i64 %"$consume_1072", i64* @_gasrem, align 8
  %msg = alloca i8*, align 8
  %"$gasrem_1073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1074" = icmp ugt i64 1, %"$gasrem_1073"
  br i1 %"$gascmp_1074", label %"$out_of_gas_1075", label %"$have_gas_1076"

"$out_of_gas_1075":                               ; preds = %"$have_gas_1071"
  call void @_out_of_gas()
  br label %"$have_gas_1076"

"$have_gas_1076":                                 ; preds = %"$out_of_gas_1075", %"$have_gas_1071"
  %"$consume_1077" = sub i64 %"$gasrem_1073", 1
  store i64 %"$consume_1077", i64* @_gasrem, align 8
  %"$msgobj_1078_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1078_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1078_salloc_load", i64 169)
  %"$msgobj_1078_salloc" = bitcast i8* %"$msgobj_1078_salloc_salloc" to [169 x i8]*
  %"$msgobj_1078" = bitcast [169 x i8]* %"$msgobj_1078_salloc" to i8*
  store i8 4, i8* %"$msgobj_1078", align 1
  %"$msgobj_fname_1080" = getelementptr i8, i8* %"$msgobj_1078", i32 1
  %"$msgobj_fname_1081" = bitcast i8* %"$msgobj_fname_1080" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1079", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1081", align 8
  %"$msgobj_td_1082" = getelementptr i8, i8* %"$msgobj_1078", i32 17
  %"$msgobj_td_1083" = bitcast i8* %"$msgobj_td_1082" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1083", align 8
  %"$msgobj_v_1085" = getelementptr i8, i8* %"$msgobj_1078", i32 25
  %"$msgobj_v_1086" = bitcast i8* %"$msgobj_v_1085" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1084", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_1086", align 8
  %"$msgobj_fname_1088" = getelementptr i8, i8* %"$msgobj_1078", i32 41
  %"$msgobj_fname_1089" = bitcast i8* %"$msgobj_fname_1088" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1087", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1089", align 8
  %"$msgobj_td_1090" = getelementptr i8, i8* %"$msgobj_1078", i32 57
  %"$msgobj_td_1091" = bitcast i8* %"$msgobj_td_1090" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ** %"$msgobj_td_1091", align 8
  %"$msgobj_v_1092" = getelementptr i8, i8* %"$msgobj_1078", i32 65
  %"$msgobj_v_1093" = bitcast i8* %"$msgobj_v_1092" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_1093", align 1
  %"$msgobj_fname_1095" = getelementptr i8, i8* %"$msgobj_1078", i32 85
  %"$msgobj_fname_1096" = bitcast i8* %"$msgobj_fname_1095" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1094", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1096", align 8
  %"$msgobj_td_1097" = getelementptr i8, i8* %"$msgobj_1078", i32 101
  %"$msgobj_td_1098" = bitcast i8* %"$msgobj_td_1097" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ** %"$msgobj_td_1098", align 8
  %"$msgobj_v_1099" = getelementptr i8, i8* %"$msgobj_1078", i32 109
  %"$msgobj_v_1100" = bitcast i8* %"$msgobj_v_1099" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_1100", align 8
  %"$msgobj_fname_1102" = getelementptr i8, i8* %"$msgobj_1078", i32 125
  %"$msgobj_fname_1103" = bitcast i8* %"$msgobj_fname_1102" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1101", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1103", align 8
  %"$msgobj_td_1104" = getelementptr i8, i8* %"$msgobj_1078", i32 141
  %"$msgobj_td_1105" = bitcast i8* %"$msgobj_td_1104" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ** %"$msgobj_td_1105", align 8
  %"$cparam3_1106" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1107" = getelementptr i8, i8* %"$msgobj_1078", i32 149
  %"$msgobj_v_1108" = bitcast i8* %"$msgobj_v_1107" to [20 x i8]*
  store [20 x i8] %"$cparam3_1106", [20 x i8]* %"$msgobj_v_1108", align 1
  store i8* %"$msgobj_1078", i8** %msg, align 8
  %"$gasrem_1110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1111" = icmp ugt i64 1, %"$gasrem_1110"
  br i1 %"$gascmp_1111", label %"$out_of_gas_1112", label %"$have_gas_1113"

"$out_of_gas_1112":                               ; preds = %"$have_gas_1076"
  call void @_out_of_gas()
  br label %"$have_gas_1113"

"$have_gas_1113":                                 ; preds = %"$out_of_gas_1112", %"$have_gas_1076"
  %"$consume_1114" = sub i64 %"$gasrem_1110", 1
  store i64 %"$consume_1114", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_1115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1116" = icmp ugt i64 1, %"$gasrem_1115"
  br i1 %"$gascmp_1116", label %"$out_of_gas_1117", label %"$have_gas_1118"

"$out_of_gas_1117":                               ; preds = %"$have_gas_1113"
  call void @_out_of_gas()
  br label %"$have_gas_1118"

"$have_gas_1118":                                 ; preds = %"$out_of_gas_1117", %"$have_gas_1113"
  %"$consume_1119" = sub i64 %"$gasrem_1115", 1
  store i64 %"$consume_1119", i64* @_gasrem, align 8
  %n = alloca %TName_List_Message*, align 8
  %"$gasrem_1120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1121" = icmp ugt i64 1, %"$gasrem_1120"
  br i1 %"$gascmp_1121", label %"$out_of_gas_1122", label %"$have_gas_1123"

"$out_of_gas_1122":                               ; preds = %"$have_gas_1118"
  call void @_out_of_gas()
  br label %"$have_gas_1123"

"$have_gas_1123":                                 ; preds = %"$out_of_gas_1122", %"$have_gas_1118"
  %"$consume_1124" = sub i64 %"$gasrem_1120", 1
  store i64 %"$consume_1124", i64* @_gasrem, align 8
  %"$adtval_1125_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1125_salloc" = call i8* @_salloc(i8* %"$adtval_1125_load", i64 1)
  %"$adtval_1125" = bitcast i8* %"$adtval_1125_salloc" to %CName_Nil_Message*
  %"$adtgep_1126" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_1125", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1126", align 1
  %"$adtptr_1127" = bitcast %CName_Nil_Message* %"$adtval_1125" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1127", %TName_List_Message** %n, align 8
  %"$gasrem_1128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1129" = icmp ugt i64 1, %"$gasrem_1128"
  br i1 %"$gascmp_1129", label %"$out_of_gas_1130", label %"$have_gas_1131"

"$out_of_gas_1130":                               ; preds = %"$have_gas_1123"
  call void @_out_of_gas()
  br label %"$have_gas_1131"

"$have_gas_1131":                                 ; preds = %"$out_of_gas_1130", %"$have_gas_1123"
  %"$consume_1132" = sub i64 %"$gasrem_1128", 1
  store i64 %"$consume_1132", i64* @_gasrem, align 8
  %"$msg_1133" = load i8*, i8** %msg, align 8
  %"$n_1134" = load %TName_List_Message*, %TName_List_Message** %n, align 8
  %"$adtval_1135_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1135_salloc" = call i8* @_salloc(i8* %"$adtval_1135_load", i64 17)
  %"$adtval_1135" = bitcast i8* %"$adtval_1135_salloc" to %CName_Cons_Message*
  %"$adtgep_1136" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1135", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1136", align 1
  %"$adtgep_1137" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1135", i32 0, i32 1
  store i8* %"$msg_1133", i8** %"$adtgep_1137", align 8
  %"$adtgep_1138" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1135", i32 0, i32 2
  store %TName_List_Message* %"$n_1134", %TName_List_Message** %"$adtgep_1138", align 8
  %"$adtptr_1139" = bitcast %CName_Cons_Message* %"$adtval_1135" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1139", %TName_List_Message** %msgs, align 8
  %"$msgs_1140" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_1140_1141" = bitcast %TName_List_Message* %"$msgs_1140" to i8*
  %"$_literal_cost_call_1142" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_65", i8* %"$$msgs_1140_1141")
  %"$gasrem_1143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1144" = icmp ugt i64 %"$_literal_cost_call_1142", %"$gasrem_1143"
  br i1 %"$gascmp_1144", label %"$out_of_gas_1145", label %"$have_gas_1146"

"$out_of_gas_1145":                               ; preds = %"$have_gas_1131"
  call void @_out_of_gas()
  br label %"$have_gas_1146"

"$have_gas_1146":                                 ; preds = %"$out_of_gas_1145", %"$have_gas_1131"
  %"$consume_1147" = sub i64 %"$gasrem_1143", %"$_literal_cost_call_1142"
  store i64 %"$consume_1147", i64* @_gasrem, align 8
  %"$execptr_load_1148" = load i8*, i8** @_execptr, align 8
  %"$msgs_1149" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_1148", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_65", %TName_List_Message* %"$msgs_1149")
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 1, %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1146"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1146"
  %"$consume_1154" = sub i64 %"$gasrem_1150", 1
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_1155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1156" = icmp ugt i64 1, %"$gasrem_1155"
  br i1 %"$gascmp_1156", label %"$out_of_gas_1157", label %"$have_gas_1158"

"$out_of_gas_1157":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1158"

"$have_gas_1158":                                 ; preds = %"$out_of_gas_1157", %"$have_gas_1153"
  %"$consume_1159" = sub i64 %"$gasrem_1155", 1
  store i64 %"$consume_1159", i64* @_gasrem, align 8
  %"$msgobj_1160_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1160_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1160_salloc_load", i64 85)
  %"$msgobj_1160_salloc" = bitcast i8* %"$msgobj_1160_salloc_salloc" to [85 x i8]*
  %"$msgobj_1160" = bitcast [85 x i8]* %"$msgobj_1160_salloc" to i8*
  store i8 2, i8* %"$msgobj_1160", align 1
  %"$msgobj_fname_1162" = getelementptr i8, i8* %"$msgobj_1160", i32 1
  %"$msgobj_fname_1163" = bitcast i8* %"$msgobj_fname_1162" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1161", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1163", align 8
  %"$msgobj_td_1164" = getelementptr i8, i8* %"$msgobj_1160", i32 17
  %"$msgobj_td_1165" = bitcast i8* %"$msgobj_td_1164" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1165", align 8
  %"$msgobj_v_1167" = getelementptr i8, i8* %"$msgobj_1160", i32 25
  %"$msgobj_v_1168" = bitcast i8* %"$msgobj_v_1167" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1166", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1168", align 8
  %"$msgobj_fname_1170" = getelementptr i8, i8* %"$msgobj_1160", i32 41
  %"$msgobj_fname_1171" = bitcast i8* %"$msgobj_fname_1170" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1169", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1171", align 8
  %"$msgobj_td_1172" = getelementptr i8, i8* %"$msgobj_1160", i32 57
  %"$msgobj_td_1173" = bitcast i8* %"$msgobj_td_1172" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ** %"$msgobj_td_1173", align 8
  %"$cparam2_1174" = load [20 x i8], [20 x i8]* @_cparam_cparam2, align 1
  %"$msgobj_v_1175" = getelementptr i8, i8* %"$msgobj_1160", i32 65
  %"$msgobj_v_1176" = bitcast i8* %"$msgobj_v_1175" to [20 x i8]*
  store [20 x i8] %"$cparam2_1174", [20 x i8]* %"$msgobj_v_1176", align 1
  store i8* %"$msgobj_1160", i8** %e1, align 8
  %"$e1_1178" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_1180" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e1_1178")
  %"$gasrem_1181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1182" = icmp ugt i64 %"$_literal_cost_call_1180", %"$gasrem_1181"
  br i1 %"$gascmp_1182", label %"$out_of_gas_1183", label %"$have_gas_1184"

"$out_of_gas_1183":                               ; preds = %"$have_gas_1158"
  call void @_out_of_gas()
  br label %"$have_gas_1184"

"$have_gas_1184":                                 ; preds = %"$out_of_gas_1183", %"$have_gas_1158"
  %"$consume_1185" = sub i64 %"$gasrem_1181", %"$_literal_cost_call_1180"
  store i64 %"$consume_1185", i64* @_gasrem, align 8
  %"$execptr_load_1186" = load i8*, i8** @_execptr, align 8
  %"$e1_1187" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_1186", %_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e1_1187")
  %"$gasrem_1188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1189" = icmp ugt i64 1, %"$gasrem_1188"
  br i1 %"$gascmp_1189", label %"$out_of_gas_1190", label %"$have_gas_1191"

"$out_of_gas_1190":                               ; preds = %"$have_gas_1184"
  call void @_out_of_gas()
  br label %"$have_gas_1191"

"$have_gas_1191":                                 ; preds = %"$out_of_gas_1190", %"$have_gas_1184"
  %"$consume_1192" = sub i64 %"$gasrem_1188", 1
  store i64 %"$consume_1192", i64* @_gasrem, align 8
  %e2 = alloca i8*, align 8
  %"$gasrem_1193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1194" = icmp ugt i64 1, %"$gasrem_1193"
  br i1 %"$gascmp_1194", label %"$out_of_gas_1195", label %"$have_gas_1196"

"$out_of_gas_1195":                               ; preds = %"$have_gas_1191"
  call void @_out_of_gas()
  br label %"$have_gas_1196"

"$have_gas_1196":                                 ; preds = %"$out_of_gas_1195", %"$have_gas_1191"
  %"$consume_1197" = sub i64 %"$gasrem_1193", 1
  store i64 %"$consume_1197", i64* @_gasrem, align 8
  %"$msgobj_1198_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1198_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1198_salloc_load", i64 85)
  %"$msgobj_1198_salloc" = bitcast i8* %"$msgobj_1198_salloc_salloc" to [85 x i8]*
  %"$msgobj_1198" = bitcast [85 x i8]* %"$msgobj_1198_salloc" to i8*
  store i8 2, i8* %"$msgobj_1198", align 1
  %"$msgobj_fname_1200" = getelementptr i8, i8* %"$msgobj_1198", i32 1
  %"$msgobj_fname_1201" = bitcast i8* %"$msgobj_fname_1200" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1199", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1201", align 8
  %"$msgobj_td_1202" = getelementptr i8, i8* %"$msgobj_1198", i32 17
  %"$msgobj_td_1203" = bitcast i8* %"$msgobj_td_1202" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1203", align 8
  %"$msgobj_v_1205" = getelementptr i8, i8* %"$msgobj_1198", i32 25
  %"$msgobj_v_1206" = bitcast i8* %"$msgobj_v_1205" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1204", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1206", align 8
  %"$msgobj_fname_1208" = getelementptr i8, i8* %"$msgobj_1198", i32 41
  %"$msgobj_fname_1209" = bitcast i8* %"$msgobj_fname_1208" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1207", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1209", align 8
  %"$msgobj_td_1210" = getelementptr i8, i8* %"$msgobj_1198", i32 57
  %"$msgobj_td_1211" = bitcast i8* %"$msgobj_td_1210" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ** %"$msgobj_td_1211", align 8
  %"$cparam3_1212" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1213" = getelementptr i8, i8* %"$msgobj_1198", i32 65
  %"$msgobj_v_1214" = bitcast i8* %"$msgobj_v_1213" to [20 x i8]*
  store [20 x i8] %"$cparam3_1212", [20 x i8]* %"$msgobj_v_1214", align 1
  store i8* %"$msgobj_1198", i8** %e2, align 8
  %"$e2_1216" = load i8*, i8** %e2, align 8
  %"$_literal_cost_call_1218" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e2_1216")
  %"$gasrem_1219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1220" = icmp ugt i64 %"$_literal_cost_call_1218", %"$gasrem_1219"
  br i1 %"$gascmp_1220", label %"$out_of_gas_1221", label %"$have_gas_1222"

"$out_of_gas_1221":                               ; preds = %"$have_gas_1196"
  call void @_out_of_gas()
  br label %"$have_gas_1222"

"$have_gas_1222":                                 ; preds = %"$out_of_gas_1221", %"$have_gas_1196"
  %"$consume_1223" = sub i64 %"$gasrem_1219", %"$_literal_cost_call_1218"
  store i64 %"$consume_1223", i64* @_gasrem, align 8
  %"$execptr_load_1224" = load i8*, i8** @_execptr, align 8
  %"$e2_1225" = load i8*, i8** %e2, align 8
  call void @_event(i8* %"$execptr_load_1224", %_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e2_1225")
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @OutgoingMsgTest(i8* %0) {
entry:
  %"$_amount_1227" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1228" = bitcast i8* %"$_amount_1227" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1228", align 8
  %"$_origin_1229" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1230" = bitcast i8* %"$_origin_1229" to [20 x i8]*
  %"$_sender_1231" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1232" = bitcast i8* %"$_sender_1231" to [20 x i8]*
  call void @"$OutgoingMsgTest_1065"(%Uint128 %_amount, [20 x i8]* %"$_origin_1230", [20 x i8]* %"$_sender_1232")
  ret void
}

define internal void @"$ExceptionTest_1233"(%Uint128 %_amount, [20 x i8]* %"$_origin_1234", [20 x i8]* %"$_sender_1235") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1234", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1235", align 1
  %"$gasrem_1236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1237" = icmp ugt i64 1, %"$gasrem_1236"
  br i1 %"$gascmp_1237", label %"$out_of_gas_1238", label %"$have_gas_1239"

"$out_of_gas_1238":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1239"

"$have_gas_1239":                                 ; preds = %"$out_of_gas_1238", %entry
  %"$consume_1240" = sub i64 %"$gasrem_1236", 1
  store i64 %"$consume_1240", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_1241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1242" = icmp ugt i64 1, %"$gasrem_1241"
  br i1 %"$gascmp_1242", label %"$out_of_gas_1243", label %"$have_gas_1244"

"$out_of_gas_1243":                               ; preds = %"$have_gas_1239"
  call void @_out_of_gas()
  br label %"$have_gas_1244"

"$have_gas_1244":                                 ; preds = %"$out_of_gas_1243", %"$have_gas_1239"
  %"$consume_1245" = sub i64 %"$gasrem_1241", 1
  store i64 %"$consume_1245", i64* @_gasrem, align 8
  %"$msgobj_1246_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1246_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1246_salloc_load", i64 85)
  %"$msgobj_1246_salloc" = bitcast i8* %"$msgobj_1246_salloc_salloc" to [85 x i8]*
  %"$msgobj_1246" = bitcast [85 x i8]* %"$msgobj_1246_salloc" to i8*
  store i8 2, i8* %"$msgobj_1246", align 1
  %"$msgobj_fname_1248" = getelementptr i8, i8* %"$msgobj_1246", i32 1
  %"$msgobj_fname_1249" = bitcast i8* %"$msgobj_fname_1248" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1247", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1249", align 8
  %"$msgobj_td_1250" = getelementptr i8, i8* %"$msgobj_1246", i32 17
  %"$msgobj_td_1251" = bitcast i8* %"$msgobj_td_1250" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1251", align 8
  %"$msgobj_v_1253" = getelementptr i8, i8* %"$msgobj_1246", i32 25
  %"$msgobj_v_1254" = bitcast i8* %"$msgobj_v_1253" to %String*
  store %String { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$stringlit_1252", i32 0, i32 0), i32 13 }, %String* %"$msgobj_v_1254", align 8
  %"$msgobj_fname_1256" = getelementptr i8, i8* %"$msgobj_1246", i32 41
  %"$msgobj_fname_1257" = bitcast i8* %"$msgobj_fname_1256" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1255", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1257", align 8
  %"$msgobj_td_1258" = getelementptr i8, i8* %"$msgobj_1246", i32 57
  %"$msgobj_td_1259" = bitcast i8* %"$msgobj_td_1258" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ** %"$msgobj_td_1259", align 8
  %"$cparam3_1260" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1261" = getelementptr i8, i8* %"$msgobj_1246", i32 65
  %"$msgobj_v_1262" = bitcast i8* %"$msgobj_v_1261" to [20 x i8]*
  store [20 x i8] %"$cparam3_1260", [20 x i8]* %"$msgobj_v_1262", align 1
  store i8* %"$msgobj_1246", i8** %e, align 8
  %"$e_1264" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_1266" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_57", i8* %"$e_1264")
  %"$gasrem_1267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1268" = icmp ugt i64 %"$_literal_cost_call_1266", %"$gasrem_1267"
  br i1 %"$gascmp_1268", label %"$out_of_gas_1269", label %"$have_gas_1270"

"$out_of_gas_1269":                               ; preds = %"$have_gas_1244"
  call void @_out_of_gas()
  br label %"$have_gas_1270"

"$have_gas_1270":                                 ; preds = %"$out_of_gas_1269", %"$have_gas_1244"
  %"$consume_1271" = sub i64 %"$gasrem_1267", %"$_literal_cost_call_1266"
  store i64 %"$consume_1271", i64* @_gasrem, align 8
  %"$execptr_load_1272" = load i8*, i8** @_execptr, align 8
  %"$e_1273" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_1272", %_TyDescrTy_Typ* @"$TyDescr_Exception_57", i8* %"$e_1273")
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ExceptionTest(i8* %0) {
entry:
  %"$_amount_1275" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1276" = bitcast i8* %"$_amount_1275" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1276", align 8
  %"$_origin_1277" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1278" = bitcast i8* %"$_origin_1277" to [20 x i8]*
  %"$_sender_1279" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1280" = bitcast i8* %"$_sender_1279" to [20 x i8]*
  call void @"$ExceptionTest_1233"(%Uint128 %_amount, [20 x i8]* %"$_origin_1278", [20 x i8]* %"$_sender_1280")
  ret void
}

define internal void @"$AssignTest_1281"(%Uint128 %_amount, [20 x i8]* %"$_origin_1282", [20 x i8]* %"$_sender_1283") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1282", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1283", align 1
  %"$gasrem_1284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1285" = icmp ugt i64 1, %"$gasrem_1284"
  br i1 %"$gascmp_1285", label %"$out_of_gas_1286", label %"$have_gas_1287"

"$out_of_gas_1286":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1287"

"$have_gas_1287":                                 ; preds = %"$out_of_gas_1286", %entry
  %"$consume_1288" = sub i64 %"$gasrem_1284", 1
  store i64 %"$consume_1288", i64* @_gasrem, align 8
  %"$x_2" = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1290" = icmp ugt i64 1, %"$gasrem_1289"
  br i1 %"$gascmp_1290", label %"$out_of_gas_1291", label %"$have_gas_1292"

"$out_of_gas_1291":                               ; preds = %"$have_gas_1287"
  call void @_out_of_gas()
  br label %"$have_gas_1292"

"$have_gas_1292":                                 ; preds = %"$out_of_gas_1291", %"$have_gas_1287"
  %"$consume_1293" = sub i64 %"$gasrem_1289", 1
  store i64 %"$consume_1293", i64* @_gasrem, align 8
  %"$cparam3_1294" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$adtval_1295_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1295_salloc" = call i8* @_salloc(i8* %"$adtval_1295_load", i64 21)
  %"$adtval_1295" = bitcast i8* %"$adtval_1295_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2*
  %"$adtgep_1296" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1295", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1296", align 1
  %"$adtgep_1297" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1295", i32 0, i32 1
  store [20 x i8] %"$cparam3_1294", [20 x i8]* %"$adtgep_1297", align 1
  %"$adtptr_1298" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1295" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1298", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$$x_2_1299" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$$$x_2_1299_1300" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1299" to i8*
  %"$_literal_cost_call_1301" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75", i8* %"$$$x_2_1299_1300")
  %"$gasrem_1302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1303" = icmp ugt i64 %"$_literal_cost_call_1301", %"$gasrem_1302"
  br i1 %"$gascmp_1303", label %"$out_of_gas_1304", label %"$have_gas_1305"

"$out_of_gas_1304":                               ; preds = %"$have_gas_1292"
  call void @_out_of_gas()
  br label %"$have_gas_1305"

"$have_gas_1305":                                 ; preds = %"$out_of_gas_1304", %"$have_gas_1292"
  %"$consume_1306" = sub i64 %"$gasrem_1302", %"$_literal_cost_call_1301"
  store i64 %"$consume_1306", i64* @_gasrem, align 8
  %"$execptr_load_1307" = load i8*, i8** @_execptr, align 8
  %"$$x_2_1309" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$update_value_1310" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1309" to i8*
  call void @_update_field(i8* %"$execptr_load_1307", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_1308", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75", i32 0, i8* null, i8* %"$update_value_1310")
  %"$gasrem_1311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1312" = icmp ugt i64 1, %"$gasrem_1311"
  br i1 %"$gascmp_1312", label %"$out_of_gas_1313", label %"$have_gas_1314"

"$out_of_gas_1313":                               ; preds = %"$have_gas_1305"
  call void @_out_of_gas()
  br label %"$have_gas_1314"

"$have_gas_1314":                                 ; preds = %"$out_of_gas_1313", %"$have_gas_1305"
  %"$consume_1315" = sub i64 %"$gasrem_1311", 1
  store i64 %"$consume_1315", i64* @_gasrem, align 8
  %y = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1317" = icmp ugt i64 1, %"$gasrem_1316"
  br i1 %"$gascmp_1317", label %"$out_of_gas_1318", label %"$have_gas_1319"

"$out_of_gas_1318":                               ; preds = %"$have_gas_1314"
  call void @_out_of_gas()
  br label %"$have_gas_1319"

"$have_gas_1319":                                 ; preds = %"$out_of_gas_1318", %"$have_gas_1314"
  %"$consume_1320" = sub i64 %"$gasrem_1316", 1
  store i64 %"$consume_1320", i64* @_gasrem, align 8
  %n = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1322" = icmp ugt i64 1, %"$gasrem_1321"
  br i1 %"$gascmp_1322", label %"$out_of_gas_1323", label %"$have_gas_1324"

"$out_of_gas_1323":                               ; preds = %"$have_gas_1319"
  call void @_out_of_gas()
  br label %"$have_gas_1324"

"$have_gas_1324":                                 ; preds = %"$out_of_gas_1323", %"$have_gas_1319"
  %"$consume_1325" = sub i64 %"$gasrem_1321", 1
  store i64 %"$consume_1325", i64* @_gasrem, align 8
  %"$adtval_1326_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1326_salloc" = call i8* @_salloc(i8* %"$adtval_1326_load", i64 1)
  %"$adtval_1326" = bitcast i8* %"$adtval_1326_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1327" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1326", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1327", align 1
  %"$adtptr_1328" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1326" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1328", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8
  %"$gasrem_1329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1330" = icmp ugt i64 1, %"$gasrem_1329"
  br i1 %"$gascmp_1330", label %"$out_of_gas_1331", label %"$have_gas_1332"

"$out_of_gas_1331":                               ; preds = %"$have_gas_1324"
  call void @_out_of_gas()
  br label %"$have_gas_1332"

"$have_gas_1332":                                 ; preds = %"$out_of_gas_1331", %"$have_gas_1324"
  %"$consume_1333" = sub i64 %"$gasrem_1329", 1
  store i64 %"$consume_1333", i64* @_gasrem, align 8
  %"$$x_2_1334" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$n_1335" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8
  %"$adtval_1336_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1336_salloc" = call i8* @_salloc(i8* %"$adtval_1336_load", i64 17)
  %"$adtval_1336" = bitcast i8* %"$adtval_1336_salloc" to %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1337" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1336", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1337", align 1
  %"$adtgep_1338" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1336", i32 0, i32 1
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1334", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1338", align 8
  %"$adtgep_1339" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1336", i32 0, i32 2
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$n_1335", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1339", align 8
  %"$adtptr_1340" = bitcast %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1336" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1340", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$y_1341" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$$y_1341_1342" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1341" to i8*
  %"$_literal_cost_call_1343" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70", i8* %"$$y_1341_1342")
  %"$gasrem_1344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1345" = icmp ugt i64 %"$_literal_cost_call_1343", %"$gasrem_1344"
  br i1 %"$gascmp_1345", label %"$out_of_gas_1346", label %"$have_gas_1347"

"$out_of_gas_1346":                               ; preds = %"$have_gas_1332"
  call void @_out_of_gas()
  br label %"$have_gas_1347"

"$have_gas_1347":                                 ; preds = %"$out_of_gas_1346", %"$have_gas_1332"
  %"$consume_1348" = sub i64 %"$gasrem_1344", %"$_literal_cost_call_1343"
  store i64 %"$consume_1348", i64* @_gasrem, align 8
  %"$execptr_load_1349" = load i8*, i8** @_execptr, align 8
  %"$y_1351" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$update_value_1352" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1351" to i8*
  call void @_update_field(i8* %"$execptr_load_1349", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_1350", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70", i32 0, i8* null, i8* %"$update_value_1352")
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 1, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$have_gas_1347"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$have_gas_1347"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 1
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  %z = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1359" = icmp ugt i64 1, %"$gasrem_1358"
  br i1 %"$gascmp_1359", label %"$out_of_gas_1360", label %"$have_gas_1361"

"$out_of_gas_1360":                               ; preds = %"$have_gas_1356"
  call void @_out_of_gas()
  br label %"$have_gas_1361"

"$have_gas_1361":                                 ; preds = %"$out_of_gas_1360", %"$have_gas_1356"
  %"$consume_1362" = sub i64 %"$gasrem_1358", 1
  store i64 %"$consume_1362", i64* @_gasrem, align 8
  %"$n_3" = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1364" = icmp ugt i64 1, %"$gasrem_1363"
  br i1 %"$gascmp_1364", label %"$out_of_gas_1365", label %"$have_gas_1366"

"$out_of_gas_1365":                               ; preds = %"$have_gas_1361"
  call void @_out_of_gas()
  br label %"$have_gas_1366"

"$have_gas_1366":                                 ; preds = %"$out_of_gas_1365", %"$have_gas_1361"
  %"$consume_1367" = sub i64 %"$gasrem_1363", 1
  store i64 %"$consume_1367", i64* @_gasrem, align 8
  %"$execptr_load_1368" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1369" = call i8* @_new_empty_map(i8* %"$execptr_load_1368")
  %"$_new_empty_map_1370" = bitcast i8* %"$_new_empty_map_call_1369" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$_new_empty_map_1370", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_3", align 8
  %"$gasrem_1371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1372" = icmp ugt i64 1, %"$gasrem_1371"
  br i1 %"$gascmp_1372", label %"$out_of_gas_1373", label %"$have_gas_1374"

"$out_of_gas_1373":                               ; preds = %"$have_gas_1366"
  call void @_out_of_gas()
  br label %"$have_gas_1374"

"$have_gas_1374":                                 ; preds = %"$out_of_gas_1373", %"$have_gas_1366"
  %"$consume_1375" = sub i64 %"$gasrem_1371", 1
  store i64 %"$consume_1375", i64* @_gasrem, align 8
  %sub_n = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1377" = icmp ugt i64 1, %"$gasrem_1376"
  br i1 %"$gascmp_1377", label %"$out_of_gas_1378", label %"$have_gas_1379"

"$out_of_gas_1378":                               ; preds = %"$have_gas_1374"
  call void @_out_of_gas()
  br label %"$have_gas_1379"

"$have_gas_1379":                                 ; preds = %"$out_of_gas_1378", %"$have_gas_1374"
  %"$consume_1380" = sub i64 %"$gasrem_1376", 1
  store i64 %"$consume_1380", i64* @_gasrem, align 8
  %"$execptr_load_1381" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1382" = call i8* @_new_empty_map(i8* %"$execptr_load_1381")
  %"$_new_empty_map_1383" = bitcast i8* %"$_new_empty_map_call_1382" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$_new_empty_map_1383", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$gasrem_1384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1385" = icmp ugt i64 1, %"$gasrem_1384"
  br i1 %"$gascmp_1385", label %"$out_of_gas_1386", label %"$have_gas_1387"

"$out_of_gas_1386":                               ; preds = %"$have_gas_1379"
  call void @_out_of_gas()
  br label %"$have_gas_1387"

"$have_gas_1387":                                 ; preds = %"$out_of_gas_1386", %"$have_gas_1379"
  %"$consume_1388" = sub i64 %"$gasrem_1384", 1
  store i64 %"$consume_1388", i64* @_gasrem, align 8
  %sub_k = alloca %Uint128, align 8
  %"$gasrem_1389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1390" = icmp ugt i64 1, %"$gasrem_1389"
  br i1 %"$gascmp_1390", label %"$out_of_gas_1391", label %"$have_gas_1392"

"$out_of_gas_1391":                               ; preds = %"$have_gas_1387"
  call void @_out_of_gas()
  br label %"$have_gas_1392"

"$have_gas_1392":                                 ; preds = %"$out_of_gas_1391", %"$have_gas_1387"
  %"$consume_1393" = sub i64 %"$gasrem_1389", 1
  store i64 %"$consume_1393", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %sub_k, align 8
  %"$gasrem_1394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1395" = icmp ugt i64 1, %"$gasrem_1394"
  br i1 %"$gascmp_1395", label %"$out_of_gas_1396", label %"$have_gas_1397"

"$out_of_gas_1396":                               ; preds = %"$have_gas_1392"
  call void @_out_of_gas()
  br label %"$have_gas_1397"

"$have_gas_1397":                                 ; preds = %"$out_of_gas_1396", %"$have_gas_1392"
  %"$consume_1398" = sub i64 %"$gasrem_1394", 1
  store i64 %"$consume_1398", i64* @_gasrem, align 8
  %sub_res = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$sub_n_1399" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$$sub_n_1399_1400" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_n_1399" to i8*
  %"$_lengthof_call_1401" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_78", i8* %"$$sub_n_1399_1400")
  %"$gasadd_1402" = add i64 1, %"$_lengthof_call_1401"
  %"$gasrem_1403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1404" = icmp ugt i64 %"$gasadd_1402", %"$gasrem_1403"
  br i1 %"$gascmp_1404", label %"$out_of_gas_1405", label %"$have_gas_1406"

"$out_of_gas_1405":                               ; preds = %"$have_gas_1397"
  call void @_out_of_gas()
  br label %"$have_gas_1406"

"$have_gas_1406":                                 ; preds = %"$out_of_gas_1405", %"$have_gas_1397"
  %"$consume_1407" = sub i64 %"$gasrem_1403", %"$gasadd_1402"
  store i64 %"$consume_1407", i64* @_gasrem, align 8
  %"$execptr_load_1408" = load i8*, i8** @_execptr, align 8
  %"$sub_n_1409" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$$sub_n_1409_1410" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_n_1409" to i8*
  %"$put_sub_k_1411" = alloca %Uint128, align 8
  %"$sub_k_1412" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1412", %Uint128* %"$put_sub_k_1411", align 8
  %"$$put_sub_k_1411_1413" = bitcast %Uint128* %"$put_sub_k_1411" to i8*
  %"$$x_2_1414" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$$$x_2_1414_1415" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1414" to i8*
  %"$put_call_1416" = call i8* @_put(i8* %"$execptr_load_1408", %_TyDescrTy_Typ* @"$TyDescr_Map_78", i8* %"$$sub_n_1409_1410", i8* %"$$put_sub_k_1411_1413", i8* %"$$$x_2_1414_1415")
  %"$put_1417" = bitcast i8* %"$put_call_1416" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$put_1417", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8
  %"$$n_3_1418" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_3", align 8
  %"$$$n_3_1418_1419" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$n_3_1418" to i8*
  %"$_lengthof_call_1420" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_79", i8* %"$$$n_3_1418_1419")
  %"$gasadd_1421" = add i64 1, %"$_lengthof_call_1420"
  %"$gasrem_1422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1423" = icmp ugt i64 %"$gasadd_1421", %"$gasrem_1422"
  br i1 %"$gascmp_1423", label %"$out_of_gas_1424", label %"$have_gas_1425"

"$out_of_gas_1424":                               ; preds = %"$have_gas_1406"
  call void @_out_of_gas()
  br label %"$have_gas_1425"

"$have_gas_1425":                                 ; preds = %"$out_of_gas_1424", %"$have_gas_1406"
  %"$consume_1426" = sub i64 %"$gasrem_1422", %"$gasadd_1421"
  store i64 %"$consume_1426", i64* @_gasrem, align 8
  %"$execptr_load_1427" = load i8*, i8** @_execptr, align 8
  %"$$n_3_1428" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_3", align 8
  %"$$$n_3_1428_1429" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$n_3_1428" to i8*
  %"$put_sub_k_1430" = alloca %Uint128, align 8
  %"$sub_k_1431" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1431", %Uint128* %"$put_sub_k_1430", align 8
  %"$$put_sub_k_1430_1432" = bitcast %Uint128* %"$put_sub_k_1430" to i8*
  %"$sub_res_1433" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8
  %"$$sub_res_1433_1434" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_res_1433" to i8*
  %"$put_call_1435" = call i8* @_put(i8* %"$execptr_load_1427", %_TyDescrTy_Typ* @"$TyDescr_Map_79", i8* %"$$$n_3_1428_1429", i8* %"$$put_sub_k_1430_1432", i8* %"$$sub_res_1433_1434")
  %"$put_1436" = bitcast i8* %"$put_call_1435" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$put_1436", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$z_1437" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$$z_1437_1438" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1437" to i8*
  %"$_literal_cost_call_1439" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_79", i8* %"$$z_1437_1438")
  %"$gasrem_1440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1441" = icmp ugt i64 %"$_literal_cost_call_1439", %"$gasrem_1440"
  br i1 %"$gascmp_1441", label %"$out_of_gas_1442", label %"$have_gas_1443"

"$out_of_gas_1442":                               ; preds = %"$have_gas_1425"
  call void @_out_of_gas()
  br label %"$have_gas_1443"

"$have_gas_1443":                                 ; preds = %"$out_of_gas_1442", %"$have_gas_1425"
  %"$consume_1444" = sub i64 %"$gasrem_1440", %"$_literal_cost_call_1439"
  store i64 %"$consume_1444", i64* @_gasrem, align 8
  %"$execptr_load_1445" = load i8*, i8** @_execptr, align 8
  %"$z_1447" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$update_value_1448" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1447" to i8*
  call void @_update_field(i8* %"$execptr_load_1445", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1446", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_79", i32 0, i8* null, i8* %"$update_value_1448")
  %"$gasrem_1449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1450" = icmp ugt i64 1, %"$gasrem_1449"
  br i1 %"$gascmp_1450", label %"$out_of_gas_1451", label %"$have_gas_1452"

"$out_of_gas_1451":                               ; preds = %"$have_gas_1443"
  call void @_out_of_gas()
  br label %"$have_gas_1452"

"$have_gas_1452":                                 ; preds = %"$out_of_gas_1451", %"$have_gas_1443"
  %"$consume_1453" = sub i64 %"$gasrem_1449", 1
  store i64 %"$consume_1453", i64* @_gasrem, align 8
  %k1 = alloca %Uint128, align 8
  %"$gasrem_1454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1455" = icmp ugt i64 1, %"$gasrem_1454"
  br i1 %"$gascmp_1455", label %"$out_of_gas_1456", label %"$have_gas_1457"

"$out_of_gas_1456":                               ; preds = %"$have_gas_1452"
  call void @_out_of_gas()
  br label %"$have_gas_1457"

"$have_gas_1457":                                 ; preds = %"$out_of_gas_1456", %"$have_gas_1452"
  %"$consume_1458" = sub i64 %"$gasrem_1454", 1
  store i64 %"$consume_1458", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %k1, align 8
  %"$gasrem_1459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1460" = icmp ugt i64 1, %"$gasrem_1459"
  br i1 %"$gascmp_1460", label %"$out_of_gas_1461", label %"$have_gas_1462"

"$out_of_gas_1461":                               ; preds = %"$have_gas_1457"
  call void @_out_of_gas()
  br label %"$have_gas_1462"

"$have_gas_1462":                                 ; preds = %"$out_of_gas_1461", %"$have_gas_1457"
  %"$consume_1463" = sub i64 %"$gasrem_1459", 1
  store i64 %"$consume_1463", i64* @_gasrem, align 8
  %k2 = alloca %Uint128, align 8
  %"$gasrem_1464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1465" = icmp ugt i64 1, %"$gasrem_1464"
  br i1 %"$gascmp_1465", label %"$out_of_gas_1466", label %"$have_gas_1467"

"$out_of_gas_1466":                               ; preds = %"$have_gas_1462"
  call void @_out_of_gas()
  br label %"$have_gas_1467"

"$have_gas_1467":                                 ; preds = %"$out_of_gas_1466", %"$have_gas_1462"
  %"$consume_1468" = sub i64 %"$gasrem_1464", 1
  store i64 %"$consume_1468", i64* @_gasrem, align 8
  store %Uint128 { i128 42 }, %Uint128* %k2, align 8
  %"$$x_2_1469" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$$$x_2_1469_1470" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1469" to i8*
  %"$_literal_cost_call_1471" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75", i8* %"$$$x_2_1469_1470")
  %"$gasadd_1472" = add i64 %"$_literal_cost_call_1471", 2
  %"$gasrem_1473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1474" = icmp ugt i64 %"$gasadd_1472", %"$gasrem_1473"
  br i1 %"$gascmp_1474", label %"$out_of_gas_1475", label %"$have_gas_1476"

"$out_of_gas_1475":                               ; preds = %"$have_gas_1467"
  call void @_out_of_gas()
  br label %"$have_gas_1476"

"$have_gas_1476":                                 ; preds = %"$out_of_gas_1475", %"$have_gas_1467"
  %"$consume_1477" = sub i64 %"$gasrem_1473", %"$gasadd_1472"
  store i64 %"$consume_1477", i64* @_gasrem, align 8
  %"$indices_buf_1478_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1478_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1478_salloc_load", i64 32)
  %"$indices_buf_1478_salloc" = bitcast i8* %"$indices_buf_1478_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1478" = bitcast [32 x i8]* %"$indices_buf_1478_salloc" to i8*
  %"$k1_1479" = load %Uint128, %Uint128* %k1, align 8
  %"$indices_gep_1480" = getelementptr i8, i8* %"$indices_buf_1478", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1480" to %Uint128*
  store %Uint128 %"$k1_1479", %Uint128* %indices_cast, align 8
  %"$k2_1481" = load %Uint128, %Uint128* %k2, align 8
  %"$indices_gep_1482" = getelementptr i8, i8* %"$indices_buf_1478", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1482" to %Uint128*
  store %Uint128 %"$k2_1481", %Uint128* %indices_cast1, align 8
  %"$execptr_load_1483" = load i8*, i8** @_execptr, align 8
  %"$$x_2_1485" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$update_value_1486" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1485" to i8*
  call void @_update_field(i8* %"$execptr_load_1483", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1484", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_79", i32 2, i8* %"$indices_buf_1478", i8* %"$update_value_1486")
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @AssignTest(i8* %0) {
entry:
  %"$_amount_1488" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1489" = bitcast i8* %"$_amount_1488" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1489", align 8
  %"$_origin_1490" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1491" = bitcast i8* %"$_origin_1490" to [20 x i8]*
  %"$_sender_1492" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1493" = bitcast i8* %"$_sender_1492" to [20 x i8]*
  call void @"$AssignTest_1281"(%Uint128 %_amount, [20 x i8]* %"$_origin_1491", [20 x i8]* %"$_sender_1493")
  ret void
}
