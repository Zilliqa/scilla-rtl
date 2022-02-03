

; gas_remaining: 4001999
; ModuleID = 'RRContract'
source_filename = "RRContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_1499" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1500" = type { %ParamDescrString, i32, %"$ParamDescr_1499"* }
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
@"$assign_test_1_286" = unnamed_addr constant [14 x i8] c"assign_test_1\00"
@"$assign_test_2_297" = unnamed_addr constant [14 x i8] c"assign_test_2\00"
@"$assign_test_3_308" = unnamed_addr constant [14 x i8] c"assign_test_3\00"
@"$assign_test_4_319" = unnamed_addr constant [14 x i8] c"assign_test_4\00"
@"$assign_test_5_330" = unnamed_addr constant [14 x i8] c"assign_test_5\00"
@"$assign_test_6_341" = unnamed_addr constant [14 x i8] c"assign_test_6\00"
@"$assign_test_7_352" = unnamed_addr constant [14 x i8] c"assign_test_7\00"
@"$assign_test_8_367" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_379" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_391" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$remote_reads_test_res_1_1_400" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$remote_reads_test_res_2_1_410" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$remote_reads_test_res_3_1_420" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$remote_reads_test_res_3_3_430" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$remote_reads_test_res_3_4_441" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$remote_reads_test_res_3_5_451" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$remote_reads_test_res_3_6_464" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$remote_reads_test_res_3_7_476" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$remote_reads_test_res_3_8_503" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$remote_reads_test_res_3_9_515" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$remote_reads_test_res_3_10_527" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$remote_reads_test_res_3_11_539" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$remote_reads_test_res_3_12_551" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$remote_reads_test_res_3_13_563" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$sender_balance_pre_572" = unnamed_addr constant [19 x i8] c"sender_balance_pre\00"
@"$sender_balance_mid_582" = unnamed_addr constant [19 x i8] c"sender_balance_mid\00"
@"$sender_balance_post_592" = unnamed_addr constant [20 x i8] c"sender_balance_post\00"
@"$_balance_602" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_1_1_628" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$_balance_632" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_2_1_658" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$_balance_662" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_1_688" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$transactionCount_692" = unnamed_addr constant [17 x i8] c"transactionCount\00"
@"$remote_reads_test_res_3_3_718" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$admin_722" = unnamed_addr constant [6 x i8] c"admin\00"
@"$remote_reads_test_res_3_4_748" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$_balance_752" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_5_779" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$owners_783" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_6_809" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$owners_814" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_7_838" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$owners_843" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_8_867" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$signatures_870" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_9_896" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$signatures_912" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_10_936" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$signatures_942" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_11_969" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$signatures_976" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_12_1000" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$signatures_1007" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_13_1031" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$stringlit_1084" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_1089" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_1092" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_1099" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_1106" = unnamed_addr constant [5 x i8] c"param"
@"$stringlit_1166" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1171" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1174" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1204" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1209" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1212" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1252" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_1257" = unnamed_addr constant [13 x i8] c"TestException"
@"$stringlit_1260" = unnamed_addr constant [5 x i8] c"value"
@"$assign_test_8_1313" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_1355" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_1451" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$assign_test_10_1489" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@_tydescr_table = constant [48 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_84", %_TyDescrTy_Typ* @"$TyDescr_Event_55", %_TyDescrTy_Typ* @"$TyDescr_Int64_37", %_TyDescrTy_Typ* @"$TyDescr_Addr_96", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_66", %_TyDescrTy_Typ* @"$TyDescr_Addr_92", %_TyDescrTy_Typ* @"$TyDescr_Addr_89", %_TyDescrTy_Typ* @"$TyDescr_Map_82", %_TyDescrTy_Typ* @"$TyDescr_Exception_57", %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_69", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_67", %_TyDescrTy_Typ* @"$TyDescr_Int256_45", %_TyDescrTy_Typ* @"$TyDescr_Int128_41", %_TyDescrTy_Typ* @"$TyDescr_Addr_98", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", %_TyDescrTy_Typ* @"$TyDescr_Bystr_59", %_TyDescrTy_Typ* @"$TyDescr_Addr_94", %_TyDescrTy_Typ* @"$TyDescr_Map_85", %_TyDescrTy_Typ* @"$TyDescr_Map_81", %_TyDescrTy_Typ* @"$TyDescr_Map_79", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_68", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_65", %_TyDescrTy_Typ* @"$TyDescr_Map_83", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75", %_TyDescrTy_Typ* @"$TyDescr_Addr_100", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ* @"$TyDescr_Uint256_47", %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Addr_99", %_TyDescrTy_Typ* @"$TyDescr_Addr_90", %_TyDescrTy_Typ* @"$TyDescr_Addr_88", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39", %_TyDescrTy_Typ* @"$TyDescr_Bnum_51", %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_Addr_95", %_TyDescrTy_Typ* @"$TyDescr_Map_80", %_TyDescrTy_Typ* @"$TyDescr_Addr_91", %_TyDescrTy_Typ* @"$TyDescr_Addr_93", %_TyDescrTy_Typ* @"$TyDescr_Map_78", %_TyDescrTy_Typ* @"$TyDescr_Message_53", %_TyDescrTy_Typ* @"$TyDescr_Addr_97", %_TyDescrTy_Typ* @"$TyDescr_Int32_33"]
@_tydescr_table_length = constant i32 48
@"$pname__scilla_version_1501" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_1502" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_1503" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_cparam1_1504" = unnamed_addr constant [7 x i8] c"cparam1"
@"$pname_cparam2_1505" = unnamed_addr constant [7 x i8] c"cparam2"
@"$pname_cparam3_1506" = unnamed_addr constant [7 x i8] c"cparam3"
@_contract_parameters = constant [6 x %"$ParamDescr_1499"] [%"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_1501", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_35" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_1502", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_1503", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_51" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam1_1504", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam2_1505", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam3_1506", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_98" }]
@_contract_parameters_length = constant i32 6
@"$tpname__amount_1507" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1508" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1509" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote1_1510" = unnamed_addr constant [7 x i8] c"remote1"
@"$tpname_remote2_1511" = unnamed_addr constant [7 x i8] c"remote2"
@"$tpname_remote3_1512" = unnamed_addr constant [7 x i8] c"remote3"
@"$tparams_RemoteReadsTest_1513" = unnamed_addr constant [6 x %"$ParamDescr_1499"] [%"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1507", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1508", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1509", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1510", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote2_1511", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_99" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote3_1512", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_91" }]
@"$tname_RemoteReadsTest_1514" = unnamed_addr constant [15 x i8] c"RemoteReadsTest"
@"$tpname__amount_1515" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1516" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1517" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_list1_1518" = unnamed_addr constant [5 x i8] c"list1"
@"$tpname_list2_1519" = unnamed_addr constant [5 x i8] c"list2"
@"$tpname_list3_1520" = unnamed_addr constant [5 x i8] c"list3"
@"$tpname_pair1_1521" = unnamed_addr constant [5 x i8] c"pair1"
@"$tpname_adt1_1522" = unnamed_addr constant [4 x i8] c"adt1"
@"$tpname_remote1_1523" = unnamed_addr constant [7 x i8] c"remote1"
@"$tparams_RemoteReadsADTTest_1524" = unnamed_addr constant [9 x %"$ParamDescr_1499"] [%"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1515", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1516", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1517", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list1_1518", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_68" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list2_1519", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_67" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list3_1520", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_66" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_pair1_1521", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_71" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_adt1_1522", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1523", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_88" }]
@"$tname_RemoteReadsADTTest_1525" = unnamed_addr constant [18 x i8] c"RemoteReadsADTTest"
@"$tpname__amount_1526" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1527" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1528" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_OutgoingMsgTest_1529" = unnamed_addr constant [3 x %"$ParamDescr_1499"] [%"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1526", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1527", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1528", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }]
@"$tname_OutgoingMsgTest_1530" = unnamed_addr constant [15 x i8] c"OutgoingMsgTest"
@"$tpname__amount_1531" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1532" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1533" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ExceptionTest_1534" = unnamed_addr constant [3 x %"$ParamDescr_1499"] [%"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1531", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1532", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1533", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }]
@"$tname_ExceptionTest_1535" = unnamed_addr constant [13 x i8] c"ExceptionTest"
@"$tpname__amount_1536" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1537" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1538" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AssignTest_1539" = unnamed_addr constant [3 x %"$ParamDescr_1499"] [%"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1536", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_43" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1537", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }, %"$ParamDescr_1499" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1538", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_100" }]
@"$tname_AssignTest_1540" = unnamed_addr constant [10 x i8] c"AssignTest"
@_transition_parameters = constant [5 x %"$TransDescr_1500"] [%"$TransDescr_1500" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_RemoteReadsTest_1514", i32 0, i32 0), i32 15 }, i32 6, %"$ParamDescr_1499"* getelementptr inbounds ([6 x %"$ParamDescr_1499"], [6 x %"$ParamDescr_1499"]* @"$tparams_RemoteReadsTest_1513", i32 0, i32 0) }, %"$TransDescr_1500" { %ParamDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$tname_RemoteReadsADTTest_1525", i32 0, i32 0), i32 18 }, i32 9, %"$ParamDescr_1499"* getelementptr inbounds ([9 x %"$ParamDescr_1499"], [9 x %"$ParamDescr_1499"]* @"$tparams_RemoteReadsADTTest_1524", i32 0, i32 0) }, %"$TransDescr_1500" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_OutgoingMsgTest_1530", i32 0, i32 0), i32 15 }, i32 3, %"$ParamDescr_1499"* getelementptr inbounds ([3 x %"$ParamDescr_1499"], [3 x %"$ParamDescr_1499"]* @"$tparams_OutgoingMsgTest_1529", i32 0, i32 0) }, %"$TransDescr_1500" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_ExceptionTest_1535", i32 0, i32 0), i32 13 }, i32 3, %"$ParamDescr_1499"* getelementptr inbounds ([3 x %"$ParamDescr_1499"], [3 x %"$ParamDescr_1499"]* @"$tparams_ExceptionTest_1534", i32 0, i32 0) }, %"$TransDescr_1500" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_AssignTest_1540", i32 0, i32 0), i32 10 }, i32 3, %"$ParamDescr_1499"* getelementptr inbounds ([3 x %"$ParamDescr_1499"], [3 x %"$ParamDescr_1499"]* @"$tparams_AssignTest_1539", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define void @_init_libs() !dbg !4 {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %entry
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$assign_test_1_4" = alloca [20 x i8], align 1
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$cparam3_284" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_284", [20 x i8]* %"$assign_test_1_4", align 1, !dbg !11
  %"$execptr_load_285" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_1_4_287" = load [20 x i8], [20 x i8]* %"$assign_test_1_4", align 1
  %"$update_value_288" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_1_4_287", [20 x i8]* %"$update_value_288", align 1
  %"$update_value_289" = bitcast [20 x i8]* %"$update_value_288" to i8*
  call void @_update_field(i8* %"$execptr_load_285", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_1_286", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_289"), !dbg !11
  %"$assign_test_2_5" = alloca [20 x i8], align 1
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
  store [20 x i8] %"$cparam3_295", [20 x i8]* %"$assign_test_2_5", align 1, !dbg !12
  %"$execptr_load_296" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_2_5_298" = load [20 x i8], [20 x i8]* %"$assign_test_2_5", align 1
  %"$update_value_299" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_2_5_298", [20 x i8]* %"$update_value_299", align 1
  %"$update_value_300" = bitcast [20 x i8]* %"$update_value_299" to i8*
  call void @_update_field(i8* %"$execptr_load_296", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_2_297", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_300"), !dbg !12
  %"$assign_test_3_6" = alloca [20 x i8], align 1
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
  store [20 x i8] %"$cparam3_306", [20 x i8]* %"$assign_test_3_6", align 1, !dbg !13
  %"$execptr_load_307" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_3_6_309" = load [20 x i8], [20 x i8]* %"$assign_test_3_6", align 1
  %"$update_value_310" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_3_6_309", [20 x i8]* %"$update_value_310", align 1
  %"$update_value_311" = bitcast [20 x i8]* %"$update_value_310" to i8*
  call void @_update_field(i8* %"$execptr_load_307", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_3_308", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_311"), !dbg !13
  %"$assign_test_4_7" = alloca [20 x i8], align 1
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
  store [20 x i8] %"$cparam3_317", [20 x i8]* %"$assign_test_4_7", align 1, !dbg !14
  %"$execptr_load_318" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_4_7_320" = load [20 x i8], [20 x i8]* %"$assign_test_4_7", align 1
  %"$update_value_321" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_4_7_320", [20 x i8]* %"$update_value_321", align 1
  %"$update_value_322" = bitcast [20 x i8]* %"$update_value_321" to i8*
  call void @_update_field(i8* %"$execptr_load_318", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_4_319", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_322"), !dbg !14
  %"$assign_test_5_8" = alloca [20 x i8], align 1
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
  store [20 x i8] %"$cparam3_328", [20 x i8]* %"$assign_test_5_8", align 1, !dbg !15
  %"$execptr_load_329" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_5_8_331" = load [20 x i8], [20 x i8]* %"$assign_test_5_8", align 1
  %"$update_value_332" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_5_8_331", [20 x i8]* %"$update_value_332", align 1
  %"$update_value_333" = bitcast [20 x i8]* %"$update_value_332" to i8*
  call void @_update_field(i8* %"$execptr_load_329", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_5_330", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_333"), !dbg !15
  %"$assign_test_6_9" = alloca [20 x i8], align 1
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
  store [20 x i8] %"$cparam3_339", [20 x i8]* %"$assign_test_6_9", align 1, !dbg !16
  %"$execptr_load_340" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_6_9_342" = load [20 x i8], [20 x i8]* %"$assign_test_6_9", align 1
  %"$update_value_343" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_6_9_342", [20 x i8]* %"$update_value_343", align 1
  %"$update_value_344" = bitcast [20 x i8]* %"$update_value_343" to i8*
  call void @_update_field(i8* %"$execptr_load_340", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_6_341", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_344"), !dbg !16
  %"$assign_test_7_10" = alloca [20 x i8], align 1
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_337"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %"$cparam3_350" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_350", [20 x i8]* %"$assign_test_7_10", align 1, !dbg !17
  %"$execptr_load_351" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_7_10_353" = load [20 x i8], [20 x i8]* %"$assign_test_7_10", align 1
  %"$update_value_354" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_7_10_353", [20 x i8]* %"$update_value_354", align 1
  %"$update_value_355" = bitcast [20 x i8]* %"$update_value_354" to i8*
  call void @_update_field(i8* %"$execptr_load_351", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_7_352", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_355"), !dbg !17
  %"$assign_test_8_11" = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_348"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$cparam1_361" = load [20 x i8], [20 x i8]* @_cparam_cparam1, align 1
  %"$adtval_362_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_362_salloc" = call i8* @_salloc(i8* %"$adtval_362_load", i64 21)
  %"$adtval_362" = bitcast i8* %"$adtval_362_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1*
  %"$adtgep_363" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_362", i32 0, i32 0
  store i8 0, i8* %"$adtgep_363", align 1
  %"$adtgep_364" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_362", i32 0, i32 1
  store [20 x i8] %"$cparam1_361", [20 x i8]* %"$adtgep_364", align 1
  %"$adtptr_365" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_362" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_365", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_11", align 8, !dbg !18
  %"$execptr_load_366" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_8_11_368" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_11", align 8
  %"$update_value_369" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_8_11_368" to i8*
  call void @_update_field(i8* %"$execptr_load_366", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_367", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75", i32 0, i8* null, i8* %"$update_value_369"), !dbg !18
  %"$assign_test_9_12" = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_359"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %"$adtval_375_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_375_salloc" = call i8* @_salloc(i8* %"$adtval_375_load", i64 1)
  %"$adtval_375" = bitcast i8* %"$adtval_375_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_376" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_375", i32 0, i32 0
  store i8 1, i8* %"$adtgep_376", align 1
  %"$adtptr_377" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_375" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_377", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_12", align 8, !dbg !19
  %"$execptr_load_378" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_9_12_380" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_12", align 8
  %"$update_value_381" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_9_12_380" to i8*
  call void @_update_field(i8* %"$execptr_load_378", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_379", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70", i32 0, i8* null, i8* %"$update_value_381"), !dbg !19
  %"$assign_test_10_13" = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_373"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %"$execptr_load_387" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_388" = call i8* @_new_empty_map(i8* %"$execptr_load_387")
  %"$_new_empty_map_389" = bitcast i8* %"$_new_empty_map_call_388" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$_new_empty_map_389", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_13", align 8, !dbg !20
  %"$execptr_load_390" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_10_13_392" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_13", align 8
  %"$update_value_393" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$assign_test_10_13_392" to i8*
  call void @_update_field(i8* %"$execptr_load_390", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_391", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_79", i32 0, i8* null, i8* %"$update_value_393"), !dbg !20
  %"$remote_reads_test_res_1_1_14" = alloca %Uint128, align 8
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_385"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_1_1_14", align 8, !dbg !21
  %"$execptr_load_399" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_1_1_14_401" = load %Uint128, %Uint128* %"$remote_reads_test_res_1_1_14", align 8
  %"$update_value_402" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_1_1_14_401", %Uint128* %"$update_value_402", align 8
  %"$update_value_403" = bitcast %Uint128* %"$update_value_402" to i8*
  call void @_update_field(i8* %"$execptr_load_399", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_400", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_403"), !dbg !21
  %"$remote_reads_test_res_2_1_15" = alloca %Uint128, align 8
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_397"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_2_1_15", align 8, !dbg !22
  %"$execptr_load_409" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_2_1_15_411" = load %Uint128, %Uint128* %"$remote_reads_test_res_2_1_15", align 8
  %"$update_value_412" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_2_1_15_411", %Uint128* %"$update_value_412", align 8
  %"$update_value_413" = bitcast %Uint128* %"$update_value_412" to i8*
  call void @_update_field(i8* %"$execptr_load_409", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_410", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_413"), !dbg !22
  %"$remote_reads_test_res_3_1_16" = alloca %Uint128, align 8
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_407"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_1_16", align 8, !dbg !23
  %"$execptr_load_419" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_1_16_421" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_1_16", align 8
  %"$update_value_422" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_1_16_421", %Uint128* %"$update_value_422", align 8
  %"$update_value_423" = bitcast %Uint128* %"$update_value_422" to i8*
  call void @_update_field(i8* %"$execptr_load_419", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_420", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_423"), !dbg !23
  %"$remote_reads_test_res_3_3_17" = alloca %Uint32, align 8
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_417"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$remote_reads_test_res_3_3_17", align 4, !dbg !24
  %"$execptr_load_429" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_3_17_431" = load %Uint32, %Uint32* %"$remote_reads_test_res_3_3_17", align 4
  %"$update_value_432" = alloca %Uint32, align 8
  store %Uint32 %"$$remote_reads_test_res_3_3_17_431", %Uint32* %"$update_value_432", align 4
  %"$update_value_433" = bitcast %Uint32* %"$update_value_432" to i8*
  call void @_update_field(i8* %"$execptr_load_429", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_430", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i32 0, i8* null, i8* %"$update_value_433"), !dbg !24
  %"$remote_reads_test_res_3_4_18" = alloca [20 x i8], align 1
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_427"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %"$cparam3_439" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  store [20 x i8] %"$cparam3_439", [20 x i8]* %"$remote_reads_test_res_3_4_18", align 1, !dbg !25
  %"$execptr_load_440" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_4_18_442" = load [20 x i8], [20 x i8]* %"$remote_reads_test_res_3_4_18", align 1
  %"$update_value_443" = alloca [20 x i8], align 1
  store [20 x i8] %"$$remote_reads_test_res_3_4_18_442", [20 x i8]* %"$update_value_443", align 1
  %"$update_value_444" = bitcast [20 x i8]* %"$update_value_443" to i8*
  call void @_update_field(i8* %"$execptr_load_440", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_441", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_98", i32 0, i8* null, i8* %"$update_value_444"), !dbg !25
  %"$remote_reads_test_res_3_5_19" = alloca %Uint128, align 8
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_437"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_5_19", align 8, !dbg !26
  %"$execptr_load_450" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_5_19_452" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_5_19", align 8
  %"$update_value_453" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_5_19_452", %Uint128* %"$update_value_453", align 8
  %"$update_value_454" = bitcast %Uint128* %"$update_value_453" to i8*
  call void @_update_field(i8* %"$execptr_load_450", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_451", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_454"), !dbg !26
  %"$remote_reads_test_res_3_6_20" = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_448"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %"$execptr_load_460" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_461" = call i8* @_new_empty_map(i8* %"$execptr_load_460")
  %"$_new_empty_map_462" = bitcast i8* %"$_new_empty_map_call_461" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$_new_empty_map_462", %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_20", align 8, !dbg !27
  %"$execptr_load_463" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_6_20_465" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_20", align 8
  %"$update_value_466" = bitcast %Map_ByStr20_with_end_Bool* %"$$remote_reads_test_res_3_6_20_465" to i8*
  call void @_update_field(i8* %"$execptr_load_463", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_464", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_84", i32 0, i8* null, i8* %"$update_value_466"), !dbg !27
  %"$remote_reads_test_res_3_7_21" = alloca %TName_Bool*, align 8
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_458"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  %"$adtval_472_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_472_salloc" = call i8* @_salloc(i8* %"$adtval_472_load", i64 1)
  %"$adtval_472" = bitcast i8* %"$adtval_472_salloc" to %CName_True*
  %"$adtgep_473" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_472", i32 0, i32 0
  store i8 0, i8* %"$adtgep_473", align 1
  %"$adtptr_474" = bitcast %CName_True* %"$adtval_472" to %TName_Bool*
  store %TName_Bool* %"$adtptr_474", %TName_Bool** %"$remote_reads_test_res_3_7_21", align 8, !dbg !28
  %"$execptr_load_475" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_7_21_477" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_7_21", align 8
  %"$update_value_478" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_7_21_477" to i8*
  call void @_update_field(i8* %"$execptr_load_475", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_476", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_478"), !dbg !28
  %"$remote_reads_test_res_3_8_22" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_470"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %x = alloca %TName_Bool*, align 8
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_482"
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  %"$adtval_489_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_489_salloc" = call i8* @_salloc(i8* %"$adtval_489_load", i64 1)
  %"$adtval_489" = bitcast i8* %"$adtval_489_salloc" to %CName_True*
  %"$adtgep_490" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_489", i32 0, i32 0
  store i8 0, i8* %"$adtgep_490", align 1
  %"$adtptr_491" = bitcast %CName_True* %"$adtval_489" to %TName_Bool*
  store %TName_Bool* %"$adtptr_491", %TName_Bool** %x, align 8, !dbg !29
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 1, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$have_gas_487"
  %"$consume_496" = sub i64 %"$gasrem_492", 1
  store i64 %"$consume_496", i64* @_gasrem, align 8
  %"$x_497" = load %TName_Bool*, %TName_Bool** %x, align 8
  %"$adtval_498_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_498_salloc" = call i8* @_salloc(i8* %"$adtval_498_load", i64 9)
  %"$adtval_498" = bitcast i8* %"$adtval_498_salloc" to %CName_Some_Bool*
  %"$adtgep_499" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_498", i32 0, i32 0
  store i8 0, i8* %"$adtgep_499", align 1
  %"$adtgep_500" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_498", i32 0, i32 1
  store %TName_Bool* %"$x_497", %TName_Bool** %"$adtgep_500", align 8
  %"$adtptr_501" = bitcast %CName_Some_Bool* %"$adtval_498" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_501", %TName_Option_Bool** %"$remote_reads_test_res_3_8_22", align 8, !dbg !30
  %"$execptr_load_502" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_8_22_504" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_8_22", align 8
  %"$update_value_505" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_8_22_504" to i8*
  call void @_update_field(i8* %"$execptr_load_502", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_503", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i32 0, i8* null, i8* %"$update_value_505"), !dbg !29
  %"$remote_reads_test_res_3_9_23" = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_495"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_495"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$execptr_load_511" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_512" = call i8* @_new_empty_map(i8* %"$execptr_load_511")
  %"$_new_empty_map_513" = bitcast i8* %"$_new_empty_map_call_512" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$_new_empty_map_513", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_23", align 8, !dbg !31
  %"$execptr_load_514" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_9_23_516" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_23", align 8
  %"$update_value_517" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_9_23_516" to i8*
  call void @_update_field(i8* %"$execptr_load_514", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_515", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 0, i8* null, i8* %"$update_value_517"), !dbg !31
  %"$remote_reads_test_res_3_10_24" = alloca %TName_Bool*, align 8
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_509"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  %"$adtval_523_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_523_salloc" = call i8* @_salloc(i8* %"$adtval_523_load", i64 1)
  %"$adtval_523" = bitcast i8* %"$adtval_523_salloc" to %CName_False*
  %"$adtgep_524" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_523", i32 0, i32 0
  store i8 1, i8* %"$adtgep_524", align 1
  %"$adtptr_525" = bitcast %CName_False* %"$adtval_523" to %TName_Bool*
  store %TName_Bool* %"$adtptr_525", %TName_Bool** %"$remote_reads_test_res_3_10_24", align 8, !dbg !32
  %"$execptr_load_526" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_10_24_528" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_10_24", align 8
  %"$update_value_529" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_10_24_528" to i8*
  call void @_update_field(i8* %"$execptr_load_526", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_527", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_529"), !dbg !32
  %"$remote_reads_test_res_3_11_25" = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 1, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %"$have_gas_521"
  %"$consume_534" = sub i64 %"$gasrem_530", 1
  store i64 %"$consume_534", i64* @_gasrem, align 8
  %"$adtval_535_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_535_salloc" = call i8* @_salloc(i8* %"$adtval_535_load", i64 1)
  %"$adtval_535" = bitcast i8* %"$adtval_535_salloc" to %"CName_None_Map_(ByStr20_with_end)_(Bool)"*
  %"$adtgep_536" = getelementptr inbounds %"CName_None_Map_(ByStr20_with_end)_(Bool)", %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_535", i32 0, i32 0
  store i8 1, i8* %"$adtgep_536", align 1
  %"$adtptr_537" = bitcast %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_535" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$adtptr_537", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_25", align 8, !dbg !33
  %"$execptr_load_538" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_11_25_540" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_25", align 8
  %"$update_value_541" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_11_25_540" to i8*
  call void @_update_field(i8* %"$execptr_load_538", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_539", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", i32 0, i8* null, i8* %"$update_value_541"), !dbg !33
  %"$remote_reads_test_res_3_12_26" = alloca %TName_Bool*, align 8
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_533"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_533"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %"$adtval_547_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_547_salloc" = call i8* @_salloc(i8* %"$adtval_547_load", i64 1)
  %"$adtval_547" = bitcast i8* %"$adtval_547_salloc" to %CName_False*
  %"$adtgep_548" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_547", i32 0, i32 0
  store i8 1, i8* %"$adtgep_548", align 1
  %"$adtptr_549" = bitcast %CName_False* %"$adtval_547" to %TName_Bool*
  store %TName_Bool* %"$adtptr_549", %TName_Bool** %"$remote_reads_test_res_3_12_26", align 8, !dbg !34
  %"$execptr_load_550" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_12_26_552" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_12_26", align 8
  %"$update_value_553" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_12_26_552" to i8*
  call void @_update_field(i8* %"$execptr_load_550", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_551", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_553"), !dbg !34
  %"$remote_reads_test_res_3_13_27" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 1, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_545"
  %"$consume_558" = sub i64 %"$gasrem_554", 1
  store i64 %"$consume_558", i64* @_gasrem, align 8
  %"$adtval_559_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_559_salloc" = call i8* @_salloc(i8* %"$adtval_559_load", i64 1)
  %"$adtval_559" = bitcast i8* %"$adtval_559_salloc" to %CName_None_Bool*
  %"$adtgep_560" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_559", i32 0, i32 0
  store i8 1, i8* %"$adtgep_560", align 1
  %"$adtptr_561" = bitcast %CName_None_Bool* %"$adtval_559" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_561", %TName_Option_Bool** %"$remote_reads_test_res_3_13_27", align 8, !dbg !35
  %"$execptr_load_562" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_13_27_564" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_13_27", align 8
  %"$update_value_565" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_13_27_564" to i8*
  call void @_update_field(i8* %"$execptr_load_562", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_563", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i32 0, i8* null, i8* %"$update_value_565"), !dbg !35
  %"$sender_balance_pre_28" = alloca %Uint128, align 8
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_557"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_557"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_pre_28", align 8, !dbg !36
  %"$execptr_load_571" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_pre_28_573" = load %Uint128, %Uint128* %"$sender_balance_pre_28", align 8
  %"$update_value_574" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_pre_28_573", %Uint128* %"$update_value_574", align 8
  %"$update_value_575" = bitcast %Uint128* %"$update_value_574" to i8*
  call void @_update_field(i8* %"$execptr_load_571", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_pre_572", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_575"), !dbg !36
  %"$sender_balance_mid_29" = alloca %Uint128, align 8
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_569"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_mid_29", align 8, !dbg !37
  %"$execptr_load_581" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_mid_29_583" = load %Uint128, %Uint128* %"$sender_balance_mid_29", align 8
  %"$update_value_584" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_mid_29_583", %Uint128* %"$update_value_584", align 8
  %"$update_value_585" = bitcast %Uint128* %"$update_value_584" to i8*
  call void @_update_field(i8* %"$execptr_load_581", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_mid_582", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_585"), !dbg !37
  %"$sender_balance_post_30" = alloca %Uint128, align 8
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_579"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_post_30", align 8, !dbg !38
  %"$execptr_load_591" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_post_30_593" = load %Uint128, %Uint128* %"$sender_balance_post_30", align 8
  %"$update_value_594" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_post_30_593", %Uint128* %"$update_value_594", align 8
  %"$update_value_595" = bitcast %Uint128* %"$update_value_594" to i8*
  call void @_update_field(i8* %"$execptr_load_591", i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$sender_balance_post_592", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_595"), !dbg !38
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_new_empty_map(i8*)

define internal void @"$RemoteReadsTest_596"(%Uint128 %_amount, [20 x i8]* %"$_origin_597", [20 x i8]* %"$_sender_598", [20 x i8]* %"$remote1_599", [20 x i8]* %"$remote2_600", [20 x i8]* %"$remote3_601") !dbg !39 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_597", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_598", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_599", align 1
  %remote2 = load [20 x i8], [20 x i8]* %"$remote2_600", align 1
  %remote3 = load [20 x i8], [20 x i8]* %"$remote3_601", align 1
  %tmp_1_1 = alloca %Uint128, align 8
  %"$execptr_load_603" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_remote1_604" = alloca [20 x i8], align 1
  store [20 x i8] %remote1, [20 x i8]* %"$tmp_1_1_remote1_604", align 1
  %"$tmp_1_1_call_605" = call i8* @_fetch_remote_field(i8* %"$execptr_load_603", [20 x i8]* %"$tmp_1_1_remote1_604", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_602", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1), !dbg !40
  %"$tmp_1_1_606" = bitcast i8* %"$tmp_1_1_call_605" to %Uint128*
  %"$tmp_1_1_607" = load %Uint128, %Uint128* %"$tmp_1_1_606", align 8
  store %Uint128 %"$tmp_1_1_607", %Uint128* %tmp_1_1, align 8
  %"$_literal_cost_tmp_1_1_608" = alloca %Uint128, align 8
  %"$tmp_1_1_609" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_609", %Uint128* %"$_literal_cost_tmp_1_1_608", align 8
  %"$$_literal_cost_tmp_1_1_608_610" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_608" to i8*
  %"$_literal_cost_call_611" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_1_1_608_610")
  %"$gasadd_612" = add i64 %"$_literal_cost_call_611", 0
  %"$gasrem_613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_614" = icmp ugt i64 %"$gasadd_612", %"$gasrem_613"
  br i1 %"$gascmp_614", label %"$out_of_gas_615", label %"$have_gas_616"

"$out_of_gas_615":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_616"

"$have_gas_616":                                  ; preds = %"$out_of_gas_615", %entry
  %"$consume_617" = sub i64 %"$gasrem_613", %"$gasadd_612"
  store i64 %"$consume_617", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_1_1_618" = alloca %Uint128, align 8
  %"$tmp_1_1_619" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_619", %Uint128* %"$_literal_cost_tmp_1_1_618", align 8
  %"$$_literal_cost_tmp_1_1_618_620" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_618" to i8*
  %"$_literal_cost_call_621" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_1_1_618_620")
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 %"$_literal_cost_call_621", %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %"$have_gas_616"
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %"$have_gas_616"
  %"$consume_626" = sub i64 %"$gasrem_622", %"$_literal_cost_call_621"
  store i64 %"$consume_626", i64* @_gasrem, align 8
  %"$execptr_load_627" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_629" = load %Uint128, %Uint128* %tmp_1_1, align 8
  %"$update_value_630" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_1_1_629", %Uint128* %"$update_value_630", align 8
  %"$update_value_631" = bitcast %Uint128* %"$update_value_630" to i8*
  call void @_update_field(i8* %"$execptr_load_627", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_628", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_631"), !dbg !41
  %tmp_2_1 = alloca %Uint128, align 8
  %"$execptr_load_633" = load i8*, i8** @_execptr, align 8
  %"$tmp_2_1_remote2_634" = alloca [20 x i8], align 1
  store [20 x i8] %remote2, [20 x i8]* %"$tmp_2_1_remote2_634", align 1
  %"$tmp_2_1_call_635" = call i8* @_fetch_remote_field(i8* %"$execptr_load_633", [20 x i8]* %"$tmp_2_1_remote2_634", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_632", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1), !dbg !42
  %"$tmp_2_1_636" = bitcast i8* %"$tmp_2_1_call_635" to %Uint128*
  %"$tmp_2_1_637" = load %Uint128, %Uint128* %"$tmp_2_1_636", align 8
  store %Uint128 %"$tmp_2_1_637", %Uint128* %tmp_2_1, align 8
  %"$_literal_cost_tmp_2_1_638" = alloca %Uint128, align 8
  %"$tmp_2_1_639" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_639", %Uint128* %"$_literal_cost_tmp_2_1_638", align 8
  %"$$_literal_cost_tmp_2_1_638_640" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_638" to i8*
  %"$_literal_cost_call_641" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_2_1_638_640")
  %"$gasadd_642" = add i64 %"$_literal_cost_call_641", 0
  %"$gasrem_643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_644" = icmp ugt i64 %"$gasadd_642", %"$gasrem_643"
  br i1 %"$gascmp_644", label %"$out_of_gas_645", label %"$have_gas_646"

"$out_of_gas_645":                                ; preds = %"$have_gas_625"
  call void @_out_of_gas()
  br label %"$have_gas_646"

"$have_gas_646":                                  ; preds = %"$out_of_gas_645", %"$have_gas_625"
  %"$consume_647" = sub i64 %"$gasrem_643", %"$gasadd_642"
  store i64 %"$consume_647", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_2_1_648" = alloca %Uint128, align 8
  %"$tmp_2_1_649" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_649", %Uint128* %"$_literal_cost_tmp_2_1_648", align 8
  %"$$_literal_cost_tmp_2_1_648_650" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_648" to i8*
  %"$_literal_cost_call_651" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_2_1_648_650")
  %"$gasrem_652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_653" = icmp ugt i64 %"$_literal_cost_call_651", %"$gasrem_652"
  br i1 %"$gascmp_653", label %"$out_of_gas_654", label %"$have_gas_655"

"$out_of_gas_654":                                ; preds = %"$have_gas_646"
  call void @_out_of_gas()
  br label %"$have_gas_655"

"$have_gas_655":                                  ; preds = %"$out_of_gas_654", %"$have_gas_646"
  %"$consume_656" = sub i64 %"$gasrem_652", %"$_literal_cost_call_651"
  store i64 %"$consume_656", i64* @_gasrem, align 8
  %"$execptr_load_657" = load i8*, i8** @_execptr, align 8
  %"$tmp_2_1_659" = load %Uint128, %Uint128* %tmp_2_1, align 8
  %"$update_value_660" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_2_1_659", %Uint128* %"$update_value_660", align 8
  %"$update_value_661" = bitcast %Uint128* %"$update_value_660" to i8*
  call void @_update_field(i8* %"$execptr_load_657", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_658", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_661"), !dbg !43
  %tmp_3_1 = alloca %Uint128, align 8
  %"$execptr_load_663" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_1_remote3_664" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_1_remote3_664", align 1
  %"$tmp_3_1_call_665" = call i8* @_fetch_remote_field(i8* %"$execptr_load_663", [20 x i8]* %"$tmp_3_1_remote3_664", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_662", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1), !dbg !44
  %"$tmp_3_1_666" = bitcast i8* %"$tmp_3_1_call_665" to %Uint128*
  %"$tmp_3_1_667" = load %Uint128, %Uint128* %"$tmp_3_1_666", align 8
  store %Uint128 %"$tmp_3_1_667", %Uint128* %tmp_3_1, align 8
  %"$_literal_cost_tmp_3_1_668" = alloca %Uint128, align 8
  %"$tmp_3_1_669" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_669", %Uint128* %"$_literal_cost_tmp_3_1_668", align 8
  %"$$_literal_cost_tmp_3_1_668_670" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_668" to i8*
  %"$_literal_cost_call_671" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_1_668_670")
  %"$gasadd_672" = add i64 %"$_literal_cost_call_671", 0
  %"$gasrem_673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_674" = icmp ugt i64 %"$gasadd_672", %"$gasrem_673"
  br i1 %"$gascmp_674", label %"$out_of_gas_675", label %"$have_gas_676"

"$out_of_gas_675":                                ; preds = %"$have_gas_655"
  call void @_out_of_gas()
  br label %"$have_gas_676"

"$have_gas_676":                                  ; preds = %"$out_of_gas_675", %"$have_gas_655"
  %"$consume_677" = sub i64 %"$gasrem_673", %"$gasadd_672"
  store i64 %"$consume_677", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_1_678" = alloca %Uint128, align 8
  %"$tmp_3_1_679" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_679", %Uint128* %"$_literal_cost_tmp_3_1_678", align 8
  %"$$_literal_cost_tmp_3_1_678_680" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_678" to i8*
  %"$_literal_cost_call_681" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_1_678_680")
  %"$gasrem_682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_683" = icmp ugt i64 %"$_literal_cost_call_681", %"$gasrem_682"
  br i1 %"$gascmp_683", label %"$out_of_gas_684", label %"$have_gas_685"

"$out_of_gas_684":                                ; preds = %"$have_gas_676"
  call void @_out_of_gas()
  br label %"$have_gas_685"

"$have_gas_685":                                  ; preds = %"$out_of_gas_684", %"$have_gas_676"
  %"$consume_686" = sub i64 %"$gasrem_682", %"$_literal_cost_call_681"
  store i64 %"$consume_686", i64* @_gasrem, align 8
  %"$execptr_load_687" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_1_689" = load %Uint128, %Uint128* %tmp_3_1, align 8
  %"$update_value_690" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_1_689", %Uint128* %"$update_value_690", align 8
  %"$update_value_691" = bitcast %Uint128* %"$update_value_690" to i8*
  call void @_update_field(i8* %"$execptr_load_687", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_688", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_691"), !dbg !45
  %tmp_3_3 = alloca %Uint32, align 8
  %"$execptr_load_693" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_3_remote3_694" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_3_remote3_694", align 1
  %"$tmp_3_3_call_695" = call i8* @_fetch_remote_field(i8* %"$execptr_load_693", [20 x i8]* %"$tmp_3_3_remote3_694", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$transactionCount_692", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i32 0, i8* null, i32 1), !dbg !46
  %"$tmp_3_3_696" = bitcast i8* %"$tmp_3_3_call_695" to %Uint32*
  %"$tmp_3_3_697" = load %Uint32, %Uint32* %"$tmp_3_3_696", align 4
  store %Uint32 %"$tmp_3_3_697", %Uint32* %tmp_3_3, align 4
  %"$_literal_cost_tmp_3_3_698" = alloca %Uint32, align 8
  %"$tmp_3_3_699" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_699", %Uint32* %"$_literal_cost_tmp_3_3_698", align 4
  %"$$_literal_cost_tmp_3_3_698_700" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_698" to i8*
  %"$_literal_cost_call_701" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i8* %"$$_literal_cost_tmp_3_3_698_700")
  %"$gasadd_702" = add i64 %"$_literal_cost_call_701", 0
  %"$gasrem_703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_704" = icmp ugt i64 %"$gasadd_702", %"$gasrem_703"
  br i1 %"$gascmp_704", label %"$out_of_gas_705", label %"$have_gas_706"

"$out_of_gas_705":                                ; preds = %"$have_gas_685"
  call void @_out_of_gas()
  br label %"$have_gas_706"

"$have_gas_706":                                  ; preds = %"$out_of_gas_705", %"$have_gas_685"
  %"$consume_707" = sub i64 %"$gasrem_703", %"$gasadd_702"
  store i64 %"$consume_707", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_3_708" = alloca %Uint32, align 8
  %"$tmp_3_3_709" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_709", %Uint32* %"$_literal_cost_tmp_3_3_708", align 4
  %"$$_literal_cost_tmp_3_3_708_710" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_708" to i8*
  %"$_literal_cost_call_711" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i8* %"$$_literal_cost_tmp_3_3_708_710")
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 %"$_literal_cost_call_711", %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_706"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_706"
  %"$consume_716" = sub i64 %"$gasrem_712", %"$_literal_cost_call_711"
  store i64 %"$consume_716", i64* @_gasrem, align 8
  %"$execptr_load_717" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_3_719" = load %Uint32, %Uint32* %tmp_3_3, align 4
  %"$update_value_720" = alloca %Uint32, align 8
  store %Uint32 %"$tmp_3_3_719", %Uint32* %"$update_value_720", align 4
  %"$update_value_721" = bitcast %Uint32* %"$update_value_720" to i8*
  call void @_update_field(i8* %"$execptr_load_717", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_718", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", i32 0, i8* null, i8* %"$update_value_721"), !dbg !47
  %tmp_3_4 = alloca [20 x i8], align 1
  %"$execptr_load_723" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_4_remote3_724" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_4_remote3_724", align 1
  %"$tmp_3_4_call_725" = call i8* @_fetch_remote_field(i8* %"$execptr_load_723", [20 x i8]* %"$tmp_3_4_remote3_724", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_722", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i32 1), !dbg !48
  %"$tmp_3_4_726" = bitcast i8* %"$tmp_3_4_call_725" to [20 x i8]*
  %"$tmp_3_4_727" = load [20 x i8], [20 x i8]* %"$tmp_3_4_726", align 1
  store [20 x i8] %"$tmp_3_4_727", [20 x i8]* %tmp_3_4, align 1
  %"$_literal_cost_tmp_3_4_728" = alloca [20 x i8], align 1
  %"$tmp_3_4_729" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_729", [20 x i8]* %"$_literal_cost_tmp_3_4_728", align 1
  %"$$_literal_cost_tmp_3_4_728_730" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_728" to i8*
  %"$_literal_cost_call_731" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_100", i8* %"$$_literal_cost_tmp_3_4_728_730")
  %"$gasadd_732" = add i64 %"$_literal_cost_call_731", 0
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 %"$gasadd_732", %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %"$have_gas_715"
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %"$have_gas_715"
  %"$consume_737" = sub i64 %"$gasrem_733", %"$gasadd_732"
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_4_738" = alloca [20 x i8], align 1
  %"$tmp_3_4_739" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_739", [20 x i8]* %"$_literal_cost_tmp_3_4_738", align 1
  %"$$_literal_cost_tmp_3_4_738_740" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_738" to i8*
  %"$_literal_cost_call_741" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_100", i8* %"$$_literal_cost_tmp_3_4_738_740")
  %"$gasrem_742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_743" = icmp ugt i64 %"$_literal_cost_call_741", %"$gasrem_742"
  br i1 %"$gascmp_743", label %"$out_of_gas_744", label %"$have_gas_745"

"$out_of_gas_744":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_745"

"$have_gas_745":                                  ; preds = %"$out_of_gas_744", %"$have_gas_736"
  %"$consume_746" = sub i64 %"$gasrem_742", %"$_literal_cost_call_741"
  store i64 %"$consume_746", i64* @_gasrem, align 8
  %"$execptr_load_747" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_4_749" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  %"$update_value_750" = alloca [20 x i8], align 1
  store [20 x i8] %"$tmp_3_4_749", [20 x i8]* %"$update_value_750", align 1
  %"$update_value_751" = bitcast [20 x i8]* %"$update_value_750" to i8*
  call void @_update_field(i8* %"$execptr_load_747", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_748", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_100", i32 0, i8* null, i8* %"$update_value_751"), !dbg !49
  %tmp_3_5 = alloca %Uint128, align 8
  %"$execptr_load_753" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_5_tmp_3_4_754" = alloca [20 x i8], align 1
  %"$tmp_3_4_755" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_755", [20 x i8]* %"$tmp_3_5_tmp_3_4_754", align 1
  %"$tmp_3_5_call_756" = call i8* @_fetch_remote_field(i8* %"$execptr_load_753", [20 x i8]* %"$tmp_3_5_tmp_3_4_754", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_752", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i32 1), !dbg !50
  %"$tmp_3_5_757" = bitcast i8* %"$tmp_3_5_call_756" to %Uint128*
  %"$tmp_3_5_758" = load %Uint128, %Uint128* %"$tmp_3_5_757", align 8
  store %Uint128 %"$tmp_3_5_758", %Uint128* %tmp_3_5, align 8
  %"$_literal_cost_tmp_3_5_759" = alloca %Uint128, align 8
  %"$tmp_3_5_760" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_760", %Uint128* %"$_literal_cost_tmp_3_5_759", align 8
  %"$$_literal_cost_tmp_3_5_759_761" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_759" to i8*
  %"$_literal_cost_call_762" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_5_759_761")
  %"$gasadd_763" = add i64 %"$_literal_cost_call_762", 0
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 %"$gasadd_763", %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_745"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_745"
  %"$consume_768" = sub i64 %"$gasrem_764", %"$gasadd_763"
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_5_769" = alloca %Uint128, align 8
  %"$tmp_3_5_770" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_770", %Uint128* %"$_literal_cost_tmp_3_5_769", align 8
  %"$$_literal_cost_tmp_3_5_769_771" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_769" to i8*
  %"$_literal_cost_call_772" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i8* %"$$_literal_cost_tmp_3_5_769_771")
  %"$gasrem_773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_774" = icmp ugt i64 %"$_literal_cost_call_772", %"$gasrem_773"
  br i1 %"$gascmp_774", label %"$out_of_gas_775", label %"$have_gas_776"

"$out_of_gas_775":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_776"

"$have_gas_776":                                  ; preds = %"$out_of_gas_775", %"$have_gas_767"
  %"$consume_777" = sub i64 %"$gasrem_773", %"$_literal_cost_call_772"
  store i64 %"$consume_777", i64* @_gasrem, align 8
  %"$execptr_load_778" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_5_780" = load %Uint128, %Uint128* %tmp_3_5, align 8
  %"$update_value_781" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_5_780", %Uint128* %"$update_value_781", align 8
  %"$update_value_782" = bitcast %Uint128* %"$update_value_781" to i8*
  call void @_update_field(i8* %"$execptr_load_778", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_779", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", i32 0, i8* null, i8* %"$update_value_782"), !dbg !51
  %tmp_3_6 = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$execptr_load_784" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_remote3_785" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_6_remote3_785", align 1
  %"$tmp_3_6_call_786" = call i8* @_fetch_remote_field(i8* %"$execptr_load_784", [20 x i8]* %"$tmp_3_6_remote3_785", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_783", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_84", i32 0, i8* null, i32 1), !dbg !52
  %"$tmp_3_6_787" = bitcast i8* %"$tmp_3_6_call_786" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$tmp_3_6_787", %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$tmp_3_6_788" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_788_789" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_788" to i8*
  %"$_literal_cost_call_790" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_84", i8* %"$$tmp_3_6_788_789")
  %"$tmp_3_6_791" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_791_792" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_791" to i8*
  %"$_mapsortcost_call_793" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_84", i8* %"$$tmp_3_6_791_792")
  %"$gasadd_794" = add i64 %"$_literal_cost_call_790", %"$_mapsortcost_call_793"
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 %"$gasadd_794", %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_776"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_776"
  %"$consume_799" = sub i64 %"$gasrem_795", %"$gasadd_794"
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %"$tmp_3_6_800" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_800_801" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_800" to i8*
  %"$_literal_cost_call_802" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_84", i8* %"$$tmp_3_6_800_801")
  %"$gasrem_803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_804" = icmp ugt i64 %"$_literal_cost_call_802", %"$gasrem_803"
  br i1 %"$gascmp_804", label %"$out_of_gas_805", label %"$have_gas_806"

"$out_of_gas_805":                                ; preds = %"$have_gas_798"
  call void @_out_of_gas()
  br label %"$have_gas_806"

"$have_gas_806":                                  ; preds = %"$out_of_gas_805", %"$have_gas_798"
  %"$consume_807" = sub i64 %"$gasrem_803", %"$_literal_cost_call_802"
  store i64 %"$consume_807", i64* @_gasrem, align 8
  %"$execptr_load_808" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_810" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$update_value_811" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_810" to i8*
  call void @_update_field(i8* %"$execptr_load_808", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_809", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_84", i32 0, i8* null, i8* %"$update_value_811"), !dbg !53
  %tmp_3_7 = alloca %TName_Bool*, align 8
  %"$indices_buf_812_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_812_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_812_salloc_load", i64 20)
  %"$indices_buf_812_salloc" = bitcast i8* %"$indices_buf_812_salloc_salloc" to [20 x i8]*
  %"$indices_buf_812" = bitcast [20 x i8]* %"$indices_buf_812_salloc" to i8*
  %"$indices_gep_813" = getelementptr i8, i8* %"$indices_buf_812", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_813" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_815" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_remote3_816" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_7_remote3_816", align 1
  %"$tmp_3_7_call_817" = call i8* @_fetch_remote_field(i8* %"$execptr_load_815", [20 x i8]* %"$tmp_3_7_remote3_816", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_814", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_84", i32 1, i8* %"$indices_buf_812", i32 0), !dbg !54
  %"$tmp_3_7_818" = bitcast i8* %"$tmp_3_7_call_817" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_7_818", %TName_Bool** %tmp_3_7, align 8
  %"$tmp_3_7_819" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_819_820" = bitcast %TName_Bool* %"$tmp_3_7_819" to i8*
  %"$_literal_cost_call_821" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_7_819_820")
  %"$gasadd_822" = add i64 %"$_literal_cost_call_821", 0
  %"$gasadd_823" = add i64 %"$gasadd_822", 1
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 %"$gasadd_823", %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_806"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_806"
  %"$consume_828" = sub i64 %"$gasrem_824", %"$gasadd_823"
  store i64 %"$consume_828", i64* @_gasrem, align 8
  %"$tmp_3_7_829" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_829_830" = bitcast %TName_Bool* %"$tmp_3_7_829" to i8*
  %"$_literal_cost_call_831" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_7_829_830")
  %"$gasrem_832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_833" = icmp ugt i64 %"$_literal_cost_call_831", %"$gasrem_832"
  br i1 %"$gascmp_833", label %"$out_of_gas_834", label %"$have_gas_835"

"$out_of_gas_834":                                ; preds = %"$have_gas_827"
  call void @_out_of_gas()
  br label %"$have_gas_835"

"$have_gas_835":                                  ; preds = %"$out_of_gas_834", %"$have_gas_827"
  %"$consume_836" = sub i64 %"$gasrem_832", %"$_literal_cost_call_831"
  store i64 %"$consume_836", i64* @_gasrem, align 8
  %"$execptr_load_837" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_839" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$update_value_840" = bitcast %TName_Bool* %"$tmp_3_7_839" to i8*
  call void @_update_field(i8* %"$execptr_load_837", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_838", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_840"), !dbg !55
  %tmp_3_8 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_841_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_841_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_841_salloc_load", i64 20)
  %"$indices_buf_841_salloc" = bitcast i8* %"$indices_buf_841_salloc_salloc" to [20 x i8]*
  %"$indices_buf_841" = bitcast [20 x i8]* %"$indices_buf_841_salloc" to i8*
  %"$indices_gep_842" = getelementptr i8, i8* %"$indices_buf_841", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_842" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_844" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_remote3_845" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_8_remote3_845", align 1
  %"$tmp_3_8_call_846" = call i8* @_fetch_remote_field(i8* %"$execptr_load_844", [20 x i8]* %"$tmp_3_8_remote3_845", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_843", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_84", i32 1, i8* %"$indices_buf_841", i32 1), !dbg !56
  %"$tmp_3_8_847" = bitcast i8* %"$tmp_3_8_call_846" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_8_847", %TName_Option_Bool** %tmp_3_8, align 8
  %"$tmp_3_8_848" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_848_849" = bitcast %TName_Option_Bool* %"$tmp_3_8_848" to i8*
  %"$_literal_cost_call_850" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i8* %"$$tmp_3_8_848_849")
  %"$gasadd_851" = add i64 %"$_literal_cost_call_850", 0
  %"$gasadd_852" = add i64 %"$gasadd_851", 1
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 %"$gasadd_852", %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$have_gas_835"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$have_gas_835"
  %"$consume_857" = sub i64 %"$gasrem_853", %"$gasadd_852"
  store i64 %"$consume_857", i64* @_gasrem, align 8
  %"$tmp_3_8_858" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_858_859" = bitcast %TName_Option_Bool* %"$tmp_3_8_858" to i8*
  %"$_literal_cost_call_860" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i8* %"$$tmp_3_8_858_859")
  %"$gasrem_861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_862" = icmp ugt i64 %"$_literal_cost_call_860", %"$gasrem_861"
  br i1 %"$gascmp_862", label %"$out_of_gas_863", label %"$have_gas_864"

"$out_of_gas_863":                                ; preds = %"$have_gas_856"
  call void @_out_of_gas()
  br label %"$have_gas_864"

"$have_gas_864":                                  ; preds = %"$out_of_gas_863", %"$have_gas_856"
  %"$consume_865" = sub i64 %"$gasrem_861", %"$_literal_cost_call_860"
  store i64 %"$consume_865", i64* @_gasrem, align 8
  %"$execptr_load_866" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_868" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$update_value_869" = bitcast %TName_Option_Bool* %"$tmp_3_8_868" to i8*
  call void @_update_field(i8* %"$execptr_load_866", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_867", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i32 0, i8* null, i8* %"$update_value_869"), !dbg !57
  %tmp_3_9 = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$execptr_load_871" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_remote3_872" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_9_remote3_872", align 1
  %"$tmp_3_9_call_873" = call i8* @_fetch_remote_field(i8* %"$execptr_load_871", [20 x i8]* %"$tmp_3_9_remote3_872", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_870", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 0, i8* null, i32 1), !dbg !58
  %"$tmp_3_9_874" = bitcast i8* %"$tmp_3_9_call_873" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_874", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$tmp_3_9_875" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_875_876" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_875" to i8*
  %"$_literal_cost_call_877" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_83", i8* %"$$tmp_3_9_875_876")
  %"$tmp_3_9_878" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_878_879" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_878" to i8*
  %"$_mapsortcost_call_880" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_83", i8* %"$$tmp_3_9_878_879")
  %"$gasadd_881" = add i64 %"$_literal_cost_call_877", %"$_mapsortcost_call_880"
  %"$gasrem_882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_883" = icmp ugt i64 %"$gasadd_881", %"$gasrem_882"
  br i1 %"$gascmp_883", label %"$out_of_gas_884", label %"$have_gas_885"

"$out_of_gas_884":                                ; preds = %"$have_gas_864"
  call void @_out_of_gas()
  br label %"$have_gas_885"

"$have_gas_885":                                  ; preds = %"$out_of_gas_884", %"$have_gas_864"
  %"$consume_886" = sub i64 %"$gasrem_882", %"$gasadd_881"
  store i64 %"$consume_886", i64* @_gasrem, align 8
  %"$tmp_3_9_887" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_887_888" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_887" to i8*
  %"$_literal_cost_call_889" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_83", i8* %"$$tmp_3_9_887_888")
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 %"$_literal_cost_call_889", %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$have_gas_885"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$have_gas_885"
  %"$consume_894" = sub i64 %"$gasrem_890", %"$_literal_cost_call_889"
  store i64 %"$consume_894", i64* @_gasrem, align 8
  %"$execptr_load_895" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_897" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$update_value_898" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_897" to i8*
  call void @_update_field(i8* %"$execptr_load_895", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_896", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 0, i8* null, i8* %"$update_value_898"), !dbg !59
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 1, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_893"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_893"
  %"$consume_903" = sub i64 %"$gasrem_899", 1
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %"$x_1" = alloca %Uint32, align 8
  %"$gasrem_904" = load i64, i64* @_gasrem, align 8
  %"$gascmp_905" = icmp ugt i64 1, %"$gasrem_904"
  br i1 %"$gascmp_905", label %"$out_of_gas_906", label %"$have_gas_907"

"$out_of_gas_906":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_907"

"$have_gas_907":                                  ; preds = %"$out_of_gas_906", %"$have_gas_902"
  %"$consume_908" = sub i64 %"$gasrem_904", 1
  store i64 %"$consume_908", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$x_1", align 4, !dbg !60
  %tmp_3_10 = alloca %TName_Bool*, align 8
  %"$indices_buf_909_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_909_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_909_salloc_load", i64 4)
  %"$indices_buf_909_salloc" = bitcast i8* %"$indices_buf_909_salloc_salloc" to [4 x i8]*
  %"$indices_buf_909" = bitcast [4 x i8]* %"$indices_buf_909_salloc" to i8*
  %"$$x_1_910" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_911" = getelementptr i8, i8* %"$indices_buf_909", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_911" to %Uint32*
  store %Uint32 %"$$x_1_910", %Uint32* %indices_cast2, align 4
  %"$execptr_load_913" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_remote3_914" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_10_remote3_914", align 1
  %"$tmp_3_10_call_915" = call i8* @_fetch_remote_field(i8* %"$execptr_load_913", [20 x i8]* %"$tmp_3_10_remote3_914", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_912", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 1, i8* %"$indices_buf_909", i32 0), !dbg !61
  %"$tmp_3_10_916" = bitcast i8* %"$tmp_3_10_call_915" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_10_916", %TName_Bool** %tmp_3_10, align 8
  %"$tmp_3_10_917" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_917_918" = bitcast %TName_Bool* %"$tmp_3_10_917" to i8*
  %"$_literal_cost_call_919" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_10_917_918")
  %"$gasadd_920" = add i64 %"$_literal_cost_call_919", 0
  %"$gasadd_921" = add i64 %"$gasadd_920", 1
  %"$gasrem_922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_923" = icmp ugt i64 %"$gasadd_921", %"$gasrem_922"
  br i1 %"$gascmp_923", label %"$out_of_gas_924", label %"$have_gas_925"

"$out_of_gas_924":                                ; preds = %"$have_gas_907"
  call void @_out_of_gas()
  br label %"$have_gas_925"

"$have_gas_925":                                  ; preds = %"$out_of_gas_924", %"$have_gas_907"
  %"$consume_926" = sub i64 %"$gasrem_922", %"$gasadd_921"
  store i64 %"$consume_926", i64* @_gasrem, align 8
  %"$tmp_3_10_927" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_927_928" = bitcast %TName_Bool* %"$tmp_3_10_927" to i8*
  %"$_literal_cost_call_929" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_10_927_928")
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 %"$_literal_cost_call_929", %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$have_gas_925"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$have_gas_925"
  %"$consume_934" = sub i64 %"$gasrem_930", %"$_literal_cost_call_929"
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %"$execptr_load_935" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_937" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$update_value_938" = bitcast %TName_Bool* %"$tmp_3_10_937" to i8*
  call void @_update_field(i8* %"$execptr_load_935", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_936", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_938"), !dbg !62
  %tmp_3_11 = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$indices_buf_939_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_939_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_939_salloc_load", i64 4)
  %"$indices_buf_939_salloc" = bitcast i8* %"$indices_buf_939_salloc_salloc" to [4 x i8]*
  %"$indices_buf_939" = bitcast [4 x i8]* %"$indices_buf_939_salloc" to i8*
  %"$$x_1_940" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_941" = getelementptr i8, i8* %"$indices_buf_939", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_941" to %Uint32*
  store %Uint32 %"$$x_1_940", %Uint32* %indices_cast3, align 4
  %"$execptr_load_943" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_11_remote3_944" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_11_remote3_944", align 1
  %"$tmp_3_11_call_945" = call i8* @_fetch_remote_field(i8* %"$execptr_load_943", [20 x i8]* %"$tmp_3_11_remote3_944", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_942", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 1, i8* %"$indices_buf_939", i32 1), !dbg !63
  %"$tmp_3_11_946" = bitcast i8* %"$tmp_3_11_call_945" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_946", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$tmp_3_11_947" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_947_948" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_947" to i8*
  %"$_literal_cost_call_949" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", i8* %"$$tmp_3_11_947_948")
  %"$tmp_3_11_950" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_950_951" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_950" to i8*
  %"$_mapsortcost_call_952" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", i8* %"$$tmp_3_11_950_951")
  %"$gasadd_953" = add i64 %"$_literal_cost_call_949", %"$_mapsortcost_call_952"
  %"$gasadd_954" = add i64 %"$gasadd_953", 1
  %"$gasrem_955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_956" = icmp ugt i64 %"$gasadd_954", %"$gasrem_955"
  br i1 %"$gascmp_956", label %"$out_of_gas_957", label %"$have_gas_958"

"$out_of_gas_957":                                ; preds = %"$have_gas_933"
  call void @_out_of_gas()
  br label %"$have_gas_958"

"$have_gas_958":                                  ; preds = %"$out_of_gas_957", %"$have_gas_933"
  %"$consume_959" = sub i64 %"$gasrem_955", %"$gasadd_954"
  store i64 %"$consume_959", i64* @_gasrem, align 8
  %"$tmp_3_11_960" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_960_961" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_960" to i8*
  %"$_literal_cost_call_962" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", i8* %"$$tmp_3_11_960_961")
  %"$gasrem_963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_964" = icmp ugt i64 %"$_literal_cost_call_962", %"$gasrem_963"
  br i1 %"$gascmp_964", label %"$out_of_gas_965", label %"$have_gas_966"

"$out_of_gas_965":                                ; preds = %"$have_gas_958"
  call void @_out_of_gas()
  br label %"$have_gas_966"

"$have_gas_966":                                  ; preds = %"$out_of_gas_965", %"$have_gas_958"
  %"$consume_967" = sub i64 %"$gasrem_963", %"$_literal_cost_call_962"
  store i64 %"$consume_967", i64* @_gasrem, align 8
  %"$execptr_load_968" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_11_970" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$update_value_971" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_970" to i8*
  call void @_update_field(i8* %"$execptr_load_968", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_969", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_73", i32 0, i8* null, i8* %"$update_value_971"), !dbg !64
  %tmp_3_12 = alloca %TName_Bool*, align 8
  %"$indices_buf_972_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_972_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_972_salloc_load", i64 24)
  %"$indices_buf_972_salloc" = bitcast i8* %"$indices_buf_972_salloc_salloc" to [24 x i8]*
  %"$indices_buf_972" = bitcast [24 x i8]* %"$indices_buf_972_salloc" to i8*
  %"$$x_1_973" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_974" = getelementptr i8, i8* %"$indices_buf_972", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_974" to %Uint32*
  store %Uint32 %"$$x_1_973", %Uint32* %indices_cast4, align 4
  %"$indices_gep_975" = getelementptr i8, i8* %"$indices_buf_972", i32 4
  %indices_cast5 = bitcast i8* %"$indices_gep_975" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast5, align 1
  %"$execptr_load_977" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_12_remote3_978" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_12_remote3_978", align 1
  %"$tmp_3_12_call_979" = call i8* @_fetch_remote_field(i8* %"$execptr_load_977", [20 x i8]* %"$tmp_3_12_remote3_978", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_976", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 2, i8* %"$indices_buf_972", i32 0), !dbg !65
  %"$tmp_3_12_980" = bitcast i8* %"$tmp_3_12_call_979" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_12_980", %TName_Bool** %tmp_3_12, align 8
  %"$tmp_3_12_981" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_981_982" = bitcast %TName_Bool* %"$tmp_3_12_981" to i8*
  %"$_literal_cost_call_983" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_12_981_982")
  %"$gasadd_984" = add i64 %"$_literal_cost_call_983", 0
  %"$gasadd_985" = add i64 %"$gasadd_984", 2
  %"$gasrem_986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_987" = icmp ugt i64 %"$gasadd_985", %"$gasrem_986"
  br i1 %"$gascmp_987", label %"$out_of_gas_988", label %"$have_gas_989"

"$out_of_gas_988":                                ; preds = %"$have_gas_966"
  call void @_out_of_gas()
  br label %"$have_gas_989"

"$have_gas_989":                                  ; preds = %"$out_of_gas_988", %"$have_gas_966"
  %"$consume_990" = sub i64 %"$gasrem_986", %"$gasadd_985"
  store i64 %"$consume_990", i64* @_gasrem, align 8
  %"$tmp_3_12_991" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_991_992" = bitcast %TName_Bool* %"$tmp_3_12_991" to i8*
  %"$_literal_cost_call_993" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i8* %"$$tmp_3_12_991_992")
  %"$gasrem_994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_995" = icmp ugt i64 %"$_literal_cost_call_993", %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$have_gas_989"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$have_gas_989"
  %"$consume_998" = sub i64 %"$gasrem_994", %"$_literal_cost_call_993"
  store i64 %"$consume_998", i64* @_gasrem, align 8
  %"$execptr_load_999" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_12_1001" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$update_value_1002" = bitcast %TName_Bool* %"$tmp_3_12_1001" to i8*
  call void @_update_field(i8* %"$execptr_load_999", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_1000", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_76", i32 0, i8* null, i8* %"$update_value_1002"), !dbg !66
  %tmp_3_13 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_1003_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1003_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1003_salloc_load", i64 24)
  %"$indices_buf_1003_salloc" = bitcast i8* %"$indices_buf_1003_salloc_salloc" to [24 x i8]*
  %"$indices_buf_1003" = bitcast [24 x i8]* %"$indices_buf_1003_salloc" to i8*
  %"$$x_1_1004" = load %Uint32, %Uint32* %"$x_1", align 4
  %"$indices_gep_1005" = getelementptr i8, i8* %"$indices_buf_1003", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_1005" to %Uint32*
  store %Uint32 %"$$x_1_1004", %Uint32* %indices_cast6, align 4
  %"$indices_gep_1006" = getelementptr i8, i8* %"$indices_buf_1003", i32 4
  %indices_cast7 = bitcast i8* %"$indices_gep_1006" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast7, align 1
  %"$execptr_load_1008" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_13_remote3_1009" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_13_remote3_1009", align 1
  %"$tmp_3_13_call_1010" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1008", [20 x i8]* %"$tmp_3_13_remote3_1009", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_1007", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_83", i32 2, i8* %"$indices_buf_1003", i32 1), !dbg !67
  %"$tmp_3_13_1011" = bitcast i8* %"$tmp_3_13_call_1010" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_13_1011", %TName_Option_Bool** %tmp_3_13, align 8
  %"$tmp_3_13_1012" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_1012_1013" = bitcast %TName_Option_Bool* %"$tmp_3_13_1012" to i8*
  %"$_literal_cost_call_1014" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i8* %"$$tmp_3_13_1012_1013")
  %"$gasadd_1015" = add i64 %"$_literal_cost_call_1014", 0
  %"$gasadd_1016" = add i64 %"$gasadd_1015", 2
  %"$gasrem_1017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1018" = icmp ugt i64 %"$gasadd_1016", %"$gasrem_1017"
  br i1 %"$gascmp_1018", label %"$out_of_gas_1019", label %"$have_gas_1020"

"$out_of_gas_1019":                               ; preds = %"$have_gas_997"
  call void @_out_of_gas()
  br label %"$have_gas_1020"

"$have_gas_1020":                                 ; preds = %"$out_of_gas_1019", %"$have_gas_997"
  %"$consume_1021" = sub i64 %"$gasrem_1017", %"$gasadd_1016"
  store i64 %"$consume_1021", i64* @_gasrem, align 8
  %"$tmp_3_13_1022" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_1022_1023" = bitcast %TName_Option_Bool* %"$tmp_3_13_1022" to i8*
  %"$_literal_cost_call_1024" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i8* %"$$tmp_3_13_1022_1023")
  %"$gasrem_1025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1026" = icmp ugt i64 %"$_literal_cost_call_1024", %"$gasrem_1025"
  br i1 %"$gascmp_1026", label %"$out_of_gas_1027", label %"$have_gas_1028"

"$out_of_gas_1027":                               ; preds = %"$have_gas_1020"
  call void @_out_of_gas()
  br label %"$have_gas_1028"

"$have_gas_1028":                                 ; preds = %"$out_of_gas_1027", %"$have_gas_1020"
  %"$consume_1029" = sub i64 %"$gasrem_1025", %"$_literal_cost_call_1024"
  store i64 %"$consume_1029", i64* @_gasrem, align 8
  %"$execptr_load_1030" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_13_1032" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$update_value_1033" = bitcast %TName_Option_Bool* %"$tmp_3_13_1032" to i8*
  call void @_update_field(i8* %"$execptr_load_1030", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_1031", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_74", i32 0, i8* null, i8* %"$update_value_1033"), !dbg !68
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

define void @RemoteReadsTest(i8* %0) !dbg !69 {
entry:
  %"$_amount_1035" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1036" = bitcast i8* %"$_amount_1035" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1036", align 8
  %"$_origin_1037" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1038" = bitcast i8* %"$_origin_1037" to [20 x i8]*
  %"$_sender_1039" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1040" = bitcast i8* %"$_sender_1039" to [20 x i8]*
  %"$remote1_1041" = getelementptr i8, i8* %0, i32 56
  %"$remote1_1042" = bitcast i8* %"$remote1_1041" to [20 x i8]*
  %"$remote2_1043" = getelementptr i8, i8* %0, i32 76
  %"$remote2_1044" = bitcast i8* %"$remote2_1043" to [20 x i8]*
  %"$remote3_1045" = getelementptr i8, i8* %0, i32 96
  %"$remote3_1046" = bitcast i8* %"$remote3_1045" to [20 x i8]*
  call void @"$RemoteReadsTest_596"(%Uint128 %_amount, [20 x i8]* %"$_origin_1038", [20 x i8]* %"$_sender_1040", [20 x i8]* %"$remote1_1042", [20 x i8]* %"$remote2_1044", [20 x i8]* %"$remote3_1046"), !dbg !70
  ret void
}

define internal void @"$RemoteReadsADTTest_1047"(%Uint128 %_amount, [20 x i8]* %"$_origin_1048", [20 x i8]* %"$_sender_1049", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1050") !dbg !71 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1048", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1049", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_1050", align 1
  ret void
}

define void @RemoteReadsADTTest(i8* %0) !dbg !72 {
entry:
  %"$_amount_1052" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1053" = bitcast i8* %"$_amount_1052" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1053", align 8
  %"$_origin_1054" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1055" = bitcast i8* %"$_origin_1054" to [20 x i8]*
  %"$_sender_1056" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1057" = bitcast i8* %"$_sender_1056" to [20 x i8]*
  %"$list1_1058" = getelementptr i8, i8* %0, i32 56
  %"$list1_1059" = bitcast i8* %"$list1_1058" to %TName_List_ByStr20_with_end**
  %list1 = load %TName_List_ByStr20_with_end*, %TName_List_ByStr20_with_end** %"$list1_1059", align 8
  %"$list2_1060" = getelementptr i8, i8* %0, i32 64
  %"$list2_1061" = bitcast i8* %"$list2_1060" to %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"**
  %list2 = load %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"*, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"** %"$list2_1061", align 8
  %"$list3_1062" = getelementptr i8, i8* %0, i32 72
  %"$list3_1063" = bitcast i8* %"$list3_1062" to %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"**
  %list3 = load %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"*, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"** %"$list3_1063", align 8
  %"$pair1_1064" = getelementptr i8, i8* %0, i32 80
  %"$pair1_1065" = bitcast i8* %"$pair1_1064" to %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %pair1 = load %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$pair1_1065", align 8
  %"$adt1_1066" = getelementptr i8, i8* %0, i32 88
  %"$adt1_1067" = bitcast i8* %"$adt1_1066" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %adt1 = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adt1_1067", align 8
  %"$remote1_1068" = getelementptr i8, i8* %0, i32 96
  %"$remote1_1069" = bitcast i8* %"$remote1_1068" to [20 x i8]*
  call void @"$RemoteReadsADTTest_1047"(%Uint128 %_amount, [20 x i8]* %"$_origin_1055", [20 x i8]* %"$_sender_1057", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1069"), !dbg !73
  ret void
}

define internal void @"$OutgoingMsgTest_1070"(%Uint128 %_amount, [20 x i8]* %"$_origin_1071", [20 x i8]* %"$_sender_1072") !dbg !74 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1071", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1072", align 1
  %"$gasrem_1073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1074" = icmp ugt i64 1, %"$gasrem_1073"
  br i1 %"$gascmp_1074", label %"$out_of_gas_1075", label %"$have_gas_1076"

"$out_of_gas_1075":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1076"

"$have_gas_1076":                                 ; preds = %"$out_of_gas_1075", %entry
  %"$consume_1077" = sub i64 %"$gasrem_1073", 1
  store i64 %"$consume_1077", i64* @_gasrem, align 8
  %msg = alloca i8*, align 8
  %"$gasrem_1078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1079" = icmp ugt i64 1, %"$gasrem_1078"
  br i1 %"$gascmp_1079", label %"$out_of_gas_1080", label %"$have_gas_1081"

"$out_of_gas_1080":                               ; preds = %"$have_gas_1076"
  call void @_out_of_gas()
  br label %"$have_gas_1081"

"$have_gas_1081":                                 ; preds = %"$out_of_gas_1080", %"$have_gas_1076"
  %"$consume_1082" = sub i64 %"$gasrem_1078", 1
  store i64 %"$consume_1082", i64* @_gasrem, align 8
  %"$msgobj_1083_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1083_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1083_salloc_load", i64 169)
  %"$msgobj_1083_salloc" = bitcast i8* %"$msgobj_1083_salloc_salloc" to [169 x i8]*
  %"$msgobj_1083" = bitcast [169 x i8]* %"$msgobj_1083_salloc" to i8*
  store i8 4, i8* %"$msgobj_1083", align 1
  %"$msgobj_fname_1085" = getelementptr i8, i8* %"$msgobj_1083", i32 1
  %"$msgobj_fname_1086" = bitcast i8* %"$msgobj_fname_1085" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1084", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1086", align 8
  %"$msgobj_td_1087" = getelementptr i8, i8* %"$msgobj_1083", i32 17
  %"$msgobj_td_1088" = bitcast i8* %"$msgobj_td_1087" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1088", align 8
  %"$msgobj_v_1090" = getelementptr i8, i8* %"$msgobj_1083", i32 25
  %"$msgobj_v_1091" = bitcast i8* %"$msgobj_v_1090" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1089", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_1091", align 8
  %"$msgobj_fname_1093" = getelementptr i8, i8* %"$msgobj_1083", i32 41
  %"$msgobj_fname_1094" = bitcast i8* %"$msgobj_fname_1093" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1092", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1094", align 8
  %"$msgobj_td_1095" = getelementptr i8, i8* %"$msgobj_1083", i32 57
  %"$msgobj_td_1096" = bitcast i8* %"$msgobj_td_1095" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ** %"$msgobj_td_1096", align 8
  %"$msgobj_v_1097" = getelementptr i8, i8* %"$msgobj_1083", i32 65
  %"$msgobj_v_1098" = bitcast i8* %"$msgobj_v_1097" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_1098", align 1
  %"$msgobj_fname_1100" = getelementptr i8, i8* %"$msgobj_1083", i32 85
  %"$msgobj_fname_1101" = bitcast i8* %"$msgobj_fname_1100" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1099", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1101", align 8
  %"$msgobj_td_1102" = getelementptr i8, i8* %"$msgobj_1083", i32 101
  %"$msgobj_td_1103" = bitcast i8* %"$msgobj_td_1102" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ** %"$msgobj_td_1103", align 8
  %"$msgobj_v_1104" = getelementptr i8, i8* %"$msgobj_1083", i32 109
  %"$msgobj_v_1105" = bitcast i8* %"$msgobj_v_1104" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_1105", align 8
  %"$msgobj_fname_1107" = getelementptr i8, i8* %"$msgobj_1083", i32 125
  %"$msgobj_fname_1108" = bitcast i8* %"$msgobj_fname_1107" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1106", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1108", align 8
  %"$msgobj_td_1109" = getelementptr i8, i8* %"$msgobj_1083", i32 141
  %"$msgobj_td_1110" = bitcast i8* %"$msgobj_td_1109" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ** %"$msgobj_td_1110", align 8
  %"$cparam3_1111" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1112" = getelementptr i8, i8* %"$msgobj_1083", i32 149
  %"$msgobj_v_1113" = bitcast i8* %"$msgobj_v_1112" to [20 x i8]*
  store [20 x i8] %"$cparam3_1111", [20 x i8]* %"$msgobj_v_1113", align 1
  store i8* %"$msgobj_1083", i8** %msg, align 8, !dbg !75
  %"$gasrem_1115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1116" = icmp ugt i64 1, %"$gasrem_1115"
  br i1 %"$gascmp_1116", label %"$out_of_gas_1117", label %"$have_gas_1118"

"$out_of_gas_1117":                               ; preds = %"$have_gas_1081"
  call void @_out_of_gas()
  br label %"$have_gas_1118"

"$have_gas_1118":                                 ; preds = %"$out_of_gas_1117", %"$have_gas_1081"
  %"$consume_1119" = sub i64 %"$gasrem_1115", 1
  store i64 %"$consume_1119", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_1120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1121" = icmp ugt i64 1, %"$gasrem_1120"
  br i1 %"$gascmp_1121", label %"$out_of_gas_1122", label %"$have_gas_1123"

"$out_of_gas_1122":                               ; preds = %"$have_gas_1118"
  call void @_out_of_gas()
  br label %"$have_gas_1123"

"$have_gas_1123":                                 ; preds = %"$out_of_gas_1122", %"$have_gas_1118"
  %"$consume_1124" = sub i64 %"$gasrem_1120", 1
  store i64 %"$consume_1124", i64* @_gasrem, align 8
  %n = alloca %TName_List_Message*, align 8
  %"$gasrem_1125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1126" = icmp ugt i64 1, %"$gasrem_1125"
  br i1 %"$gascmp_1126", label %"$out_of_gas_1127", label %"$have_gas_1128"

"$out_of_gas_1127":                               ; preds = %"$have_gas_1123"
  call void @_out_of_gas()
  br label %"$have_gas_1128"

"$have_gas_1128":                                 ; preds = %"$out_of_gas_1127", %"$have_gas_1123"
  %"$consume_1129" = sub i64 %"$gasrem_1125", 1
  store i64 %"$consume_1129", i64* @_gasrem, align 8
  %"$adtval_1130_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1130_salloc" = call i8* @_salloc(i8* %"$adtval_1130_load", i64 1)
  %"$adtval_1130" = bitcast i8* %"$adtval_1130_salloc" to %CName_Nil_Message*
  %"$adtgep_1131" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_1130", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1131", align 1
  %"$adtptr_1132" = bitcast %CName_Nil_Message* %"$adtval_1130" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1132", %TName_List_Message** %n, align 8, !dbg !76
  %"$gasrem_1133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1134" = icmp ugt i64 1, %"$gasrem_1133"
  br i1 %"$gascmp_1134", label %"$out_of_gas_1135", label %"$have_gas_1136"

"$out_of_gas_1135":                               ; preds = %"$have_gas_1128"
  call void @_out_of_gas()
  br label %"$have_gas_1136"

"$have_gas_1136":                                 ; preds = %"$out_of_gas_1135", %"$have_gas_1128"
  %"$consume_1137" = sub i64 %"$gasrem_1133", 1
  store i64 %"$consume_1137", i64* @_gasrem, align 8
  %"$msg_1138" = load i8*, i8** %msg, align 8
  %"$n_1139" = load %TName_List_Message*, %TName_List_Message** %n, align 8
  %"$adtval_1140_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1140_salloc" = call i8* @_salloc(i8* %"$adtval_1140_load", i64 17)
  %"$adtval_1140" = bitcast i8* %"$adtval_1140_salloc" to %CName_Cons_Message*
  %"$adtgep_1141" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1140", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1141", align 1
  %"$adtgep_1142" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1140", i32 0, i32 1
  store i8* %"$msg_1138", i8** %"$adtgep_1142", align 8
  %"$adtgep_1143" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1140", i32 0, i32 2
  store %TName_List_Message* %"$n_1139", %TName_List_Message** %"$adtgep_1143", align 8
  %"$adtptr_1144" = bitcast %CName_Cons_Message* %"$adtval_1140" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1144", %TName_List_Message** %msgs, align 8, !dbg !77
  %"$msgs_1145" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_1145_1146" = bitcast %TName_List_Message* %"$msgs_1145" to i8*
  %"$_literal_cost_call_1147" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_65", i8* %"$$msgs_1145_1146")
  %"$gasrem_1148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1149" = icmp ugt i64 %"$_literal_cost_call_1147", %"$gasrem_1148"
  br i1 %"$gascmp_1149", label %"$out_of_gas_1150", label %"$have_gas_1151"

"$out_of_gas_1150":                               ; preds = %"$have_gas_1136"
  call void @_out_of_gas()
  br label %"$have_gas_1151"

"$have_gas_1151":                                 ; preds = %"$out_of_gas_1150", %"$have_gas_1136"
  %"$consume_1152" = sub i64 %"$gasrem_1148", %"$_literal_cost_call_1147"
  store i64 %"$consume_1152", i64* @_gasrem, align 8
  %"$execptr_load_1153" = load i8*, i8** @_execptr, align 8
  %"$msgs_1154" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_1153", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_65", %TName_List_Message* %"$msgs_1154"), !dbg !78
  %"$gasrem_1155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1156" = icmp ugt i64 1, %"$gasrem_1155"
  br i1 %"$gascmp_1156", label %"$out_of_gas_1157", label %"$have_gas_1158"

"$out_of_gas_1157":                               ; preds = %"$have_gas_1151"
  call void @_out_of_gas()
  br label %"$have_gas_1158"

"$have_gas_1158":                                 ; preds = %"$out_of_gas_1157", %"$have_gas_1151"
  %"$consume_1159" = sub i64 %"$gasrem_1155", 1
  store i64 %"$consume_1159", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_1160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1161" = icmp ugt i64 1, %"$gasrem_1160"
  br i1 %"$gascmp_1161", label %"$out_of_gas_1162", label %"$have_gas_1163"

"$out_of_gas_1162":                               ; preds = %"$have_gas_1158"
  call void @_out_of_gas()
  br label %"$have_gas_1163"

"$have_gas_1163":                                 ; preds = %"$out_of_gas_1162", %"$have_gas_1158"
  %"$consume_1164" = sub i64 %"$gasrem_1160", 1
  store i64 %"$consume_1164", i64* @_gasrem, align 8
  %"$msgobj_1165_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1165_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1165_salloc_load", i64 85)
  %"$msgobj_1165_salloc" = bitcast i8* %"$msgobj_1165_salloc_salloc" to [85 x i8]*
  %"$msgobj_1165" = bitcast [85 x i8]* %"$msgobj_1165_salloc" to i8*
  store i8 2, i8* %"$msgobj_1165", align 1
  %"$msgobj_fname_1167" = getelementptr i8, i8* %"$msgobj_1165", i32 1
  %"$msgobj_fname_1168" = bitcast i8* %"$msgobj_fname_1167" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1166", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1168", align 8
  %"$msgobj_td_1169" = getelementptr i8, i8* %"$msgobj_1165", i32 17
  %"$msgobj_td_1170" = bitcast i8* %"$msgobj_td_1169" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1170", align 8
  %"$msgobj_v_1172" = getelementptr i8, i8* %"$msgobj_1165", i32 25
  %"$msgobj_v_1173" = bitcast i8* %"$msgobj_v_1172" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1171", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1173", align 8
  %"$msgobj_fname_1175" = getelementptr i8, i8* %"$msgobj_1165", i32 41
  %"$msgobj_fname_1176" = bitcast i8* %"$msgobj_fname_1175" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1174", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1176", align 8
  %"$msgobj_td_1177" = getelementptr i8, i8* %"$msgobj_1165", i32 57
  %"$msgobj_td_1178" = bitcast i8* %"$msgobj_td_1177" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ** %"$msgobj_td_1178", align 8
  %"$cparam2_1179" = load [20 x i8], [20 x i8]* @_cparam_cparam2, align 1
  %"$msgobj_v_1180" = getelementptr i8, i8* %"$msgobj_1165", i32 65
  %"$msgobj_v_1181" = bitcast i8* %"$msgobj_v_1180" to [20 x i8]*
  store [20 x i8] %"$cparam2_1179", [20 x i8]* %"$msgobj_v_1181", align 1
  store i8* %"$msgobj_1165", i8** %e1, align 8, !dbg !79
  %"$e1_1183" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_1185" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e1_1183")
  %"$gasrem_1186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1187" = icmp ugt i64 %"$_literal_cost_call_1185", %"$gasrem_1186"
  br i1 %"$gascmp_1187", label %"$out_of_gas_1188", label %"$have_gas_1189"

"$out_of_gas_1188":                               ; preds = %"$have_gas_1163"
  call void @_out_of_gas()
  br label %"$have_gas_1189"

"$have_gas_1189":                                 ; preds = %"$out_of_gas_1188", %"$have_gas_1163"
  %"$consume_1190" = sub i64 %"$gasrem_1186", %"$_literal_cost_call_1185"
  store i64 %"$consume_1190", i64* @_gasrem, align 8
  %"$execptr_load_1191" = load i8*, i8** @_execptr, align 8
  %"$e1_1192" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_1191", %_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e1_1192"), !dbg !80
  %"$gasrem_1193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1194" = icmp ugt i64 1, %"$gasrem_1193"
  br i1 %"$gascmp_1194", label %"$out_of_gas_1195", label %"$have_gas_1196"

"$out_of_gas_1195":                               ; preds = %"$have_gas_1189"
  call void @_out_of_gas()
  br label %"$have_gas_1196"

"$have_gas_1196":                                 ; preds = %"$out_of_gas_1195", %"$have_gas_1189"
  %"$consume_1197" = sub i64 %"$gasrem_1193", 1
  store i64 %"$consume_1197", i64* @_gasrem, align 8
  %e2 = alloca i8*, align 8
  %"$gasrem_1198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1199" = icmp ugt i64 1, %"$gasrem_1198"
  br i1 %"$gascmp_1199", label %"$out_of_gas_1200", label %"$have_gas_1201"

"$out_of_gas_1200":                               ; preds = %"$have_gas_1196"
  call void @_out_of_gas()
  br label %"$have_gas_1201"

"$have_gas_1201":                                 ; preds = %"$out_of_gas_1200", %"$have_gas_1196"
  %"$consume_1202" = sub i64 %"$gasrem_1198", 1
  store i64 %"$consume_1202", i64* @_gasrem, align 8
  %"$msgobj_1203_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1203_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1203_salloc_load", i64 85)
  %"$msgobj_1203_salloc" = bitcast i8* %"$msgobj_1203_salloc_salloc" to [85 x i8]*
  %"$msgobj_1203" = bitcast [85 x i8]* %"$msgobj_1203_salloc" to i8*
  store i8 2, i8* %"$msgobj_1203", align 1
  %"$msgobj_fname_1205" = getelementptr i8, i8* %"$msgobj_1203", i32 1
  %"$msgobj_fname_1206" = bitcast i8* %"$msgobj_fname_1205" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1204", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1206", align 8
  %"$msgobj_td_1207" = getelementptr i8, i8* %"$msgobj_1203", i32 17
  %"$msgobj_td_1208" = bitcast i8* %"$msgobj_td_1207" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1208", align 8
  %"$msgobj_v_1210" = getelementptr i8, i8* %"$msgobj_1203", i32 25
  %"$msgobj_v_1211" = bitcast i8* %"$msgobj_v_1210" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1209", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1211", align 8
  %"$msgobj_fname_1213" = getelementptr i8, i8* %"$msgobj_1203", i32 41
  %"$msgobj_fname_1214" = bitcast i8* %"$msgobj_fname_1213" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1212", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1214", align 8
  %"$msgobj_td_1215" = getelementptr i8, i8* %"$msgobj_1203", i32 57
  %"$msgobj_td_1216" = bitcast i8* %"$msgobj_td_1215" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ** %"$msgobj_td_1216", align 8
  %"$cparam3_1217" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1218" = getelementptr i8, i8* %"$msgobj_1203", i32 65
  %"$msgobj_v_1219" = bitcast i8* %"$msgobj_v_1218" to [20 x i8]*
  store [20 x i8] %"$cparam3_1217", [20 x i8]* %"$msgobj_v_1219", align 1
  store i8* %"$msgobj_1203", i8** %e2, align 8, !dbg !81
  %"$e2_1221" = load i8*, i8** %e2, align 8
  %"$_literal_cost_call_1223" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e2_1221")
  %"$gasrem_1224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1225" = icmp ugt i64 %"$_literal_cost_call_1223", %"$gasrem_1224"
  br i1 %"$gascmp_1225", label %"$out_of_gas_1226", label %"$have_gas_1227"

"$out_of_gas_1226":                               ; preds = %"$have_gas_1201"
  call void @_out_of_gas()
  br label %"$have_gas_1227"

"$have_gas_1227":                                 ; preds = %"$out_of_gas_1226", %"$have_gas_1201"
  %"$consume_1228" = sub i64 %"$gasrem_1224", %"$_literal_cost_call_1223"
  store i64 %"$consume_1228", i64* @_gasrem, align 8
  %"$execptr_load_1229" = load i8*, i8** @_execptr, align 8
  %"$e2_1230" = load i8*, i8** %e2, align 8
  call void @_event(i8* %"$execptr_load_1229", %_TyDescrTy_Typ* @"$TyDescr_Event_55", i8* %"$e2_1230"), !dbg !82
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @OutgoingMsgTest(i8* %0) !dbg !83 {
entry:
  %"$_amount_1232" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1233" = bitcast i8* %"$_amount_1232" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1233", align 8
  %"$_origin_1234" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1235" = bitcast i8* %"$_origin_1234" to [20 x i8]*
  %"$_sender_1236" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1237" = bitcast i8* %"$_sender_1236" to [20 x i8]*
  call void @"$OutgoingMsgTest_1070"(%Uint128 %_amount, [20 x i8]* %"$_origin_1235", [20 x i8]* %"$_sender_1237"), !dbg !84
  ret void
}

define internal void @"$ExceptionTest_1238"(%Uint128 %_amount, [20 x i8]* %"$_origin_1239", [20 x i8]* %"$_sender_1240") !dbg !85 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1239", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1240", align 1
  %"$gasrem_1241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1242" = icmp ugt i64 1, %"$gasrem_1241"
  br i1 %"$gascmp_1242", label %"$out_of_gas_1243", label %"$have_gas_1244"

"$out_of_gas_1243":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1244"

"$have_gas_1244":                                 ; preds = %"$out_of_gas_1243", %entry
  %"$consume_1245" = sub i64 %"$gasrem_1241", 1
  store i64 %"$consume_1245", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_1246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1247" = icmp ugt i64 1, %"$gasrem_1246"
  br i1 %"$gascmp_1247", label %"$out_of_gas_1248", label %"$have_gas_1249"

"$out_of_gas_1248":                               ; preds = %"$have_gas_1244"
  call void @_out_of_gas()
  br label %"$have_gas_1249"

"$have_gas_1249":                                 ; preds = %"$out_of_gas_1248", %"$have_gas_1244"
  %"$consume_1250" = sub i64 %"$gasrem_1246", 1
  store i64 %"$consume_1250", i64* @_gasrem, align 8
  %"$msgobj_1251_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1251_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1251_salloc_load", i64 85)
  %"$msgobj_1251_salloc" = bitcast i8* %"$msgobj_1251_salloc_salloc" to [85 x i8]*
  %"$msgobj_1251" = bitcast [85 x i8]* %"$msgobj_1251_salloc" to i8*
  store i8 2, i8* %"$msgobj_1251", align 1
  %"$msgobj_fname_1253" = getelementptr i8, i8* %"$msgobj_1251", i32 1
  %"$msgobj_fname_1254" = bitcast i8* %"$msgobj_fname_1253" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1252", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1254", align 8
  %"$msgobj_td_1255" = getelementptr i8, i8* %"$msgobj_1251", i32 17
  %"$msgobj_td_1256" = bitcast i8* %"$msgobj_td_1255" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ** %"$msgobj_td_1256", align 8
  %"$msgobj_v_1258" = getelementptr i8, i8* %"$msgobj_1251", i32 25
  %"$msgobj_v_1259" = bitcast i8* %"$msgobj_v_1258" to %String*
  store %String { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$stringlit_1257", i32 0, i32 0), i32 13 }, %String* %"$msgobj_v_1259", align 8
  %"$msgobj_fname_1261" = getelementptr i8, i8* %"$msgobj_1251", i32 41
  %"$msgobj_fname_1262" = bitcast i8* %"$msgobj_fname_1261" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1260", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1262", align 8
  %"$msgobj_td_1263" = getelementptr i8, i8* %"$msgobj_1251", i32 57
  %"$msgobj_td_1264" = bitcast i8* %"$msgobj_td_1263" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_61", %_TyDescrTy_Typ** %"$msgobj_td_1264", align 8
  %"$cparam3_1265" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$msgobj_v_1266" = getelementptr i8, i8* %"$msgobj_1251", i32 65
  %"$msgobj_v_1267" = bitcast i8* %"$msgobj_v_1266" to [20 x i8]*
  store [20 x i8] %"$cparam3_1265", [20 x i8]* %"$msgobj_v_1267", align 1
  store i8* %"$msgobj_1251", i8** %e, align 8, !dbg !86
  %"$e_1269" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_1271" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_57", i8* %"$e_1269")
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 %"$_literal_cost_call_1271", %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$have_gas_1249"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$have_gas_1249"
  %"$consume_1276" = sub i64 %"$gasrem_1272", %"$_literal_cost_call_1271"
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  %"$execptr_load_1277" = load i8*, i8** @_execptr, align 8
  %"$e_1278" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_1277", %_TyDescrTy_Typ* @"$TyDescr_Exception_57", i8* %"$e_1278"), !dbg !87
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ExceptionTest(i8* %0) !dbg !88 {
entry:
  %"$_amount_1280" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1281" = bitcast i8* %"$_amount_1280" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1281", align 8
  %"$_origin_1282" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1283" = bitcast i8* %"$_origin_1282" to [20 x i8]*
  %"$_sender_1284" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1285" = bitcast i8* %"$_sender_1284" to [20 x i8]*
  call void @"$ExceptionTest_1238"(%Uint128 %_amount, [20 x i8]* %"$_origin_1283", [20 x i8]* %"$_sender_1285"), !dbg !89
  ret void
}

define internal void @"$AssignTest_1286"(%Uint128 %_amount, [20 x i8]* %"$_origin_1287", [20 x i8]* %"$_sender_1288") !dbg !90 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1287", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1288", align 1
  %"$gasrem_1289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1290" = icmp ugt i64 1, %"$gasrem_1289"
  br i1 %"$gascmp_1290", label %"$out_of_gas_1291", label %"$have_gas_1292"

"$out_of_gas_1291":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1292"

"$have_gas_1292":                                 ; preds = %"$out_of_gas_1291", %entry
  %"$consume_1293" = sub i64 %"$gasrem_1289", 1
  store i64 %"$consume_1293", i64* @_gasrem, align 8
  %"$x_2" = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1295" = icmp ugt i64 1, %"$gasrem_1294"
  br i1 %"$gascmp_1295", label %"$out_of_gas_1296", label %"$have_gas_1297"

"$out_of_gas_1296":                               ; preds = %"$have_gas_1292"
  call void @_out_of_gas()
  br label %"$have_gas_1297"

"$have_gas_1297":                                 ; preds = %"$out_of_gas_1296", %"$have_gas_1292"
  %"$consume_1298" = sub i64 %"$gasrem_1294", 1
  store i64 %"$consume_1298", i64* @_gasrem, align 8
  %"$cparam3_1299" = load [20 x i8], [20 x i8]* @_cparam_cparam3, align 1
  %"$adtval_1300_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1300_salloc" = call i8* @_salloc(i8* %"$adtval_1300_load", i64 21)
  %"$adtval_1300" = bitcast i8* %"$adtval_1300_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2*
  %"$adtgep_1301" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1300", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1301", align 1
  %"$adtgep_1302" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1300", i32 0, i32 1
  store [20 x i8] %"$cparam3_1299", [20 x i8]* %"$adtgep_1302", align 1
  %"$adtptr_1303" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1300" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1303", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8, !dbg !91
  %"$$x_2_1304" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$$$x_2_1304_1305" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1304" to i8*
  %"$_literal_cost_call_1306" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75", i8* %"$$$x_2_1304_1305")
  %"$gasrem_1307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1308" = icmp ugt i64 %"$_literal_cost_call_1306", %"$gasrem_1307"
  br i1 %"$gascmp_1308", label %"$out_of_gas_1309", label %"$have_gas_1310"

"$out_of_gas_1309":                               ; preds = %"$have_gas_1297"
  call void @_out_of_gas()
  br label %"$have_gas_1310"

"$have_gas_1310":                                 ; preds = %"$out_of_gas_1309", %"$have_gas_1297"
  %"$consume_1311" = sub i64 %"$gasrem_1307", %"$_literal_cost_call_1306"
  store i64 %"$consume_1311", i64* @_gasrem, align 8
  %"$execptr_load_1312" = load i8*, i8** @_execptr, align 8
  %"$$x_2_1314" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$update_value_1315" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1314" to i8*
  call void @_update_field(i8* %"$execptr_load_1312", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_1313", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75", i32 0, i8* null, i8* %"$update_value_1315"), !dbg !92
  %"$gasrem_1316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1317" = icmp ugt i64 1, %"$gasrem_1316"
  br i1 %"$gascmp_1317", label %"$out_of_gas_1318", label %"$have_gas_1319"

"$out_of_gas_1318":                               ; preds = %"$have_gas_1310"
  call void @_out_of_gas()
  br label %"$have_gas_1319"

"$have_gas_1319":                                 ; preds = %"$out_of_gas_1318", %"$have_gas_1310"
  %"$consume_1320" = sub i64 %"$gasrem_1316", 1
  store i64 %"$consume_1320", i64* @_gasrem, align 8
  %y = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1322" = icmp ugt i64 1, %"$gasrem_1321"
  br i1 %"$gascmp_1322", label %"$out_of_gas_1323", label %"$have_gas_1324"

"$out_of_gas_1323":                               ; preds = %"$have_gas_1319"
  call void @_out_of_gas()
  br label %"$have_gas_1324"

"$have_gas_1324":                                 ; preds = %"$out_of_gas_1323", %"$have_gas_1319"
  %"$consume_1325" = sub i64 %"$gasrem_1321", 1
  store i64 %"$consume_1325", i64* @_gasrem, align 8
  %n = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1327" = icmp ugt i64 1, %"$gasrem_1326"
  br i1 %"$gascmp_1327", label %"$out_of_gas_1328", label %"$have_gas_1329"

"$out_of_gas_1328":                               ; preds = %"$have_gas_1324"
  call void @_out_of_gas()
  br label %"$have_gas_1329"

"$have_gas_1329":                                 ; preds = %"$out_of_gas_1328", %"$have_gas_1324"
  %"$consume_1330" = sub i64 %"$gasrem_1326", 1
  store i64 %"$consume_1330", i64* @_gasrem, align 8
  %"$adtval_1331_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1331_salloc" = call i8* @_salloc(i8* %"$adtval_1331_load", i64 1)
  %"$adtval_1331" = bitcast i8* %"$adtval_1331_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1332" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1331", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1332", align 1
  %"$adtptr_1333" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1331" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1333", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8, !dbg !93
  %"$gasrem_1334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1335" = icmp ugt i64 1, %"$gasrem_1334"
  br i1 %"$gascmp_1335", label %"$out_of_gas_1336", label %"$have_gas_1337"

"$out_of_gas_1336":                               ; preds = %"$have_gas_1329"
  call void @_out_of_gas()
  br label %"$have_gas_1337"

"$have_gas_1337":                                 ; preds = %"$out_of_gas_1336", %"$have_gas_1329"
  %"$consume_1338" = sub i64 %"$gasrem_1334", 1
  store i64 %"$consume_1338", i64* @_gasrem, align 8
  %"$$x_2_1339" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$n_1340" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8
  %"$adtval_1341_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1341_salloc" = call i8* @_salloc(i8* %"$adtval_1341_load", i64 17)
  %"$adtval_1341" = bitcast i8* %"$adtval_1341_salloc" to %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1342" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1341", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1342", align 1
  %"$adtgep_1343" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1341", i32 0, i32 1
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1339", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1343", align 8
  %"$adtgep_1344" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1341", i32 0, i32 2
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$n_1340", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1344", align 8
  %"$adtptr_1345" = bitcast %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1341" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1345", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8, !dbg !94
  %"$y_1346" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$$y_1346_1347" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1346" to i8*
  %"$_literal_cost_call_1348" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70", i8* %"$$y_1346_1347")
  %"$gasrem_1349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1350" = icmp ugt i64 %"$_literal_cost_call_1348", %"$gasrem_1349"
  br i1 %"$gascmp_1350", label %"$out_of_gas_1351", label %"$have_gas_1352"

"$out_of_gas_1351":                               ; preds = %"$have_gas_1337"
  call void @_out_of_gas()
  br label %"$have_gas_1352"

"$have_gas_1352":                                 ; preds = %"$out_of_gas_1351", %"$have_gas_1337"
  %"$consume_1353" = sub i64 %"$gasrem_1349", %"$_literal_cost_call_1348"
  store i64 %"$consume_1353", i64* @_gasrem, align 8
  %"$execptr_load_1354" = load i8*, i8** @_execptr, align 8
  %"$y_1356" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$update_value_1357" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1356" to i8*
  call void @_update_field(i8* %"$execptr_load_1354", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_1355", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_70", i32 0, i8* null, i8* %"$update_value_1357"), !dbg !95
  %"$gasrem_1358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1359" = icmp ugt i64 1, %"$gasrem_1358"
  br i1 %"$gascmp_1359", label %"$out_of_gas_1360", label %"$have_gas_1361"

"$out_of_gas_1360":                               ; preds = %"$have_gas_1352"
  call void @_out_of_gas()
  br label %"$have_gas_1361"

"$have_gas_1361":                                 ; preds = %"$out_of_gas_1360", %"$have_gas_1352"
  %"$consume_1362" = sub i64 %"$gasrem_1358", 1
  store i64 %"$consume_1362", i64* @_gasrem, align 8
  %z = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1364" = icmp ugt i64 1, %"$gasrem_1363"
  br i1 %"$gascmp_1364", label %"$out_of_gas_1365", label %"$have_gas_1366"

"$out_of_gas_1365":                               ; preds = %"$have_gas_1361"
  call void @_out_of_gas()
  br label %"$have_gas_1366"

"$have_gas_1366":                                 ; preds = %"$out_of_gas_1365", %"$have_gas_1361"
  %"$consume_1367" = sub i64 %"$gasrem_1363", 1
  store i64 %"$consume_1367", i64* @_gasrem, align 8
  %"$n_3" = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1369" = icmp ugt i64 1, %"$gasrem_1368"
  br i1 %"$gascmp_1369", label %"$out_of_gas_1370", label %"$have_gas_1371"

"$out_of_gas_1370":                               ; preds = %"$have_gas_1366"
  call void @_out_of_gas()
  br label %"$have_gas_1371"

"$have_gas_1371":                                 ; preds = %"$out_of_gas_1370", %"$have_gas_1366"
  %"$consume_1372" = sub i64 %"$gasrem_1368", 1
  store i64 %"$consume_1372", i64* @_gasrem, align 8
  %"$execptr_load_1373" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1374" = call i8* @_new_empty_map(i8* %"$execptr_load_1373")
  %"$_new_empty_map_1375" = bitcast i8* %"$_new_empty_map_call_1374" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$_new_empty_map_1375", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_3", align 8, !dbg !96
  %"$gasrem_1376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1377" = icmp ugt i64 1, %"$gasrem_1376"
  br i1 %"$gascmp_1377", label %"$out_of_gas_1378", label %"$have_gas_1379"

"$out_of_gas_1378":                               ; preds = %"$have_gas_1371"
  call void @_out_of_gas()
  br label %"$have_gas_1379"

"$have_gas_1379":                                 ; preds = %"$out_of_gas_1378", %"$have_gas_1371"
  %"$consume_1380" = sub i64 %"$gasrem_1376", 1
  store i64 %"$consume_1380", i64* @_gasrem, align 8
  %sub_n = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1382" = icmp ugt i64 1, %"$gasrem_1381"
  br i1 %"$gascmp_1382", label %"$out_of_gas_1383", label %"$have_gas_1384"

"$out_of_gas_1383":                               ; preds = %"$have_gas_1379"
  call void @_out_of_gas()
  br label %"$have_gas_1384"

"$have_gas_1384":                                 ; preds = %"$out_of_gas_1383", %"$have_gas_1379"
  %"$consume_1385" = sub i64 %"$gasrem_1381", 1
  store i64 %"$consume_1385", i64* @_gasrem, align 8
  %"$execptr_load_1386" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1387" = call i8* @_new_empty_map(i8* %"$execptr_load_1386")
  %"$_new_empty_map_1388" = bitcast i8* %"$_new_empty_map_call_1387" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$_new_empty_map_1388", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8, !dbg !97
  %"$gasrem_1389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1390" = icmp ugt i64 1, %"$gasrem_1389"
  br i1 %"$gascmp_1390", label %"$out_of_gas_1391", label %"$have_gas_1392"

"$out_of_gas_1391":                               ; preds = %"$have_gas_1384"
  call void @_out_of_gas()
  br label %"$have_gas_1392"

"$have_gas_1392":                                 ; preds = %"$out_of_gas_1391", %"$have_gas_1384"
  %"$consume_1393" = sub i64 %"$gasrem_1389", 1
  store i64 %"$consume_1393", i64* @_gasrem, align 8
  %sub_k = alloca %Uint128, align 8
  %"$gasrem_1394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1395" = icmp ugt i64 1, %"$gasrem_1394"
  br i1 %"$gascmp_1395", label %"$out_of_gas_1396", label %"$have_gas_1397"

"$out_of_gas_1396":                               ; preds = %"$have_gas_1392"
  call void @_out_of_gas()
  br label %"$have_gas_1397"

"$have_gas_1397":                                 ; preds = %"$out_of_gas_1396", %"$have_gas_1392"
  %"$consume_1398" = sub i64 %"$gasrem_1394", 1
  store i64 %"$consume_1398", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %sub_k, align 8, !dbg !98
  %"$gasrem_1399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1400" = icmp ugt i64 1, %"$gasrem_1399"
  br i1 %"$gascmp_1400", label %"$out_of_gas_1401", label %"$have_gas_1402"

"$out_of_gas_1401":                               ; preds = %"$have_gas_1397"
  call void @_out_of_gas()
  br label %"$have_gas_1402"

"$have_gas_1402":                                 ; preds = %"$out_of_gas_1401", %"$have_gas_1397"
  %"$consume_1403" = sub i64 %"$gasrem_1399", 1
  store i64 %"$consume_1403", i64* @_gasrem, align 8
  %sub_res = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$sub_n_1404" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$$sub_n_1404_1405" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_n_1404" to i8*
  %"$_lengthof_call_1406" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_78", i8* %"$$sub_n_1404_1405")
  %"$gasadd_1407" = add i64 1, %"$_lengthof_call_1406"
  %"$gasrem_1408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1409" = icmp ugt i64 %"$gasadd_1407", %"$gasrem_1408"
  br i1 %"$gascmp_1409", label %"$out_of_gas_1410", label %"$have_gas_1411"

"$out_of_gas_1410":                               ; preds = %"$have_gas_1402"
  call void @_out_of_gas()
  br label %"$have_gas_1411"

"$have_gas_1411":                                 ; preds = %"$out_of_gas_1410", %"$have_gas_1402"
  %"$consume_1412" = sub i64 %"$gasrem_1408", %"$gasadd_1407"
  store i64 %"$consume_1412", i64* @_gasrem, align 8
  %"$execptr_load_1413" = load i8*, i8** @_execptr, align 8
  %"$sub_n_1414" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$$sub_n_1414_1415" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_n_1414" to i8*
  %"$put_sub_k_1416" = alloca %Uint128, align 8
  %"$sub_k_1417" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1417", %Uint128* %"$put_sub_k_1416", align 8
  %"$$put_sub_k_1416_1418" = bitcast %Uint128* %"$put_sub_k_1416" to i8*
  %"$$x_2_1419" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$$$x_2_1419_1420" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1419" to i8*
  %"$put_call_1421" = call i8* @_put(i8* %"$execptr_load_1413", %_TyDescrTy_Typ* @"$TyDescr_Map_78", i8* %"$$sub_n_1414_1415", i8* %"$$put_sub_k_1416_1418", i8* %"$$$x_2_1419_1420"), !dbg !99
  %"$put_1422" = bitcast i8* %"$put_call_1421" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$put_1422", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8, !dbg !99
  %"$$n_3_1423" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_3", align 8
  %"$$$n_3_1423_1424" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$n_3_1423" to i8*
  %"$_lengthof_call_1425" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_79", i8* %"$$$n_3_1423_1424")
  %"$gasadd_1426" = add i64 1, %"$_lengthof_call_1425"
  %"$gasrem_1427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1428" = icmp ugt i64 %"$gasadd_1426", %"$gasrem_1427"
  br i1 %"$gascmp_1428", label %"$out_of_gas_1429", label %"$have_gas_1430"

"$out_of_gas_1429":                               ; preds = %"$have_gas_1411"
  call void @_out_of_gas()
  br label %"$have_gas_1430"

"$have_gas_1430":                                 ; preds = %"$out_of_gas_1429", %"$have_gas_1411"
  %"$consume_1431" = sub i64 %"$gasrem_1427", %"$gasadd_1426"
  store i64 %"$consume_1431", i64* @_gasrem, align 8
  %"$execptr_load_1432" = load i8*, i8** @_execptr, align 8
  %"$$n_3_1433" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_3", align 8
  %"$$$n_3_1433_1434" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$n_3_1433" to i8*
  %"$put_sub_k_1435" = alloca %Uint128, align 8
  %"$sub_k_1436" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1436", %Uint128* %"$put_sub_k_1435", align 8
  %"$$put_sub_k_1435_1437" = bitcast %Uint128* %"$put_sub_k_1435" to i8*
  %"$sub_res_1438" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8
  %"$$sub_res_1438_1439" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_res_1438" to i8*
  %"$put_call_1440" = call i8* @_put(i8* %"$execptr_load_1432", %_TyDescrTy_Typ* @"$TyDescr_Map_79", i8* %"$$$n_3_1433_1434", i8* %"$$put_sub_k_1435_1437", i8* %"$$sub_res_1438_1439"), !dbg !100
  %"$put_1441" = bitcast i8* %"$put_call_1440" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$put_1441", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8, !dbg !100
  %"$z_1442" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$$z_1442_1443" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1442" to i8*
  %"$_literal_cost_call_1444" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_79", i8* %"$$z_1442_1443")
  %"$gasrem_1445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1446" = icmp ugt i64 %"$_literal_cost_call_1444", %"$gasrem_1445"
  br i1 %"$gascmp_1446", label %"$out_of_gas_1447", label %"$have_gas_1448"

"$out_of_gas_1447":                               ; preds = %"$have_gas_1430"
  call void @_out_of_gas()
  br label %"$have_gas_1448"

"$have_gas_1448":                                 ; preds = %"$out_of_gas_1447", %"$have_gas_1430"
  %"$consume_1449" = sub i64 %"$gasrem_1445", %"$_literal_cost_call_1444"
  store i64 %"$consume_1449", i64* @_gasrem, align 8
  %"$execptr_load_1450" = load i8*, i8** @_execptr, align 8
  %"$z_1452" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$update_value_1453" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1452" to i8*
  call void @_update_field(i8* %"$execptr_load_1450", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1451", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_79", i32 0, i8* null, i8* %"$update_value_1453"), !dbg !101
  %"$gasrem_1454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1455" = icmp ugt i64 1, %"$gasrem_1454"
  br i1 %"$gascmp_1455", label %"$out_of_gas_1456", label %"$have_gas_1457"

"$out_of_gas_1456":                               ; preds = %"$have_gas_1448"
  call void @_out_of_gas()
  br label %"$have_gas_1457"

"$have_gas_1457":                                 ; preds = %"$out_of_gas_1456", %"$have_gas_1448"
  %"$consume_1458" = sub i64 %"$gasrem_1454", 1
  store i64 %"$consume_1458", i64* @_gasrem, align 8
  %k1 = alloca %Uint128, align 8
  %"$gasrem_1459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1460" = icmp ugt i64 1, %"$gasrem_1459"
  br i1 %"$gascmp_1460", label %"$out_of_gas_1461", label %"$have_gas_1462"

"$out_of_gas_1461":                               ; preds = %"$have_gas_1457"
  call void @_out_of_gas()
  br label %"$have_gas_1462"

"$have_gas_1462":                                 ; preds = %"$out_of_gas_1461", %"$have_gas_1457"
  %"$consume_1463" = sub i64 %"$gasrem_1459", 1
  store i64 %"$consume_1463", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %k1, align 8, !dbg !102
  %"$gasrem_1464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1465" = icmp ugt i64 1, %"$gasrem_1464"
  br i1 %"$gascmp_1465", label %"$out_of_gas_1466", label %"$have_gas_1467"

"$out_of_gas_1466":                               ; preds = %"$have_gas_1462"
  call void @_out_of_gas()
  br label %"$have_gas_1467"

"$have_gas_1467":                                 ; preds = %"$out_of_gas_1466", %"$have_gas_1462"
  %"$consume_1468" = sub i64 %"$gasrem_1464", 1
  store i64 %"$consume_1468", i64* @_gasrem, align 8
  %k2 = alloca %Uint128, align 8
  %"$gasrem_1469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1470" = icmp ugt i64 1, %"$gasrem_1469"
  br i1 %"$gascmp_1470", label %"$out_of_gas_1471", label %"$have_gas_1472"

"$out_of_gas_1471":                               ; preds = %"$have_gas_1467"
  call void @_out_of_gas()
  br label %"$have_gas_1472"

"$have_gas_1472":                                 ; preds = %"$out_of_gas_1471", %"$have_gas_1467"
  %"$consume_1473" = sub i64 %"$gasrem_1469", 1
  store i64 %"$consume_1473", i64* @_gasrem, align 8
  store %Uint128 { i128 42 }, %Uint128* %k2, align 8, !dbg !103
  %"$$x_2_1474" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$$$x_2_1474_1475" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1474" to i8*
  %"$_literal_cost_call_1476" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_75", i8* %"$$$x_2_1474_1475")
  %"$gasadd_1477" = add i64 %"$_literal_cost_call_1476", 2
  %"$gasrem_1478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1479" = icmp ugt i64 %"$gasadd_1477", %"$gasrem_1478"
  br i1 %"$gascmp_1479", label %"$out_of_gas_1480", label %"$have_gas_1481"

"$out_of_gas_1480":                               ; preds = %"$have_gas_1472"
  call void @_out_of_gas()
  br label %"$have_gas_1481"

"$have_gas_1481":                                 ; preds = %"$out_of_gas_1480", %"$have_gas_1472"
  %"$consume_1482" = sub i64 %"$gasrem_1478", %"$gasadd_1477"
  store i64 %"$consume_1482", i64* @_gasrem, align 8
  %"$indices_buf_1483_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1483_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1483_salloc_load", i64 32)
  %"$indices_buf_1483_salloc" = bitcast i8* %"$indices_buf_1483_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1483" = bitcast [32 x i8]* %"$indices_buf_1483_salloc" to i8*
  %"$k1_1484" = load %Uint128, %Uint128* %k1, align 8
  %"$indices_gep_1485" = getelementptr i8, i8* %"$indices_buf_1483", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1485" to %Uint128*
  store %Uint128 %"$k1_1484", %Uint128* %indices_cast, align 8
  %"$k2_1486" = load %Uint128, %Uint128* %k2, align 8
  %"$indices_gep_1487" = getelementptr i8, i8* %"$indices_buf_1483", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1487" to %Uint128*
  store %Uint128 %"$k2_1486", %Uint128* %indices_cast1, align 8
  %"$execptr_load_1488" = load i8*, i8** @_execptr, align 8
  %"$$x_2_1490" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_2", align 8
  %"$update_value_1491" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_2_1490" to i8*
  call void @_update_field(i8* %"$execptr_load_1488", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1489", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_79", i32 2, i8* %"$indices_buf_1483", i8* %"$update_value_1491"), !dbg !104
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @AssignTest(i8* %0) !dbg !105 {
entry:
  %"$_amount_1493" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1494" = bitcast i8* %"$_amount_1493" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1494", align 8
  %"$_origin_1495" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1496" = bitcast i8* %"$_origin_1495" to [20 x i8]*
  %"$_sender_1497" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1498" = bitcast i8* %"$_sender_1497" to [20 x i8]*
  call void @"$AssignTest_1286"(%Uint128 %_amount, [20 x i8]* %"$_origin_1496", [20 x i8]* %"$_sender_1498"), !dbg !106
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
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 25, column: 42, scope: !10)
!12 = !DILocation(line: 26, column: 83, scope: !10)
!13 = !DILocation(line: 27, column: 82, scope: !10)
!14 = !DILocation(line: 28, column: 73, scope: !10)
!15 = !DILocation(line: 29, column: 83, scope: !10)
!16 = !DILocation(line: 30, column: 100, scope: !10)
!17 = !DILocation(line: 31, column: 89, scope: !10)
!18 = !DILocation(line: 32, column: 36, scope: !10)
!19 = !DILocation(line: 33, column: 41, scope: !10)
!20 = !DILocation(line: 34, column: 63, scope: !10)
!21 = !DILocation(line: 36, column: 45, scope: !10)
!22 = !DILocation(line: 37, column: 45, scope: !10)
!23 = !DILocation(line: 38, column: 45, scope: !10)
!24 = !DILocation(line: 39, column: 44, scope: !10)
!25 = !DILocation(line: 40, column: 54, scope: !10)
!26 = !DILocation(line: 41, column: 45, scope: !10)
!27 = !DILocation(line: 42, column: 65, scope: !10)
!28 = !DILocation(line: 43, column: 42, scope: !10)
!29 = !DILocation(line: 44, column: 57, scope: !10)
!30 = !DILocation(line: 44, column: 65, scope: !10)
!31 = !DILocation(line: 45, column: 78, scope: !10)
!32 = !DILocation(line: 46, column: 43, scope: !10)
!33 = !DILocation(line: 47, column: 75, scope: !10)
!34 = !DILocation(line: 48, column: 43, scope: !10)
!35 = !DILocation(line: 49, column: 50, scope: !10)
!36 = !DILocation(line: 51, column: 38, scope: !10)
!37 = !DILocation(line: 52, column: 38, scope: !10)
!38 = !DILocation(line: 53, column: 39, scope: !10)
!39 = distinct !DISubprogram(name: "RemoteReadsTest", linkageName: "RemoteReadsTest", scope: !2, file: !2, line: 55, type: !6, scopeLine: 55, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DILocation(line: 67, column: 3, scope: !39)
!41 = !DILocation(line: 68, column: 3, scope: !39)
!42 = !DILocation(line: 70, column: 3, scope: !39)
!43 = !DILocation(line: 71, column: 3, scope: !39)
!44 = !DILocation(line: 73, column: 3, scope: !39)
!45 = !DILocation(line: 74, column: 3, scope: !39)
!46 = !DILocation(line: 76, column: 3, scope: !39)
!47 = !DILocation(line: 77, column: 3, scope: !39)
!48 = !DILocation(line: 79, column: 3, scope: !39)
!49 = !DILocation(line: 80, column: 3, scope: !39)
!50 = !DILocation(line: 82, column: 3, scope: !39)
!51 = !DILocation(line: 83, column: 3, scope: !39)
!52 = !DILocation(line: 85, column: 3, scope: !39)
!53 = !DILocation(line: 86, column: 3, scope: !39)
!54 = !DILocation(line: 88, column: 3, scope: !39)
!55 = !DILocation(line: 89, column: 3, scope: !39)
!56 = !DILocation(line: 91, column: 3, scope: !39)
!57 = !DILocation(line: 92, column: 3, scope: !39)
!58 = !DILocation(line: 94, column: 3, scope: !39)
!59 = !DILocation(line: 95, column: 3, scope: !39)
!60 = !DILocation(line: 97, column: 7, scope: !39)
!61 = !DILocation(line: 98, column: 3, scope: !39)
!62 = !DILocation(line: 99, column: 3, scope: !39)
!63 = !DILocation(line: 101, column: 3, scope: !39)
!64 = !DILocation(line: 102, column: 3, scope: !39)
!65 = !DILocation(line: 104, column: 3, scope: !39)
!66 = !DILocation(line: 105, column: 3, scope: !39)
!67 = !DILocation(line: 107, column: 3, scope: !39)
!68 = !DILocation(line: 108, column: 3, scope: !39)
!69 = distinct !DISubprogram(name: "RemoteReadsTest", linkageName: "RemoteReadsTest", scope: !2, file: !2, line: 55, type: !6, scopeLine: 55, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 55, column: 12, scope: !69)
!71 = distinct !DISubprogram(name: "RemoteReadsADTTest", linkageName: "RemoteReadsADTTest", scope: !2, file: !2, line: 113, type: !6, scopeLine: 113, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = distinct !DISubprogram(name: "RemoteReadsADTTest", linkageName: "RemoteReadsADTTest", scope: !2, file: !2, line: 113, type: !6, scopeLine: 113, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!73 = !DILocation(line: 113, column: 12, scope: !72)
!74 = distinct !DISubprogram(name: "OutgoingMsgTest", linkageName: "OutgoingMsgTest", scope: !2, file: !2, line: 124, type: !6, scopeLine: 124, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!75 = !DILocation(line: 125, column: 9, scope: !74)
!76 = !DILocation(line: 129, column: 18, scope: !74)
!77 = !DILocation(line: 130, column: 10, scope: !74)
!78 = !DILocation(line: 131, column: 3, scope: !74)
!79 = !DILocation(line: 132, column: 8, scope: !74)
!80 = !DILocation(line: 134, column: 3, scope: !74)
!81 = !DILocation(line: 135, column: 8, scope: !74)
!82 = !DILocation(line: 137, column: 3, scope: !74)
!83 = distinct !DISubprogram(name: "OutgoingMsgTest", linkageName: "OutgoingMsgTest", scope: !2, file: !2, line: 124, type: !6, scopeLine: 124, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!84 = !DILocation(line: 124, column: 12, scope: !83)
!85 = distinct !DISubprogram(name: "ExceptionTest", linkageName: "ExceptionTest", scope: !2, file: !2, line: 141, type: !6, scopeLine: 141, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!86 = !DILocation(line: 142, column: 7, scope: !85)
!87 = !DILocation(line: 144, column: 3, scope: !85)
!88 = distinct !DISubprogram(name: "ExceptionTest", linkageName: "ExceptionTest", scope: !2, file: !2, line: 141, type: !6, scopeLine: 141, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!89 = !DILocation(line: 141, column: 12, scope: !88)
!90 = distinct !DISubprogram(name: "AssignTest", linkageName: "AssignTest", scope: !2, file: !2, line: 147, type: !6, scopeLine: 147, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!91 = !DILocation(line: 148, column: 7, scope: !90)
!92 = !DILocation(line: 149, column: 3, scope: !90)
!93 = !DILocation(line: 150, column: 15, scope: !90)
!94 = !DILocation(line: 151, column: 7, scope: !90)
!95 = !DILocation(line: 152, column: 3, scope: !90)
!96 = !DILocation(line: 153, column: 15, scope: !90)
!97 = !DILocation(line: 154, column: 19, scope: !90)
!98 = !DILocation(line: 155, column: 19, scope: !90)
!99 = !DILocation(line: 156, column: 21, scope: !90)
!100 = !DILocation(line: 157, column: 7, scope: !90)
!101 = !DILocation(line: 158, column: 3, scope: !90)
!102 = !DILocation(line: 159, column: 8, scope: !90)
!103 = !DILocation(line: 160, column: 8, scope: !90)
!104 = !DILocation(line: 161, column: 3, scope: !90)
!105 = distinct !DISubprogram(name: "AssignTest", linkageName: "AssignTest", scope: !2, file: !2, line: 147, type: !6, scopeLine: 147, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!106 = !DILocation(line: 147, column: 12, scope: !105)
