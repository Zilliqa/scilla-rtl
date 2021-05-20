

; gas_remaining: 4002000
; ModuleID = 'RRContract'
source_filename = "RRContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_27" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_59" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_58"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_58" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_60"**, %"$TyDescrTy_ADTTyp_59"* }
%"$TyDescrTy_ADTTyp_Constr_60" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_71" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrFieldTyp_80" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_81" = type { i32, %"$TyDescr_AddrFieldTyp_80"* }
%Uint32 = type { i32 }
%"$ParamDescr_1559" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1560" = type { %ParamDescrString, i32, %"$ParamDescr_1559"* }
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
@"$TyDescr_Int32_Prim_28" = global %"$TyDescrTy_PrimTyp_27" zeroinitializer
@"$TyDescr_Int32_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Int32_Prim_28" to i8*) }
@"$TyDescr_Uint32_Prim_30" = global %"$TyDescrTy_PrimTyp_27" { i32 1, i32 0 }
@"$TyDescr_Uint32_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Uint32_Prim_30" to i8*) }
@"$TyDescr_Int64_Prim_32" = global %"$TyDescrTy_PrimTyp_27" { i32 0, i32 1 }
@"$TyDescr_Int64_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Int64_Prim_32" to i8*) }
@"$TyDescr_Uint64_Prim_34" = global %"$TyDescrTy_PrimTyp_27" { i32 1, i32 1 }
@"$TyDescr_Uint64_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Uint64_Prim_34" to i8*) }
@"$TyDescr_Int128_Prim_36" = global %"$TyDescrTy_PrimTyp_27" { i32 0, i32 2 }
@"$TyDescr_Int128_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Int128_Prim_36" to i8*) }
@"$TyDescr_Uint128_Prim_38" = global %"$TyDescrTy_PrimTyp_27" { i32 1, i32 2 }
@"$TyDescr_Uint128_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Uint128_Prim_38" to i8*) }
@"$TyDescr_Int256_Prim_40" = global %"$TyDescrTy_PrimTyp_27" { i32 0, i32 3 }
@"$TyDescr_Int256_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Int256_Prim_40" to i8*) }
@"$TyDescr_Uint256_Prim_42" = global %"$TyDescrTy_PrimTyp_27" { i32 1, i32 3 }
@"$TyDescr_Uint256_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Uint256_Prim_42" to i8*) }
@"$TyDescr_String_Prim_44" = global %"$TyDescrTy_PrimTyp_27" { i32 2, i32 0 }
@"$TyDescr_String_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_String_Prim_44" to i8*) }
@"$TyDescr_Bnum_Prim_46" = global %"$TyDescrTy_PrimTyp_27" { i32 3, i32 0 }
@"$TyDescr_Bnum_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Bnum_Prim_46" to i8*) }
@"$TyDescr_Message_Prim_48" = global %"$TyDescrTy_PrimTyp_27" { i32 4, i32 0 }
@"$TyDescr_Message_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Message_Prim_48" to i8*) }
@"$TyDescr_Event_Prim_50" = global %"$TyDescrTy_PrimTyp_27" { i32 5, i32 0 }
@"$TyDescr_Event_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Event_Prim_50" to i8*) }
@"$TyDescr_Exception_Prim_52" = global %"$TyDescrTy_PrimTyp_27" { i32 6, i32 0 }
@"$TyDescr_Exception_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Exception_Prim_52" to i8*) }
@"$TyDescr_Bystr_Prim_54" = global %"$TyDescrTy_PrimTyp_27" { i32 7, i32 0 }
@"$TyDescr_Bystr_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Bystr_Prim_54" to i8*) }
@"$TyDescr_Bystr20_Prim_56" = global %"$TyDescrTy_PrimTyp_27" { i32 8, i32 20 }
@"$TyDescr_Bystr20_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_27"* @"$TyDescr_Bystr20_Prim_56" to i8*) }
@"$TyDescr_ADT_List_Message_61" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_List_Message_ADTTyp_Specl_104" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_62" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_113" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_63" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_122" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_end_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_131" to i8*) }
@"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_140" to i8*) }
@"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_66" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_149" to i8*) }
@"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_161" to i8*) }
@"$TyDescr_ADT_Option_Bool_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_Option_Bool_ADTTyp_Specl_170" to i8*) }
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_182" to i8*) }
@"$TyDescr_ADT_Bool_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_Bool_ADTTyp_Specl_194" to i8*) }
@"$TyDescr_Map_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_71"* @"$TyDescr_MapTyp_197" to i8*) }
@"$TyDescr_Map_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_71"* @"$TyDescr_MapTyp_198" to i8*) }
@"$TyDescr_Map_74" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_71"* @"$TyDescr_MapTyp_199" to i8*) }
@"$TyDescr_Map_75" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_71"* @"$TyDescr_MapTyp_200" to i8*) }
@"$TyDescr_Map_76" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_71"* @"$TyDescr_MapTyp_201" to i8*) }
@"$TyDescr_Map_77" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_71"* @"$TyDescr_MapTyp_202" to i8*) }
@"$TyDescr_Map_78" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_71"* @"$TyDescr_MapTyp_203" to i8*) }
@"$TyDescr_Map_79" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_71"* @"$TyDescr_MapTyp_204" to i8*) }
@"$TyDescr_Addr_82" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_207" to i8*) }
@"$TyDescr_Addr_83" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_210" to i8*) }
@"$TyDescr_Addr_84" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_213" to i8*) }
@"$TyDescr_Addr_85" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_219" to i8*) }
@"$TyDescr_Addr_86" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_222" to i8*) }
@"$TyDescr_Addr_87" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_225" to i8*) }
@"$TyDescr_Addr_88" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_228" to i8*) }
@"$TyDescr_Addr_89" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_231" to i8*) }
@"$TyDescr_Addr_90" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_234" to i8*) }
@"$TyDescr_Addr_91" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_237" to i8*) }
@"$TyDescr_Addr_92" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_244" to i8*) }
@"$TyDescr_Addr_93" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_246" to i8*) }
@"$TyDescr_Addr_94" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_81"* @"$TyDescr_AddrFields_247" to i8*) }
@"$TyDescr_List_ADTTyp_95" = unnamed_addr constant %"$TyDescrTy_ADTTyp_59" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_142", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 5, %"$TyDescrTy_ADTTyp_Specl_58"** getelementptr inbounds ([5 x %"$TyDescrTy_ADTTyp_Specl_58"*], [5 x %"$TyDescrTy_ADTTyp_Specl_58"*]* @"$TyDescr_List_ADTTyp_m_specls_141", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_96" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_49", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_61"]
@"$TyDescr_ADT_Cons_97" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_98" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_97", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_96", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_99" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_100" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_101" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_100", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_99", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_102" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_60"*] [%"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_98", %"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_101"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_103" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_49"]
@"$TyDescr_List_Message_ADTTyp_Specl_104" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_58" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_103", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_60"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_60"*], [2 x %"$TyDescrTy_ADTTyp_Constr_60"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_102", i32 0, i32 0), %"$TyDescrTy_ADTTyp_59"* @"$TyDescr_List_ADTTyp_95" }
@"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_105" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_83", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_62"]
@"$TyDescr_ADT_Cons_106" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_107" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_106", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_105", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_108" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_109" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_109", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_108", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_constrs_111" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_60"*] [%"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_107", %"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_110"]
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_TArgs_112" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_83"]
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_58" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_TArgs_112", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_60"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_60"*], [2 x %"$TyDescrTy_ADTTyp_Constr_60"*]* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_constrs_111", i32 0, i32 0), %"$TyDescrTy_ADTTyp_59"* @"$TyDescr_List_ADTTyp_95" }
@"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_114" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_84", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_63"]
@"$TyDescr_ADT_Cons_115" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_115", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_114", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_117" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_118" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_118", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_117", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_constrs_120" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_60"*] [%"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_116", %"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_119"]
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_TArgs_121" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_84"]
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_58" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_TArgs_121", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_60"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_60"*], [2 x %"$TyDescrTy_ADTTyp_Constr_60"*]* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_constrs_120", i32 0, i32 0), %"$TyDescrTy_ADTTyp_59"* @"$TyDescr_List_ADTTyp_95" }
@"$TyDescr_List_Cons_ByStr20_with_end_Constr_m_args_123" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_94", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_64"]
@"$TyDescr_ADT_Cons_124" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_end_ADTTyp_Constr_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_124", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_end_Constr_m_args_123", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_end_Constr_m_args_126" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_127" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_end_ADTTyp_Constr_128" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_127", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_end_Constr_m_args_126", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_constrs_129" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_60"*] [%"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_List_Cons_ByStr20_with_end_ADTTyp_Constr_125", %"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_List_Nil_ByStr20_with_end_ADTTyp_Constr_128"]
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_TArgs_130" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_94"]
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_58" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_TArgs_130", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_60"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_60"*], [2 x %"$TyDescrTy_ADTTyp_Constr_60"*]* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_constrs_129", i32 0, i32 0), %"$TyDescrTy_ADTTyp_59"* @"$TyDescr_List_ADTTyp_95" }
@"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_132" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_65"]
@"$TyDescr_ADT_Cons_133" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_134" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_133", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_132", i32 0, i32 0) }
@"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_135" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_136" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_137" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_136", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_135", i32 0, i32 0) }
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_138" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_60"*] [%"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_134", %"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_137"]
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_139" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69"]
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_140" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_58" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_139", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_60"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_60"*], [2 x %"$TyDescrTy_ADTTyp_Constr_60"*]* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_138", i32 0, i32 0), %"$TyDescrTy_ADTTyp_59"* @"$TyDescr_List_ADTTyp_95" }
@"$TyDescr_List_ADTTyp_m_specls_141" = unnamed_addr constant [5 x %"$TyDescrTy_ADTTyp_Specl_58"*] [%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_List_Message_ADTTyp_Specl_104", %"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_113", %"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_122", %"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_131", %"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_140"]
@"$TyDescr_ADT_List_142" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_143" = unnamed_addr constant %"$TyDescrTy_ADTTyp_59" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_151", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_58"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_58"*], [1 x %"$TyDescrTy_ADTTyp_Specl_58"*]* @"$TyDescr_Pair_ADTTyp_m_specls_150", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_144" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_94", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69"]
@"$TyDescr_ADT_Pair_145" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_146" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_145", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_144", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_147" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_60"*] [%"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_146"]
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_148" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_94", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69"]
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_149" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_58" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_148", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_60"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_60"*], [1 x %"$TyDescrTy_ADTTyp_Constr_60"*]* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_147", i32 0, i32 0), %"$TyDescrTy_ADTTyp_59"* @"$TyDescr_Pair_ADTTyp_143" }
@"$TyDescr_Pair_ADTTyp_m_specls_150" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_58"*] [%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_149"]
@"$TyDescr_ADT_Pair_151" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Option_ADTTyp_152" = unnamed_addr constant %"$TyDescrTy_ADTTyp_59" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_172", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_58"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_58"*], [2 x %"$TyDescrTy_ADTTyp_Specl_58"*]* @"$TyDescr_Option_ADTTyp_m_specls_171", i32 0, i32 0) }
@"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_153" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_78"]
@"$TyDescr_ADT_Some_154" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_155" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_154", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_153", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_156" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_157" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_158" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_157", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_156", i32 0, i32 0) }
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_constrs_159" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_60"*] [%"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_155", %"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_158"]
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_TArgs_160" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_78"]
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_161" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_58" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_TArgs_160", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_60"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_60"*], [2 x %"$TyDescrTy_ADTTyp_Constr_60"*]* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_constrs_159", i32 0, i32 0), %"$TyDescrTy_ADTTyp_59"* @"$TyDescr_Option_ADTTyp_152" }
@"$TyDescr_Option_Some_Bool_Constr_m_args_162" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70"]
@"$TyDescr_ADT_Some_163" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_164" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_163", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_162", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_165" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_166" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_167" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_166", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_165", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_168" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_60"*] [%"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_164", %"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_167"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_169" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_170" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_58" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_169", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_60"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_60"*], [2 x %"$TyDescrTy_ADTTyp_Constr_60"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_168", i32 0, i32 0), %"$TyDescrTy_ADTTyp_59"* @"$TyDescr_Option_ADTTyp_152" }
@"$TyDescr_Option_ADTTyp_m_specls_171" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_58"*] [%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_161", %"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_Option_Bool_ADTTyp_Specl_170"]
@"$TyDescr_ADT_Option_172" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_173" = unnamed_addr constant %"$TyDescrTy_ADTTyp_59" { %TyDescrString { i8* getelementptr inbounds ([53 x i8], [53 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_184", i32 0, i32 0), i32 53 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_58"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_58"*], [1 x %"$TyDescrTy_ADTTyp_Specl_58"*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_m_specls_183", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_Constr_m_args_174" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_94"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_175" = unnamed_addr constant [51 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.Address1"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_ADTTyp_Constr_176" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_175", i32 0, i32 0), i32 51 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_Constr_m_args_174", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_Constr_m_args_177" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_90"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_178" = unnamed_addr constant [51 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.Address2"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_ADTTyp_Constr_179" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_178", i32 0, i32 0), i32 51 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_Constr_m_args_177", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_180" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_60"*] [%"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_ADTTyp_Constr_176", %"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_ADTTyp_Constr_179"]
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_181" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_182" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_58" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_181", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_60"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_60"*], [2 x %"$TyDescrTy_ADTTyp_Constr_60"*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_180", i32 0, i32 0), %"$TyDescrTy_ADTTyp_59"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_173" }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_m_specls_183" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_58"*] [%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_182"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_184" = unnamed_addr constant [53 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.AddressADT"
@"$TyDescr_Bool_ADTTyp_185" = unnamed_addr constant %"$TyDescrTy_ADTTyp_59" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_196", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_58"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_58"*], [1 x %"$TyDescrTy_ADTTyp_Specl_58"*]* @"$TyDescr_Bool_ADTTyp_m_specls_195", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_186" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_187" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_188" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_187", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_186", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_189" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_190" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_191" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_60" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_190", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_189", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_192" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_60"*] [%"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_Bool_True_ADTTyp_Constr_188", %"$TyDescrTy_ADTTyp_Constr_60"* @"$TyDescr_Bool_False_ADTTyp_Constr_191"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_193" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_194" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_58" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_193", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_60"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_60"*], [2 x %"$TyDescrTy_ADTTyp_Constr_60"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_192", i32 0, i32 0), %"$TyDescrTy_ADTTyp_59"* @"$TyDescr_Bool_ADTTyp_185" }
@"$TyDescr_Bool_ADTTyp_m_specls_195" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_58"*] [%"$TyDescrTy_ADTTyp_Specl_58"* @"$TyDescr_Bool_ADTTyp_Specl_194"]
@"$TyDescr_ADT_Bool_196" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_197" = unnamed_addr constant %"$TyDescr_MapTyp_71" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69" }
@"$TyDescr_MapTyp_198" = unnamed_addr constant %"$TyDescr_MapTyp_71" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", %_TyDescrTy_Typ* @"$TyDescr_Map_72" }
@"$TyDescr_MapTyp_199" = unnamed_addr constant %"$TyDescr_MapTyp_71" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_57" }
@"$TyDescr_MapTyp_200" = unnamed_addr constant %"$TyDescr_MapTyp_71" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_31", %_TyDescrTy_Typ* @"$TyDescr_Map_76" }
@"$TyDescr_MapTyp_201" = unnamed_addr constant %"$TyDescr_MapTyp_71" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_57", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70" }
@"$TyDescr_MapTyp_202" = unnamed_addr constant %"$TyDescr_MapTyp_71" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_31", %_TyDescrTy_Typ* @"$TyDescr_Map_78" }
@"$TyDescr_MapTyp_203" = unnamed_addr constant %"$TyDescr_MapTyp_71" { %_TyDescrTy_Typ* @"$TyDescr_Addr_94", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70" }
@"$TyDescr_MapTyp_204" = unnamed_addr constant %"$TyDescr_MapTyp_71" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }
@"$TyDescr_AddrField_205" = unnamed_addr constant [1 x i8] c"h"
@"$TyDescr_AddrFields_206" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_80"] [%"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_205", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Map_72" }]
@"$TyDescr_AddrFields_207" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 1, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_80"], [1 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_206", i32 0, i32 0) }
@"$TyDescr_AddrField_208" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_209" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_80"] [%"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_208", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69" }]
@"$TyDescr_AddrFields_210" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 1, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_80"], [1 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_209", i32 0, i32 0) }
@"$TyDescr_AddrField_211" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_212" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_80"] [%"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_211", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_39" }]
@"$TyDescr_AddrFields_213" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 1, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_80"], [1 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_212", i32 0, i32 0) }
@"$TyDescr_AddrField_214" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrField_215" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrField_216" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrField_217" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_218" = unnamed_addr constant [4 x %"$TyDescr_AddrFieldTyp_80"] [%"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_214", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_215", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_78" }, %"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_216", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_77" }, %"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_217", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_31" }]
@"$TyDescr_AddrFields_219" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 4, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([4 x %"$TyDescr_AddrFieldTyp_80"], [4 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_218", i32 0, i32 0) }
@"$TyDescr_AddrField_220" = unnamed_addr constant [9 x i8] c"other_map"
@"$TyDescr_AddrFields_221" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_80"] [%"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$TyDescr_AddrField_220", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_Map_74" }]
@"$TyDescr_AddrFields_222" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 1, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_80"], [1 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_221", i32 0, i32 0) }
@"$TyDescr_AddrField_223" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrFields_224" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_80"] [%"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_223", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_75" }]
@"$TyDescr_AddrFields_225" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 1, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_80"], [1 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_224", i32 0, i32 0) }
@"$TyDescr_AddrField_226" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrFields_227" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_80"] [%"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_226", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_76" }]
@"$TyDescr_AddrFields_228" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 1, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_80"], [1 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_227", i32 0, i32 0) }
@"$TyDescr_AddrField_229" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_230" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_80"] [%"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_229", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_57" }]
@"$TyDescr_AddrFields_231" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 1, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_80"], [1 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_230", i32 0, i32 0) }
@"$TyDescr_AddrField_232" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_233" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_80"] [%"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_232", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }]
@"$TyDescr_AddrFields_234" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 1, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_80"], [1 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_233", i32 0, i32 0) }
@"$TyDescr_AddrField_235" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_236" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_80"] [%"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_235", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_31" }]
@"$TyDescr_AddrFields_237" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 1, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_80"], [1 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_236", i32 0, i32 0) }
@"$TyDescr_AddrField_238" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrField_239" = unnamed_addr constant [9 x i8] c"other_map"
@"$TyDescr_AddrField_240" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrField_241" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrField_242" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_243" = unnamed_addr constant [5 x %"$TyDescr_AddrFieldTyp_80"] [%"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_238", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$TyDescr_AddrField_239", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_Map_79" }, %"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_240", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_78" }, %"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_241", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_77" }, %"$TyDescr_AddrFieldTyp_80" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_242", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_31" }]
@"$TyDescr_AddrFields_244" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 5, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([5 x %"$TyDescr_AddrFieldTyp_80"], [5 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_243", i32 0, i32 0) }
@"$TyDescr_AddrFields_245" = unnamed_addr constant [0 x %"$TyDescr_AddrFieldTyp_80"] zeroinitializer
@"$TyDescr_AddrFields_246" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 0, %"$TyDescr_AddrFieldTyp_80"* getelementptr inbounds ([0 x %"$TyDescr_AddrFieldTyp_80"], [0 x %"$TyDescr_AddrFieldTyp_80"]* @"$TyDescr_AddrFields_245", i32 0, i32 0) }
@"$TyDescr_AddrFields_247" = unnamed_addr constant %"$TyDescr_AddrTyp_81" { i32 -1, %"$TyDescr_AddrFieldTyp_80"* null }
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@cparam1 = global [20 x i8] zeroinitializer
@cparam2 = global [20 x i8] zeroinitializer
@cparam3 = global [20 x i8] zeroinitializer
@"$assign_test_1_255" = unnamed_addr constant [14 x i8] c"assign_test_1\00"
@"$assign_test_2_266" = unnamed_addr constant [14 x i8] c"assign_test_2\00"
@"$assign_test_3_277" = unnamed_addr constant [14 x i8] c"assign_test_3\00"
@"$assign_test_4_288" = unnamed_addr constant [14 x i8] c"assign_test_4\00"
@"$assign_test_5_299" = unnamed_addr constant [14 x i8] c"assign_test_5\00"
@"$assign_test_6_310" = unnamed_addr constant [14 x i8] c"assign_test_6\00"
@"$assign_test_7_321" = unnamed_addr constant [14 x i8] c"assign_test_7\00"
@"$assign_test_8_336" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_348" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_360" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$remote_reads_test_res_1_1_369" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$remote_reads_test_res_2_1_379" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$remote_reads_test_res_3_1_389" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$remote_reads_test_res_3_3_399" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$remote_reads_test_res_3_4_410" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$remote_reads_test_res_3_5_420" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$remote_reads_test_res_3_6_433" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$remote_reads_test_res_3_7_445" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$remote_reads_test_res_3_8_472" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$remote_reads_test_res_3_9_484" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$remote_reads_test_res_3_10_496" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$remote_reads_test_res_3_11_508" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$remote_reads_test_res_3_12_520" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$remote_reads_test_res_3_13_532" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$sender_balance_pre_541" = unnamed_addr constant [19 x i8] c"sender_balance_pre\00"
@"$sender_balance_mid_551" = unnamed_addr constant [19 x i8] c"sender_balance_mid\00"
@"$sender_balance_post_561" = unnamed_addr constant [20 x i8] c"sender_balance_post\00"
@"$_balance_571" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_1_1_597" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$_balance_601" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_2_1_627" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$_balance_631" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_1_657" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$transactionCount_661" = unnamed_addr constant [17 x i8] c"transactionCount\00"
@"$remote_reads_test_res_3_3_687" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$admin_691" = unnamed_addr constant [6 x i8] c"admin\00"
@"$remote_reads_test_res_3_4_717" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$_balance_721" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_5_748" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$owners_752" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_6_778" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$owners_783" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_7_807" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$owners_812" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_8_836" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$signatures_839" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_9_865" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$signatures_881" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_10_905" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$signatures_911" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_11_935" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$signatures_942" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_12_966" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$signatures_973" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_13_997" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$stringlit_1050" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_1055" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_1058" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_1065" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_1072" = unnamed_addr constant [5 x i8] c"param"
@"$stringlit_1132" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1137" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1140" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1170" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1175" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1178" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1218" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_1223" = unnamed_addr constant [13 x i8] c"TestException"
@"$stringlit_1226" = unnamed_addr constant [5 x i8] c"value"
@"$assign_test_8_1279" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_1321" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_1399" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$assign_test_10_1437" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$_balance_1450" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$sender_balance_pre_1476" = unnamed_addr constant [19 x i8] c"sender_balance_pre\00"
@"$_balance_1486" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$sender_balance_mid_1512" = unnamed_addr constant [19 x i8] c"sender_balance_mid\00"
@"$_balance_1522" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$sender_balance_post_1548" = unnamed_addr constant [20 x i8] c"sender_balance_post\00"
@_tydescr_table = constant [46 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_78", %_TyDescrTy_Typ* @"$TyDescr_Event_51", %_TyDescrTy_Typ* @"$TyDescr_Int64_33", %_TyDescrTy_Typ* @"$TyDescr_Addr_90", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_66", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_62", %_TyDescrTy_Typ* @"$TyDescr_Addr_86", %_TyDescrTy_Typ* @"$TyDescr_Addr_83", %_TyDescrTy_Typ* @"$TyDescr_Map_76", %_TyDescrTy_Typ* @"$TyDescr_Exception_53", %_TyDescrTy_Typ* @"$TyDescr_String_45", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_67", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_63", %_TyDescrTy_Typ* @"$TyDescr_Int256_41", %_TyDescrTy_Typ* @"$TyDescr_Int128_37", %_TyDescrTy_Typ* @"$TyDescr_Addr_92", %_TyDescrTy_Typ* @"$TyDescr_Bystr_55", %_TyDescrTy_Typ* @"$TyDescr_Addr_88", %_TyDescrTy_Typ* @"$TyDescr_Map_79", %_TyDescrTy_Typ* @"$TyDescr_Map_75", %_TyDescrTy_Typ* @"$TyDescr_Map_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_64", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_61", %_TyDescrTy_Typ* @"$TyDescr_Map_77", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69", %_TyDescrTy_Typ* @"$TyDescr_Addr_94", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_57", %_TyDescrTy_Typ* @"$TyDescr_Uint256_43", %_TyDescrTy_Typ* @"$TyDescr_Uint32_31", %_TyDescrTy_Typ* @"$TyDescr_Addr_93", %_TyDescrTy_Typ* @"$TyDescr_Addr_84", %_TyDescrTy_Typ* @"$TyDescr_Addr_82", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_68", %_TyDescrTy_Typ* @"$TyDescr_Uint64_35", %_TyDescrTy_Typ* @"$TyDescr_Bnum_47", %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", %_TyDescrTy_Typ* @"$TyDescr_Addr_89", %_TyDescrTy_Typ* @"$TyDescr_Map_74", %_TyDescrTy_Typ* @"$TyDescr_Addr_85", %_TyDescrTy_Typ* @"$TyDescr_Addr_87", %_TyDescrTy_Typ* @"$TyDescr_Map_72", %_TyDescrTy_Typ* @"$TyDescr_Message_49", %_TyDescrTy_Typ* @"$TyDescr_Addr_91", %_TyDescrTy_Typ* @"$TyDescr_Int32_29"]
@_tydescr_table_length = constant i32 46
@"$pname__scilla_version_1561" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_1562" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname_cparam1_1563" = unnamed_addr constant [7 x i8] c"cparam1"
@"$pname_cparam2_1564" = unnamed_addr constant [7 x i8] c"cparam2"
@"$pname_cparam3_1565" = unnamed_addr constant [7 x i8] c"cparam3"
@_contract_parameters = constant [5 x %"$ParamDescr_1559"] [%"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_1561", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_31" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_1562", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_57" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam1_1563", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam2_1564", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_93" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam3_1565", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_92" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_1566" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1567" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1568" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote1_1569" = unnamed_addr constant [7 x i8] c"remote1"
@"$tpname_remote2_1570" = unnamed_addr constant [7 x i8] c"remote2"
@"$tpname_remote3_1571" = unnamed_addr constant [7 x i8] c"remote3"
@"$tparams_RemoteReadsTest_1572" = unnamed_addr constant [6 x %"$ParamDescr_1559"] [%"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1566", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_39" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1567", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1568", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1569", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote2_1570", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_93" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote3_1571", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_85" }]
@"$tname_RemoteReadsTest_1573" = unnamed_addr constant [15 x i8] c"RemoteReadsTest"
@"$tpname__amount_1574" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1575" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1576" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_list1_1577" = unnamed_addr constant [5 x i8] c"list1"
@"$tpname_list2_1578" = unnamed_addr constant [5 x i8] c"list2"
@"$tpname_list3_1579" = unnamed_addr constant [5 x i8] c"list3"
@"$tpname_pair1_1580" = unnamed_addr constant [5 x i8] c"pair1"
@"$tpname_adt1_1581" = unnamed_addr constant [4 x i8] c"adt1"
@"$tpname_remote1_1582" = unnamed_addr constant [7 x i8] c"remote1"
@"$tparams_RemoteReadsADTTest_1583" = unnamed_addr constant [9 x %"$ParamDescr_1559"] [%"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1574", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_39" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1575", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1576", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list1_1577", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_64" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list2_1578", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_63" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list3_1579", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_62" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_pair1_1580", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_66" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_adt1_1581", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1582", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_82" }]
@"$tname_RemoteReadsADTTest_1584" = unnamed_addr constant [18 x i8] c"RemoteReadsADTTest"
@"$tpname__amount_1585" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1586" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1587" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_OutgoingMsgTest_1588" = unnamed_addr constant [3 x %"$ParamDescr_1559"] [%"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1585", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_39" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1586", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1587", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }]
@"$tname_OutgoingMsgTest_1589" = unnamed_addr constant [15 x i8] c"OutgoingMsgTest"
@"$tpname__amount_1590" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1591" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1592" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ExceptionTest_1593" = unnamed_addr constant [3 x %"$ParamDescr_1559"] [%"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1590", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_39" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1591", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1592", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }]
@"$tname_ExceptionTest_1594" = unnamed_addr constant [13 x i8] c"ExceptionTest"
@"$tpname__amount_1595" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1596" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1597" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AssignTest_1598" = unnamed_addr constant [3 x %"$ParamDescr_1559"] [%"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1595", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_39" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1596", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1597", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }]
@"$tname_AssignTest_1599" = unnamed_addr constant [10 x i8] c"AssignTest"
@"$tpname__amount_1600" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1601" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1602" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SenderBalanceTest_1603" = unnamed_addr constant [3 x %"$ParamDescr_1559"] [%"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1600", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_39" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1601", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }, %"$ParamDescr_1559" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1602", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_94" }]
@"$tname_SenderBalanceTest_1604" = unnamed_addr constant [17 x i8] c"SenderBalanceTest"
@_transition_parameters = constant [6 x %"$TransDescr_1560"] [%"$TransDescr_1560" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_RemoteReadsTest_1573", i32 0, i32 0), i32 15 }, i32 6, %"$ParamDescr_1559"* getelementptr inbounds ([6 x %"$ParamDescr_1559"], [6 x %"$ParamDescr_1559"]* @"$tparams_RemoteReadsTest_1572", i32 0, i32 0) }, %"$TransDescr_1560" { %ParamDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$tname_RemoteReadsADTTest_1584", i32 0, i32 0), i32 18 }, i32 9, %"$ParamDescr_1559"* getelementptr inbounds ([9 x %"$ParamDescr_1559"], [9 x %"$ParamDescr_1559"]* @"$tparams_RemoteReadsADTTest_1583", i32 0, i32 0) }, %"$TransDescr_1560" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_OutgoingMsgTest_1589", i32 0, i32 0), i32 15 }, i32 3, %"$ParamDescr_1559"* getelementptr inbounds ([3 x %"$ParamDescr_1559"], [3 x %"$ParamDescr_1559"]* @"$tparams_OutgoingMsgTest_1588", i32 0, i32 0) }, %"$TransDescr_1560" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_ExceptionTest_1594", i32 0, i32 0), i32 13 }, i32 3, %"$ParamDescr_1559"* getelementptr inbounds ([3 x %"$ParamDescr_1559"], [3 x %"$ParamDescr_1559"]* @"$tparams_ExceptionTest_1593", i32 0, i32 0) }, %"$TransDescr_1560" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_AssignTest_1599", i32 0, i32 0), i32 10 }, i32 3, %"$ParamDescr_1559"* getelementptr inbounds ([3 x %"$ParamDescr_1559"], [3 x %"$ParamDescr_1559"]* @"$tparams_AssignTest_1598", i32 0, i32 0) }, %"$TransDescr_1560" { %ParamDescrString { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$tname_SenderBalanceTest_1604", i32 0, i32 0), i32 17 }, i32 3, %"$ParamDescr_1559"* getelementptr inbounds ([3 x %"$ParamDescr_1559"], [3 x %"$ParamDescr_1559"]* @"$tparams_SenderBalanceTest_1603", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 6

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define void @_init_state() !dbg !9 {
entry:
  %"$assign_test_1_0" = alloca [20 x i8], align 1
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %entry
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$cparam3_253" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_253", [20 x i8]* %"$assign_test_1_0", align 1, !dbg !10
  %"$execptr_load_254" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_1_0_256" = load [20 x i8], [20 x i8]* %"$assign_test_1_0", align 1
  %"$update_value_257" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_1_0_256", [20 x i8]* %"$update_value_257", align 1
  %"$update_value_258" = bitcast [20 x i8]* %"$update_value_257" to i8*
  call void @_update_field(i8* %"$execptr_load_254", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_1_255", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_92", i32 0, i8* null, i8* %"$update_value_258"), !dbg !10
  %"$assign_test_2_1" = alloca [20 x i8], align 1
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_251"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$cparam3_264" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_264", [20 x i8]* %"$assign_test_2_1", align 1, !dbg !11
  %"$execptr_load_265" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_2_1_267" = load [20 x i8], [20 x i8]* %"$assign_test_2_1", align 1
  %"$update_value_268" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_2_1_267", [20 x i8]* %"$update_value_268", align 1
  %"$update_value_269" = bitcast [20 x i8]* %"$update_value_268" to i8*
  call void @_update_field(i8* %"$execptr_load_265", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_2_266", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_92", i32 0, i8* null, i8* %"$update_value_269"), !dbg !11
  %"$assign_test_3_2" = alloca [20 x i8], align 1
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_262"
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %"$cparam3_275" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_275", [20 x i8]* %"$assign_test_3_2", align 1, !dbg !12
  %"$execptr_load_276" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_3_2_278" = load [20 x i8], [20 x i8]* %"$assign_test_3_2", align 1
  %"$update_value_279" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_3_2_278", [20 x i8]* %"$update_value_279", align 1
  %"$update_value_280" = bitcast [20 x i8]* %"$update_value_279" to i8*
  call void @_update_field(i8* %"$execptr_load_276", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_3_277", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_92", i32 0, i8* null, i8* %"$update_value_280"), !dbg !12
  %"$assign_test_4_3" = alloca [20 x i8], align 1
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_273"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %"$cparam3_286" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_286", [20 x i8]* %"$assign_test_4_3", align 1, !dbg !13
  %"$execptr_load_287" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_4_3_289" = load [20 x i8], [20 x i8]* %"$assign_test_4_3", align 1
  %"$update_value_290" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_4_3_289", [20 x i8]* %"$update_value_290", align 1
  %"$update_value_291" = bitcast [20 x i8]* %"$update_value_290" to i8*
  call void @_update_field(i8* %"$execptr_load_287", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_4_288", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_92", i32 0, i8* null, i8* %"$update_value_291"), !dbg !13
  %"$assign_test_5_4" = alloca [20 x i8], align 1
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 1, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_284"
  %"$consume_296" = sub i64 %"$gasrem_292", 1
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %"$cparam3_297" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_297", [20 x i8]* %"$assign_test_5_4", align 1, !dbg !14
  %"$execptr_load_298" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_5_4_300" = load [20 x i8], [20 x i8]* %"$assign_test_5_4", align 1
  %"$update_value_301" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_5_4_300", [20 x i8]* %"$update_value_301", align 1
  %"$update_value_302" = bitcast [20 x i8]* %"$update_value_301" to i8*
  call void @_update_field(i8* %"$execptr_load_298", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_5_299", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_92", i32 0, i8* null, i8* %"$update_value_302"), !dbg !14
  %"$assign_test_6_5" = alloca [20 x i8], align 1
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_295"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %"$cparam3_308" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_308", [20 x i8]* %"$assign_test_6_5", align 1, !dbg !15
  %"$execptr_load_309" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_6_5_311" = load [20 x i8], [20 x i8]* %"$assign_test_6_5", align 1
  %"$update_value_312" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_6_5_311", [20 x i8]* %"$update_value_312", align 1
  %"$update_value_313" = bitcast [20 x i8]* %"$update_value_312" to i8*
  call void @_update_field(i8* %"$execptr_load_309", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_6_310", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_92", i32 0, i8* null, i8* %"$update_value_313"), !dbg !15
  %"$assign_test_7_6" = alloca [20 x i8], align 1
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_306"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %"$cparam3_319" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_319", [20 x i8]* %"$assign_test_7_6", align 1, !dbg !16
  %"$execptr_load_320" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_7_6_322" = load [20 x i8], [20 x i8]* %"$assign_test_7_6", align 1
  %"$update_value_323" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_7_6_322", [20 x i8]* %"$update_value_323", align 1
  %"$update_value_324" = bitcast [20 x i8]* %"$update_value_323" to i8*
  call void @_update_field(i8* %"$execptr_load_320", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_7_321", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_92", i32 0, i8* null, i8* %"$update_value_324"), !dbg !16
  %"$assign_test_8_7" = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_317"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$cparam1_330" = load [20 x i8], [20 x i8]* @cparam1, align 1
  %"$adtval_331_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_331_salloc" = call i8* @_salloc(i8* %"$adtval_331_load", i64 21)
  %"$adtval_331" = bitcast i8* %"$adtval_331_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1*
  %"$adtgep_332" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_331", i32 0, i32 0
  store i8 0, i8* %"$adtgep_332", align 1
  %"$adtgep_333" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_331", i32 0, i32 1
  store [20 x i8] %"$cparam1_330", [20 x i8]* %"$adtgep_333", align 1
  %"$adtptr_334" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_331" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_334", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_7", align 8, !dbg !17
  %"$execptr_load_335" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_8_7_337" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_7", align 8
  %"$update_value_338" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_8_7_337" to i8*
  call void @_update_field(i8* %"$execptr_load_335", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_336", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69", i32 0, i8* null, i8* %"$update_value_338"), !dbg !17
  %"$assign_test_9_8" = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$have_gas_328"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %"$adtval_344_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_344_salloc" = call i8* @_salloc(i8* %"$adtval_344_load", i64 1)
  %"$adtval_344" = bitcast i8* %"$adtval_344_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_345" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_344", i32 0, i32 0
  store i8 1, i8* %"$adtgep_345", align 1
  %"$adtptr_346" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_344" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_346", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_8", align 8, !dbg !18
  %"$execptr_load_347" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_9_8_349" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_8", align 8
  %"$update_value_350" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_9_8_349" to i8*
  call void @_update_field(i8* %"$execptr_load_347", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_348", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_65", i32 0, i8* null, i8* %"$update_value_350"), !dbg !18
  %"$assign_test_10_9" = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_342"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %"$execptr_load_356" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_357" = call i8* @_new_empty_map(i8* %"$execptr_load_356")
  %"$Emp_358" = bitcast i8* %"$_new_empty_map_call_357" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$Emp_358", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_9", align 8, !dbg !19
  %"$execptr_load_359" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_10_9_361" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_9", align 8
  %"$update_value_362" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$assign_test_10_9_361" to i8*
  call void @_update_field(i8* %"$execptr_load_359", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_360", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_362"), !dbg !19
  %"$remote_reads_test_res_1_1_10" = alloca %Uint128, align 8
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_354"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_1_1_10", align 8, !dbg !20
  %"$execptr_load_368" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_1_1_10_370" = load %Uint128, %Uint128* %"$remote_reads_test_res_1_1_10", align 8
  %"$update_value_371" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_1_1_10_370", %Uint128* %"$update_value_371", align 8
  %"$update_value_372" = bitcast %Uint128* %"$update_value_371" to i8*
  call void @_update_field(i8* %"$execptr_load_368", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_369", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_372"), !dbg !20
  %"$remote_reads_test_res_2_1_11" = alloca %Uint128, align 8
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_366"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_2_1_11", align 8, !dbg !21
  %"$execptr_load_378" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_2_1_11_380" = load %Uint128, %Uint128* %"$remote_reads_test_res_2_1_11", align 8
  %"$update_value_381" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_2_1_11_380", %Uint128* %"$update_value_381", align 8
  %"$update_value_382" = bitcast %Uint128* %"$update_value_381" to i8*
  call void @_update_field(i8* %"$execptr_load_378", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_379", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_382"), !dbg !21
  %"$remote_reads_test_res_3_1_12" = alloca %Uint128, align 8
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_376"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_1_12", align 8, !dbg !22
  %"$execptr_load_388" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_1_12_390" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_1_12", align 8
  %"$update_value_391" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_1_12_390", %Uint128* %"$update_value_391", align 8
  %"$update_value_392" = bitcast %Uint128* %"$update_value_391" to i8*
  call void @_update_field(i8* %"$execptr_load_388", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_389", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_392"), !dbg !22
  %"$remote_reads_test_res_3_3_13" = alloca %Uint32, align 8
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_386"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$remote_reads_test_res_3_3_13", align 4, !dbg !23
  %"$execptr_load_398" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_3_13_400" = load %Uint32, %Uint32* %"$remote_reads_test_res_3_3_13", align 4
  %"$update_value_401" = alloca %Uint32, align 8
  store %Uint32 %"$$remote_reads_test_res_3_3_13_400", %Uint32* %"$update_value_401", align 4
  %"$update_value_402" = bitcast %Uint32* %"$update_value_401" to i8*
  call void @_update_field(i8* %"$execptr_load_398", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_399", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_31", i32 0, i8* null, i8* %"$update_value_402"), !dbg !23
  %"$remote_reads_test_res_3_4_14" = alloca [20 x i8], align 1
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_396"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %"$cparam3_408" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_408", [20 x i8]* %"$remote_reads_test_res_3_4_14", align 1, !dbg !24
  %"$execptr_load_409" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_4_14_411" = load [20 x i8], [20 x i8]* %"$remote_reads_test_res_3_4_14", align 1
  %"$update_value_412" = alloca [20 x i8], align 1
  store [20 x i8] %"$$remote_reads_test_res_3_4_14_411", [20 x i8]* %"$update_value_412", align 1
  %"$update_value_413" = bitcast [20 x i8]* %"$update_value_412" to i8*
  call void @_update_field(i8* %"$execptr_load_409", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_410", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_92", i32 0, i8* null, i8* %"$update_value_413"), !dbg !24
  %"$remote_reads_test_res_3_5_15" = alloca %Uint128, align 8
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_406"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_5_15", align 8, !dbg !25
  %"$execptr_load_419" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_5_15_421" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_5_15", align 8
  %"$update_value_422" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_5_15_421", %Uint128* %"$update_value_422", align 8
  %"$update_value_423" = bitcast %Uint128* %"$update_value_422" to i8*
  call void @_update_field(i8* %"$execptr_load_419", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_420", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_423"), !dbg !25
  %"$remote_reads_test_res_3_6_16" = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_417"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$execptr_load_429" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_430" = call i8* @_new_empty_map(i8* %"$execptr_load_429")
  %"$Emp_431" = bitcast i8* %"$_new_empty_map_call_430" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$Emp_431", %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_16", align 8, !dbg !26
  %"$execptr_load_432" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_6_16_434" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_16", align 8
  %"$update_value_435" = bitcast %Map_ByStr20_with_end_Bool* %"$$remote_reads_test_res_3_6_16_434" to i8*
  call void @_update_field(i8* %"$execptr_load_432", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_433", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_78", i32 0, i8* null, i8* %"$update_value_435"), !dbg !26
  %"$remote_reads_test_res_3_7_17" = alloca %TName_Bool*, align 8
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_427"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$adtval_441_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_441_salloc" = call i8* @_salloc(i8* %"$adtval_441_load", i64 1)
  %"$adtval_441" = bitcast i8* %"$adtval_441_salloc" to %CName_True*
  %"$adtgep_442" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_441", i32 0, i32 0
  store i8 0, i8* %"$adtgep_442", align 1
  %"$adtptr_443" = bitcast %CName_True* %"$adtval_441" to %TName_Bool*
  store %TName_Bool* %"$adtptr_443", %TName_Bool** %"$remote_reads_test_res_3_7_17", align 8, !dbg !27
  %"$execptr_load_444" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_7_17_446" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_7_17", align 8
  %"$update_value_447" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_7_17_446" to i8*
  call void @_update_field(i8* %"$execptr_load_444", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_445", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i32 0, i8* null, i8* %"$update_value_447"), !dbg !27
  %"$remote_reads_test_res_3_8_18" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_439"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %x = alloca %TName_Bool*, align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$adtval_458_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_458_salloc" = call i8* @_salloc(i8* %"$adtval_458_load", i64 1)
  %"$adtval_458" = bitcast i8* %"$adtval_458_salloc" to %CName_True*
  %"$adtgep_459" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_458", i32 0, i32 0
  store i8 0, i8* %"$adtgep_459", align 1
  %"$adtptr_460" = bitcast %CName_True* %"$adtval_458" to %TName_Bool*
  store %TName_Bool* %"$adtptr_460", %TName_Bool** %x, align 8, !dbg !28
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_456"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %"$x_466" = load %TName_Bool*, %TName_Bool** %x, align 8
  %"$adtval_467_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_467_salloc" = call i8* @_salloc(i8* %"$adtval_467_load", i64 9)
  %"$adtval_467" = bitcast i8* %"$adtval_467_salloc" to %CName_Some_Bool*
  %"$adtgep_468" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_467", i32 0, i32 0
  store i8 0, i8* %"$adtgep_468", align 1
  %"$adtgep_469" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_467", i32 0, i32 1
  store %TName_Bool* %"$x_466", %TName_Bool** %"$adtgep_469", align 8
  %"$adtptr_470" = bitcast %CName_Some_Bool* %"$adtval_467" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_470", %TName_Option_Bool** %"$remote_reads_test_res_3_8_18", align 8, !dbg !29
  %"$execptr_load_471" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_8_18_473" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_8_18", align 8
  %"$update_value_474" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_8_18_473" to i8*
  call void @_update_field(i8* %"$execptr_load_471", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_472", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_68", i32 0, i8* null, i8* %"$update_value_474"), !dbg !28
  %"$remote_reads_test_res_3_9_19" = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_464"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$execptr_load_480" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_481" = call i8* @_new_empty_map(i8* %"$execptr_load_480")
  %"$Emp_482" = bitcast i8* %"$_new_empty_map_call_481" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$Emp_482", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_19", align 8, !dbg !30
  %"$execptr_load_483" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_9_19_485" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_19", align 8
  %"$update_value_486" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_9_19_485" to i8*
  call void @_update_field(i8* %"$execptr_load_483", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_484", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 0, i8* null, i8* %"$update_value_486"), !dbg !30
  %"$remote_reads_test_res_3_10_20" = alloca %TName_Bool*, align 8
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_478"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %"$adtval_492_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_492_salloc" = call i8* @_salloc(i8* %"$adtval_492_load", i64 1)
  %"$adtval_492" = bitcast i8* %"$adtval_492_salloc" to %CName_False*
  %"$adtgep_493" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_492", i32 0, i32 0
  store i8 1, i8* %"$adtgep_493", align 1
  %"$adtptr_494" = bitcast %CName_False* %"$adtval_492" to %TName_Bool*
  store %TName_Bool* %"$adtptr_494", %TName_Bool** %"$remote_reads_test_res_3_10_20", align 8, !dbg !31
  %"$execptr_load_495" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_10_20_497" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_10_20", align 8
  %"$update_value_498" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_10_20_497" to i8*
  call void @_update_field(i8* %"$execptr_load_495", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_496", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i32 0, i8* null, i8* %"$update_value_498"), !dbg !31
  %"$remote_reads_test_res_3_11_21" = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$have_gas_490"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  %"$adtval_504_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_504_salloc" = call i8* @_salloc(i8* %"$adtval_504_load", i64 1)
  %"$adtval_504" = bitcast i8* %"$adtval_504_salloc" to %"CName_None_Map_(ByStr20_with_end)_(Bool)"*
  %"$adtgep_505" = getelementptr inbounds %"CName_None_Map_(ByStr20_with_end)_(Bool)", %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_504", i32 0, i32 0
  store i8 1, i8* %"$adtgep_505", align 1
  %"$adtptr_506" = bitcast %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_504" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$adtptr_506", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_21", align 8, !dbg !32
  %"$execptr_load_507" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_11_21_509" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_21", align 8
  %"$update_value_510" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_11_21_509" to i8*
  call void @_update_field(i8* %"$execptr_load_507", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_508", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_67", i32 0, i8* null, i8* %"$update_value_510"), !dbg !32
  %"$remote_reads_test_res_3_12_22" = alloca %TName_Bool*, align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_502"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$adtval_516_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_516_salloc" = call i8* @_salloc(i8* %"$adtval_516_load", i64 1)
  %"$adtval_516" = bitcast i8* %"$adtval_516_salloc" to %CName_False*
  %"$adtgep_517" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_516", i32 0, i32 0
  store i8 1, i8* %"$adtgep_517", align 1
  %"$adtptr_518" = bitcast %CName_False* %"$adtval_516" to %TName_Bool*
  store %TName_Bool* %"$adtptr_518", %TName_Bool** %"$remote_reads_test_res_3_12_22", align 8, !dbg !33
  %"$execptr_load_519" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_12_22_521" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_12_22", align 8
  %"$update_value_522" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_12_22_521" to i8*
  call void @_update_field(i8* %"$execptr_load_519", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_520", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i32 0, i8* null, i8* %"$update_value_522"), !dbg !33
  %"$remote_reads_test_res_3_13_23" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_514"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$adtval_528_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_528_salloc" = call i8* @_salloc(i8* %"$adtval_528_load", i64 1)
  %"$adtval_528" = bitcast i8* %"$adtval_528_salloc" to %CName_None_Bool*
  %"$adtgep_529" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_528", i32 0, i32 0
  store i8 1, i8* %"$adtgep_529", align 1
  %"$adtptr_530" = bitcast %CName_None_Bool* %"$adtval_528" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_530", %TName_Option_Bool** %"$remote_reads_test_res_3_13_23", align 8, !dbg !34
  %"$execptr_load_531" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_13_23_533" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_13_23", align 8
  %"$update_value_534" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_13_23_533" to i8*
  call void @_update_field(i8* %"$execptr_load_531", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_532", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_68", i32 0, i8* null, i8* %"$update_value_534"), !dbg !34
  %"$sender_balance_pre_24" = alloca %Uint128, align 8
  %"$gasrem_535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_536" = icmp ugt i64 1, %"$gasrem_535"
  br i1 %"$gascmp_536", label %"$out_of_gas_537", label %"$have_gas_538"

"$out_of_gas_537":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_538"

"$have_gas_538":                                  ; preds = %"$out_of_gas_537", %"$have_gas_526"
  %"$consume_539" = sub i64 %"$gasrem_535", 1
  store i64 %"$consume_539", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_pre_24", align 8, !dbg !35
  %"$execptr_load_540" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_pre_24_542" = load %Uint128, %Uint128* %"$sender_balance_pre_24", align 8
  %"$update_value_543" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_pre_24_542", %Uint128* %"$update_value_543", align 8
  %"$update_value_544" = bitcast %Uint128* %"$update_value_543" to i8*
  call void @_update_field(i8* %"$execptr_load_540", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_pre_541", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_544"), !dbg !35
  %"$sender_balance_mid_25" = alloca %Uint128, align 8
  %"$gasrem_545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$have_gas_538"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$have_gas_538"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_mid_25", align 8, !dbg !36
  %"$execptr_load_550" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_mid_25_552" = load %Uint128, %Uint128* %"$sender_balance_mid_25", align 8
  %"$update_value_553" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_mid_25_552", %Uint128* %"$update_value_553", align 8
  %"$update_value_554" = bitcast %Uint128* %"$update_value_553" to i8*
  call void @_update_field(i8* %"$execptr_load_550", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_mid_551", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_554"), !dbg !36
  %"$sender_balance_post_26" = alloca %Uint128, align 8
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$have_gas_548"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$have_gas_548"
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_post_26", align 8, !dbg !37
  %"$execptr_load_560" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_post_26_562" = load %Uint128, %Uint128* %"$sender_balance_post_26", align 8
  %"$update_value_563" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_post_26_562", %Uint128* %"$update_value_563", align 8
  %"$update_value_564" = bitcast %Uint128* %"$update_value_563" to i8*
  call void @_update_field(i8* %"$execptr_load_560", i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$sender_balance_post_561", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_564"), !dbg !37
  ret void
}

declare void @_out_of_gas()

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_new_empty_map(i8*)

define internal void @"$RemoteReadsTest_565"(%Uint128 %_amount, [20 x i8]* %"$_origin_566", [20 x i8]* %"$_sender_567", [20 x i8]* %"$remote1_568", [20 x i8]* %"$remote2_569", [20 x i8]* %"$remote3_570") !dbg !38 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_566", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_567", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_568", align 1
  %remote2 = load [20 x i8], [20 x i8]* %"$remote2_569", align 1
  %remote3 = load [20 x i8], [20 x i8]* %"$remote3_570", align 1
  %tmp_1_1 = alloca %Uint128, align 8
  %"$execptr_load_572" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_remote1_573" = alloca [20 x i8], align 1
  store [20 x i8] %remote1, [20 x i8]* %"$tmp_1_1_remote1_573", align 1
  %"$tmp_1_1_call_574" = call i8* @_fetch_remote_field(i8* %"$execptr_load_572", [20 x i8]* %"$tmp_1_1_remote1_573", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_571", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i32 1), !dbg !39
  %"$tmp_1_1_575" = bitcast i8* %"$tmp_1_1_call_574" to %Uint128*
  %"$tmp_1_1_576" = load %Uint128, %Uint128* %"$tmp_1_1_575", align 8
  store %Uint128 %"$tmp_1_1_576", %Uint128* %tmp_1_1, align 8
  %"$_literal_cost_tmp_1_1_577" = alloca %Uint128, align 8
  %"$tmp_1_1_578" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_578", %Uint128* %"$_literal_cost_tmp_1_1_577", align 8
  %"$$_literal_cost_tmp_1_1_577_579" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_577" to i8*
  %"$_literal_cost_call_580" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_tmp_1_1_577_579")
  %"$gasadd_581" = add i64 %"$_literal_cost_call_580", 0
  %"$gasrem_582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_583" = icmp ugt i64 %"$gasadd_581", %"$gasrem_582"
  br i1 %"$gascmp_583", label %"$out_of_gas_584", label %"$have_gas_585"

"$out_of_gas_584":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_585"

"$have_gas_585":                                  ; preds = %"$out_of_gas_584", %entry
  %"$consume_586" = sub i64 %"$gasrem_582", %"$gasadd_581"
  store i64 %"$consume_586", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_1_1_587" = alloca %Uint128, align 8
  %"$tmp_1_1_588" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_588", %Uint128* %"$_literal_cost_tmp_1_1_587", align 8
  %"$$_literal_cost_tmp_1_1_587_589" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_587" to i8*
  %"$_literal_cost_call_590" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_tmp_1_1_587_589")
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 %"$_literal_cost_call_590", %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_585"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_585"
  %"$consume_595" = sub i64 %"$gasrem_591", %"$_literal_cost_call_590"
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %"$execptr_load_596" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_598" = load %Uint128, %Uint128* %tmp_1_1, align 8
  %"$update_value_599" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_1_1_598", %Uint128* %"$update_value_599", align 8
  %"$update_value_600" = bitcast %Uint128* %"$update_value_599" to i8*
  call void @_update_field(i8* %"$execptr_load_596", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_597", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_600"), !dbg !40
  %tmp_2_1 = alloca %Uint128, align 8
  %"$execptr_load_602" = load i8*, i8** @_execptr, align 8
  %"$tmp_2_1_remote2_603" = alloca [20 x i8], align 1
  store [20 x i8] %remote2, [20 x i8]* %"$tmp_2_1_remote2_603", align 1
  %"$tmp_2_1_call_604" = call i8* @_fetch_remote_field(i8* %"$execptr_load_602", [20 x i8]* %"$tmp_2_1_remote2_603", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_601", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i32 1), !dbg !41
  %"$tmp_2_1_605" = bitcast i8* %"$tmp_2_1_call_604" to %Uint128*
  %"$tmp_2_1_606" = load %Uint128, %Uint128* %"$tmp_2_1_605", align 8
  store %Uint128 %"$tmp_2_1_606", %Uint128* %tmp_2_1, align 8
  %"$_literal_cost_tmp_2_1_607" = alloca %Uint128, align 8
  %"$tmp_2_1_608" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_608", %Uint128* %"$_literal_cost_tmp_2_1_607", align 8
  %"$$_literal_cost_tmp_2_1_607_609" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_607" to i8*
  %"$_literal_cost_call_610" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_tmp_2_1_607_609")
  %"$gasadd_611" = add i64 %"$_literal_cost_call_610", 0
  %"$gasrem_612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_613" = icmp ugt i64 %"$gasadd_611", %"$gasrem_612"
  br i1 %"$gascmp_613", label %"$out_of_gas_614", label %"$have_gas_615"

"$out_of_gas_614":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_615"

"$have_gas_615":                                  ; preds = %"$out_of_gas_614", %"$have_gas_594"
  %"$consume_616" = sub i64 %"$gasrem_612", %"$gasadd_611"
  store i64 %"$consume_616", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_2_1_617" = alloca %Uint128, align 8
  %"$tmp_2_1_618" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_618", %Uint128* %"$_literal_cost_tmp_2_1_617", align 8
  %"$$_literal_cost_tmp_2_1_617_619" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_617" to i8*
  %"$_literal_cost_call_620" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_tmp_2_1_617_619")
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 %"$_literal_cost_call_620", %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_615"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_615"
  %"$consume_625" = sub i64 %"$gasrem_621", %"$_literal_cost_call_620"
  store i64 %"$consume_625", i64* @_gasrem, align 8
  %"$execptr_load_626" = load i8*, i8** @_execptr, align 8
  %"$tmp_2_1_628" = load %Uint128, %Uint128* %tmp_2_1, align 8
  %"$update_value_629" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_2_1_628", %Uint128* %"$update_value_629", align 8
  %"$update_value_630" = bitcast %Uint128* %"$update_value_629" to i8*
  call void @_update_field(i8* %"$execptr_load_626", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_627", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_630"), !dbg !42
  %tmp_3_1 = alloca %Uint128, align 8
  %"$execptr_load_632" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_1_remote3_633" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_1_remote3_633", align 1
  %"$tmp_3_1_call_634" = call i8* @_fetch_remote_field(i8* %"$execptr_load_632", [20 x i8]* %"$tmp_3_1_remote3_633", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_631", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i32 1), !dbg !43
  %"$tmp_3_1_635" = bitcast i8* %"$tmp_3_1_call_634" to %Uint128*
  %"$tmp_3_1_636" = load %Uint128, %Uint128* %"$tmp_3_1_635", align 8
  store %Uint128 %"$tmp_3_1_636", %Uint128* %tmp_3_1, align 8
  %"$_literal_cost_tmp_3_1_637" = alloca %Uint128, align 8
  %"$tmp_3_1_638" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_638", %Uint128* %"$_literal_cost_tmp_3_1_637", align 8
  %"$$_literal_cost_tmp_3_1_637_639" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_637" to i8*
  %"$_literal_cost_call_640" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_tmp_3_1_637_639")
  %"$gasadd_641" = add i64 %"$_literal_cost_call_640", 0
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 %"$gasadd_641", %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %"$have_gas_624"
  %"$consume_646" = sub i64 %"$gasrem_642", %"$gasadd_641"
  store i64 %"$consume_646", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_1_647" = alloca %Uint128, align 8
  %"$tmp_3_1_648" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_648", %Uint128* %"$_literal_cost_tmp_3_1_647", align 8
  %"$$_literal_cost_tmp_3_1_647_649" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_647" to i8*
  %"$_literal_cost_call_650" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_tmp_3_1_647_649")
  %"$gasrem_651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_652" = icmp ugt i64 %"$_literal_cost_call_650", %"$gasrem_651"
  br i1 %"$gascmp_652", label %"$out_of_gas_653", label %"$have_gas_654"

"$out_of_gas_653":                                ; preds = %"$have_gas_645"
  call void @_out_of_gas()
  br label %"$have_gas_654"

"$have_gas_654":                                  ; preds = %"$out_of_gas_653", %"$have_gas_645"
  %"$consume_655" = sub i64 %"$gasrem_651", %"$_literal_cost_call_650"
  store i64 %"$consume_655", i64* @_gasrem, align 8
  %"$execptr_load_656" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_1_658" = load %Uint128, %Uint128* %tmp_3_1, align 8
  %"$update_value_659" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_1_658", %Uint128* %"$update_value_659", align 8
  %"$update_value_660" = bitcast %Uint128* %"$update_value_659" to i8*
  call void @_update_field(i8* %"$execptr_load_656", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_657", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_660"), !dbg !44
  %tmp_3_3 = alloca %Uint32, align 8
  %"$execptr_load_662" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_3_remote3_663" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_3_remote3_663", align 1
  %"$tmp_3_3_call_664" = call i8* @_fetch_remote_field(i8* %"$execptr_load_662", [20 x i8]* %"$tmp_3_3_remote3_663", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$transactionCount_661", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_31", i32 0, i8* null, i32 1), !dbg !45
  %"$tmp_3_3_665" = bitcast i8* %"$tmp_3_3_call_664" to %Uint32*
  %"$tmp_3_3_666" = load %Uint32, %Uint32* %"$tmp_3_3_665", align 4
  store %Uint32 %"$tmp_3_3_666", %Uint32* %tmp_3_3, align 4
  %"$_literal_cost_tmp_3_3_667" = alloca %Uint32, align 8
  %"$tmp_3_3_668" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_668", %Uint32* %"$_literal_cost_tmp_3_3_667", align 4
  %"$$_literal_cost_tmp_3_3_667_669" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_667" to i8*
  %"$_literal_cost_call_670" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_31", i8* %"$$_literal_cost_tmp_3_3_667_669")
  %"$gasadd_671" = add i64 %"$_literal_cost_call_670", 0
  %"$gasrem_672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_673" = icmp ugt i64 %"$gasadd_671", %"$gasrem_672"
  br i1 %"$gascmp_673", label %"$out_of_gas_674", label %"$have_gas_675"

"$out_of_gas_674":                                ; preds = %"$have_gas_654"
  call void @_out_of_gas()
  br label %"$have_gas_675"

"$have_gas_675":                                  ; preds = %"$out_of_gas_674", %"$have_gas_654"
  %"$consume_676" = sub i64 %"$gasrem_672", %"$gasadd_671"
  store i64 %"$consume_676", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_3_677" = alloca %Uint32, align 8
  %"$tmp_3_3_678" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_678", %Uint32* %"$_literal_cost_tmp_3_3_677", align 4
  %"$$_literal_cost_tmp_3_3_677_679" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_677" to i8*
  %"$_literal_cost_call_680" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_31", i8* %"$$_literal_cost_tmp_3_3_677_679")
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 %"$_literal_cost_call_680", %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %"$have_gas_675"
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %"$have_gas_675"
  %"$consume_685" = sub i64 %"$gasrem_681", %"$_literal_cost_call_680"
  store i64 %"$consume_685", i64* @_gasrem, align 8
  %"$execptr_load_686" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_3_688" = load %Uint32, %Uint32* %tmp_3_3, align 4
  %"$update_value_689" = alloca %Uint32, align 8
  store %Uint32 %"$tmp_3_3_688", %Uint32* %"$update_value_689", align 4
  %"$update_value_690" = bitcast %Uint32* %"$update_value_689" to i8*
  call void @_update_field(i8* %"$execptr_load_686", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_687", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_31", i32 0, i8* null, i8* %"$update_value_690"), !dbg !46
  %tmp_3_4 = alloca [20 x i8], align 1
  %"$execptr_load_692" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_4_remote3_693" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_4_remote3_693", align 1
  %"$tmp_3_4_call_694" = call i8* @_fetch_remote_field(i8* %"$execptr_load_692", [20 x i8]* %"$tmp_3_4_remote3_693", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_691", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_94", i32 0, i8* null, i32 1), !dbg !47
  %"$tmp_3_4_695" = bitcast i8* %"$tmp_3_4_call_694" to [20 x i8]*
  %"$tmp_3_4_696" = load [20 x i8], [20 x i8]* %"$tmp_3_4_695", align 1
  store [20 x i8] %"$tmp_3_4_696", [20 x i8]* %tmp_3_4, align 1
  %"$_literal_cost_tmp_3_4_697" = alloca [20 x i8], align 1
  %"$tmp_3_4_698" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_698", [20 x i8]* %"$_literal_cost_tmp_3_4_697", align 1
  %"$$_literal_cost_tmp_3_4_697_699" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_697" to i8*
  %"$_literal_cost_call_700" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_94", i8* %"$$_literal_cost_tmp_3_4_697_699")
  %"$gasadd_701" = add i64 %"$_literal_cost_call_700", 0
  %"$gasrem_702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_703" = icmp ugt i64 %"$gasadd_701", %"$gasrem_702"
  br i1 %"$gascmp_703", label %"$out_of_gas_704", label %"$have_gas_705"

"$out_of_gas_704":                                ; preds = %"$have_gas_684"
  call void @_out_of_gas()
  br label %"$have_gas_705"

"$have_gas_705":                                  ; preds = %"$out_of_gas_704", %"$have_gas_684"
  %"$consume_706" = sub i64 %"$gasrem_702", %"$gasadd_701"
  store i64 %"$consume_706", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_4_707" = alloca [20 x i8], align 1
  %"$tmp_3_4_708" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_708", [20 x i8]* %"$_literal_cost_tmp_3_4_707", align 1
  %"$$_literal_cost_tmp_3_4_707_709" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_707" to i8*
  %"$_literal_cost_call_710" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_94", i8* %"$$_literal_cost_tmp_3_4_707_709")
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 %"$_literal_cost_call_710", %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %"$have_gas_705"
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %"$have_gas_705"
  %"$consume_715" = sub i64 %"$gasrem_711", %"$_literal_cost_call_710"
  store i64 %"$consume_715", i64* @_gasrem, align 8
  %"$execptr_load_716" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_4_718" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  %"$update_value_719" = alloca [20 x i8], align 1
  store [20 x i8] %"$tmp_3_4_718", [20 x i8]* %"$update_value_719", align 1
  %"$update_value_720" = bitcast [20 x i8]* %"$update_value_719" to i8*
  call void @_update_field(i8* %"$execptr_load_716", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_717", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_94", i32 0, i8* null, i8* %"$update_value_720"), !dbg !48
  %tmp_3_5 = alloca %Uint128, align 8
  %"$execptr_load_722" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_5_tmp_3_4_723" = alloca [20 x i8], align 1
  %"$tmp_3_4_724" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_724", [20 x i8]* %"$tmp_3_5_tmp_3_4_723", align 1
  %"$tmp_3_5_call_725" = call i8* @_fetch_remote_field(i8* %"$execptr_load_722", [20 x i8]* %"$tmp_3_5_tmp_3_4_723", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_721", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i32 1), !dbg !49
  %"$tmp_3_5_726" = bitcast i8* %"$tmp_3_5_call_725" to %Uint128*
  %"$tmp_3_5_727" = load %Uint128, %Uint128* %"$tmp_3_5_726", align 8
  store %Uint128 %"$tmp_3_5_727", %Uint128* %tmp_3_5, align 8
  %"$_literal_cost_tmp_3_5_728" = alloca %Uint128, align 8
  %"$tmp_3_5_729" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_729", %Uint128* %"$_literal_cost_tmp_3_5_728", align 8
  %"$$_literal_cost_tmp_3_5_728_730" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_728" to i8*
  %"$_literal_cost_call_731" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_tmp_3_5_728_730")
  %"$gasadd_732" = add i64 %"$_literal_cost_call_731", 0
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 %"$gasadd_732", %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %"$have_gas_714"
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %"$have_gas_714"
  %"$consume_737" = sub i64 %"$gasrem_733", %"$gasadd_732"
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_5_738" = alloca %Uint128, align 8
  %"$tmp_3_5_739" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_739", %Uint128* %"$_literal_cost_tmp_3_5_738", align 8
  %"$$_literal_cost_tmp_3_5_738_740" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_738" to i8*
  %"$_literal_cost_call_741" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_tmp_3_5_738_740")
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
  %"$tmp_3_5_749" = load %Uint128, %Uint128* %tmp_3_5, align 8
  %"$update_value_750" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_5_749", %Uint128* %"$update_value_750", align 8
  %"$update_value_751" = bitcast %Uint128* %"$update_value_750" to i8*
  call void @_update_field(i8* %"$execptr_load_747", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_748", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_751"), !dbg !50
  %tmp_3_6 = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$execptr_load_753" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_remote3_754" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_6_remote3_754", align 1
  %"$tmp_3_6_call_755" = call i8* @_fetch_remote_field(i8* %"$execptr_load_753", [20 x i8]* %"$tmp_3_6_remote3_754", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_752", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_78", i32 0, i8* null, i32 1), !dbg !51
  %"$tmp_3_6_756" = bitcast i8* %"$tmp_3_6_call_755" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$tmp_3_6_756", %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$tmp_3_6_757" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_757_758" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_757" to i8*
  %"$_literal_cost_call_759" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_78", i8* %"$$tmp_3_6_757_758")
  %"$tmp_3_6_760" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_760_761" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_760" to i8*
  %"$_mapsortcost_call_762" = call i64 @_mapsortcost(i8* %"$$tmp_3_6_760_761")
  %"$gasadd_763" = add i64 %"$_literal_cost_call_759", %"$_mapsortcost_call_762"
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 %"$gasadd_763", %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_745"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_745"
  %"$consume_768" = sub i64 %"$gasrem_764", %"$gasadd_763"
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %"$tmp_3_6_769" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_769_770" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_769" to i8*
  %"$_literal_cost_call_771" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_78", i8* %"$$tmp_3_6_769_770")
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 %"$_literal_cost_call_771", %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$have_gas_767"
  %"$consume_776" = sub i64 %"$gasrem_772", %"$_literal_cost_call_771"
  store i64 %"$consume_776", i64* @_gasrem, align 8
  %"$execptr_load_777" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_779" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$update_value_780" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_779" to i8*
  call void @_update_field(i8* %"$execptr_load_777", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_778", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_78", i32 0, i8* null, i8* %"$update_value_780"), !dbg !52
  %tmp_3_7 = alloca %TName_Bool*, align 8
  %"$indices_buf_781_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_781_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_781_salloc_load", i64 20)
  %"$indices_buf_781_salloc" = bitcast i8* %"$indices_buf_781_salloc_salloc" to [20 x i8]*
  %"$indices_buf_781" = bitcast [20 x i8]* %"$indices_buf_781_salloc" to i8*
  %"$indices_gep_782" = getelementptr i8, i8* %"$indices_buf_781", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_782" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_784" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_remote3_785" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_7_remote3_785", align 1
  %"$tmp_3_7_call_786" = call i8* @_fetch_remote_field(i8* %"$execptr_load_784", [20 x i8]* %"$tmp_3_7_remote3_785", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_783", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_78", i32 1, i8* %"$indices_buf_781", i32 0), !dbg !53
  %"$tmp_3_7_787" = bitcast i8* %"$tmp_3_7_call_786" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_7_787", %TName_Bool** %tmp_3_7, align 8
  %"$tmp_3_7_788" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_788_789" = bitcast %TName_Bool* %"$tmp_3_7_788" to i8*
  %"$_literal_cost_call_790" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i8* %"$$tmp_3_7_788_789")
  %"$gasadd_791" = add i64 %"$_literal_cost_call_790", 0
  %"$gasadd_792" = add i64 %"$gasadd_791", 1
  %"$gasrem_793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_794" = icmp ugt i64 %"$gasadd_792", %"$gasrem_793"
  br i1 %"$gascmp_794", label %"$out_of_gas_795", label %"$have_gas_796"

"$out_of_gas_795":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_796"

"$have_gas_796":                                  ; preds = %"$out_of_gas_795", %"$have_gas_775"
  %"$consume_797" = sub i64 %"$gasrem_793", %"$gasadd_792"
  store i64 %"$consume_797", i64* @_gasrem, align 8
  %"$tmp_3_7_798" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_798_799" = bitcast %TName_Bool* %"$tmp_3_7_798" to i8*
  %"$_literal_cost_call_800" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i8* %"$$tmp_3_7_798_799")
  %"$gasrem_801" = load i64, i64* @_gasrem, align 8
  %"$gascmp_802" = icmp ugt i64 %"$_literal_cost_call_800", %"$gasrem_801"
  br i1 %"$gascmp_802", label %"$out_of_gas_803", label %"$have_gas_804"

"$out_of_gas_803":                                ; preds = %"$have_gas_796"
  call void @_out_of_gas()
  br label %"$have_gas_804"

"$have_gas_804":                                  ; preds = %"$out_of_gas_803", %"$have_gas_796"
  %"$consume_805" = sub i64 %"$gasrem_801", %"$_literal_cost_call_800"
  store i64 %"$consume_805", i64* @_gasrem, align 8
  %"$execptr_load_806" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_808" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$update_value_809" = bitcast %TName_Bool* %"$tmp_3_7_808" to i8*
  call void @_update_field(i8* %"$execptr_load_806", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_807", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i32 0, i8* null, i8* %"$update_value_809"), !dbg !54
  %tmp_3_8 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_810_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_810_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_810_salloc_load", i64 20)
  %"$indices_buf_810_salloc" = bitcast i8* %"$indices_buf_810_salloc_salloc" to [20 x i8]*
  %"$indices_buf_810" = bitcast [20 x i8]* %"$indices_buf_810_salloc" to i8*
  %"$indices_gep_811" = getelementptr i8, i8* %"$indices_buf_810", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_811" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_813" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_remote3_814" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_8_remote3_814", align 1
  %"$tmp_3_8_call_815" = call i8* @_fetch_remote_field(i8* %"$execptr_load_813", [20 x i8]* %"$tmp_3_8_remote3_814", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_812", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_78", i32 1, i8* %"$indices_buf_810", i32 1), !dbg !55
  %"$tmp_3_8_816" = bitcast i8* %"$tmp_3_8_call_815" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_8_816", %TName_Option_Bool** %tmp_3_8, align 8
  %"$tmp_3_8_817" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_817_818" = bitcast %TName_Option_Bool* %"$tmp_3_8_817" to i8*
  %"$_literal_cost_call_819" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_68", i8* %"$$tmp_3_8_817_818")
  %"$gasadd_820" = add i64 %"$_literal_cost_call_819", 0
  %"$gasadd_821" = add i64 %"$gasadd_820", 1
  %"$gasrem_822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_823" = icmp ugt i64 %"$gasadd_821", %"$gasrem_822"
  br i1 %"$gascmp_823", label %"$out_of_gas_824", label %"$have_gas_825"

"$out_of_gas_824":                                ; preds = %"$have_gas_804"
  call void @_out_of_gas()
  br label %"$have_gas_825"

"$have_gas_825":                                  ; preds = %"$out_of_gas_824", %"$have_gas_804"
  %"$consume_826" = sub i64 %"$gasrem_822", %"$gasadd_821"
  store i64 %"$consume_826", i64* @_gasrem, align 8
  %"$tmp_3_8_827" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_827_828" = bitcast %TName_Option_Bool* %"$tmp_3_8_827" to i8*
  %"$_literal_cost_call_829" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_68", i8* %"$$tmp_3_8_827_828")
  %"$gasrem_830" = load i64, i64* @_gasrem, align 8
  %"$gascmp_831" = icmp ugt i64 %"$_literal_cost_call_829", %"$gasrem_830"
  br i1 %"$gascmp_831", label %"$out_of_gas_832", label %"$have_gas_833"

"$out_of_gas_832":                                ; preds = %"$have_gas_825"
  call void @_out_of_gas()
  br label %"$have_gas_833"

"$have_gas_833":                                  ; preds = %"$out_of_gas_832", %"$have_gas_825"
  %"$consume_834" = sub i64 %"$gasrem_830", %"$_literal_cost_call_829"
  store i64 %"$consume_834", i64* @_gasrem, align 8
  %"$execptr_load_835" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_837" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$update_value_838" = bitcast %TName_Option_Bool* %"$tmp_3_8_837" to i8*
  call void @_update_field(i8* %"$execptr_load_835", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_836", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_68", i32 0, i8* null, i8* %"$update_value_838"), !dbg !56
  %tmp_3_9 = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$execptr_load_840" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_remote3_841" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_9_remote3_841", align 1
  %"$tmp_3_9_call_842" = call i8* @_fetch_remote_field(i8* %"$execptr_load_840", [20 x i8]* %"$tmp_3_9_remote3_841", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_839", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 0, i8* null, i32 1), !dbg !57
  %"$tmp_3_9_843" = bitcast i8* %"$tmp_3_9_call_842" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_843", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$tmp_3_9_844" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_844_845" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_844" to i8*
  %"$_literal_cost_call_846" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$tmp_3_9_844_845")
  %"$tmp_3_9_847" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_847_848" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_847" to i8*
  %"$_mapsortcost_call_849" = call i64 @_mapsortcost(i8* %"$$tmp_3_9_847_848")
  %"$gasadd_850" = add i64 %"$_literal_cost_call_846", %"$_mapsortcost_call_849"
  %"$gasrem_851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_852" = icmp ugt i64 %"$gasadd_850", %"$gasrem_851"
  br i1 %"$gascmp_852", label %"$out_of_gas_853", label %"$have_gas_854"

"$out_of_gas_853":                                ; preds = %"$have_gas_833"
  call void @_out_of_gas()
  br label %"$have_gas_854"

"$have_gas_854":                                  ; preds = %"$out_of_gas_853", %"$have_gas_833"
  %"$consume_855" = sub i64 %"$gasrem_851", %"$gasadd_850"
  store i64 %"$consume_855", i64* @_gasrem, align 8
  %"$tmp_3_9_856" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_856_857" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_856" to i8*
  %"$_literal_cost_call_858" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$tmp_3_9_856_857")
  %"$gasrem_859" = load i64, i64* @_gasrem, align 8
  %"$gascmp_860" = icmp ugt i64 %"$_literal_cost_call_858", %"$gasrem_859"
  br i1 %"$gascmp_860", label %"$out_of_gas_861", label %"$have_gas_862"

"$out_of_gas_861":                                ; preds = %"$have_gas_854"
  call void @_out_of_gas()
  br label %"$have_gas_862"

"$have_gas_862":                                  ; preds = %"$out_of_gas_861", %"$have_gas_854"
  %"$consume_863" = sub i64 %"$gasrem_859", %"$_literal_cost_call_858"
  store i64 %"$consume_863", i64* @_gasrem, align 8
  %"$execptr_load_864" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_866" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$update_value_867" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_866" to i8*
  call void @_update_field(i8* %"$execptr_load_864", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_865", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 0, i8* null, i8* %"$update_value_867"), !dbg !58
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 1, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$have_gas_862"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$have_gas_862"
  %"$consume_872" = sub i64 %"$gasrem_868", 1
  store i64 %"$consume_872", i64* @_gasrem, align 8
  %x = alloca %Uint32, align 8
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_871"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %x, align 4, !dbg !59
  %tmp_3_10 = alloca %TName_Bool*, align 8
  %"$indices_buf_878_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_878_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_878_salloc_load", i64 4)
  %"$indices_buf_878_salloc" = bitcast i8* %"$indices_buf_878_salloc_salloc" to [4 x i8]*
  %"$indices_buf_878" = bitcast [4 x i8]* %"$indices_buf_878_salloc" to i8*
  %"$x_879" = load %Uint32, %Uint32* %x, align 4
  %"$indices_gep_880" = getelementptr i8, i8* %"$indices_buf_878", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_880" to %Uint32*
  store %Uint32 %"$x_879", %Uint32* %indices_cast2, align 4
  %"$execptr_load_882" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_remote3_883" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_10_remote3_883", align 1
  %"$tmp_3_10_call_884" = call i8* @_fetch_remote_field(i8* %"$execptr_load_882", [20 x i8]* %"$tmp_3_10_remote3_883", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_881", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 1, i8* %"$indices_buf_878", i32 0), !dbg !60
  %"$tmp_3_10_885" = bitcast i8* %"$tmp_3_10_call_884" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_10_885", %TName_Bool** %tmp_3_10, align 8
  %"$tmp_3_10_886" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_886_887" = bitcast %TName_Bool* %"$tmp_3_10_886" to i8*
  %"$_literal_cost_call_888" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i8* %"$$tmp_3_10_886_887")
  %"$gasadd_889" = add i64 %"$_literal_cost_call_888", 0
  %"$gasadd_890" = add i64 %"$gasadd_889", 1
  %"$gasrem_891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_892" = icmp ugt i64 %"$gasadd_890", %"$gasrem_891"
  br i1 %"$gascmp_892", label %"$out_of_gas_893", label %"$have_gas_894"

"$out_of_gas_893":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_894"

"$have_gas_894":                                  ; preds = %"$out_of_gas_893", %"$have_gas_876"
  %"$consume_895" = sub i64 %"$gasrem_891", %"$gasadd_890"
  store i64 %"$consume_895", i64* @_gasrem, align 8
  %"$tmp_3_10_896" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_896_897" = bitcast %TName_Bool* %"$tmp_3_10_896" to i8*
  %"$_literal_cost_call_898" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i8* %"$$tmp_3_10_896_897")
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 %"$_literal_cost_call_898", %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_894"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_894"
  %"$consume_903" = sub i64 %"$gasrem_899", %"$_literal_cost_call_898"
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %"$execptr_load_904" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_906" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$update_value_907" = bitcast %TName_Bool* %"$tmp_3_10_906" to i8*
  call void @_update_field(i8* %"$execptr_load_904", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_905", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i32 0, i8* null, i8* %"$update_value_907"), !dbg !61
  %tmp_3_11 = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$indices_buf_908_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_908_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_908_salloc_load", i64 4)
  %"$indices_buf_908_salloc" = bitcast i8* %"$indices_buf_908_salloc_salloc" to [4 x i8]*
  %"$indices_buf_908" = bitcast [4 x i8]* %"$indices_buf_908_salloc" to i8*
  %"$x_909" = load %Uint32, %Uint32* %x, align 4
  %"$indices_gep_910" = getelementptr i8, i8* %"$indices_buf_908", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_910" to %Uint32*
  store %Uint32 %"$x_909", %Uint32* %indices_cast3, align 4
  %"$execptr_load_912" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_11_remote3_913" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_11_remote3_913", align 1
  %"$tmp_3_11_call_914" = call i8* @_fetch_remote_field(i8* %"$execptr_load_912", [20 x i8]* %"$tmp_3_11_remote3_913", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_911", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 1, i8* %"$indices_buf_908", i32 1), !dbg !62
  %"$tmp_3_11_915" = bitcast i8* %"$tmp_3_11_call_914" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_915", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$tmp_3_11_916" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_916_917" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_916" to i8*
  %"$_literal_cost_call_918" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_67", i8* %"$$tmp_3_11_916_917")
  %"$gasadd_919" = add i64 %"$_literal_cost_call_918", 0
  %"$gasadd_920" = add i64 %"$gasadd_919", 1
  %"$gasrem_921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_922" = icmp ugt i64 %"$gasadd_920", %"$gasrem_921"
  br i1 %"$gascmp_922", label %"$out_of_gas_923", label %"$have_gas_924"

"$out_of_gas_923":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_924"

"$have_gas_924":                                  ; preds = %"$out_of_gas_923", %"$have_gas_902"
  %"$consume_925" = sub i64 %"$gasrem_921", %"$gasadd_920"
  store i64 %"$consume_925", i64* @_gasrem, align 8
  %"$tmp_3_11_926" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_926_927" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_926" to i8*
  %"$_literal_cost_call_928" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_67", i8* %"$$tmp_3_11_926_927")
  %"$gasrem_929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_930" = icmp ugt i64 %"$_literal_cost_call_928", %"$gasrem_929"
  br i1 %"$gascmp_930", label %"$out_of_gas_931", label %"$have_gas_932"

"$out_of_gas_931":                                ; preds = %"$have_gas_924"
  call void @_out_of_gas()
  br label %"$have_gas_932"

"$have_gas_932":                                  ; preds = %"$out_of_gas_931", %"$have_gas_924"
  %"$consume_933" = sub i64 %"$gasrem_929", %"$_literal_cost_call_928"
  store i64 %"$consume_933", i64* @_gasrem, align 8
  %"$execptr_load_934" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_11_936" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$update_value_937" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_936" to i8*
  call void @_update_field(i8* %"$execptr_load_934", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_935", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_67", i32 0, i8* null, i8* %"$update_value_937"), !dbg !63
  %tmp_3_12 = alloca %TName_Bool*, align 8
  %"$indices_buf_938_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_938_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_938_salloc_load", i64 24)
  %"$indices_buf_938_salloc" = bitcast i8* %"$indices_buf_938_salloc_salloc" to [24 x i8]*
  %"$indices_buf_938" = bitcast [24 x i8]* %"$indices_buf_938_salloc" to i8*
  %"$x_939" = load %Uint32, %Uint32* %x, align 4
  %"$indices_gep_940" = getelementptr i8, i8* %"$indices_buf_938", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_940" to %Uint32*
  store %Uint32 %"$x_939", %Uint32* %indices_cast4, align 4
  %"$indices_gep_941" = getelementptr i8, i8* %"$indices_buf_938", i32 4
  %indices_cast5 = bitcast i8* %"$indices_gep_941" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast5, align 1
  %"$execptr_load_943" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_12_remote3_944" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_12_remote3_944", align 1
  %"$tmp_3_12_call_945" = call i8* @_fetch_remote_field(i8* %"$execptr_load_943", [20 x i8]* %"$tmp_3_12_remote3_944", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_942", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 2, i8* %"$indices_buf_938", i32 0), !dbg !64
  %"$tmp_3_12_946" = bitcast i8* %"$tmp_3_12_call_945" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_12_946", %TName_Bool** %tmp_3_12, align 8
  %"$tmp_3_12_947" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_947_948" = bitcast %TName_Bool* %"$tmp_3_12_947" to i8*
  %"$_literal_cost_call_949" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i8* %"$$tmp_3_12_947_948")
  %"$gasadd_950" = add i64 %"$_literal_cost_call_949", 0
  %"$gasadd_951" = add i64 %"$gasadd_950", 2
  %"$gasrem_952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_953" = icmp ugt i64 %"$gasadd_951", %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %"$have_gas_932"
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %"$have_gas_932"
  %"$consume_956" = sub i64 %"$gasrem_952", %"$gasadd_951"
  store i64 %"$consume_956", i64* @_gasrem, align 8
  %"$tmp_3_12_957" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_957_958" = bitcast %TName_Bool* %"$tmp_3_12_957" to i8*
  %"$_literal_cost_call_959" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i8* %"$$tmp_3_12_957_958")
  %"$gasrem_960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_961" = icmp ugt i64 %"$_literal_cost_call_959", %"$gasrem_960"
  br i1 %"$gascmp_961", label %"$out_of_gas_962", label %"$have_gas_963"

"$out_of_gas_962":                                ; preds = %"$have_gas_955"
  call void @_out_of_gas()
  br label %"$have_gas_963"

"$have_gas_963":                                  ; preds = %"$out_of_gas_962", %"$have_gas_955"
  %"$consume_964" = sub i64 %"$gasrem_960", %"$_literal_cost_call_959"
  store i64 %"$consume_964", i64* @_gasrem, align 8
  %"$execptr_load_965" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_12_967" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$update_value_968" = bitcast %TName_Bool* %"$tmp_3_12_967" to i8*
  call void @_update_field(i8* %"$execptr_load_965", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_966", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_70", i32 0, i8* null, i8* %"$update_value_968"), !dbg !65
  %tmp_3_13 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_969_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_969_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_969_salloc_load", i64 24)
  %"$indices_buf_969_salloc" = bitcast i8* %"$indices_buf_969_salloc_salloc" to [24 x i8]*
  %"$indices_buf_969" = bitcast [24 x i8]* %"$indices_buf_969_salloc" to i8*
  %"$x_970" = load %Uint32, %Uint32* %x, align 4
  %"$indices_gep_971" = getelementptr i8, i8* %"$indices_buf_969", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_971" to %Uint32*
  store %Uint32 %"$x_970", %Uint32* %indices_cast6, align 4
  %"$indices_gep_972" = getelementptr i8, i8* %"$indices_buf_969", i32 4
  %indices_cast7 = bitcast i8* %"$indices_gep_972" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast7, align 1
  %"$execptr_load_974" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_13_remote3_975" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_13_remote3_975", align 1
  %"$tmp_3_13_call_976" = call i8* @_fetch_remote_field(i8* %"$execptr_load_974", [20 x i8]* %"$tmp_3_13_remote3_975", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_973", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 2, i8* %"$indices_buf_969", i32 1), !dbg !66
  %"$tmp_3_13_977" = bitcast i8* %"$tmp_3_13_call_976" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_13_977", %TName_Option_Bool** %tmp_3_13, align 8
  %"$tmp_3_13_978" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_978_979" = bitcast %TName_Option_Bool* %"$tmp_3_13_978" to i8*
  %"$_literal_cost_call_980" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_68", i8* %"$$tmp_3_13_978_979")
  %"$gasadd_981" = add i64 %"$_literal_cost_call_980", 0
  %"$gasadd_982" = add i64 %"$gasadd_981", 2
  %"$gasrem_983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_984" = icmp ugt i64 %"$gasadd_982", %"$gasrem_983"
  br i1 %"$gascmp_984", label %"$out_of_gas_985", label %"$have_gas_986"

"$out_of_gas_985":                                ; preds = %"$have_gas_963"
  call void @_out_of_gas()
  br label %"$have_gas_986"

"$have_gas_986":                                  ; preds = %"$out_of_gas_985", %"$have_gas_963"
  %"$consume_987" = sub i64 %"$gasrem_983", %"$gasadd_982"
  store i64 %"$consume_987", i64* @_gasrem, align 8
  %"$tmp_3_13_988" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_988_989" = bitcast %TName_Option_Bool* %"$tmp_3_13_988" to i8*
  %"$_literal_cost_call_990" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_68", i8* %"$$tmp_3_13_988_989")
  %"$gasrem_991" = load i64, i64* @_gasrem, align 8
  %"$gascmp_992" = icmp ugt i64 %"$_literal_cost_call_990", %"$gasrem_991"
  br i1 %"$gascmp_992", label %"$out_of_gas_993", label %"$have_gas_994"

"$out_of_gas_993":                                ; preds = %"$have_gas_986"
  call void @_out_of_gas()
  br label %"$have_gas_994"

"$have_gas_994":                                  ; preds = %"$out_of_gas_993", %"$have_gas_986"
  %"$consume_995" = sub i64 %"$gasrem_991", %"$_literal_cost_call_990"
  store i64 %"$consume_995", i64* @_gasrem, align 8
  %"$execptr_load_996" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_13_998" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$update_value_999" = bitcast %TName_Option_Bool* %"$tmp_3_13_998" to i8*
  call void @_update_field(i8* %"$execptr_load_996", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_997", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_68", i32 0, i8* null, i8* %"$update_value_999"), !dbg !67
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i64 @_mapsortcost(i8*)

define void @RemoteReadsTest(i8* %0) !dbg !68 {
entry:
  %"$_amount_1001" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1002" = bitcast i8* %"$_amount_1001" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1002", align 8
  %"$_origin_1003" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1004" = bitcast i8* %"$_origin_1003" to [20 x i8]*
  %"$_sender_1005" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1006" = bitcast i8* %"$_sender_1005" to [20 x i8]*
  %"$remote1_1007" = getelementptr i8, i8* %0, i32 56
  %"$remote1_1008" = bitcast i8* %"$remote1_1007" to [20 x i8]*
  %"$remote2_1009" = getelementptr i8, i8* %0, i32 76
  %"$remote2_1010" = bitcast i8* %"$remote2_1009" to [20 x i8]*
  %"$remote3_1011" = getelementptr i8, i8* %0, i32 96
  %"$remote3_1012" = bitcast i8* %"$remote3_1011" to [20 x i8]*
  call void @"$RemoteReadsTest_565"(%Uint128 %_amount, [20 x i8]* %"$_origin_1004", [20 x i8]* %"$_sender_1006", [20 x i8]* %"$remote1_1008", [20 x i8]* %"$remote2_1010", [20 x i8]* %"$remote3_1012"), !dbg !69
  ret void
}

define internal void @"$RemoteReadsADTTest_1013"(%Uint128 %_amount, [20 x i8]* %"$_origin_1014", [20 x i8]* %"$_sender_1015", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1016") !dbg !70 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1014", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1015", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_1016", align 1
  ret void
}

define void @RemoteReadsADTTest(i8* %0) !dbg !71 {
entry:
  %"$_amount_1018" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1019" = bitcast i8* %"$_amount_1018" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1019", align 8
  %"$_origin_1020" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1021" = bitcast i8* %"$_origin_1020" to [20 x i8]*
  %"$_sender_1022" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1023" = bitcast i8* %"$_sender_1022" to [20 x i8]*
  %"$list1_1024" = getelementptr i8, i8* %0, i32 56
  %"$list1_1025" = bitcast i8* %"$list1_1024" to %TName_List_ByStr20_with_end**
  %list1 = load %TName_List_ByStr20_with_end*, %TName_List_ByStr20_with_end** %"$list1_1025", align 8
  %"$list2_1026" = getelementptr i8, i8* %0, i32 64
  %"$list2_1027" = bitcast i8* %"$list2_1026" to %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"**
  %list2 = load %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"*, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"** %"$list2_1027", align 8
  %"$list3_1028" = getelementptr i8, i8* %0, i32 72
  %"$list3_1029" = bitcast i8* %"$list3_1028" to %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"**
  %list3 = load %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"*, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"** %"$list3_1029", align 8
  %"$pair1_1030" = getelementptr i8, i8* %0, i32 80
  %"$pair1_1031" = bitcast i8* %"$pair1_1030" to %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %pair1 = load %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$pair1_1031", align 8
  %"$adt1_1032" = getelementptr i8, i8* %0, i32 88
  %"$adt1_1033" = bitcast i8* %"$adt1_1032" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %adt1 = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adt1_1033", align 8
  %"$remote1_1034" = getelementptr i8, i8* %0, i32 96
  %"$remote1_1035" = bitcast i8* %"$remote1_1034" to [20 x i8]*
  call void @"$RemoteReadsADTTest_1013"(%Uint128 %_amount, [20 x i8]* %"$_origin_1021", [20 x i8]* %"$_sender_1023", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1035"), !dbg !72
  ret void
}

define internal void @"$OutgoingMsgTest_1036"(%Uint128 %_amount, [20 x i8]* %"$_origin_1037", [20 x i8]* %"$_sender_1038") !dbg !73 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1037", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1038", align 1
  %"$gasrem_1039" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1040" = icmp ugt i64 1, %"$gasrem_1039"
  br i1 %"$gascmp_1040", label %"$out_of_gas_1041", label %"$have_gas_1042"

"$out_of_gas_1041":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1042"

"$have_gas_1042":                                 ; preds = %"$out_of_gas_1041", %entry
  %"$consume_1043" = sub i64 %"$gasrem_1039", 1
  store i64 %"$consume_1043", i64* @_gasrem, align 8
  %msg = alloca i8*, align 8
  %"$gasrem_1044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1045" = icmp ugt i64 1, %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1042"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1042"
  %"$consume_1048" = sub i64 %"$gasrem_1044", 1
  store i64 %"$consume_1048", i64* @_gasrem, align 8
  %"$msgobj_1049_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1049_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1049_salloc_load", i64 169)
  %"$msgobj_1049_salloc" = bitcast i8* %"$msgobj_1049_salloc_salloc" to [169 x i8]*
  %"$msgobj_1049" = bitcast [169 x i8]* %"$msgobj_1049_salloc" to i8*
  store i8 4, i8* %"$msgobj_1049", align 1
  %"$msgobj_fname_1051" = getelementptr i8, i8* %"$msgobj_1049", i32 1
  %"$msgobj_fname_1052" = bitcast i8* %"$msgobj_fname_1051" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1050", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1052", align 8
  %"$msgobj_td_1053" = getelementptr i8, i8* %"$msgobj_1049", i32 17
  %"$msgobj_td_1054" = bitcast i8* %"$msgobj_td_1053" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_45", %_TyDescrTy_Typ** %"$msgobj_td_1054", align 8
  %"$msgobj_v_1056" = getelementptr i8, i8* %"$msgobj_1049", i32 25
  %"$msgobj_v_1057" = bitcast i8* %"$msgobj_v_1056" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1055", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_1057", align 8
  %"$msgobj_fname_1059" = getelementptr i8, i8* %"$msgobj_1049", i32 41
  %"$msgobj_fname_1060" = bitcast i8* %"$msgobj_fname_1059" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1058", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1060", align 8
  %"$msgobj_td_1061" = getelementptr i8, i8* %"$msgobj_1049", i32 57
  %"$msgobj_td_1062" = bitcast i8* %"$msgobj_td_1061" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_94", %_TyDescrTy_Typ** %"$msgobj_td_1062", align 8
  %"$msgobj_v_1063" = getelementptr i8, i8* %"$msgobj_1049", i32 65
  %"$msgobj_v_1064" = bitcast i8* %"$msgobj_v_1063" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_1064", align 1
  %"$msgobj_fname_1066" = getelementptr i8, i8* %"$msgobj_1049", i32 85
  %"$msgobj_fname_1067" = bitcast i8* %"$msgobj_fname_1066" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1065", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1067", align 8
  %"$msgobj_td_1068" = getelementptr i8, i8* %"$msgobj_1049", i32 101
  %"$msgobj_td_1069" = bitcast i8* %"$msgobj_td_1068" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", %_TyDescrTy_Typ** %"$msgobj_td_1069", align 8
  %"$msgobj_v_1070" = getelementptr i8, i8* %"$msgobj_1049", i32 109
  %"$msgobj_v_1071" = bitcast i8* %"$msgobj_v_1070" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_1071", align 8
  %"$msgobj_fname_1073" = getelementptr i8, i8* %"$msgobj_1049", i32 125
  %"$msgobj_fname_1074" = bitcast i8* %"$msgobj_fname_1073" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1072", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1074", align 8
  %"$msgobj_td_1075" = getelementptr i8, i8* %"$msgobj_1049", i32 141
  %"$msgobj_td_1076" = bitcast i8* %"$msgobj_td_1075" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_92", %_TyDescrTy_Typ** %"$msgobj_td_1076", align 8
  %"$cparam3_1077" = load [20 x i8], [20 x i8]* @cparam3, align 1
  %"$msgobj_v_1078" = getelementptr i8, i8* %"$msgobj_1049", i32 149
  %"$msgobj_v_1079" = bitcast i8* %"$msgobj_v_1078" to [20 x i8]*
  store [20 x i8] %"$cparam3_1077", [20 x i8]* %"$msgobj_v_1079", align 1
  store i8* %"$msgobj_1049", i8** %msg, align 8, !dbg !74
  %"$gasrem_1081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1082" = icmp ugt i64 1, %"$gasrem_1081"
  br i1 %"$gascmp_1082", label %"$out_of_gas_1083", label %"$have_gas_1084"

"$out_of_gas_1083":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1084"

"$have_gas_1084":                                 ; preds = %"$out_of_gas_1083", %"$have_gas_1047"
  %"$consume_1085" = sub i64 %"$gasrem_1081", 1
  store i64 %"$consume_1085", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_1086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1087" = icmp ugt i64 1, %"$gasrem_1086"
  br i1 %"$gascmp_1087", label %"$out_of_gas_1088", label %"$have_gas_1089"

"$out_of_gas_1088":                               ; preds = %"$have_gas_1084"
  call void @_out_of_gas()
  br label %"$have_gas_1089"

"$have_gas_1089":                                 ; preds = %"$out_of_gas_1088", %"$have_gas_1084"
  %"$consume_1090" = sub i64 %"$gasrem_1086", 1
  store i64 %"$consume_1090", i64* @_gasrem, align 8
  %n = alloca %TName_List_Message*, align 8
  %"$gasrem_1091" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1092" = icmp ugt i64 1, %"$gasrem_1091"
  br i1 %"$gascmp_1092", label %"$out_of_gas_1093", label %"$have_gas_1094"

"$out_of_gas_1093":                               ; preds = %"$have_gas_1089"
  call void @_out_of_gas()
  br label %"$have_gas_1094"

"$have_gas_1094":                                 ; preds = %"$out_of_gas_1093", %"$have_gas_1089"
  %"$consume_1095" = sub i64 %"$gasrem_1091", 1
  store i64 %"$consume_1095", i64* @_gasrem, align 8
  %"$adtval_1096_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1096_salloc" = call i8* @_salloc(i8* %"$adtval_1096_load", i64 1)
  %"$adtval_1096" = bitcast i8* %"$adtval_1096_salloc" to %CName_Nil_Message*
  %"$adtgep_1097" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_1096", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1097", align 1
  %"$adtptr_1098" = bitcast %CName_Nil_Message* %"$adtval_1096" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1098", %TName_List_Message** %n, align 8, !dbg !75
  %"$gasrem_1099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1100" = icmp ugt i64 1, %"$gasrem_1099"
  br i1 %"$gascmp_1100", label %"$out_of_gas_1101", label %"$have_gas_1102"

"$out_of_gas_1101":                               ; preds = %"$have_gas_1094"
  call void @_out_of_gas()
  br label %"$have_gas_1102"

"$have_gas_1102":                                 ; preds = %"$out_of_gas_1101", %"$have_gas_1094"
  %"$consume_1103" = sub i64 %"$gasrem_1099", 1
  store i64 %"$consume_1103", i64* @_gasrem, align 8
  %"$msg_1104" = load i8*, i8** %msg, align 8
  %"$n_1105" = load %TName_List_Message*, %TName_List_Message** %n, align 8
  %"$adtval_1106_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1106_salloc" = call i8* @_salloc(i8* %"$adtval_1106_load", i64 17)
  %"$adtval_1106" = bitcast i8* %"$adtval_1106_salloc" to %CName_Cons_Message*
  %"$adtgep_1107" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1106", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1107", align 1
  %"$adtgep_1108" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1106", i32 0, i32 1
  store i8* %"$msg_1104", i8** %"$adtgep_1108", align 8
  %"$adtgep_1109" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1106", i32 0, i32 2
  store %TName_List_Message* %"$n_1105", %TName_List_Message** %"$adtgep_1109", align 8
  %"$adtptr_1110" = bitcast %CName_Cons_Message* %"$adtval_1106" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1110", %TName_List_Message** %msgs, align 8, !dbg !76
  %"$msgs_1111" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_1111_1112" = bitcast %TName_List_Message* %"$msgs_1111" to i8*
  %"$_literal_cost_call_1113" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_61", i8* %"$$msgs_1111_1112")
  %"$gasrem_1114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1115" = icmp ugt i64 %"$_literal_cost_call_1113", %"$gasrem_1114"
  br i1 %"$gascmp_1115", label %"$out_of_gas_1116", label %"$have_gas_1117"

"$out_of_gas_1116":                               ; preds = %"$have_gas_1102"
  call void @_out_of_gas()
  br label %"$have_gas_1117"

"$have_gas_1117":                                 ; preds = %"$out_of_gas_1116", %"$have_gas_1102"
  %"$consume_1118" = sub i64 %"$gasrem_1114", %"$_literal_cost_call_1113"
  store i64 %"$consume_1118", i64* @_gasrem, align 8
  %"$execptr_load_1119" = load i8*, i8** @_execptr, align 8
  %"$msgs_1120" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_1119", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_61", %TName_List_Message* %"$msgs_1120"), !dbg !77
  %"$gasrem_1121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1122" = icmp ugt i64 1, %"$gasrem_1121"
  br i1 %"$gascmp_1122", label %"$out_of_gas_1123", label %"$have_gas_1124"

"$out_of_gas_1123":                               ; preds = %"$have_gas_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1124"

"$have_gas_1124":                                 ; preds = %"$out_of_gas_1123", %"$have_gas_1117"
  %"$consume_1125" = sub i64 %"$gasrem_1121", 1
  store i64 %"$consume_1125", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_1126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1127" = icmp ugt i64 1, %"$gasrem_1126"
  br i1 %"$gascmp_1127", label %"$out_of_gas_1128", label %"$have_gas_1129"

"$out_of_gas_1128":                               ; preds = %"$have_gas_1124"
  call void @_out_of_gas()
  br label %"$have_gas_1129"

"$have_gas_1129":                                 ; preds = %"$out_of_gas_1128", %"$have_gas_1124"
  %"$consume_1130" = sub i64 %"$gasrem_1126", 1
  store i64 %"$consume_1130", i64* @_gasrem, align 8
  %"$msgobj_1131_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1131_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1131_salloc_load", i64 85)
  %"$msgobj_1131_salloc" = bitcast i8* %"$msgobj_1131_salloc_salloc" to [85 x i8]*
  %"$msgobj_1131" = bitcast [85 x i8]* %"$msgobj_1131_salloc" to i8*
  store i8 2, i8* %"$msgobj_1131", align 1
  %"$msgobj_fname_1133" = getelementptr i8, i8* %"$msgobj_1131", i32 1
  %"$msgobj_fname_1134" = bitcast i8* %"$msgobj_fname_1133" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1132", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1134", align 8
  %"$msgobj_td_1135" = getelementptr i8, i8* %"$msgobj_1131", i32 17
  %"$msgobj_td_1136" = bitcast i8* %"$msgobj_td_1135" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_45", %_TyDescrTy_Typ** %"$msgobj_td_1136", align 8
  %"$msgobj_v_1138" = getelementptr i8, i8* %"$msgobj_1131", i32 25
  %"$msgobj_v_1139" = bitcast i8* %"$msgobj_v_1138" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1137", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1139", align 8
  %"$msgobj_fname_1141" = getelementptr i8, i8* %"$msgobj_1131", i32 41
  %"$msgobj_fname_1142" = bitcast i8* %"$msgobj_fname_1141" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1140", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1142", align 8
  %"$msgobj_td_1143" = getelementptr i8, i8* %"$msgobj_1131", i32 57
  %"$msgobj_td_1144" = bitcast i8* %"$msgobj_td_1143" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_93", %_TyDescrTy_Typ** %"$msgobj_td_1144", align 8
  %"$cparam2_1145" = load [20 x i8], [20 x i8]* @cparam2, align 1
  %"$msgobj_v_1146" = getelementptr i8, i8* %"$msgobj_1131", i32 65
  %"$msgobj_v_1147" = bitcast i8* %"$msgobj_v_1146" to [20 x i8]*
  store [20 x i8] %"$cparam2_1145", [20 x i8]* %"$msgobj_v_1147", align 1
  store i8* %"$msgobj_1131", i8** %e1, align 8, !dbg !78
  %"$e1_1149" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_1151" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_51", i8* %"$e1_1149")
  %"$gasrem_1152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1153" = icmp ugt i64 %"$_literal_cost_call_1151", %"$gasrem_1152"
  br i1 %"$gascmp_1153", label %"$out_of_gas_1154", label %"$have_gas_1155"

"$out_of_gas_1154":                               ; preds = %"$have_gas_1129"
  call void @_out_of_gas()
  br label %"$have_gas_1155"

"$have_gas_1155":                                 ; preds = %"$out_of_gas_1154", %"$have_gas_1129"
  %"$consume_1156" = sub i64 %"$gasrem_1152", %"$_literal_cost_call_1151"
  store i64 %"$consume_1156", i64* @_gasrem, align 8
  %"$execptr_load_1157" = load i8*, i8** @_execptr, align 8
  %"$e1_1158" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_1157", %_TyDescrTy_Typ* @"$TyDescr_Event_51", i8* %"$e1_1158"), !dbg !79
  %"$gasrem_1159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1160" = icmp ugt i64 1, %"$gasrem_1159"
  br i1 %"$gascmp_1160", label %"$out_of_gas_1161", label %"$have_gas_1162"

"$out_of_gas_1161":                               ; preds = %"$have_gas_1155"
  call void @_out_of_gas()
  br label %"$have_gas_1162"

"$have_gas_1162":                                 ; preds = %"$out_of_gas_1161", %"$have_gas_1155"
  %"$consume_1163" = sub i64 %"$gasrem_1159", 1
  store i64 %"$consume_1163", i64* @_gasrem, align 8
  %e2 = alloca i8*, align 8
  %"$gasrem_1164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1165" = icmp ugt i64 1, %"$gasrem_1164"
  br i1 %"$gascmp_1165", label %"$out_of_gas_1166", label %"$have_gas_1167"

"$out_of_gas_1166":                               ; preds = %"$have_gas_1162"
  call void @_out_of_gas()
  br label %"$have_gas_1167"

"$have_gas_1167":                                 ; preds = %"$out_of_gas_1166", %"$have_gas_1162"
  %"$consume_1168" = sub i64 %"$gasrem_1164", 1
  store i64 %"$consume_1168", i64* @_gasrem, align 8
  %"$msgobj_1169_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1169_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1169_salloc_load", i64 85)
  %"$msgobj_1169_salloc" = bitcast i8* %"$msgobj_1169_salloc_salloc" to [85 x i8]*
  %"$msgobj_1169" = bitcast [85 x i8]* %"$msgobj_1169_salloc" to i8*
  store i8 2, i8* %"$msgobj_1169", align 1
  %"$msgobj_fname_1171" = getelementptr i8, i8* %"$msgobj_1169", i32 1
  %"$msgobj_fname_1172" = bitcast i8* %"$msgobj_fname_1171" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1170", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1172", align 8
  %"$msgobj_td_1173" = getelementptr i8, i8* %"$msgobj_1169", i32 17
  %"$msgobj_td_1174" = bitcast i8* %"$msgobj_td_1173" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_45", %_TyDescrTy_Typ** %"$msgobj_td_1174", align 8
  %"$msgobj_v_1176" = getelementptr i8, i8* %"$msgobj_1169", i32 25
  %"$msgobj_v_1177" = bitcast i8* %"$msgobj_v_1176" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1175", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1177", align 8
  %"$msgobj_fname_1179" = getelementptr i8, i8* %"$msgobj_1169", i32 41
  %"$msgobj_fname_1180" = bitcast i8* %"$msgobj_fname_1179" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1178", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1180", align 8
  %"$msgobj_td_1181" = getelementptr i8, i8* %"$msgobj_1169", i32 57
  %"$msgobj_td_1182" = bitcast i8* %"$msgobj_td_1181" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_92", %_TyDescrTy_Typ** %"$msgobj_td_1182", align 8
  %"$cparam3_1183" = load [20 x i8], [20 x i8]* @cparam3, align 1
  %"$msgobj_v_1184" = getelementptr i8, i8* %"$msgobj_1169", i32 65
  %"$msgobj_v_1185" = bitcast i8* %"$msgobj_v_1184" to [20 x i8]*
  store [20 x i8] %"$cparam3_1183", [20 x i8]* %"$msgobj_v_1185", align 1
  store i8* %"$msgobj_1169", i8** %e2, align 8, !dbg !80
  %"$e2_1187" = load i8*, i8** %e2, align 8
  %"$_literal_cost_call_1189" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_51", i8* %"$e2_1187")
  %"$gasrem_1190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1191" = icmp ugt i64 %"$_literal_cost_call_1189", %"$gasrem_1190"
  br i1 %"$gascmp_1191", label %"$out_of_gas_1192", label %"$have_gas_1193"

"$out_of_gas_1192":                               ; preds = %"$have_gas_1167"
  call void @_out_of_gas()
  br label %"$have_gas_1193"

"$have_gas_1193":                                 ; preds = %"$out_of_gas_1192", %"$have_gas_1167"
  %"$consume_1194" = sub i64 %"$gasrem_1190", %"$_literal_cost_call_1189"
  store i64 %"$consume_1194", i64* @_gasrem, align 8
  %"$execptr_load_1195" = load i8*, i8** @_execptr, align 8
  %"$e2_1196" = load i8*, i8** %e2, align 8
  call void @_event(i8* %"$execptr_load_1195", %_TyDescrTy_Typ* @"$TyDescr_Event_51", i8* %"$e2_1196"), !dbg !81
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @OutgoingMsgTest(i8* %0) !dbg !82 {
entry:
  %"$_amount_1198" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1199" = bitcast i8* %"$_amount_1198" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1199", align 8
  %"$_origin_1200" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1201" = bitcast i8* %"$_origin_1200" to [20 x i8]*
  %"$_sender_1202" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1203" = bitcast i8* %"$_sender_1202" to [20 x i8]*
  call void @"$OutgoingMsgTest_1036"(%Uint128 %_amount, [20 x i8]* %"$_origin_1201", [20 x i8]* %"$_sender_1203"), !dbg !83
  ret void
}

define internal void @"$ExceptionTest_1204"(%Uint128 %_amount, [20 x i8]* %"$_origin_1205", [20 x i8]* %"$_sender_1206") !dbg !84 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1205", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1206", align 1
  %"$gasrem_1207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1208" = icmp ugt i64 1, %"$gasrem_1207"
  br i1 %"$gascmp_1208", label %"$out_of_gas_1209", label %"$have_gas_1210"

"$out_of_gas_1209":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1210"

"$have_gas_1210":                                 ; preds = %"$out_of_gas_1209", %entry
  %"$consume_1211" = sub i64 %"$gasrem_1207", 1
  store i64 %"$consume_1211", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_1212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1213" = icmp ugt i64 1, %"$gasrem_1212"
  br i1 %"$gascmp_1213", label %"$out_of_gas_1214", label %"$have_gas_1215"

"$out_of_gas_1214":                               ; preds = %"$have_gas_1210"
  call void @_out_of_gas()
  br label %"$have_gas_1215"

"$have_gas_1215":                                 ; preds = %"$out_of_gas_1214", %"$have_gas_1210"
  %"$consume_1216" = sub i64 %"$gasrem_1212", 1
  store i64 %"$consume_1216", i64* @_gasrem, align 8
  %"$msgobj_1217_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1217_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1217_salloc_load", i64 85)
  %"$msgobj_1217_salloc" = bitcast i8* %"$msgobj_1217_salloc_salloc" to [85 x i8]*
  %"$msgobj_1217" = bitcast [85 x i8]* %"$msgobj_1217_salloc" to i8*
  store i8 2, i8* %"$msgobj_1217", align 1
  %"$msgobj_fname_1219" = getelementptr i8, i8* %"$msgobj_1217", i32 1
  %"$msgobj_fname_1220" = bitcast i8* %"$msgobj_fname_1219" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1218", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1220", align 8
  %"$msgobj_td_1221" = getelementptr i8, i8* %"$msgobj_1217", i32 17
  %"$msgobj_td_1222" = bitcast i8* %"$msgobj_td_1221" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_45", %_TyDescrTy_Typ** %"$msgobj_td_1222", align 8
  %"$msgobj_v_1224" = getelementptr i8, i8* %"$msgobj_1217", i32 25
  %"$msgobj_v_1225" = bitcast i8* %"$msgobj_v_1224" to %String*
  store %String { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$stringlit_1223", i32 0, i32 0), i32 13 }, %String* %"$msgobj_v_1225", align 8
  %"$msgobj_fname_1227" = getelementptr i8, i8* %"$msgobj_1217", i32 41
  %"$msgobj_fname_1228" = bitcast i8* %"$msgobj_fname_1227" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1226", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1228", align 8
  %"$msgobj_td_1229" = getelementptr i8, i8* %"$msgobj_1217", i32 57
  %"$msgobj_td_1230" = bitcast i8* %"$msgobj_td_1229" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_92", %_TyDescrTy_Typ** %"$msgobj_td_1230", align 8
  %"$cparam3_1231" = load [20 x i8], [20 x i8]* @cparam3, align 1
  %"$msgobj_v_1232" = getelementptr i8, i8* %"$msgobj_1217", i32 65
  %"$msgobj_v_1233" = bitcast i8* %"$msgobj_v_1232" to [20 x i8]*
  store [20 x i8] %"$cparam3_1231", [20 x i8]* %"$msgobj_v_1233", align 1
  store i8* %"$msgobj_1217", i8** %e, align 8, !dbg !85
  %"$e_1235" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_1237" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_53", i8* %"$e_1235")
  %"$gasrem_1238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1239" = icmp ugt i64 %"$_literal_cost_call_1237", %"$gasrem_1238"
  br i1 %"$gascmp_1239", label %"$out_of_gas_1240", label %"$have_gas_1241"

"$out_of_gas_1240":                               ; preds = %"$have_gas_1215"
  call void @_out_of_gas()
  br label %"$have_gas_1241"

"$have_gas_1241":                                 ; preds = %"$out_of_gas_1240", %"$have_gas_1215"
  %"$consume_1242" = sub i64 %"$gasrem_1238", %"$_literal_cost_call_1237"
  store i64 %"$consume_1242", i64* @_gasrem, align 8
  %"$execptr_load_1243" = load i8*, i8** @_execptr, align 8
  %"$e_1244" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_1243", %_TyDescrTy_Typ* @"$TyDescr_Exception_53", i8* %"$e_1244"), !dbg !86
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ExceptionTest(i8* %0) !dbg !87 {
entry:
  %"$_amount_1246" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1247" = bitcast i8* %"$_amount_1246" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1247", align 8
  %"$_origin_1248" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1249" = bitcast i8* %"$_origin_1248" to [20 x i8]*
  %"$_sender_1250" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1251" = bitcast i8* %"$_sender_1250" to [20 x i8]*
  call void @"$ExceptionTest_1204"(%Uint128 %_amount, [20 x i8]* %"$_origin_1249", [20 x i8]* %"$_sender_1251"), !dbg !88
  ret void
}

define internal void @"$AssignTest_1252"(%Uint128 %_amount, [20 x i8]* %"$_origin_1253", [20 x i8]* %"$_sender_1254") !dbg !89 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1253", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1254", align 1
  %"$gasrem_1255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1256" = icmp ugt i64 1, %"$gasrem_1255"
  br i1 %"$gascmp_1256", label %"$out_of_gas_1257", label %"$have_gas_1258"

"$out_of_gas_1257":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1258"

"$have_gas_1258":                                 ; preds = %"$out_of_gas_1257", %entry
  %"$consume_1259" = sub i64 %"$gasrem_1255", 1
  store i64 %"$consume_1259", i64* @_gasrem, align 8
  %x = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1261" = icmp ugt i64 1, %"$gasrem_1260"
  br i1 %"$gascmp_1261", label %"$out_of_gas_1262", label %"$have_gas_1263"

"$out_of_gas_1262":                               ; preds = %"$have_gas_1258"
  call void @_out_of_gas()
  br label %"$have_gas_1263"

"$have_gas_1263":                                 ; preds = %"$out_of_gas_1262", %"$have_gas_1258"
  %"$consume_1264" = sub i64 %"$gasrem_1260", 1
  store i64 %"$consume_1264", i64* @_gasrem, align 8
  %"$cparam3_1265" = load [20 x i8], [20 x i8]* @cparam3, align 1
  %"$adtval_1266_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1266_salloc" = call i8* @_salloc(i8* %"$adtval_1266_load", i64 21)
  %"$adtval_1266" = bitcast i8* %"$adtval_1266_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2*
  %"$adtgep_1267" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1266", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1267", align 1
  %"$adtgep_1268" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1266", i32 0, i32 1
  store [20 x i8] %"$cparam3_1265", [20 x i8]* %"$adtgep_1268", align 1
  %"$adtptr_1269" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1266" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1269", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %x, align 8, !dbg !90
  %"$x_1270" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %x, align 8
  %"$$x_1270_1271" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$x_1270" to i8*
  %"$_literal_cost_call_1272" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69", i8* %"$$x_1270_1271")
  %"$gasrem_1273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1274" = icmp ugt i64 %"$_literal_cost_call_1272", %"$gasrem_1273"
  br i1 %"$gascmp_1274", label %"$out_of_gas_1275", label %"$have_gas_1276"

"$out_of_gas_1275":                               ; preds = %"$have_gas_1263"
  call void @_out_of_gas()
  br label %"$have_gas_1276"

"$have_gas_1276":                                 ; preds = %"$out_of_gas_1275", %"$have_gas_1263"
  %"$consume_1277" = sub i64 %"$gasrem_1273", %"$_literal_cost_call_1272"
  store i64 %"$consume_1277", i64* @_gasrem, align 8
  %"$execptr_load_1278" = load i8*, i8** @_execptr, align 8
  %"$x_1280" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %x, align 8
  %"$update_value_1281" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$x_1280" to i8*
  call void @_update_field(i8* %"$execptr_load_1278", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_1279", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69", i32 0, i8* null, i8* %"$update_value_1281"), !dbg !91
  %"$gasrem_1282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1283" = icmp ugt i64 1, %"$gasrem_1282"
  br i1 %"$gascmp_1283", label %"$out_of_gas_1284", label %"$have_gas_1285"

"$out_of_gas_1284":                               ; preds = %"$have_gas_1276"
  call void @_out_of_gas()
  br label %"$have_gas_1285"

"$have_gas_1285":                                 ; preds = %"$out_of_gas_1284", %"$have_gas_1276"
  %"$consume_1286" = sub i64 %"$gasrem_1282", 1
  store i64 %"$consume_1286", i64* @_gasrem, align 8
  %y = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1288" = icmp ugt i64 1, %"$gasrem_1287"
  br i1 %"$gascmp_1288", label %"$out_of_gas_1289", label %"$have_gas_1290"

"$out_of_gas_1289":                               ; preds = %"$have_gas_1285"
  call void @_out_of_gas()
  br label %"$have_gas_1290"

"$have_gas_1290":                                 ; preds = %"$out_of_gas_1289", %"$have_gas_1285"
  %"$consume_1291" = sub i64 %"$gasrem_1287", 1
  store i64 %"$consume_1291", i64* @_gasrem, align 8
  %n = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1293" = icmp ugt i64 1, %"$gasrem_1292"
  br i1 %"$gascmp_1293", label %"$out_of_gas_1294", label %"$have_gas_1295"

"$out_of_gas_1294":                               ; preds = %"$have_gas_1290"
  call void @_out_of_gas()
  br label %"$have_gas_1295"

"$have_gas_1295":                                 ; preds = %"$out_of_gas_1294", %"$have_gas_1290"
  %"$consume_1296" = sub i64 %"$gasrem_1292", 1
  store i64 %"$consume_1296", i64* @_gasrem, align 8
  %"$adtval_1297_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1297_salloc" = call i8* @_salloc(i8* %"$adtval_1297_load", i64 1)
  %"$adtval_1297" = bitcast i8* %"$adtval_1297_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1298" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1297", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1298", align 1
  %"$adtptr_1299" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1297" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1299", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8, !dbg !92
  %"$gasrem_1300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1301" = icmp ugt i64 1, %"$gasrem_1300"
  br i1 %"$gascmp_1301", label %"$out_of_gas_1302", label %"$have_gas_1303"

"$out_of_gas_1302":                               ; preds = %"$have_gas_1295"
  call void @_out_of_gas()
  br label %"$have_gas_1303"

"$have_gas_1303":                                 ; preds = %"$out_of_gas_1302", %"$have_gas_1295"
  %"$consume_1304" = sub i64 %"$gasrem_1300", 1
  store i64 %"$consume_1304", i64* @_gasrem, align 8
  %"$x_1305" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %x, align 8
  %"$n_1306" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8
  %"$adtval_1307_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1307_salloc" = call i8* @_salloc(i8* %"$adtval_1307_load", i64 17)
  %"$adtval_1307" = bitcast i8* %"$adtval_1307_salloc" to %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1308" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1307", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1308", align 1
  %"$adtgep_1309" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1307", i32 0, i32 1
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$x_1305", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1309", align 8
  %"$adtgep_1310" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1307", i32 0, i32 2
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$n_1306", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1310", align 8
  %"$adtptr_1311" = bitcast %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1307" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1311", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8, !dbg !93
  %"$y_1312" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$$y_1312_1313" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1312" to i8*
  %"$_literal_cost_call_1314" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_65", i8* %"$$y_1312_1313")
  %"$gasrem_1315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1316" = icmp ugt i64 %"$_literal_cost_call_1314", %"$gasrem_1315"
  br i1 %"$gascmp_1316", label %"$out_of_gas_1317", label %"$have_gas_1318"

"$out_of_gas_1317":                               ; preds = %"$have_gas_1303"
  call void @_out_of_gas()
  br label %"$have_gas_1318"

"$have_gas_1318":                                 ; preds = %"$out_of_gas_1317", %"$have_gas_1303"
  %"$consume_1319" = sub i64 %"$gasrem_1315", %"$_literal_cost_call_1314"
  store i64 %"$consume_1319", i64* @_gasrem, align 8
  %"$execptr_load_1320" = load i8*, i8** @_execptr, align 8
  %"$y_1322" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$update_value_1323" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1322" to i8*
  call void @_update_field(i8* %"$execptr_load_1320", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_1321", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_65", i32 0, i8* null, i8* %"$update_value_1323"), !dbg !94
  %"$gasrem_1324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1325" = icmp ugt i64 1, %"$gasrem_1324"
  br i1 %"$gascmp_1325", label %"$out_of_gas_1326", label %"$have_gas_1327"

"$out_of_gas_1326":                               ; preds = %"$have_gas_1318"
  call void @_out_of_gas()
  br label %"$have_gas_1327"

"$have_gas_1327":                                 ; preds = %"$out_of_gas_1326", %"$have_gas_1318"
  %"$consume_1328" = sub i64 %"$gasrem_1324", 1
  store i64 %"$consume_1328", i64* @_gasrem, align 8
  %z = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1330" = icmp ugt i64 1, %"$gasrem_1329"
  br i1 %"$gascmp_1330", label %"$out_of_gas_1331", label %"$have_gas_1332"

"$out_of_gas_1331":                               ; preds = %"$have_gas_1327"
  call void @_out_of_gas()
  br label %"$have_gas_1332"

"$have_gas_1332":                                 ; preds = %"$out_of_gas_1331", %"$have_gas_1327"
  %"$consume_1333" = sub i64 %"$gasrem_1329", 1
  store i64 %"$consume_1333", i64* @_gasrem, align 8
  %n1 = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1335" = icmp ugt i64 1, %"$gasrem_1334"
  br i1 %"$gascmp_1335", label %"$out_of_gas_1336", label %"$have_gas_1337"

"$out_of_gas_1336":                               ; preds = %"$have_gas_1332"
  call void @_out_of_gas()
  br label %"$have_gas_1337"

"$have_gas_1337":                                 ; preds = %"$out_of_gas_1336", %"$have_gas_1332"
  %"$consume_1338" = sub i64 %"$gasrem_1334", 1
  store i64 %"$consume_1338", i64* @_gasrem, align 8
  %"$execptr_load_1339" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1340" = call i8* @_new_empty_map(i8* %"$execptr_load_1339")
  %"$Emp_1341" = bitcast i8* %"$_new_empty_map_call_1340" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$Emp_1341", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %n1, align 8, !dbg !95
  %"$gasrem_1342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1343" = icmp ugt i64 1, %"$gasrem_1342"
  br i1 %"$gascmp_1343", label %"$out_of_gas_1344", label %"$have_gas_1345"

"$out_of_gas_1344":                               ; preds = %"$have_gas_1337"
  call void @_out_of_gas()
  br label %"$have_gas_1345"

"$have_gas_1345":                                 ; preds = %"$out_of_gas_1344", %"$have_gas_1337"
  %"$consume_1346" = sub i64 %"$gasrem_1342", 1
  store i64 %"$consume_1346", i64* @_gasrem, align 8
  %sub_n = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1348" = icmp ugt i64 1, %"$gasrem_1347"
  br i1 %"$gascmp_1348", label %"$out_of_gas_1349", label %"$have_gas_1350"

"$out_of_gas_1349":                               ; preds = %"$have_gas_1345"
  call void @_out_of_gas()
  br label %"$have_gas_1350"

"$have_gas_1350":                                 ; preds = %"$out_of_gas_1349", %"$have_gas_1345"
  %"$consume_1351" = sub i64 %"$gasrem_1347", 1
  store i64 %"$consume_1351", i64* @_gasrem, align 8
  %"$execptr_load_1352" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1353" = call i8* @_new_empty_map(i8* %"$execptr_load_1352")
  %"$Emp_1354" = bitcast i8* %"$_new_empty_map_call_1353" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$Emp_1354", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8, !dbg !96
  %"$gasrem_1355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1356" = icmp ugt i64 1, %"$gasrem_1355"
  br i1 %"$gascmp_1356", label %"$out_of_gas_1357", label %"$have_gas_1358"

"$out_of_gas_1357":                               ; preds = %"$have_gas_1350"
  call void @_out_of_gas()
  br label %"$have_gas_1358"

"$have_gas_1358":                                 ; preds = %"$out_of_gas_1357", %"$have_gas_1350"
  %"$consume_1359" = sub i64 %"$gasrem_1355", 1
  store i64 %"$consume_1359", i64* @_gasrem, align 8
  %sub_k = alloca %Uint128, align 8
  %"$gasrem_1360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1361" = icmp ugt i64 1, %"$gasrem_1360"
  br i1 %"$gascmp_1361", label %"$out_of_gas_1362", label %"$have_gas_1363"

"$out_of_gas_1362":                               ; preds = %"$have_gas_1358"
  call void @_out_of_gas()
  br label %"$have_gas_1363"

"$have_gas_1363":                                 ; preds = %"$out_of_gas_1362", %"$have_gas_1358"
  %"$consume_1364" = sub i64 %"$gasrem_1360", 1
  store i64 %"$consume_1364", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %sub_k, align 8, !dbg !97
  %"$gasrem_1365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1366" = icmp ugt i64 1, %"$gasrem_1365"
  br i1 %"$gascmp_1366", label %"$out_of_gas_1367", label %"$have_gas_1368"

"$out_of_gas_1367":                               ; preds = %"$have_gas_1363"
  call void @_out_of_gas()
  br label %"$have_gas_1368"

"$have_gas_1368":                                 ; preds = %"$out_of_gas_1367", %"$have_gas_1363"
  %"$consume_1369" = sub i64 %"$gasrem_1365", 1
  store i64 %"$consume_1369", i64* @_gasrem, align 8
  %sub_res = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$execptr_load_1370" = load i8*, i8** @_execptr, align 8
  %"$sub_n_1371" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$$sub_n_1371_1372" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_n_1371" to i8*
  %"$put_sub_k_1373" = alloca %Uint128, align 8
  %"$sub_k_1374" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1374", %Uint128* %"$put_sub_k_1373", align 8
  %"$$put_sub_k_1373_1375" = bitcast %Uint128* %"$put_sub_k_1373" to i8*
  %"$x_1376" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %x, align 8
  %"$$x_1376_1377" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$x_1376" to i8*
  %"$put_call_1378" = call i8* @_put(i8* %"$execptr_load_1370", %_TyDescrTy_Typ* @"$TyDescr_Map_72", i8* %"$$sub_n_1371_1372", i8* %"$$put_sub_k_1373_1375", i8* %"$$x_1376_1377")
  %"$_put_1379" = bitcast i8* %"$put_call_1378" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$_put_1379", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8, !dbg !98
  %"$execptr_load_1380" = load i8*, i8** @_execptr, align 8
  %"$n_1381" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %n1, align 8
  %"$$n_1381_1382" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$n_1381" to i8*
  %"$put_sub_k_1383" = alloca %Uint128, align 8
  %"$sub_k_1384" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1384", %Uint128* %"$put_sub_k_1383", align 8
  %"$$put_sub_k_1383_1385" = bitcast %Uint128* %"$put_sub_k_1383" to i8*
  %"$sub_res_1386" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8
  %"$$sub_res_1386_1387" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_res_1386" to i8*
  %"$put_call_1388" = call i8* @_put(i8* %"$execptr_load_1380", %_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$n_1381_1382", i8* %"$$put_sub_k_1383_1385", i8* %"$$sub_res_1386_1387")
  %"$_put_1389" = bitcast i8* %"$put_call_1388" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$_put_1389", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8, !dbg !99
  %"$z_1390" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$$z_1390_1391" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1390" to i8*
  %"$_literal_cost_call_1392" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_73", i8* %"$$z_1390_1391")
  %"$gasrem_1393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1394" = icmp ugt i64 %"$_literal_cost_call_1392", %"$gasrem_1393"
  br i1 %"$gascmp_1394", label %"$out_of_gas_1395", label %"$have_gas_1396"

"$out_of_gas_1395":                               ; preds = %"$have_gas_1368"
  call void @_out_of_gas()
  br label %"$have_gas_1396"

"$have_gas_1396":                                 ; preds = %"$out_of_gas_1395", %"$have_gas_1368"
  %"$consume_1397" = sub i64 %"$gasrem_1393", %"$_literal_cost_call_1392"
  store i64 %"$consume_1397", i64* @_gasrem, align 8
  %"$execptr_load_1398" = load i8*, i8** @_execptr, align 8
  %"$z_1400" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$update_value_1401" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1400" to i8*
  call void @_update_field(i8* %"$execptr_load_1398", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1399", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 0, i8* null, i8* %"$update_value_1401"), !dbg !100
  %"$gasrem_1402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1403" = icmp ugt i64 1, %"$gasrem_1402"
  br i1 %"$gascmp_1403", label %"$out_of_gas_1404", label %"$have_gas_1405"

"$out_of_gas_1404":                               ; preds = %"$have_gas_1396"
  call void @_out_of_gas()
  br label %"$have_gas_1405"

"$have_gas_1405":                                 ; preds = %"$out_of_gas_1404", %"$have_gas_1396"
  %"$consume_1406" = sub i64 %"$gasrem_1402", 1
  store i64 %"$consume_1406", i64* @_gasrem, align 8
  %k1 = alloca %Uint128, align 8
  %"$gasrem_1407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1408" = icmp ugt i64 1, %"$gasrem_1407"
  br i1 %"$gascmp_1408", label %"$out_of_gas_1409", label %"$have_gas_1410"

"$out_of_gas_1409":                               ; preds = %"$have_gas_1405"
  call void @_out_of_gas()
  br label %"$have_gas_1410"

"$have_gas_1410":                                 ; preds = %"$out_of_gas_1409", %"$have_gas_1405"
  %"$consume_1411" = sub i64 %"$gasrem_1407", 1
  store i64 %"$consume_1411", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %k1, align 8, !dbg !101
  %"$gasrem_1412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1413" = icmp ugt i64 1, %"$gasrem_1412"
  br i1 %"$gascmp_1413", label %"$out_of_gas_1414", label %"$have_gas_1415"

"$out_of_gas_1414":                               ; preds = %"$have_gas_1410"
  call void @_out_of_gas()
  br label %"$have_gas_1415"

"$have_gas_1415":                                 ; preds = %"$out_of_gas_1414", %"$have_gas_1410"
  %"$consume_1416" = sub i64 %"$gasrem_1412", 1
  store i64 %"$consume_1416", i64* @_gasrem, align 8
  %k2 = alloca %Uint128, align 8
  %"$gasrem_1417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1418" = icmp ugt i64 1, %"$gasrem_1417"
  br i1 %"$gascmp_1418", label %"$out_of_gas_1419", label %"$have_gas_1420"

"$out_of_gas_1419":                               ; preds = %"$have_gas_1415"
  call void @_out_of_gas()
  br label %"$have_gas_1420"

"$have_gas_1420":                                 ; preds = %"$out_of_gas_1419", %"$have_gas_1415"
  %"$consume_1421" = sub i64 %"$gasrem_1417", 1
  store i64 %"$consume_1421", i64* @_gasrem, align 8
  store %Uint128 { i128 42 }, %Uint128* %k2, align 8, !dbg !102
  %"$x_1422" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %x, align 8
  %"$$x_1422_1423" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$x_1422" to i8*
  %"$_literal_cost_call_1424" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69", i8* %"$$x_1422_1423")
  %"$gasadd_1425" = add i64 %"$_literal_cost_call_1424", 2
  %"$gasrem_1426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1427" = icmp ugt i64 %"$gasadd_1425", %"$gasrem_1426"
  br i1 %"$gascmp_1427", label %"$out_of_gas_1428", label %"$have_gas_1429"

"$out_of_gas_1428":                               ; preds = %"$have_gas_1420"
  call void @_out_of_gas()
  br label %"$have_gas_1429"

"$have_gas_1429":                                 ; preds = %"$out_of_gas_1428", %"$have_gas_1420"
  %"$consume_1430" = sub i64 %"$gasrem_1426", %"$gasadd_1425"
  store i64 %"$consume_1430", i64* @_gasrem, align 8
  %"$indices_buf_1431_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1431_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1431_salloc_load", i64 32)
  %"$indices_buf_1431_salloc" = bitcast i8* %"$indices_buf_1431_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1431" = bitcast [32 x i8]* %"$indices_buf_1431_salloc" to i8*
  %"$k1_1432" = load %Uint128, %Uint128* %k1, align 8
  %"$indices_gep_1433" = getelementptr i8, i8* %"$indices_buf_1431", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1433" to %Uint128*
  store %Uint128 %"$k1_1432", %Uint128* %indices_cast, align 8
  %"$k2_1434" = load %Uint128, %Uint128* %k2, align 8
  %"$indices_gep_1435" = getelementptr i8, i8* %"$indices_buf_1431", i32 16
  %indices_cast2 = bitcast i8* %"$indices_gep_1435" to %Uint128*
  store %Uint128 %"$k2_1434", %Uint128* %indices_cast2, align 8
  %"$execptr_load_1436" = load i8*, i8** @_execptr, align 8
  %"$x_1438" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %x, align 8
  %"$update_value_1439" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$x_1438" to i8*
  call void @_update_field(i8* %"$execptr_load_1436", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1437", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_73", i32 2, i8* %"$indices_buf_1431", i8* %"$update_value_1439"), !dbg !103
  ret void
}

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @AssignTest(i8* %0) !dbg !104 {
entry:
  %"$_amount_1441" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1442" = bitcast i8* %"$_amount_1441" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1442", align 8
  %"$_origin_1443" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1444" = bitcast i8* %"$_origin_1443" to [20 x i8]*
  %"$_sender_1445" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1446" = bitcast i8* %"$_sender_1445" to [20 x i8]*
  call void @"$AssignTest_1252"(%Uint128 %_amount, [20 x i8]* %"$_origin_1444", [20 x i8]* %"$_sender_1446"), !dbg !105
  ret void
}

define internal void @"$SenderBalanceTest_1447"(%Uint128 %_amount, [20 x i8]* %"$_origin_1448", [20 x i8]* %"$_sender_1449") !dbg !106 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1448", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1449", align 1
  %pre = alloca %Uint128, align 8
  %"$execptr_load_1451" = load i8*, i8** @_execptr, align 8
  %"$pre__sender_1452" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$pre__sender_1452", align 1
  %"$pre_call_1453" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1451", [20 x i8]* %"$pre__sender_1452", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1450", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i32 1), !dbg !107
  %"$pre_1454" = bitcast i8* %"$pre_call_1453" to %Uint128*
  %"$pre_1455" = load %Uint128, %Uint128* %"$pre_1454", align 8
  store %Uint128 %"$pre_1455", %Uint128* %pre, align 8
  %"$_literal_cost_pre_1456" = alloca %Uint128, align 8
  %"$pre_1457" = load %Uint128, %Uint128* %pre, align 8
  store %Uint128 %"$pre_1457", %Uint128* %"$_literal_cost_pre_1456", align 8
  %"$$_literal_cost_pre_1456_1458" = bitcast %Uint128* %"$_literal_cost_pre_1456" to i8*
  %"$_literal_cost_call_1459" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_pre_1456_1458")
  %"$gasadd_1460" = add i64 %"$_literal_cost_call_1459", 0
  %"$gasrem_1461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1462" = icmp ugt i64 %"$gasadd_1460", %"$gasrem_1461"
  br i1 %"$gascmp_1462", label %"$out_of_gas_1463", label %"$have_gas_1464"

"$out_of_gas_1463":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1464"

"$have_gas_1464":                                 ; preds = %"$out_of_gas_1463", %entry
  %"$consume_1465" = sub i64 %"$gasrem_1461", %"$gasadd_1460"
  store i64 %"$consume_1465", i64* @_gasrem, align 8
  %"$_literal_cost_pre_1466" = alloca %Uint128, align 8
  %"$pre_1467" = load %Uint128, %Uint128* %pre, align 8
  store %Uint128 %"$pre_1467", %Uint128* %"$_literal_cost_pre_1466", align 8
  %"$$_literal_cost_pre_1466_1468" = bitcast %Uint128* %"$_literal_cost_pre_1466" to i8*
  %"$_literal_cost_call_1469" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_pre_1466_1468")
  %"$gasrem_1470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1471" = icmp ugt i64 %"$_literal_cost_call_1469", %"$gasrem_1470"
  br i1 %"$gascmp_1471", label %"$out_of_gas_1472", label %"$have_gas_1473"

"$out_of_gas_1472":                               ; preds = %"$have_gas_1464"
  call void @_out_of_gas()
  br label %"$have_gas_1473"

"$have_gas_1473":                                 ; preds = %"$out_of_gas_1472", %"$have_gas_1464"
  %"$consume_1474" = sub i64 %"$gasrem_1470", %"$_literal_cost_call_1469"
  store i64 %"$consume_1474", i64* @_gasrem, align 8
  %"$execptr_load_1475" = load i8*, i8** @_execptr, align 8
  %"$pre_1477" = load %Uint128, %Uint128* %pre, align 8
  %"$update_value_1478" = alloca %Uint128, align 8
  store %Uint128 %"$pre_1477", %Uint128* %"$update_value_1478", align 8
  %"$update_value_1479" = bitcast %Uint128* %"$update_value_1478" to i8*
  call void @_update_field(i8* %"$execptr_load_1475", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_pre_1476", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_1479"), !dbg !108
  %"$gasrem_1480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1481" = icmp ugt i64 1, %"$gasrem_1480"
  br i1 %"$gascmp_1481", label %"$out_of_gas_1482", label %"$have_gas_1483"

"$out_of_gas_1482":                               ; preds = %"$have_gas_1473"
  call void @_out_of_gas()
  br label %"$have_gas_1483"

"$have_gas_1483":                                 ; preds = %"$out_of_gas_1482", %"$have_gas_1473"
  %"$consume_1484" = sub i64 %"$gasrem_1480", 1
  store i64 %"$consume_1484", i64* @_gasrem, align 8
  %"$execptr_load_1485" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_1485"), !dbg !109
  %mid = alloca %Uint128, align 8
  %"$execptr_load_1487" = load i8*, i8** @_execptr, align 8
  %"$mid__sender_1488" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$mid__sender_1488", align 1
  %"$mid_call_1489" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1487", [20 x i8]* %"$mid__sender_1488", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1486", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i32 1), !dbg !110
  %"$mid_1490" = bitcast i8* %"$mid_call_1489" to %Uint128*
  %"$mid_1491" = load %Uint128, %Uint128* %"$mid_1490", align 8
  store %Uint128 %"$mid_1491", %Uint128* %mid, align 8
  %"$_literal_cost_mid_1492" = alloca %Uint128, align 8
  %"$mid_1493" = load %Uint128, %Uint128* %mid, align 8
  store %Uint128 %"$mid_1493", %Uint128* %"$_literal_cost_mid_1492", align 8
  %"$$_literal_cost_mid_1492_1494" = bitcast %Uint128* %"$_literal_cost_mid_1492" to i8*
  %"$_literal_cost_call_1495" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_mid_1492_1494")
  %"$gasadd_1496" = add i64 %"$_literal_cost_call_1495", 0
  %"$gasrem_1497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1498" = icmp ugt i64 %"$gasadd_1496", %"$gasrem_1497"
  br i1 %"$gascmp_1498", label %"$out_of_gas_1499", label %"$have_gas_1500"

"$out_of_gas_1499":                               ; preds = %"$have_gas_1483"
  call void @_out_of_gas()
  br label %"$have_gas_1500"

"$have_gas_1500":                                 ; preds = %"$out_of_gas_1499", %"$have_gas_1483"
  %"$consume_1501" = sub i64 %"$gasrem_1497", %"$gasadd_1496"
  store i64 %"$consume_1501", i64* @_gasrem, align 8
  %"$_literal_cost_mid_1502" = alloca %Uint128, align 8
  %"$mid_1503" = load %Uint128, %Uint128* %mid, align 8
  store %Uint128 %"$mid_1503", %Uint128* %"$_literal_cost_mid_1502", align 8
  %"$$_literal_cost_mid_1502_1504" = bitcast %Uint128* %"$_literal_cost_mid_1502" to i8*
  %"$_literal_cost_call_1505" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_mid_1502_1504")
  %"$gasrem_1506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1507" = icmp ugt i64 %"$_literal_cost_call_1505", %"$gasrem_1506"
  br i1 %"$gascmp_1507", label %"$out_of_gas_1508", label %"$have_gas_1509"

"$out_of_gas_1508":                               ; preds = %"$have_gas_1500"
  call void @_out_of_gas()
  br label %"$have_gas_1509"

"$have_gas_1509":                                 ; preds = %"$out_of_gas_1508", %"$have_gas_1500"
  %"$consume_1510" = sub i64 %"$gasrem_1506", %"$_literal_cost_call_1505"
  store i64 %"$consume_1510", i64* @_gasrem, align 8
  %"$execptr_load_1511" = load i8*, i8** @_execptr, align 8
  %"$mid_1513" = load %Uint128, %Uint128* %mid, align 8
  %"$update_value_1514" = alloca %Uint128, align 8
  store %Uint128 %"$mid_1513", %Uint128* %"$update_value_1514", align 8
  %"$update_value_1515" = bitcast %Uint128* %"$update_value_1514" to i8*
  call void @_update_field(i8* %"$execptr_load_1511", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_mid_1512", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_1515"), !dbg !111
  %"$gasrem_1516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1517" = icmp ugt i64 1, %"$gasrem_1516"
  br i1 %"$gascmp_1517", label %"$out_of_gas_1518", label %"$have_gas_1519"

"$out_of_gas_1518":                               ; preds = %"$have_gas_1509"
  call void @_out_of_gas()
  br label %"$have_gas_1519"

"$have_gas_1519":                                 ; preds = %"$out_of_gas_1518", %"$have_gas_1509"
  %"$consume_1520" = sub i64 %"$gasrem_1516", 1
  store i64 %"$consume_1520", i64* @_gasrem, align 8
  %"$execptr_load_1521" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_1521"), !dbg !112
  %post = alloca %Uint128, align 8
  %"$execptr_load_1523" = load i8*, i8** @_execptr, align 8
  %"$post__sender_1524" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$post__sender_1524", align 1
  %"$post_call_1525" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1523", [20 x i8]* %"$post__sender_1524", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1522", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i32 1), !dbg !113
  %"$post_1526" = bitcast i8* %"$post_call_1525" to %Uint128*
  %"$post_1527" = load %Uint128, %Uint128* %"$post_1526", align 8
  store %Uint128 %"$post_1527", %Uint128* %post, align 8
  %"$_literal_cost_post_1528" = alloca %Uint128, align 8
  %"$post_1529" = load %Uint128, %Uint128* %post, align 8
  store %Uint128 %"$post_1529", %Uint128* %"$_literal_cost_post_1528", align 8
  %"$$_literal_cost_post_1528_1530" = bitcast %Uint128* %"$_literal_cost_post_1528" to i8*
  %"$_literal_cost_call_1531" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_post_1528_1530")
  %"$gasadd_1532" = add i64 %"$_literal_cost_call_1531", 0
  %"$gasrem_1533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1534" = icmp ugt i64 %"$gasadd_1532", %"$gasrem_1533"
  br i1 %"$gascmp_1534", label %"$out_of_gas_1535", label %"$have_gas_1536"

"$out_of_gas_1535":                               ; preds = %"$have_gas_1519"
  call void @_out_of_gas()
  br label %"$have_gas_1536"

"$have_gas_1536":                                 ; preds = %"$out_of_gas_1535", %"$have_gas_1519"
  %"$consume_1537" = sub i64 %"$gasrem_1533", %"$gasadd_1532"
  store i64 %"$consume_1537", i64* @_gasrem, align 8
  %"$_literal_cost_post_1538" = alloca %Uint128, align 8
  %"$post_1539" = load %Uint128, %Uint128* %post, align 8
  store %Uint128 %"$post_1539", %Uint128* %"$_literal_cost_post_1538", align 8
  %"$$_literal_cost_post_1538_1540" = bitcast %Uint128* %"$_literal_cost_post_1538" to i8*
  %"$_literal_cost_call_1541" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i8* %"$$_literal_cost_post_1538_1540")
  %"$gasrem_1542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1543" = icmp ugt i64 %"$_literal_cost_call_1541", %"$gasrem_1542"
  br i1 %"$gascmp_1543", label %"$out_of_gas_1544", label %"$have_gas_1545"

"$out_of_gas_1544":                               ; preds = %"$have_gas_1536"
  call void @_out_of_gas()
  br label %"$have_gas_1545"

"$have_gas_1545":                                 ; preds = %"$out_of_gas_1544", %"$have_gas_1536"
  %"$consume_1546" = sub i64 %"$gasrem_1542", %"$_literal_cost_call_1541"
  store i64 %"$consume_1546", i64* @_gasrem, align 8
  %"$execptr_load_1547" = load i8*, i8** @_execptr, align 8
  %"$post_1549" = load %Uint128, %Uint128* %post, align 8
  %"$update_value_1550" = alloca %Uint128, align 8
  store %Uint128 %"$post_1549", %Uint128* %"$update_value_1550", align 8
  %"$update_value_1551" = bitcast %Uint128* %"$update_value_1550" to i8*
  call void @_update_field(i8* %"$execptr_load_1547", i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$sender_balance_post_1548", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_39", i32 0, i8* null, i8* %"$update_value_1551"), !dbg !114
  ret void
}

declare void @_accept(i8*)

define void @SenderBalanceTest(i8* %0) !dbg !115 {
entry:
  %"$_amount_1553" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1554" = bitcast i8* %"$_amount_1553" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1554", align 8
  %"$_origin_1555" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1556" = bitcast i8* %"$_origin_1555" to [20 x i8]*
  %"$_sender_1557" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1558" = bitcast i8* %"$_sender_1557" to [20 x i8]*
  call void @"$SenderBalanceTest_1447"(%Uint128 %_amount, [20 x i8]* %"$_origin_1556", [20 x i8]* %"$_sender_1558"), !dbg !116
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
!106 = distinct !DISubprogram(name: "SenderBalanceTest", linkageName: "SenderBalanceTest", scope: !2, file: !2, line: 165, type: !6, scopeLine: 165, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!107 = !DILocation(line: 166, column: 3, scope: !106)
!108 = !DILocation(line: 167, column: 3, scope: !106)
!109 = !DILocation(line: 169, column: 3, scope: !106)
!110 = !DILocation(line: 170, column: 3, scope: !106)
!111 = !DILocation(line: 171, column: 3, scope: !106)
!112 = !DILocation(line: 173, column: 3, scope: !106)
!113 = !DILocation(line: 174, column: 3, scope: !106)
!114 = !DILocation(line: 175, column: 3, scope: !106)
!115 = distinct !DISubprogram(name: "SenderBalanceTest", linkageName: "SenderBalanceTest", scope: !2, file: !2, line: 165, type: !6, scopeLine: 165, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!116 = !DILocation(line: 165, column: 12, scope: !115)
