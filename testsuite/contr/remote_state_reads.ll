

; gas_remaining: 4002000
; ModuleID = 'RRContract'
source_filename = "RRContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_30" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_62" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_61"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_61" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_63"**, %"$TyDescrTy_ADTTyp_62"* }
%"$TyDescrTy_ADTTyp_Constr_63" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_74" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrFieldTyp_83" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_84" = type { i32, %"$TyDescr_AddrFieldTyp_83"* }
%Uint32 = type { i32 }
%"$ParamDescr_1562" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1563" = type { %ParamDescrString, i32, %"$ParamDescr_1562"* }
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
@"$TyDescr_ADT_List_Message_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_Message_ADTTyp_Specl_107" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_116" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_66" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_125" to i8*) }
@"$TyDescr_ADT_List_ByStr20_with_end_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_134" to i8*) }
@"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_143" to i8*) }
@"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_152" to i8*) }
@"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_164" to i8*) }
@"$TyDescr_ADT_Option_Bool_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Option_Bool_ADTTyp_Specl_173" to i8*) }
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_185" to i8*) }
@"$TyDescr_ADT_Bool_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Bool_ADTTyp_Specl_197" to i8*) }
@"$TyDescr_Map_75" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_74"* @"$TyDescr_MapTyp_200" to i8*) }
@"$TyDescr_Map_76" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_74"* @"$TyDescr_MapTyp_201" to i8*) }
@"$TyDescr_Map_77" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_74"* @"$TyDescr_MapTyp_202" to i8*) }
@"$TyDescr_Map_78" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_74"* @"$TyDescr_MapTyp_203" to i8*) }
@"$TyDescr_Map_79" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_74"* @"$TyDescr_MapTyp_204" to i8*) }
@"$TyDescr_Map_80" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_74"* @"$TyDescr_MapTyp_205" to i8*) }
@"$TyDescr_Map_81" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_74"* @"$TyDescr_MapTyp_206" to i8*) }
@"$TyDescr_Map_82" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_74"* @"$TyDescr_MapTyp_207" to i8*) }
@"$TyDescr_Addr_85" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_210" to i8*) }
@"$TyDescr_Addr_86" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_213" to i8*) }
@"$TyDescr_Addr_87" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_216" to i8*) }
@"$TyDescr_Addr_88" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_222" to i8*) }
@"$TyDescr_Addr_89" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_225" to i8*) }
@"$TyDescr_Addr_90" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_228" to i8*) }
@"$TyDescr_Addr_91" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_231" to i8*) }
@"$TyDescr_Addr_92" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_234" to i8*) }
@"$TyDescr_Addr_93" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_237" to i8*) }
@"$TyDescr_Addr_94" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_240" to i8*) }
@"$TyDescr_Addr_95" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_247" to i8*) }
@"$TyDescr_Addr_96" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_249" to i8*) }
@"$TyDescr_Addr_97" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_84"* @"$TyDescr_AddrFields_250" to i8*) }
@"$TyDescr_List_ADTTyp_98" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_145", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 5, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([5 x %"$TyDescrTy_ADTTyp_Specl_61"*], [5 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_List_ADTTyp_m_specls_144", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_99" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_52", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_64"]
@"$TyDescr_ADT_Cons_100" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_101" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_100", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_99", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_102" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_103" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_104" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_103", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_102", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_105" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_101", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_104"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_106" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_52"]
@"$TyDescr_List_Message_ADTTyp_Specl_107" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_106", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_105", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_List_ADTTyp_98" }
@"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_108" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_86", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_65"]
@"$TyDescr_ADT_Cons_109" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_109", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_108", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_111" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_112" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_112", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_Constr_m_args_111", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_constrs_114" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Cons_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_110", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Nil_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Constr_113"]
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_TArgs_115" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_86"]
@"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_TArgs_115", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_m_constrs_114", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_List_ADTTyp_98" }
@"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_117" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_87", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_66"]
@"$TyDescr_ADT_Cons_118" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_118", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_117", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_120" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_121" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_121", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_Constr_m_args_120", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_constrs_123" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Cons_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_119", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Nil_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Constr_122"]
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_TArgs_124" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_87"]
@"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_TArgs_124", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_m_constrs_123", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_List_ADTTyp_98" }
@"$TyDescr_List_Cons_ByStr20_with_end_Constr_m_args_126" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_97", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_67"]
@"$TyDescr_ADT_Cons_127" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_with_end_ADTTyp_Constr_128" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_127", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_with_end_Constr_m_args_126", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_with_end_Constr_m_args_129" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_130" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_with_end_ADTTyp_Constr_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_130", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_with_end_Constr_m_args_129", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_constrs_132" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Cons_ByStr20_with_end_ADTTyp_Constr_128", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Nil_ByStr20_with_end_ADTTyp_Constr_131"]
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_TArgs_133" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_97"]
@"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_134" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_TArgs_133", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_m_constrs_132", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_List_ADTTyp_98" }
@"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_135" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_68"]
@"$TyDescr_ADT_Cons_136" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_137" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_136", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_135", i32 0, i32 0) }
@"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_138" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_139" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_140" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_139", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_138", i32 0, i32 0) }
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_141" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_137", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_List_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_140"]
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_142" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72"]
@"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_143" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_142", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_141", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_List_ADTTyp_98" }
@"$TyDescr_List_ADTTyp_m_specls_144" = unnamed_addr constant [5 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_Message_ADTTyp_Specl_107", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_ADTTyp_Specl_116", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_contract_field_f_:_Uint128_end_ADTTyp_Specl_125", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_ByStr20_with_end_ADTTyp_Specl_134", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_143"]
@"$TyDescr_ADT_List_145" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_146" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_154", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_61"*], [1 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_Pair_ADTTyp_m_specls_153", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_147" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_97", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72"]
@"$TyDescr_ADT_Pair_148" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_149" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_148", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_Constr_m_args_147", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_150" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Pair_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Constr_149"]
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_151" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_97", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72"]
@"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_152" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_151", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_63"*], [1 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_150", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_Pair_ADTTyp_146" }
@"$TyDescr_Pair_ADTTyp_m_specls_153" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_152"]
@"$TyDescr_ADT_Pair_154" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Option_ADTTyp_155" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_175", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_61"*], [2 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_Option_ADTTyp_m_specls_174", i32 0, i32 0) }
@"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_156" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_81"]
@"$TyDescr_ADT_Some_157" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_158" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_157", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_156", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_159" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_160" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_161" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_160", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_Constr_m_args_159", i32 0, i32 0) }
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_constrs_162" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Option_Some_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_158", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Option_None_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Constr_161"]
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_TArgs_163" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_81"]
@"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_164" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_TArgs_163", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_m_constrs_162", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_Option_ADTTyp_155" }
@"$TyDescr_Option_Some_Bool_Constr_m_args_165" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73"]
@"$TyDescr_ADT_Some_166" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_167" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_166", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_165", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_168" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_169" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_170" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_169", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_168", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_171" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_167", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_170"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_172" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_173" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_172", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_171", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_Option_ADTTyp_155" }
@"$TyDescr_Option_ADTTyp_m_specls_174" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Option_Map_(ByStr20_with_end)_(Bool)_ADTTyp_Specl_164", %"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Option_Bool_ADTTyp_Specl_173"]
@"$TyDescr_ADT_Option_175" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_176" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([53 x i8], [53 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_187", i32 0, i32 0), i32 53 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_61"*], [1 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_m_specls_186", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_Constr_m_args_177" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_97"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_178" = unnamed_addr constant [51 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.Address1"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_ADTTyp_Constr_179" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_178", i32 0, i32 0), i32 51 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_Constr_m_args_177", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_Constr_m_args_180" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_93"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_181" = unnamed_addr constant [51 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.Address2"
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_ADTTyp_Constr_182" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_181", i32 0, i32 0), i32 51 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_Constr_m_args_180", i32 0, i32 0) }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_183" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address1_ADTTyp_Constr_179", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_0x3620c286757a29985cee194eb90064270fb65414.Address2_ADTTyp_Constr_182"]
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_184" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_185" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_TArgs_184", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_m_constrs_183", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_176" }
@"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_m_specls_186" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_ADTTyp_Specl_185"]
@"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_187" = unnamed_addr constant [53 x i8] c"0x3620c286757a29985cee194eb90064270fb65414.AddressADT"
@"$TyDescr_Bool_ADTTyp_188" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_199", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_61"*], [1 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_Bool_ADTTyp_m_specls_198", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_189" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_190" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_191" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_190", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_189", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_192" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_193" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_194" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_193", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_192", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_195" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Bool_True_ADTTyp_Constr_191", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Bool_False_ADTTyp_Constr_194"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_196" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_197" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_196", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_195", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_Bool_ADTTyp_188" }
@"$TyDescr_Bool_ADTTyp_m_specls_198" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Bool_ADTTyp_Specl_197"]
@"$TyDescr_ADT_Bool_199" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_200" = unnamed_addr constant %"$TyDescr_MapTyp_74" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72" }
@"$TyDescr_MapTyp_201" = unnamed_addr constant %"$TyDescr_MapTyp_74" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ* @"$TyDescr_Map_75" }
@"$TyDescr_MapTyp_202" = unnamed_addr constant %"$TyDescr_MapTyp_74" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60" }
@"$TyDescr_MapTyp_203" = unnamed_addr constant %"$TyDescr_MapTyp_74" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", %_TyDescrTy_Typ* @"$TyDescr_Map_79" }
@"$TyDescr_MapTyp_204" = unnamed_addr constant %"$TyDescr_MapTyp_74" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73" }
@"$TyDescr_MapTyp_205" = unnamed_addr constant %"$TyDescr_MapTyp_74" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", %_TyDescrTy_Typ* @"$TyDescr_Map_81" }
@"$TyDescr_MapTyp_206" = unnamed_addr constant %"$TyDescr_MapTyp_74" { %_TyDescrTy_Typ* @"$TyDescr_Addr_97", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73" }
@"$TyDescr_MapTyp_207" = unnamed_addr constant %"$TyDescr_MapTyp_74" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }
@"$TyDescr_AddrField_208" = unnamed_addr constant [1 x i8] c"h"
@"$TyDescr_AddrFields_209" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_83"] [%"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_208", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Map_75" }]
@"$TyDescr_AddrFields_210" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 1, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_83"], [1 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_209", i32 0, i32 0) }
@"$TyDescr_AddrField_211" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_212" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_83"] [%"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_211", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72" }]
@"$TyDescr_AddrFields_213" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 1, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_83"], [1 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_212", i32 0, i32 0) }
@"$TyDescr_AddrField_214" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_215" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_83"] [%"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_214", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }]
@"$TyDescr_AddrFields_216" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 1, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_83"], [1 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_215", i32 0, i32 0) }
@"$TyDescr_AddrField_217" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrField_218" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrField_219" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrField_220" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_221" = unnamed_addr constant [4 x %"$TyDescr_AddrFieldTyp_83"] [%"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_217", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_218", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_81" }, %"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_219", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_80" }, %"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_220", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_34" }]
@"$TyDescr_AddrFields_222" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 4, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([4 x %"$TyDescr_AddrFieldTyp_83"], [4 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_221", i32 0, i32 0) }
@"$TyDescr_AddrField_223" = unnamed_addr constant [9 x i8] c"other_map"
@"$TyDescr_AddrFields_224" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_83"] [%"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$TyDescr_AddrField_223", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_Map_77" }]
@"$TyDescr_AddrFields_225" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 1, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_83"], [1 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_224", i32 0, i32 0) }
@"$TyDescr_AddrField_226" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrFields_227" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_83"] [%"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_226", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_78" }]
@"$TyDescr_AddrFields_228" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 1, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_83"], [1 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_227", i32 0, i32 0) }
@"$TyDescr_AddrField_229" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrFields_230" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_83"] [%"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_229", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_79" }]
@"$TyDescr_AddrFields_231" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 1, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_83"], [1 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_230", i32 0, i32 0) }
@"$TyDescr_AddrField_232" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_233" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_83"] [%"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_232", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60" }]
@"$TyDescr_AddrFields_234" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 1, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_83"], [1 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_233", i32 0, i32 0) }
@"$TyDescr_AddrField_235" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_236" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_83"] [%"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_235", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }]
@"$TyDescr_AddrFields_237" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 1, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_83"], [1 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_236", i32 0, i32 0) }
@"$TyDescr_AddrField_238" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_239" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_83"] [%"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_238", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_34" }]
@"$TyDescr_AddrFields_240" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 1, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_83"], [1 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_239", i32 0, i32 0) }
@"$TyDescr_AddrField_241" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrField_242" = unnamed_addr constant [9 x i8] c"other_map"
@"$TyDescr_AddrField_243" = unnamed_addr constant [6 x i8] c"owners"
@"$TyDescr_AddrField_244" = unnamed_addr constant [10 x i8] c"signatures"
@"$TyDescr_AddrField_245" = unnamed_addr constant [16 x i8] c"transactionCount"
@"$TyDescr_AddrFields_246" = unnamed_addr constant [5 x %"$TyDescr_AddrFieldTyp_83"] [%"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_241", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$TyDescr_AddrField_242", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_Map_82" }, %"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_AddrField_243", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Map_81" }, %"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$TyDescr_AddrField_244", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_Map_80" }, %"$TyDescr_AddrFieldTyp_83" { %TyDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$TyDescr_AddrField_245", i32 0, i32 0), i32 16 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_34" }]
@"$TyDescr_AddrFields_247" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 5, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([5 x %"$TyDescr_AddrFieldTyp_83"], [5 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_246", i32 0, i32 0) }
@"$TyDescr_AddrFields_248" = unnamed_addr constant [0 x %"$TyDescr_AddrFieldTyp_83"] zeroinitializer
@"$TyDescr_AddrFields_249" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 0, %"$TyDescr_AddrFieldTyp_83"* getelementptr inbounds ([0 x %"$TyDescr_AddrFieldTyp_83"], [0 x %"$TyDescr_AddrFieldTyp_83"]* @"$TyDescr_AddrFields_248", i32 0, i32 0) }
@"$TyDescr_AddrFields_250" = unnamed_addr constant %"$TyDescr_AddrTyp_84" { i32 -1, %"$TyDescr_AddrFieldTyp_83"* null }
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@_creation_block = global i8* null
@cparam1 = global [20 x i8] zeroinitializer
@cparam2 = global [20 x i8] zeroinitializer
@cparam3 = global [20 x i8] zeroinitializer
@"$assign_test_1_258" = unnamed_addr constant [14 x i8] c"assign_test_1\00"
@"$assign_test_2_269" = unnamed_addr constant [14 x i8] c"assign_test_2\00"
@"$assign_test_3_280" = unnamed_addr constant [14 x i8] c"assign_test_3\00"
@"$assign_test_4_291" = unnamed_addr constant [14 x i8] c"assign_test_4\00"
@"$assign_test_5_302" = unnamed_addr constant [14 x i8] c"assign_test_5\00"
@"$assign_test_6_313" = unnamed_addr constant [14 x i8] c"assign_test_6\00"
@"$assign_test_7_324" = unnamed_addr constant [14 x i8] c"assign_test_7\00"
@"$assign_test_8_339" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_351" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_363" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$remote_reads_test_res_1_1_372" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$remote_reads_test_res_2_1_382" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$remote_reads_test_res_3_1_392" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$remote_reads_test_res_3_3_402" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$remote_reads_test_res_3_4_413" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$remote_reads_test_res_3_5_423" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$remote_reads_test_res_3_6_436" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$remote_reads_test_res_3_7_448" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$remote_reads_test_res_3_8_475" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$remote_reads_test_res_3_9_487" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$remote_reads_test_res_3_10_499" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$remote_reads_test_res_3_11_511" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$remote_reads_test_res_3_12_523" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$remote_reads_test_res_3_13_535" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$sender_balance_pre_544" = unnamed_addr constant [19 x i8] c"sender_balance_pre\00"
@"$sender_balance_mid_554" = unnamed_addr constant [19 x i8] c"sender_balance_mid\00"
@"$sender_balance_post_564" = unnamed_addr constant [20 x i8] c"sender_balance_post\00"
@"$_balance_574" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_1_1_600" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_1_1\00"
@"$_balance_604" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_2_1_630" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_2_1\00"
@"$_balance_634" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_1_660" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_1\00"
@"$transactionCount_664" = unnamed_addr constant [17 x i8] c"transactionCount\00"
@"$remote_reads_test_res_3_3_690" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_3\00"
@"$admin_694" = unnamed_addr constant [6 x i8] c"admin\00"
@"$remote_reads_test_res_3_4_720" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_4\00"
@"$_balance_724" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$remote_reads_test_res_3_5_751" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_5\00"
@"$owners_755" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_6_781" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_6\00"
@"$owners_786" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_7_810" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_7\00"
@"$owners_815" = unnamed_addr constant [7 x i8] c"owners\00"
@"$remote_reads_test_res_3_8_839" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_8\00"
@"$signatures_842" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_9_868" = unnamed_addr constant [26 x i8] c"remote_reads_test_res_3_9\00"
@"$signatures_884" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_10_908" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_10\00"
@"$signatures_914" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_11_938" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_11\00"
@"$signatures_945" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_12_969" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_12\00"
@"$signatures_976" = unnamed_addr constant [11 x i8] c"signatures\00"
@"$remote_reads_test_res_3_13_1000" = unnamed_addr constant [27 x i8] c"remote_reads_test_res_3_13\00"
@"$stringlit_1053" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_1058" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_1061" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_1068" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_1075" = unnamed_addr constant [5 x i8] c"param"
@"$stringlit_1135" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1140" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1143" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1173" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1178" = unnamed_addr constant [9 x i8] c"TestEvent"
@"$stringlit_1181" = unnamed_addr constant [4 x i8] c"info"
@"$stringlit_1221" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_1226" = unnamed_addr constant [13 x i8] c"TestException"
@"$stringlit_1229" = unnamed_addr constant [5 x i8] c"value"
@"$assign_test_8_1282" = unnamed_addr constant [14 x i8] c"assign_test_8\00"
@"$assign_test_9_1324" = unnamed_addr constant [14 x i8] c"assign_test_9\00"
@"$assign_test_10_1402" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$assign_test_10_1440" = unnamed_addr constant [15 x i8] c"assign_test_10\00"
@"$_balance_1453" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$sender_balance_pre_1479" = unnamed_addr constant [19 x i8] c"sender_balance_pre\00"
@"$_balance_1489" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$sender_balance_mid_1515" = unnamed_addr constant [19 x i8] c"sender_balance_mid\00"
@"$_balance_1525" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$sender_balance_post_1551" = unnamed_addr constant [20 x i8] c"sender_balance_post\00"
@_tydescr_table = constant [46 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_81", %_TyDescrTy_Typ* @"$TyDescr_Event_54", %_TyDescrTy_Typ* @"$TyDescr_Int64_36", %_TyDescrTy_Typ* @"$TyDescr_Addr_93", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_68", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_65", %_TyDescrTy_Typ* @"$TyDescr_Addr_89", %_TyDescrTy_Typ* @"$TyDescr_Addr_86", %_TyDescrTy_Typ* @"$TyDescr_Map_79", %_TyDescrTy_Typ* @"$TyDescr_Exception_56", %_TyDescrTy_Typ* @"$TyDescr_String_48", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_66", %_TyDescrTy_Typ* @"$TyDescr_Int256_44", %_TyDescrTy_Typ* @"$TyDescr_Int128_40", %_TyDescrTy_Typ* @"$TyDescr_Addr_95", %_TyDescrTy_Typ* @"$TyDescr_Bystr_58", %_TyDescrTy_Typ* @"$TyDescr_Addr_91", %_TyDescrTy_Typ* @"$TyDescr_Map_82", %_TyDescrTy_Typ* @"$TyDescr_Map_78", %_TyDescrTy_Typ* @"$TyDescr_Map_76", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_67", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_64", %_TyDescrTy_Typ* @"$TyDescr_Map_80", %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", %_TyDescrTy_Typ* @"$TyDescr_Addr_97", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ* @"$TyDescr_Uint256_46", %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", %_TyDescrTy_Typ* @"$TyDescr_Addr_96", %_TyDescrTy_Typ* @"$TyDescr_Addr_87", %_TyDescrTy_Typ* @"$TyDescr_Addr_85", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_71", %_TyDescrTy_Typ* @"$TyDescr_Uint64_38", %_TyDescrTy_Typ* @"$TyDescr_Bnum_50", %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ* @"$TyDescr_Addr_92", %_TyDescrTy_Typ* @"$TyDescr_Map_77", %_TyDescrTy_Typ* @"$TyDescr_Addr_88", %_TyDescrTy_Typ* @"$TyDescr_Addr_90", %_TyDescrTy_Typ* @"$TyDescr_Map_75", %_TyDescrTy_Typ* @"$TyDescr_Message_52", %_TyDescrTy_Typ* @"$TyDescr_Addr_94", %_TyDescrTy_Typ* @"$TyDescr_Int32_32"]
@_tydescr_table_length = constant i32 46
@"$pname__scilla_version_1564" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_1565" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_1566" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_cparam1_1567" = unnamed_addr constant [7 x i8] c"cparam1"
@"$pname_cparam2_1568" = unnamed_addr constant [7 x i8] c"cparam2"
@"$pname_cparam3_1569" = unnamed_addr constant [7 x i8] c"cparam3"
@_contract_parameters = constant [6 x %"$ParamDescr_1562"] [%"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_1564", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_34" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_1565", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_1566", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_50" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam1_1567", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam2_1568", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_96" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_cparam3_1569", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_95" }]
@_contract_parameters_length = constant i32 6
@"$tpname__amount_1570" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1571" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1572" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote1_1573" = unnamed_addr constant [7 x i8] c"remote1"
@"$tpname_remote2_1574" = unnamed_addr constant [7 x i8] c"remote2"
@"$tpname_remote3_1575" = unnamed_addr constant [7 x i8] c"remote3"
@"$tparams_RemoteReadsTest_1576" = unnamed_addr constant [6 x %"$ParamDescr_1562"] [%"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1570", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1571", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1572", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1573", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote2_1574", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_96" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote3_1575", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_88" }]
@"$tname_RemoteReadsTest_1577" = unnamed_addr constant [15 x i8] c"RemoteReadsTest"
@"$tpname__amount_1578" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1579" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1580" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_list1_1581" = unnamed_addr constant [5 x i8] c"list1"
@"$tpname_list2_1582" = unnamed_addr constant [5 x i8] c"list2"
@"$tpname_list3_1583" = unnamed_addr constant [5 x i8] c"list3"
@"$tpname_pair1_1584" = unnamed_addr constant [5 x i8] c"pair1"
@"$tpname_adt1_1585" = unnamed_addr constant [4 x i8] c"adt1"
@"$tpname_remote1_1586" = unnamed_addr constant [7 x i8] c"remote1"
@"$tparams_RemoteReadsADTTest_1587" = unnamed_addr constant [9 x %"$ParamDescr_1562"] [%"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1578", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1579", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1580", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list1_1581", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_end_67" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list2_1582", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_f_:_Uint128_end_66" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_list3_1583", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end_65" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_pair1_1584", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_69" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_adt1_1585", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_remote1_1586", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_85" }]
@"$tname_RemoteReadsADTTest_1588" = unnamed_addr constant [18 x i8] c"RemoteReadsADTTest"
@"$tpname__amount_1589" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1590" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1591" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_OutgoingMsgTest_1592" = unnamed_addr constant [3 x %"$ParamDescr_1562"] [%"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1589", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1590", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1591", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }]
@"$tname_OutgoingMsgTest_1593" = unnamed_addr constant [15 x i8] c"OutgoingMsgTest"
@"$tpname__amount_1594" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1595" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1596" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_ExceptionTest_1597" = unnamed_addr constant [3 x %"$ParamDescr_1562"] [%"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1594", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1595", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1596", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }]
@"$tname_ExceptionTest_1598" = unnamed_addr constant [13 x i8] c"ExceptionTest"
@"$tpname__amount_1599" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1600" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1601" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AssignTest_1602" = unnamed_addr constant [3 x %"$ParamDescr_1562"] [%"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1599", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1600", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1601", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }]
@"$tname_AssignTest_1603" = unnamed_addr constant [10 x i8] c"AssignTest"
@"$tpname__amount_1604" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1605" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1606" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SenderBalanceTest_1607" = unnamed_addr constant [3 x %"$ParamDescr_1562"] [%"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1604", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_42" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1605", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }, %"$ParamDescr_1562" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1606", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_97" }]
@"$tname_SenderBalanceTest_1608" = unnamed_addr constant [17 x i8] c"SenderBalanceTest"
@_transition_parameters = constant [6 x %"$TransDescr_1563"] [%"$TransDescr_1563" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_RemoteReadsTest_1577", i32 0, i32 0), i32 15 }, i32 6, %"$ParamDescr_1562"* getelementptr inbounds ([6 x %"$ParamDescr_1562"], [6 x %"$ParamDescr_1562"]* @"$tparams_RemoteReadsTest_1576", i32 0, i32 0) }, %"$TransDescr_1563" { %ParamDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$tname_RemoteReadsADTTest_1588", i32 0, i32 0), i32 18 }, i32 9, %"$ParamDescr_1562"* getelementptr inbounds ([9 x %"$ParamDescr_1562"], [9 x %"$ParamDescr_1562"]* @"$tparams_RemoteReadsADTTest_1587", i32 0, i32 0) }, %"$TransDescr_1563" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$tname_OutgoingMsgTest_1593", i32 0, i32 0), i32 15 }, i32 3, %"$ParamDescr_1562"* getelementptr inbounds ([3 x %"$ParamDescr_1562"], [3 x %"$ParamDescr_1562"]* @"$tparams_OutgoingMsgTest_1592", i32 0, i32 0) }, %"$TransDescr_1563" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_ExceptionTest_1598", i32 0, i32 0), i32 13 }, i32 3, %"$ParamDescr_1562"* getelementptr inbounds ([3 x %"$ParamDescr_1562"], [3 x %"$ParamDescr_1562"]* @"$tparams_ExceptionTest_1597", i32 0, i32 0) }, %"$TransDescr_1563" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_AssignTest_1603", i32 0, i32 0), i32 10 }, i32 3, %"$ParamDescr_1562"* getelementptr inbounds ([3 x %"$ParamDescr_1562"], [3 x %"$ParamDescr_1562"]* @"$tparams_AssignTest_1602", i32 0, i32 0) }, %"$TransDescr_1563" { %ParamDescrString { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$tname_SenderBalanceTest_1608", i32 0, i32 0), i32 17 }, i32 3, %"$ParamDescr_1562"* getelementptr inbounds ([3 x %"$ParamDescr_1562"], [3 x %"$ParamDescr_1562"]* @"$tparams_SenderBalanceTest_1607", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 6

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  %"$assign_test_1_3" = alloca [20 x i8], align 1
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %entry
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$cparam3_256" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_256", [20 x i8]* %"$assign_test_1_3", align 1
  %"$execptr_load_257" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_1_3_259" = load [20 x i8], [20 x i8]* %"$assign_test_1_3", align 1
  %"$update_value_260" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_1_3_259", [20 x i8]* %"$update_value_260", align 1
  %"$update_value_261" = bitcast [20 x i8]* %"$update_value_260" to i8*
  call void @_update_field(i8* %"$execptr_load_257", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_1_258", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_95", i32 0, i8* null, i8* %"$update_value_261")
  %"$assign_test_2_4" = alloca [20 x i8], align 1
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_254"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$cparam3_267" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_267", [20 x i8]* %"$assign_test_2_4", align 1
  %"$execptr_load_268" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_2_4_270" = load [20 x i8], [20 x i8]* %"$assign_test_2_4", align 1
  %"$update_value_271" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_2_4_270", [20 x i8]* %"$update_value_271", align 1
  %"$update_value_272" = bitcast [20 x i8]* %"$update_value_271" to i8*
  call void @_update_field(i8* %"$execptr_load_268", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_2_269", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_95", i32 0, i8* null, i8* %"$update_value_272")
  %"$assign_test_3_5" = alloca [20 x i8], align 1
  %"$gasrem_273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_274" = icmp ugt i64 1, %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %"$have_gas_265"
  %"$consume_277" = sub i64 %"$gasrem_273", 1
  store i64 %"$consume_277", i64* @_gasrem, align 8
  %"$cparam3_278" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_278", [20 x i8]* %"$assign_test_3_5", align 1
  %"$execptr_load_279" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_3_5_281" = load [20 x i8], [20 x i8]* %"$assign_test_3_5", align 1
  %"$update_value_282" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_3_5_281", [20 x i8]* %"$update_value_282", align 1
  %"$update_value_283" = bitcast [20 x i8]* %"$update_value_282" to i8*
  call void @_update_field(i8* %"$execptr_load_279", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_3_280", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_95", i32 0, i8* null, i8* %"$update_value_283")
  %"$assign_test_4_6" = alloca [20 x i8], align 1
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_276"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_276"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$cparam3_289" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_289", [20 x i8]* %"$assign_test_4_6", align 1
  %"$execptr_load_290" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_4_6_292" = load [20 x i8], [20 x i8]* %"$assign_test_4_6", align 1
  %"$update_value_293" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_4_6_292", [20 x i8]* %"$update_value_293", align 1
  %"$update_value_294" = bitcast [20 x i8]* %"$update_value_293" to i8*
  call void @_update_field(i8* %"$execptr_load_290", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_4_291", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_95", i32 0, i8* null, i8* %"$update_value_294")
  %"$assign_test_5_7" = alloca [20 x i8], align 1
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_287"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %"$cparam3_300" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_300", [20 x i8]* %"$assign_test_5_7", align 1
  %"$execptr_load_301" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_5_7_303" = load [20 x i8], [20 x i8]* %"$assign_test_5_7", align 1
  %"$update_value_304" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_5_7_303", [20 x i8]* %"$update_value_304", align 1
  %"$update_value_305" = bitcast [20 x i8]* %"$update_value_304" to i8*
  call void @_update_field(i8* %"$execptr_load_301", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_5_302", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_95", i32 0, i8* null, i8* %"$update_value_305")
  %"$assign_test_6_8" = alloca [20 x i8], align 1
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_298"
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %"$cparam3_311" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_311", [20 x i8]* %"$assign_test_6_8", align 1
  %"$execptr_load_312" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_6_8_314" = load [20 x i8], [20 x i8]* %"$assign_test_6_8", align 1
  %"$update_value_315" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_6_8_314", [20 x i8]* %"$update_value_315", align 1
  %"$update_value_316" = bitcast [20 x i8]* %"$update_value_315" to i8*
  call void @_update_field(i8* %"$execptr_load_312", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_6_313", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_95", i32 0, i8* null, i8* %"$update_value_316")
  %"$assign_test_7_9" = alloca [20 x i8], align 1
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_309"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %"$cparam3_322" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_322", [20 x i8]* %"$assign_test_7_9", align 1
  %"$execptr_load_323" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_7_9_325" = load [20 x i8], [20 x i8]* %"$assign_test_7_9", align 1
  %"$update_value_326" = alloca [20 x i8], align 1
  store [20 x i8] %"$$assign_test_7_9_325", [20 x i8]* %"$update_value_326", align 1
  %"$update_value_327" = bitcast [20 x i8]* %"$update_value_326" to i8*
  call void @_update_field(i8* %"$execptr_load_323", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_7_324", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_95", i32 0, i8* null, i8* %"$update_value_327")
  %"$assign_test_8_10" = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_320"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %"$cparam1_333" = load [20 x i8], [20 x i8]* @cparam1, align 1
  %"$adtval_334_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_334_salloc" = call i8* @_salloc(i8* %"$adtval_334_load", i64 21)
  %"$adtval_334" = bitcast i8* %"$adtval_334_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1*
  %"$adtgep_335" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_334", i32 0, i32 0
  store i8 0, i8* %"$adtgep_335", align 1
  %"$adtgep_336" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_334", i32 0, i32 1
  store [20 x i8] %"$cparam1_333", [20 x i8]* %"$adtgep_336", align 1
  %"$adtptr_337" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address1* %"$adtval_334" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_337", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_10", align 8
  %"$execptr_load_338" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_8_10_340" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_8_10", align 8
  %"$update_value_341" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_8_10_340" to i8*
  call void @_update_field(i8* %"$execptr_load_338", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_339", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", i32 0, i8* null, i8* %"$update_value_341")
  %"$assign_test_9_11" = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_331"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %"$adtval_347_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_347_salloc" = call i8* @_salloc(i8* %"$adtval_347_load", i64 1)
  %"$adtval_347" = bitcast i8* %"$adtval_347_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_348" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_347", i32 0, i32 0
  store i8 1, i8* %"$adtgep_348", align 1
  %"$adtptr_349" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_347" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_349", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_11", align 8
  %"$execptr_load_350" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_9_11_352" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$assign_test_9_11", align 8
  %"$update_value_353" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$assign_test_9_11_352" to i8*
  call void @_update_field(i8* %"$execptr_load_350", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_351", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_68", i32 0, i8* null, i8* %"$update_value_353")
  %"$assign_test_10_12" = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_345"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %"$execptr_load_359" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_360" = call i8* @_new_empty_map(i8* %"$execptr_load_359")
  %"$_new_empty_map_361" = bitcast i8* %"$_new_empty_map_call_360" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$_new_empty_map_361", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_12", align 8
  %"$execptr_load_362" = load i8*, i8** @_execptr, align 8
  %"$$assign_test_10_12_364" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$assign_test_10_12", align 8
  %"$update_value_365" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$assign_test_10_12_364" to i8*
  call void @_update_field(i8* %"$execptr_load_362", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_363", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 0, i8* null, i8* %"$update_value_365")
  %"$remote_reads_test_res_1_1_13" = alloca %Uint128, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_357"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_1_1_13", align 8
  %"$execptr_load_371" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_1_1_13_373" = load %Uint128, %Uint128* %"$remote_reads_test_res_1_1_13", align 8
  %"$update_value_374" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_1_1_13_373", %Uint128* %"$update_value_374", align 8
  %"$update_value_375" = bitcast %Uint128* %"$update_value_374" to i8*
  call void @_update_field(i8* %"$execptr_load_371", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_372", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_375")
  %"$remote_reads_test_res_2_1_14" = alloca %Uint128, align 8
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_369"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_2_1_14", align 8
  %"$execptr_load_381" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_2_1_14_383" = load %Uint128, %Uint128* %"$remote_reads_test_res_2_1_14", align 8
  %"$update_value_384" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_2_1_14_383", %Uint128* %"$update_value_384", align 8
  %"$update_value_385" = bitcast %Uint128* %"$update_value_384" to i8*
  call void @_update_field(i8* %"$execptr_load_381", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_382", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_385")
  %"$remote_reads_test_res_3_1_15" = alloca %Uint128, align 8
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 1, %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_379"
  %"$consume_390" = sub i64 %"$gasrem_386", 1
  store i64 %"$consume_390", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_1_15", align 8
  %"$execptr_load_391" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_1_15_393" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_1_15", align 8
  %"$update_value_394" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_1_15_393", %Uint128* %"$update_value_394", align 8
  %"$update_value_395" = bitcast %Uint128* %"$update_value_394" to i8*
  call void @_update_field(i8* %"$execptr_load_391", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_392", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_395")
  %"$remote_reads_test_res_3_3_16" = alloca %Uint32, align 8
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 1, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %"$have_gas_389"
  %"$consume_400" = sub i64 %"$gasrem_396", 1
  store i64 %"$consume_400", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$remote_reads_test_res_3_3_16", align 4
  %"$execptr_load_401" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_3_16_403" = load %Uint32, %Uint32* %"$remote_reads_test_res_3_3_16", align 4
  %"$update_value_404" = alloca %Uint32, align 8
  store %Uint32 %"$$remote_reads_test_res_3_3_16_403", %Uint32* %"$update_value_404", align 4
  %"$update_value_405" = bitcast %Uint32* %"$update_value_404" to i8*
  call void @_update_field(i8* %"$execptr_load_401", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_402", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", i32 0, i8* null, i8* %"$update_value_405")
  %"$remote_reads_test_res_3_4_17" = alloca [20 x i8], align 1
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$have_gas_399"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$have_gas_399"
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %"$cparam3_411" = load [20 x i8], [20 x i8]* @cparam3, align 1
  store [20 x i8] %"$cparam3_411", [20 x i8]* %"$remote_reads_test_res_3_4_17", align 1
  %"$execptr_load_412" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_4_17_414" = load [20 x i8], [20 x i8]* %"$remote_reads_test_res_3_4_17", align 1
  %"$update_value_415" = alloca [20 x i8], align 1
  store [20 x i8] %"$$remote_reads_test_res_3_4_17_414", [20 x i8]* %"$update_value_415", align 1
  %"$update_value_416" = bitcast [20 x i8]* %"$update_value_415" to i8*
  call void @_update_field(i8* %"$execptr_load_412", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_413", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_95", i32 0, i8* null, i8* %"$update_value_416")
  %"$remote_reads_test_res_3_5_18" = alloca %Uint128, align 8
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_409"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_reads_test_res_3_5_18", align 8
  %"$execptr_load_422" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_5_18_424" = load %Uint128, %Uint128* %"$remote_reads_test_res_3_5_18", align 8
  %"$update_value_425" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_reads_test_res_3_5_18_424", %Uint128* %"$update_value_425", align 8
  %"$update_value_426" = bitcast %Uint128* %"$update_value_425" to i8*
  call void @_update_field(i8* %"$execptr_load_422", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_423", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_426")
  %"$remote_reads_test_res_3_6_19" = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_420"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %"$execptr_load_432" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_433" = call i8* @_new_empty_map(i8* %"$execptr_load_432")
  %"$_new_empty_map_434" = bitcast i8* %"$_new_empty_map_call_433" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$_new_empty_map_434", %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_19", align 8
  %"$execptr_load_435" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_6_19_437" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %"$remote_reads_test_res_3_6_19", align 8
  %"$update_value_438" = bitcast %Map_ByStr20_with_end_Bool* %"$$remote_reads_test_res_3_6_19_437" to i8*
  call void @_update_field(i8* %"$execptr_load_435", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_436", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_81", i32 0, i8* null, i8* %"$update_value_438")
  %"$remote_reads_test_res_3_7_20" = alloca %TName_Bool*, align 8
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_430"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$adtval_444_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_444_salloc" = call i8* @_salloc(i8* %"$adtval_444_load", i64 1)
  %"$adtval_444" = bitcast i8* %"$adtval_444_salloc" to %CName_True*
  %"$adtgep_445" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_444", i32 0, i32 0
  store i8 0, i8* %"$adtgep_445", align 1
  %"$adtptr_446" = bitcast %CName_True* %"$adtval_444" to %TName_Bool*
  store %TName_Bool* %"$adtptr_446", %TName_Bool** %"$remote_reads_test_res_3_7_20", align 8
  %"$execptr_load_447" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_7_20_449" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_7_20", align 8
  %"$update_value_450" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_7_20_449" to i8*
  call void @_update_field(i8* %"$execptr_load_447", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_448", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i32 0, i8* null, i8* %"$update_value_450")
  %"$remote_reads_test_res_3_8_21" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_442"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %x = alloca %TName_Bool*, align 8
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_454"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$adtval_461_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_461_salloc" = call i8* @_salloc(i8* %"$adtval_461_load", i64 1)
  %"$adtval_461" = bitcast i8* %"$adtval_461_salloc" to %CName_True*
  %"$adtgep_462" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_461", i32 0, i32 0
  store i8 0, i8* %"$adtgep_462", align 1
  %"$adtptr_463" = bitcast %CName_True* %"$adtval_461" to %TName_Bool*
  store %TName_Bool* %"$adtptr_463", %TName_Bool** %x, align 8
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_459"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %"$x_469" = load %TName_Bool*, %TName_Bool** %x, align 8
  %"$adtval_470_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_470_salloc" = call i8* @_salloc(i8* %"$adtval_470_load", i64 9)
  %"$adtval_470" = bitcast i8* %"$adtval_470_salloc" to %CName_Some_Bool*
  %"$adtgep_471" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_470", i32 0, i32 0
  store i8 0, i8* %"$adtgep_471", align 1
  %"$adtgep_472" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_470", i32 0, i32 1
  store %TName_Bool* %"$x_469", %TName_Bool** %"$adtgep_472", align 8
  %"$adtptr_473" = bitcast %CName_Some_Bool* %"$adtval_470" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_473", %TName_Option_Bool** %"$remote_reads_test_res_3_8_21", align 8
  %"$execptr_load_474" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_8_21_476" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_8_21", align 8
  %"$update_value_477" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_8_21_476" to i8*
  call void @_update_field(i8* %"$execptr_load_474", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_475", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_71", i32 0, i8* null, i8* %"$update_value_477")
  %"$remote_reads_test_res_3_9_22" = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 1, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %"$have_gas_467"
  %"$consume_482" = sub i64 %"$gasrem_478", 1
  store i64 %"$consume_482", i64* @_gasrem, align 8
  %"$execptr_load_483" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_484" = call i8* @_new_empty_map(i8* %"$execptr_load_483")
  %"$_new_empty_map_485" = bitcast i8* %"$_new_empty_map_call_484" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$_new_empty_map_485", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_22", align 8
  %"$execptr_load_486" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_9_22_488" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_9_22", align 8
  %"$update_value_489" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_9_22_488" to i8*
  call void @_update_field(i8* %"$execptr_load_486", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_487", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_80", i32 0, i8* null, i8* %"$update_value_489")
  %"$remote_reads_test_res_3_10_23" = alloca %TName_Bool*, align 8
  %"$gasrem_490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_491" = icmp ugt i64 1, %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %"$have_gas_481"
  %"$consume_494" = sub i64 %"$gasrem_490", 1
  store i64 %"$consume_494", i64* @_gasrem, align 8
  %"$adtval_495_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_495_salloc" = call i8* @_salloc(i8* %"$adtval_495_load", i64 1)
  %"$adtval_495" = bitcast i8* %"$adtval_495_salloc" to %CName_False*
  %"$adtgep_496" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_495", i32 0, i32 0
  store i8 1, i8* %"$adtgep_496", align 1
  %"$adtptr_497" = bitcast %CName_False* %"$adtval_495" to %TName_Bool*
  store %TName_Bool* %"$adtptr_497", %TName_Bool** %"$remote_reads_test_res_3_10_23", align 8
  %"$execptr_load_498" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_10_23_500" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_10_23", align 8
  %"$update_value_501" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_10_23_500" to i8*
  call void @_update_field(i8* %"$execptr_load_498", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_499", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i32 0, i8* null, i8* %"$update_value_501")
  %"$remote_reads_test_res_3_11_24" = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_493"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_493"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %"$adtval_507_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_507_salloc" = call i8* @_salloc(i8* %"$adtval_507_load", i64 1)
  %"$adtval_507" = bitcast i8* %"$adtval_507_salloc" to %"CName_None_Map_(ByStr20_with_end)_(Bool)"*
  %"$adtgep_508" = getelementptr inbounds %"CName_None_Map_(ByStr20_with_end)_(Bool)", %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_507", i32 0, i32 0
  store i8 1, i8* %"$adtgep_508", align 1
  %"$adtptr_509" = bitcast %"CName_None_Map_(ByStr20_with_end)_(Bool)"* %"$adtval_507" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$adtptr_509", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_24", align 8
  %"$execptr_load_510" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_11_24_512" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %"$remote_reads_test_res_3_11_24", align 8
  %"$update_value_513" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$$remote_reads_test_res_3_11_24_512" to i8*
  call void @_update_field(i8* %"$execptr_load_510", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_511", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_70", i32 0, i8* null, i8* %"$update_value_513")
  %"$remote_reads_test_res_3_12_25" = alloca %TName_Bool*, align 8
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_505"
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %"$adtval_519_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_519_salloc" = call i8* @_salloc(i8* %"$adtval_519_load", i64 1)
  %"$adtval_519" = bitcast i8* %"$adtval_519_salloc" to %CName_False*
  %"$adtgep_520" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_519", i32 0, i32 0
  store i8 1, i8* %"$adtgep_520", align 1
  %"$adtptr_521" = bitcast %CName_False* %"$adtval_519" to %TName_Bool*
  store %TName_Bool* %"$adtptr_521", %TName_Bool** %"$remote_reads_test_res_3_12_25", align 8
  %"$execptr_load_522" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_12_25_524" = load %TName_Bool*, %TName_Bool** %"$remote_reads_test_res_3_12_25", align 8
  %"$update_value_525" = bitcast %TName_Bool* %"$$remote_reads_test_res_3_12_25_524" to i8*
  call void @_update_field(i8* %"$execptr_load_522", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_523", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i32 0, i8* null, i8* %"$update_value_525")
  %"$remote_reads_test_res_3_13_26" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_517"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %"$adtval_531_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_531_salloc" = call i8* @_salloc(i8* %"$adtval_531_load", i64 1)
  %"$adtval_531" = bitcast i8* %"$adtval_531_salloc" to %CName_None_Bool*
  %"$adtgep_532" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_531", i32 0, i32 0
  store i8 1, i8* %"$adtgep_532", align 1
  %"$adtptr_533" = bitcast %CName_None_Bool* %"$adtval_531" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_533", %TName_Option_Bool** %"$remote_reads_test_res_3_13_26", align 8
  %"$execptr_load_534" = load i8*, i8** @_execptr, align 8
  %"$$remote_reads_test_res_3_13_26_536" = load %TName_Option_Bool*, %TName_Option_Bool** %"$remote_reads_test_res_3_13_26", align 8
  %"$update_value_537" = bitcast %TName_Option_Bool* %"$$remote_reads_test_res_3_13_26_536" to i8*
  call void @_update_field(i8* %"$execptr_load_534", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_535", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_71", i32 0, i8* null, i8* %"$update_value_537")
  %"$sender_balance_pre_27" = alloca %Uint128, align 8
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_529"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_pre_27", align 8
  %"$execptr_load_543" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_pre_27_545" = load %Uint128, %Uint128* %"$sender_balance_pre_27", align 8
  %"$update_value_546" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_pre_27_545", %Uint128* %"$update_value_546", align 8
  %"$update_value_547" = bitcast %Uint128* %"$update_value_546" to i8*
  call void @_update_field(i8* %"$execptr_load_543", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_pre_544", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_547")
  %"$sender_balance_mid_28" = alloca %Uint128, align 8
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 1, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$have_gas_541"
  %"$consume_552" = sub i64 %"$gasrem_548", 1
  store i64 %"$consume_552", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_mid_28", align 8
  %"$execptr_load_553" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_mid_28_555" = load %Uint128, %Uint128* %"$sender_balance_mid_28", align 8
  %"$update_value_556" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_mid_28_555", %Uint128* %"$update_value_556", align 8
  %"$update_value_557" = bitcast %Uint128* %"$update_value_556" to i8*
  call void @_update_field(i8* %"$execptr_load_553", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_mid_554", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_557")
  %"$sender_balance_post_29" = alloca %Uint128, align 8
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 1, %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$have_gas_551"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$have_gas_551"
  %"$consume_562" = sub i64 %"$gasrem_558", 1
  store i64 %"$consume_562", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$sender_balance_post_29", align 8
  %"$execptr_load_563" = load i8*, i8** @_execptr, align 8
  %"$$sender_balance_post_29_565" = load %Uint128, %Uint128* %"$sender_balance_post_29", align 8
  %"$update_value_566" = alloca %Uint128, align 8
  store %Uint128 %"$$sender_balance_post_29_565", %Uint128* %"$update_value_566", align 8
  %"$update_value_567" = bitcast %Uint128* %"$update_value_566" to i8*
  call void @_update_field(i8* %"$execptr_load_563", i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$sender_balance_post_564", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_567")
  ret void
}

declare void @_out_of_gas()

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_new_empty_map(i8*)

define internal void @"$RemoteReadsTest_568"(%Uint128 %_amount, [20 x i8]* %"$_origin_569", [20 x i8]* %"$_sender_570", [20 x i8]* %"$remote1_571", [20 x i8]* %"$remote2_572", [20 x i8]* %"$remote3_573") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_569", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_570", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_571", align 1
  %remote2 = load [20 x i8], [20 x i8]* %"$remote2_572", align 1
  %remote3 = load [20 x i8], [20 x i8]* %"$remote3_573", align 1
  %tmp_1_1 = alloca %Uint128, align 8
  %"$execptr_load_575" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_remote1_576" = alloca [20 x i8], align 1
  store [20 x i8] %remote1, [20 x i8]* %"$tmp_1_1_remote1_576", align 1
  %"$tmp_1_1_call_577" = call i8* @_fetch_remote_field(i8* %"$execptr_load_575", [20 x i8]* %"$tmp_1_1_remote1_576", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_574", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i32 1)
  %"$tmp_1_1_578" = bitcast i8* %"$tmp_1_1_call_577" to %Uint128*
  %"$tmp_1_1_579" = load %Uint128, %Uint128* %"$tmp_1_1_578", align 8
  store %Uint128 %"$tmp_1_1_579", %Uint128* %tmp_1_1, align 8
  %"$_literal_cost_tmp_1_1_580" = alloca %Uint128, align 8
  %"$tmp_1_1_581" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_581", %Uint128* %"$_literal_cost_tmp_1_1_580", align 8
  %"$$_literal_cost_tmp_1_1_580_582" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_580" to i8*
  %"$_literal_cost_call_583" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_1_1_580_582")
  %"$gasadd_584" = add i64 %"$_literal_cost_call_583", 0
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 %"$gasadd_584", %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %entry
  %"$consume_589" = sub i64 %"$gasrem_585", %"$gasadd_584"
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_1_1_590" = alloca %Uint128, align 8
  %"$tmp_1_1_591" = load %Uint128, %Uint128* %tmp_1_1, align 8
  store %Uint128 %"$tmp_1_1_591", %Uint128* %"$_literal_cost_tmp_1_1_590", align 8
  %"$$_literal_cost_tmp_1_1_590_592" = bitcast %Uint128* %"$_literal_cost_tmp_1_1_590" to i8*
  %"$_literal_cost_call_593" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_1_1_590_592")
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 %"$_literal_cost_call_593", %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %"$have_gas_588"
  %"$consume_598" = sub i64 %"$gasrem_594", %"$_literal_cost_call_593"
  store i64 %"$consume_598", i64* @_gasrem, align 8
  %"$execptr_load_599" = load i8*, i8** @_execptr, align 8
  %"$tmp_1_1_601" = load %Uint128, %Uint128* %tmp_1_1, align 8
  %"$update_value_602" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_1_1_601", %Uint128* %"$update_value_602", align 8
  %"$update_value_603" = bitcast %Uint128* %"$update_value_602" to i8*
  call void @_update_field(i8* %"$execptr_load_599", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_1_1_600", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_603")
  %tmp_2_1 = alloca %Uint128, align 8
  %"$execptr_load_605" = load i8*, i8** @_execptr, align 8
  %"$tmp_2_1_remote2_606" = alloca [20 x i8], align 1
  store [20 x i8] %remote2, [20 x i8]* %"$tmp_2_1_remote2_606", align 1
  %"$tmp_2_1_call_607" = call i8* @_fetch_remote_field(i8* %"$execptr_load_605", [20 x i8]* %"$tmp_2_1_remote2_606", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_604", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i32 1)
  %"$tmp_2_1_608" = bitcast i8* %"$tmp_2_1_call_607" to %Uint128*
  %"$tmp_2_1_609" = load %Uint128, %Uint128* %"$tmp_2_1_608", align 8
  store %Uint128 %"$tmp_2_1_609", %Uint128* %tmp_2_1, align 8
  %"$_literal_cost_tmp_2_1_610" = alloca %Uint128, align 8
  %"$tmp_2_1_611" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_611", %Uint128* %"$_literal_cost_tmp_2_1_610", align 8
  %"$$_literal_cost_tmp_2_1_610_612" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_610" to i8*
  %"$_literal_cost_call_613" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_2_1_610_612")
  %"$gasadd_614" = add i64 %"$_literal_cost_call_613", 0
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 %"$gasadd_614", %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$have_gas_597"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$have_gas_597"
  %"$consume_619" = sub i64 %"$gasrem_615", %"$gasadd_614"
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_2_1_620" = alloca %Uint128, align 8
  %"$tmp_2_1_621" = load %Uint128, %Uint128* %tmp_2_1, align 8
  store %Uint128 %"$tmp_2_1_621", %Uint128* %"$_literal_cost_tmp_2_1_620", align 8
  %"$$_literal_cost_tmp_2_1_620_622" = bitcast %Uint128* %"$_literal_cost_tmp_2_1_620" to i8*
  %"$_literal_cost_call_623" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_2_1_620_622")
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
  %"$tmp_2_1_631" = load %Uint128, %Uint128* %tmp_2_1, align 8
  %"$update_value_632" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_2_1_631", %Uint128* %"$update_value_632", align 8
  %"$update_value_633" = bitcast %Uint128* %"$update_value_632" to i8*
  call void @_update_field(i8* %"$execptr_load_629", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_2_1_630", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_633")
  %tmp_3_1 = alloca %Uint128, align 8
  %"$execptr_load_635" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_1_remote3_636" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_1_remote3_636", align 1
  %"$tmp_3_1_call_637" = call i8* @_fetch_remote_field(i8* %"$execptr_load_635", [20 x i8]* %"$tmp_3_1_remote3_636", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_634", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i32 1)
  %"$tmp_3_1_638" = bitcast i8* %"$tmp_3_1_call_637" to %Uint128*
  %"$tmp_3_1_639" = load %Uint128, %Uint128* %"$tmp_3_1_638", align 8
  store %Uint128 %"$tmp_3_1_639", %Uint128* %tmp_3_1, align 8
  %"$_literal_cost_tmp_3_1_640" = alloca %Uint128, align 8
  %"$tmp_3_1_641" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_641", %Uint128* %"$_literal_cost_tmp_3_1_640", align 8
  %"$$_literal_cost_tmp_3_1_640_642" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_640" to i8*
  %"$_literal_cost_call_643" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_3_1_640_642")
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
  %"$_literal_cost_tmp_3_1_650" = alloca %Uint128, align 8
  %"$tmp_3_1_651" = load %Uint128, %Uint128* %tmp_3_1, align 8
  store %Uint128 %"$tmp_3_1_651", %Uint128* %"$_literal_cost_tmp_3_1_650", align 8
  %"$$_literal_cost_tmp_3_1_650_652" = bitcast %Uint128* %"$_literal_cost_tmp_3_1_650" to i8*
  %"$_literal_cost_call_653" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_3_1_650_652")
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
  %"$tmp_3_1_661" = load %Uint128, %Uint128* %tmp_3_1, align 8
  %"$update_value_662" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_1_661", %Uint128* %"$update_value_662", align 8
  %"$update_value_663" = bitcast %Uint128* %"$update_value_662" to i8*
  call void @_update_field(i8* %"$execptr_load_659", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_1_660", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_663")
  %tmp_3_3 = alloca %Uint32, align 8
  %"$execptr_load_665" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_3_remote3_666" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_3_remote3_666", align 1
  %"$tmp_3_3_call_667" = call i8* @_fetch_remote_field(i8* %"$execptr_load_665", [20 x i8]* %"$tmp_3_3_remote3_666", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$transactionCount_664", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", i32 0, i8* null, i32 1)
  %"$tmp_3_3_668" = bitcast i8* %"$tmp_3_3_call_667" to %Uint32*
  %"$tmp_3_3_669" = load %Uint32, %Uint32* %"$tmp_3_3_668", align 4
  store %Uint32 %"$tmp_3_3_669", %Uint32* %tmp_3_3, align 4
  %"$_literal_cost_tmp_3_3_670" = alloca %Uint32, align 8
  %"$tmp_3_3_671" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_671", %Uint32* %"$_literal_cost_tmp_3_3_670", align 4
  %"$$_literal_cost_tmp_3_3_670_672" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_670" to i8*
  %"$_literal_cost_call_673" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_34", i8* %"$$_literal_cost_tmp_3_3_670_672")
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
  %"$_literal_cost_tmp_3_3_680" = alloca %Uint32, align 8
  %"$tmp_3_3_681" = load %Uint32, %Uint32* %tmp_3_3, align 4
  store %Uint32 %"$tmp_3_3_681", %Uint32* %"$_literal_cost_tmp_3_3_680", align 4
  %"$$_literal_cost_tmp_3_3_680_682" = bitcast %Uint32* %"$_literal_cost_tmp_3_3_680" to i8*
  %"$_literal_cost_call_683" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_34", i8* %"$$_literal_cost_tmp_3_3_680_682")
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
  %"$tmp_3_3_691" = load %Uint32, %Uint32* %tmp_3_3, align 4
  %"$update_value_692" = alloca %Uint32, align 8
  store %Uint32 %"$tmp_3_3_691", %Uint32* %"$update_value_692", align 4
  %"$update_value_693" = bitcast %Uint32* %"$update_value_692" to i8*
  call void @_update_field(i8* %"$execptr_load_689", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_3_690", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint32_34", i32 0, i8* null, i8* %"$update_value_693")
  %tmp_3_4 = alloca [20 x i8], align 1
  %"$execptr_load_695" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_4_remote3_696" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_4_remote3_696", align 1
  %"$tmp_3_4_call_697" = call i8* @_fetch_remote_field(i8* %"$execptr_load_695", [20 x i8]* %"$tmp_3_4_remote3_696", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_694", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_97", i32 0, i8* null, i32 1)
  %"$tmp_3_4_698" = bitcast i8* %"$tmp_3_4_call_697" to [20 x i8]*
  %"$tmp_3_4_699" = load [20 x i8], [20 x i8]* %"$tmp_3_4_698", align 1
  store [20 x i8] %"$tmp_3_4_699", [20 x i8]* %tmp_3_4, align 1
  %"$_literal_cost_tmp_3_4_700" = alloca [20 x i8], align 1
  %"$tmp_3_4_701" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_701", [20 x i8]* %"$_literal_cost_tmp_3_4_700", align 1
  %"$$_literal_cost_tmp_3_4_700_702" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_700" to i8*
  %"$_literal_cost_call_703" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_97", i8* %"$$_literal_cost_tmp_3_4_700_702")
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
  %"$_literal_cost_tmp_3_4_710" = alloca [20 x i8], align 1
  %"$tmp_3_4_711" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_711", [20 x i8]* %"$_literal_cost_tmp_3_4_710", align 1
  %"$$_literal_cost_tmp_3_4_710_712" = bitcast [20 x i8]* %"$_literal_cost_tmp_3_4_710" to i8*
  %"$_literal_cost_call_713" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_97", i8* %"$$_literal_cost_tmp_3_4_710_712")
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
  %"$tmp_3_4_721" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  %"$update_value_722" = alloca [20 x i8], align 1
  store [20 x i8] %"$tmp_3_4_721", [20 x i8]* %"$update_value_722", align 1
  %"$update_value_723" = bitcast [20 x i8]* %"$update_value_722" to i8*
  call void @_update_field(i8* %"$execptr_load_719", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_4_720", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_97", i32 0, i8* null, i8* %"$update_value_723")
  %tmp_3_5 = alloca %Uint128, align 8
  %"$execptr_load_725" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_5_tmp_3_4_726" = alloca [20 x i8], align 1
  %"$tmp_3_4_727" = load [20 x i8], [20 x i8]* %tmp_3_4, align 1
  store [20 x i8] %"$tmp_3_4_727", [20 x i8]* %"$tmp_3_5_tmp_3_4_726", align 1
  %"$tmp_3_5_call_728" = call i8* @_fetch_remote_field(i8* %"$execptr_load_725", [20 x i8]* %"$tmp_3_5_tmp_3_4_726", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_724", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i32 1)
  %"$tmp_3_5_729" = bitcast i8* %"$tmp_3_5_call_728" to %Uint128*
  %"$tmp_3_5_730" = load %Uint128, %Uint128* %"$tmp_3_5_729", align 8
  store %Uint128 %"$tmp_3_5_730", %Uint128* %tmp_3_5, align 8
  %"$_literal_cost_tmp_3_5_731" = alloca %Uint128, align 8
  %"$tmp_3_5_732" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_732", %Uint128* %"$_literal_cost_tmp_3_5_731", align 8
  %"$$_literal_cost_tmp_3_5_731_733" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_731" to i8*
  %"$_literal_cost_call_734" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_3_5_731_733")
  %"$gasadd_735" = add i64 %"$_literal_cost_call_734", 0
  %"$gasrem_736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_737" = icmp ugt i64 %"$gasadd_735", %"$gasrem_736"
  br i1 %"$gascmp_737", label %"$out_of_gas_738", label %"$have_gas_739"

"$out_of_gas_738":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_739"

"$have_gas_739":                                  ; preds = %"$out_of_gas_738", %"$have_gas_717"
  %"$consume_740" = sub i64 %"$gasrem_736", %"$gasadd_735"
  store i64 %"$consume_740", i64* @_gasrem, align 8
  %"$_literal_cost_tmp_3_5_741" = alloca %Uint128, align 8
  %"$tmp_3_5_742" = load %Uint128, %Uint128* %tmp_3_5, align 8
  store %Uint128 %"$tmp_3_5_742", %Uint128* %"$_literal_cost_tmp_3_5_741", align 8
  %"$$_literal_cost_tmp_3_5_741_743" = bitcast %Uint128* %"$_literal_cost_tmp_3_5_741" to i8*
  %"$_literal_cost_call_744" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_tmp_3_5_741_743")
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 %"$_literal_cost_call_744", %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %"$have_gas_739"
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %"$have_gas_739"
  %"$consume_749" = sub i64 %"$gasrem_745", %"$_literal_cost_call_744"
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %"$execptr_load_750" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_5_752" = load %Uint128, %Uint128* %tmp_3_5, align 8
  %"$update_value_753" = alloca %Uint128, align 8
  store %Uint128 %"$tmp_3_5_752", %Uint128* %"$update_value_753", align 8
  %"$update_value_754" = bitcast %Uint128* %"$update_value_753" to i8*
  call void @_update_field(i8* %"$execptr_load_750", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_5_751", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_754")
  %tmp_3_6 = alloca %Map_ByStr20_with_end_Bool*, align 8
  %"$execptr_load_756" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_remote3_757" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_6_remote3_757", align 1
  %"$tmp_3_6_call_758" = call i8* @_fetch_remote_field(i8* %"$execptr_load_756", [20 x i8]* %"$tmp_3_6_remote3_757", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_755", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_81", i32 0, i8* null, i32 1)
  %"$tmp_3_6_759" = bitcast i8* %"$tmp_3_6_call_758" to %Map_ByStr20_with_end_Bool*
  store %Map_ByStr20_with_end_Bool* %"$tmp_3_6_759", %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$tmp_3_6_760" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_760_761" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_760" to i8*
  %"$_literal_cost_call_762" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_81", i8* %"$$tmp_3_6_760_761")
  %"$tmp_3_6_763" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_763_764" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_763" to i8*
  %"$_mapsortcost_call_765" = call i64 @_mapsortcost(i8* %"$$tmp_3_6_763_764")
  %"$gasadd_766" = add i64 %"$_literal_cost_call_762", %"$_mapsortcost_call_765"
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 %"$gasadd_766", %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %"$have_gas_748"
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %"$have_gas_748"
  %"$consume_771" = sub i64 %"$gasrem_767", %"$gasadd_766"
  store i64 %"$consume_771", i64* @_gasrem, align 8
  %"$tmp_3_6_772" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$$tmp_3_6_772_773" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_772" to i8*
  %"$_literal_cost_call_774" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_81", i8* %"$$tmp_3_6_772_773")
  %"$gasrem_775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_776" = icmp ugt i64 %"$_literal_cost_call_774", %"$gasrem_775"
  br i1 %"$gascmp_776", label %"$out_of_gas_777", label %"$have_gas_778"

"$out_of_gas_777":                                ; preds = %"$have_gas_770"
  call void @_out_of_gas()
  br label %"$have_gas_778"

"$have_gas_778":                                  ; preds = %"$out_of_gas_777", %"$have_gas_770"
  %"$consume_779" = sub i64 %"$gasrem_775", %"$_literal_cost_call_774"
  store i64 %"$consume_779", i64* @_gasrem, align 8
  %"$execptr_load_780" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_6_782" = load %Map_ByStr20_with_end_Bool*, %Map_ByStr20_with_end_Bool** %tmp_3_6, align 8
  %"$update_value_783" = bitcast %Map_ByStr20_with_end_Bool* %"$tmp_3_6_782" to i8*
  call void @_update_field(i8* %"$execptr_load_780", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_6_781", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_81", i32 0, i8* null, i8* %"$update_value_783")
  %tmp_3_7 = alloca %TName_Bool*, align 8
  %"$indices_buf_784_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_784_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_784_salloc_load", i64 20)
  %"$indices_buf_784_salloc" = bitcast i8* %"$indices_buf_784_salloc_salloc" to [20 x i8]*
  %"$indices_buf_784" = bitcast [20 x i8]* %"$indices_buf_784_salloc" to i8*
  %"$indices_gep_785" = getelementptr i8, i8* %"$indices_buf_784", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_785" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_787" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_remote3_788" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_7_remote3_788", align 1
  %"$tmp_3_7_call_789" = call i8* @_fetch_remote_field(i8* %"$execptr_load_787", [20 x i8]* %"$tmp_3_7_remote3_788", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_786", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_81", i32 1, i8* %"$indices_buf_784", i32 0)
  %"$tmp_3_7_790" = bitcast i8* %"$tmp_3_7_call_789" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_7_790", %TName_Bool** %tmp_3_7, align 8
  %"$tmp_3_7_791" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_791_792" = bitcast %TName_Bool* %"$tmp_3_7_791" to i8*
  %"$_literal_cost_call_793" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i8* %"$$tmp_3_7_791_792")
  %"$gasadd_794" = add i64 %"$_literal_cost_call_793", 0
  %"$gasadd_795" = add i64 %"$gasadd_794", 1
  %"$gasrem_796" = load i64, i64* @_gasrem, align 8
  %"$gascmp_797" = icmp ugt i64 %"$gasadd_795", %"$gasrem_796"
  br i1 %"$gascmp_797", label %"$out_of_gas_798", label %"$have_gas_799"

"$out_of_gas_798":                                ; preds = %"$have_gas_778"
  call void @_out_of_gas()
  br label %"$have_gas_799"

"$have_gas_799":                                  ; preds = %"$out_of_gas_798", %"$have_gas_778"
  %"$consume_800" = sub i64 %"$gasrem_796", %"$gasadd_795"
  store i64 %"$consume_800", i64* @_gasrem, align 8
  %"$tmp_3_7_801" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$$tmp_3_7_801_802" = bitcast %TName_Bool* %"$tmp_3_7_801" to i8*
  %"$_literal_cost_call_803" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i8* %"$$tmp_3_7_801_802")
  %"$gasrem_804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_805" = icmp ugt i64 %"$_literal_cost_call_803", %"$gasrem_804"
  br i1 %"$gascmp_805", label %"$out_of_gas_806", label %"$have_gas_807"

"$out_of_gas_806":                                ; preds = %"$have_gas_799"
  call void @_out_of_gas()
  br label %"$have_gas_807"

"$have_gas_807":                                  ; preds = %"$out_of_gas_806", %"$have_gas_799"
  %"$consume_808" = sub i64 %"$gasrem_804", %"$_literal_cost_call_803"
  store i64 %"$consume_808", i64* @_gasrem, align 8
  %"$execptr_load_809" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_7_811" = load %TName_Bool*, %TName_Bool** %tmp_3_7, align 8
  %"$update_value_812" = bitcast %TName_Bool* %"$tmp_3_7_811" to i8*
  call void @_update_field(i8* %"$execptr_load_809", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_7_810", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i32 0, i8* null, i8* %"$update_value_812")
  %tmp_3_8 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_813_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_813_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_813_salloc_load", i64 20)
  %"$indices_buf_813_salloc" = bitcast i8* %"$indices_buf_813_salloc_salloc" to [20 x i8]*
  %"$indices_buf_813" = bitcast [20 x i8]* %"$indices_buf_813_salloc" to i8*
  %"$indices_gep_814" = getelementptr i8, i8* %"$indices_buf_813", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_814" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_816" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_remote3_817" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_8_remote3_817", align 1
  %"$tmp_3_8_call_818" = call i8* @_fetch_remote_field(i8* %"$execptr_load_816", [20 x i8]* %"$tmp_3_8_remote3_817", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$owners_815", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_81", i32 1, i8* %"$indices_buf_813", i32 1)
  %"$tmp_3_8_819" = bitcast i8* %"$tmp_3_8_call_818" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_8_819", %TName_Option_Bool** %tmp_3_8, align 8
  %"$tmp_3_8_820" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_820_821" = bitcast %TName_Option_Bool* %"$tmp_3_8_820" to i8*
  %"$_literal_cost_call_822" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_71", i8* %"$$tmp_3_8_820_821")
  %"$gasadd_823" = add i64 %"$_literal_cost_call_822", 0
  %"$gasadd_824" = add i64 %"$gasadd_823", 1
  %"$gasrem_825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_826" = icmp ugt i64 %"$gasadd_824", %"$gasrem_825"
  br i1 %"$gascmp_826", label %"$out_of_gas_827", label %"$have_gas_828"

"$out_of_gas_827":                                ; preds = %"$have_gas_807"
  call void @_out_of_gas()
  br label %"$have_gas_828"

"$have_gas_828":                                  ; preds = %"$out_of_gas_827", %"$have_gas_807"
  %"$consume_829" = sub i64 %"$gasrem_825", %"$gasadd_824"
  store i64 %"$consume_829", i64* @_gasrem, align 8
  %"$tmp_3_8_830" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$$tmp_3_8_830_831" = bitcast %TName_Option_Bool* %"$tmp_3_8_830" to i8*
  %"$_literal_cost_call_832" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_71", i8* %"$$tmp_3_8_830_831")
  %"$gasrem_833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_834" = icmp ugt i64 %"$_literal_cost_call_832", %"$gasrem_833"
  br i1 %"$gascmp_834", label %"$out_of_gas_835", label %"$have_gas_836"

"$out_of_gas_835":                                ; preds = %"$have_gas_828"
  call void @_out_of_gas()
  br label %"$have_gas_836"

"$have_gas_836":                                  ; preds = %"$out_of_gas_835", %"$have_gas_828"
  %"$consume_837" = sub i64 %"$gasrem_833", %"$_literal_cost_call_832"
  store i64 %"$consume_837", i64* @_gasrem, align 8
  %"$execptr_load_838" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_8_840" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_8, align 8
  %"$update_value_841" = bitcast %TName_Option_Bool* %"$tmp_3_8_840" to i8*
  call void @_update_field(i8* %"$execptr_load_838", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_8_839", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_71", i32 0, i8* null, i8* %"$update_value_841")
  %tmp_3_9 = alloca %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$execptr_load_843" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_remote3_844" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_9_remote3_844", align 1
  %"$tmp_3_9_call_845" = call i8* @_fetch_remote_field(i8* %"$execptr_load_843", [20 x i8]* %"$tmp_3_9_remote3_844", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_842", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_80", i32 0, i8* null, i32 1)
  %"$tmp_3_9_846" = bitcast i8* %"$tmp_3_9_call_845" to %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*
  store %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_846", %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$tmp_3_9_847" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_847_848" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_847" to i8*
  %"$_literal_cost_call_849" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_80", i8* %"$$tmp_3_9_847_848")
  %"$tmp_3_9_850" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_850_851" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_850" to i8*
  %"$_mapsortcost_call_852" = call i64 @_mapsortcost(i8* %"$$tmp_3_9_850_851")
  %"$gasadd_853" = add i64 %"$_literal_cost_call_849", %"$_mapsortcost_call_852"
  %"$gasrem_854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_855" = icmp ugt i64 %"$gasadd_853", %"$gasrem_854"
  br i1 %"$gascmp_855", label %"$out_of_gas_856", label %"$have_gas_857"

"$out_of_gas_856":                                ; preds = %"$have_gas_836"
  call void @_out_of_gas()
  br label %"$have_gas_857"

"$have_gas_857":                                  ; preds = %"$out_of_gas_856", %"$have_gas_836"
  %"$consume_858" = sub i64 %"$gasrem_854", %"$gasadd_853"
  store i64 %"$consume_858", i64* @_gasrem, align 8
  %"$tmp_3_9_859" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$$tmp_3_9_859_860" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_859" to i8*
  %"$_literal_cost_call_861" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_80", i8* %"$$tmp_3_9_859_860")
  %"$gasrem_862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_863" = icmp ugt i64 %"$_literal_cost_call_861", %"$gasrem_862"
  br i1 %"$gascmp_863", label %"$out_of_gas_864", label %"$have_gas_865"

"$out_of_gas_864":                                ; preds = %"$have_gas_857"
  call void @_out_of_gas()
  br label %"$have_gas_865"

"$have_gas_865":                                  ; preds = %"$out_of_gas_864", %"$have_gas_857"
  %"$consume_866" = sub i64 %"$gasrem_862", %"$_literal_cost_call_861"
  store i64 %"$consume_866", i64* @_gasrem, align 8
  %"$execptr_load_867" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_9_869" = load %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"*, %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_9, align 8
  %"$update_value_870" = bitcast %"Map_Uint32_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_9_869" to i8*
  call void @_update_field(i8* %"$execptr_load_867", i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$remote_reads_test_res_3_9_868", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_80", i32 0, i8* null, i8* %"$update_value_870")
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 1, %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_865"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_865"
  %"$consume_875" = sub i64 %"$gasrem_871", 1
  store i64 %"$consume_875", i64* @_gasrem, align 8
  %"$x_0" = alloca %Uint32, align 8
  %"$gasrem_876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_877" = icmp ugt i64 1, %"$gasrem_876"
  br i1 %"$gascmp_877", label %"$out_of_gas_878", label %"$have_gas_879"

"$out_of_gas_878":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_879"

"$have_gas_879":                                  ; preds = %"$out_of_gas_878", %"$have_gas_874"
  %"$consume_880" = sub i64 %"$gasrem_876", 1
  store i64 %"$consume_880", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$x_0", align 4
  %tmp_3_10 = alloca %TName_Bool*, align 8
  %"$indices_buf_881_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_881_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_881_salloc_load", i64 4)
  %"$indices_buf_881_salloc" = bitcast i8* %"$indices_buf_881_salloc_salloc" to [4 x i8]*
  %"$indices_buf_881" = bitcast [4 x i8]* %"$indices_buf_881_salloc" to i8*
  %"$$x_0_882" = load %Uint32, %Uint32* %"$x_0", align 4
  %"$indices_gep_883" = getelementptr i8, i8* %"$indices_buf_881", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_883" to %Uint32*
  store %Uint32 %"$$x_0_882", %Uint32* %indices_cast2, align 4
  %"$execptr_load_885" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_remote3_886" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_10_remote3_886", align 1
  %"$tmp_3_10_call_887" = call i8* @_fetch_remote_field(i8* %"$execptr_load_885", [20 x i8]* %"$tmp_3_10_remote3_886", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_884", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_80", i32 1, i8* %"$indices_buf_881", i32 0)
  %"$tmp_3_10_888" = bitcast i8* %"$tmp_3_10_call_887" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_10_888", %TName_Bool** %tmp_3_10, align 8
  %"$tmp_3_10_889" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_889_890" = bitcast %TName_Bool* %"$tmp_3_10_889" to i8*
  %"$_literal_cost_call_891" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i8* %"$$tmp_3_10_889_890")
  %"$gasadd_892" = add i64 %"$_literal_cost_call_891", 0
  %"$gasadd_893" = add i64 %"$gasadd_892", 1
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 %"$gasadd_893", %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_879"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_879"
  %"$consume_898" = sub i64 %"$gasrem_894", %"$gasadd_893"
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$tmp_3_10_899" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$$tmp_3_10_899_900" = bitcast %TName_Bool* %"$tmp_3_10_899" to i8*
  %"$_literal_cost_call_901" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i8* %"$$tmp_3_10_899_900")
  %"$gasrem_902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_903" = icmp ugt i64 %"$_literal_cost_call_901", %"$gasrem_902"
  br i1 %"$gascmp_903", label %"$out_of_gas_904", label %"$have_gas_905"

"$out_of_gas_904":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_905"

"$have_gas_905":                                  ; preds = %"$out_of_gas_904", %"$have_gas_897"
  %"$consume_906" = sub i64 %"$gasrem_902", %"$_literal_cost_call_901"
  store i64 %"$consume_906", i64* @_gasrem, align 8
  %"$execptr_load_907" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_10_909" = load %TName_Bool*, %TName_Bool** %tmp_3_10, align 8
  %"$update_value_910" = bitcast %TName_Bool* %"$tmp_3_10_909" to i8*
  call void @_update_field(i8* %"$execptr_load_907", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_10_908", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i32 0, i8* null, i8* %"$update_value_910")
  %tmp_3_11 = alloca %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, align 8
  %"$indices_buf_911_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_911_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_911_salloc_load", i64 4)
  %"$indices_buf_911_salloc" = bitcast i8* %"$indices_buf_911_salloc_salloc" to [4 x i8]*
  %"$indices_buf_911" = bitcast [4 x i8]* %"$indices_buf_911_salloc" to i8*
  %"$$x_0_912" = load %Uint32, %Uint32* %"$x_0", align 4
  %"$indices_gep_913" = getelementptr i8, i8* %"$indices_buf_911", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_913" to %Uint32*
  store %Uint32 %"$$x_0_912", %Uint32* %indices_cast3, align 4
  %"$execptr_load_915" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_11_remote3_916" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_11_remote3_916", align 1
  %"$tmp_3_11_call_917" = call i8* @_fetch_remote_field(i8* %"$execptr_load_915", [20 x i8]* %"$tmp_3_11_remote3_916", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_914", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_80", i32 1, i8* %"$indices_buf_911", i32 1)
  %"$tmp_3_11_918" = bitcast i8* %"$tmp_3_11_call_917" to %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*
  store %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_918", %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$tmp_3_11_919" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_919_920" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_919" to i8*
  %"$_literal_cost_call_921" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_70", i8* %"$$tmp_3_11_919_920")
  %"$gasadd_922" = add i64 %"$_literal_cost_call_921", 0
  %"$gasadd_923" = add i64 %"$gasadd_922", 1
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 %"$gasadd_923", %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$have_gas_905"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$have_gas_905"
  %"$consume_928" = sub i64 %"$gasrem_924", %"$gasadd_923"
  store i64 %"$consume_928", i64* @_gasrem, align 8
  %"$tmp_3_11_929" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$$tmp_3_11_929_930" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_929" to i8*
  %"$_literal_cost_call_931" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_70", i8* %"$$tmp_3_11_929_930")
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
  %"$tmp_3_11_939" = load %"TName_Option_Map_(ByStr20_with_end)_(Bool)"*, %"TName_Option_Map_(ByStr20_with_end)_(Bool)"** %tmp_3_11, align 8
  %"$update_value_940" = bitcast %"TName_Option_Map_(ByStr20_with_end)_(Bool)"* %"$tmp_3_11_939" to i8*
  call void @_update_field(i8* %"$execptr_load_937", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_11_938", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(ByStr20_with_end)_(Bool)_70", i32 0, i8* null, i8* %"$update_value_940")
  %tmp_3_12 = alloca %TName_Bool*, align 8
  %"$indices_buf_941_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_941_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_941_salloc_load", i64 24)
  %"$indices_buf_941_salloc" = bitcast i8* %"$indices_buf_941_salloc_salloc" to [24 x i8]*
  %"$indices_buf_941" = bitcast [24 x i8]* %"$indices_buf_941_salloc" to i8*
  %"$$x_0_942" = load %Uint32, %Uint32* %"$x_0", align 4
  %"$indices_gep_943" = getelementptr i8, i8* %"$indices_buf_941", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_943" to %Uint32*
  store %Uint32 %"$$x_0_942", %Uint32* %indices_cast4, align 4
  %"$indices_gep_944" = getelementptr i8, i8* %"$indices_buf_941", i32 4
  %indices_cast5 = bitcast i8* %"$indices_gep_944" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast5, align 1
  %"$execptr_load_946" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_12_remote3_947" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_12_remote3_947", align 1
  %"$tmp_3_12_call_948" = call i8* @_fetch_remote_field(i8* %"$execptr_load_946", [20 x i8]* %"$tmp_3_12_remote3_947", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_945", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_80", i32 2, i8* %"$indices_buf_941", i32 0)
  %"$tmp_3_12_949" = bitcast i8* %"$tmp_3_12_call_948" to %TName_Bool*
  store %TName_Bool* %"$tmp_3_12_949", %TName_Bool** %tmp_3_12, align 8
  %"$tmp_3_12_950" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_950_951" = bitcast %TName_Bool* %"$tmp_3_12_950" to i8*
  %"$_literal_cost_call_952" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i8* %"$$tmp_3_12_950_951")
  %"$gasadd_953" = add i64 %"$_literal_cost_call_952", 0
  %"$gasadd_954" = add i64 %"$gasadd_953", 2
  %"$gasrem_955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_956" = icmp ugt i64 %"$gasadd_954", %"$gasrem_955"
  br i1 %"$gascmp_956", label %"$out_of_gas_957", label %"$have_gas_958"

"$out_of_gas_957":                                ; preds = %"$have_gas_935"
  call void @_out_of_gas()
  br label %"$have_gas_958"

"$have_gas_958":                                  ; preds = %"$out_of_gas_957", %"$have_gas_935"
  %"$consume_959" = sub i64 %"$gasrem_955", %"$gasadd_954"
  store i64 %"$consume_959", i64* @_gasrem, align 8
  %"$tmp_3_12_960" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$$tmp_3_12_960_961" = bitcast %TName_Bool* %"$tmp_3_12_960" to i8*
  %"$_literal_cost_call_962" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i8* %"$$tmp_3_12_960_961")
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
  %"$tmp_3_12_970" = load %TName_Bool*, %TName_Bool** %tmp_3_12, align 8
  %"$update_value_971" = bitcast %TName_Bool* %"$tmp_3_12_970" to i8*
  call void @_update_field(i8* %"$execptr_load_968", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_12_969", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i32 0, i8* null, i8* %"$update_value_971")
  %tmp_3_13 = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_972_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_972_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_972_salloc_load", i64 24)
  %"$indices_buf_972_salloc" = bitcast i8* %"$indices_buf_972_salloc_salloc" to [24 x i8]*
  %"$indices_buf_972" = bitcast [24 x i8]* %"$indices_buf_972_salloc" to i8*
  %"$$x_0_973" = load %Uint32, %Uint32* %"$x_0", align 4
  %"$indices_gep_974" = getelementptr i8, i8* %"$indices_buf_972", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_974" to %Uint32*
  store %Uint32 %"$$x_0_973", %Uint32* %indices_cast6, align 4
  %"$indices_gep_975" = getelementptr i8, i8* %"$indices_buf_972", i32 4
  %indices_cast7 = bitcast i8* %"$indices_gep_975" to [20 x i8]*
  store [20 x i8] %_origin, [20 x i8]* %indices_cast7, align 1
  %"$execptr_load_977" = load i8*, i8** @_execptr, align 8
  %"$tmp_3_13_remote3_978" = alloca [20 x i8], align 1
  store [20 x i8] %remote3, [20 x i8]* %"$tmp_3_13_remote3_978", align 1
  %"$tmp_3_13_call_979" = call i8* @_fetch_remote_field(i8* %"$execptr_load_977", [20 x i8]* %"$tmp_3_13_remote3_978", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$signatures_976", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_80", i32 2, i8* %"$indices_buf_972", i32 1)
  %"$tmp_3_13_980" = bitcast i8* %"$tmp_3_13_call_979" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$tmp_3_13_980", %TName_Option_Bool** %tmp_3_13, align 8
  %"$tmp_3_13_981" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_981_982" = bitcast %TName_Option_Bool* %"$tmp_3_13_981" to i8*
  %"$_literal_cost_call_983" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_71", i8* %"$$tmp_3_13_981_982")
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
  %"$tmp_3_13_991" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$$tmp_3_13_991_992" = bitcast %TName_Option_Bool* %"$tmp_3_13_991" to i8*
  %"$_literal_cost_call_993" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_71", i8* %"$$tmp_3_13_991_992")
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
  %"$tmp_3_13_1001" = load %TName_Option_Bool*, %TName_Option_Bool** %tmp_3_13, align 8
  %"$update_value_1002" = bitcast %TName_Option_Bool* %"$tmp_3_13_1001" to i8*
  call void @_update_field(i8* %"$execptr_load_999", i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$remote_reads_test_res_3_13_1000", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_71", i32 0, i8* null, i8* %"$update_value_1002")
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i64 @_mapsortcost(i8*)

define void @RemoteReadsTest(i8* %0) {
entry:
  %"$_amount_1004" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1005" = bitcast i8* %"$_amount_1004" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1005", align 8
  %"$_origin_1006" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1007" = bitcast i8* %"$_origin_1006" to [20 x i8]*
  %"$_sender_1008" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1009" = bitcast i8* %"$_sender_1008" to [20 x i8]*
  %"$remote1_1010" = getelementptr i8, i8* %0, i32 56
  %"$remote1_1011" = bitcast i8* %"$remote1_1010" to [20 x i8]*
  %"$remote2_1012" = getelementptr i8, i8* %0, i32 76
  %"$remote2_1013" = bitcast i8* %"$remote2_1012" to [20 x i8]*
  %"$remote3_1014" = getelementptr i8, i8* %0, i32 96
  %"$remote3_1015" = bitcast i8* %"$remote3_1014" to [20 x i8]*
  call void @"$RemoteReadsTest_568"(%Uint128 %_amount, [20 x i8]* %"$_origin_1007", [20 x i8]* %"$_sender_1009", [20 x i8]* %"$remote1_1011", [20 x i8]* %"$remote2_1013", [20 x i8]* %"$remote3_1015")
  ret void
}

define internal void @"$RemoteReadsADTTest_1016"(%Uint128 %_amount, [20 x i8]* %"$_origin_1017", [20 x i8]* %"$_sender_1018", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1019") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1017", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1018", align 1
  %remote1 = load [20 x i8], [20 x i8]* %"$remote1_1019", align 1
  ret void
}

define void @RemoteReadsADTTest(i8* %0) {
entry:
  %"$_amount_1021" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1022" = bitcast i8* %"$_amount_1021" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1022", align 8
  %"$_origin_1023" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1024" = bitcast i8* %"$_origin_1023" to [20 x i8]*
  %"$_sender_1025" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1026" = bitcast i8* %"$_sender_1025" to [20 x i8]*
  %"$list1_1027" = getelementptr i8, i8* %0, i32 56
  %"$list1_1028" = bitcast i8* %"$list1_1027" to %TName_List_ByStr20_with_end**
  %list1 = load %TName_List_ByStr20_with_end*, %TName_List_ByStr20_with_end** %"$list1_1028", align 8
  %"$list2_1029" = getelementptr i8, i8* %0, i32 64
  %"$list2_1030" = bitcast i8* %"$list2_1029" to %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"**
  %list2 = load %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"*, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"** %"$list2_1030", align 8
  %"$list3_1031" = getelementptr i8, i8* %0, i32 72
  %"$list3_1032" = bitcast i8* %"$list3_1031" to %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"**
  %list3 = load %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"*, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"** %"$list3_1032", align 8
  %"$pair1_1033" = getelementptr i8, i8* %0, i32 80
  %"$pair1_1034" = bitcast i8* %"$pair1_1033" to %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %pair1 = load %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$pair1_1034", align 8
  %"$adt1_1035" = getelementptr i8, i8* %0, i32 88
  %"$adt1_1036" = bitcast i8* %"$adt1_1035" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT**
  %adt1 = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adt1_1036", align 8
  %"$remote1_1037" = getelementptr i8, i8* %0, i32 96
  %"$remote1_1038" = bitcast i8* %"$remote1_1037" to [20 x i8]*
  call void @"$RemoteReadsADTTest_1016"(%Uint128 %_amount, [20 x i8]* %"$_origin_1024", [20 x i8]* %"$_sender_1026", %TName_List_ByStr20_with_end* %list1, %"TName_List_ByStr20_with_contract_field_f_:_Uint128_end"* %list2, %"TName_List_ByStr20_with_contract_field_g_:_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_end"* %list3, %TName_Pair_ByStr20_with_end_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %pair1, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %adt1, [20 x i8]* %"$remote1_1038")
  ret void
}

define internal void @"$OutgoingMsgTest_1039"(%Uint128 %_amount, [20 x i8]* %"$_origin_1040", [20 x i8]* %"$_sender_1041") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1040", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1041", align 1
  %"$gasrem_1042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1043" = icmp ugt i64 1, %"$gasrem_1042"
  br i1 %"$gascmp_1043", label %"$out_of_gas_1044", label %"$have_gas_1045"

"$out_of_gas_1044":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1045"

"$have_gas_1045":                                 ; preds = %"$out_of_gas_1044", %entry
  %"$consume_1046" = sub i64 %"$gasrem_1042", 1
  store i64 %"$consume_1046", i64* @_gasrem, align 8
  %msg = alloca i8*, align 8
  %"$gasrem_1047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1048" = icmp ugt i64 1, %"$gasrem_1047"
  br i1 %"$gascmp_1048", label %"$out_of_gas_1049", label %"$have_gas_1050"

"$out_of_gas_1049":                               ; preds = %"$have_gas_1045"
  call void @_out_of_gas()
  br label %"$have_gas_1050"

"$have_gas_1050":                                 ; preds = %"$out_of_gas_1049", %"$have_gas_1045"
  %"$consume_1051" = sub i64 %"$gasrem_1047", 1
  store i64 %"$consume_1051", i64* @_gasrem, align 8
  %"$msgobj_1052_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1052_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1052_salloc_load", i64 169)
  %"$msgobj_1052_salloc" = bitcast i8* %"$msgobj_1052_salloc_salloc" to [169 x i8]*
  %"$msgobj_1052" = bitcast [169 x i8]* %"$msgobj_1052_salloc" to i8*
  store i8 4, i8* %"$msgobj_1052", align 1
  %"$msgobj_fname_1054" = getelementptr i8, i8* %"$msgobj_1052", i32 1
  %"$msgobj_fname_1055" = bitcast i8* %"$msgobj_fname_1054" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1053", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1055", align 8
  %"$msgobj_td_1056" = getelementptr i8, i8* %"$msgobj_1052", i32 17
  %"$msgobj_td_1057" = bitcast i8* %"$msgobj_td_1056" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_48", %_TyDescrTy_Typ** %"$msgobj_td_1057", align 8
  %"$msgobj_v_1059" = getelementptr i8, i8* %"$msgobj_1052", i32 25
  %"$msgobj_v_1060" = bitcast i8* %"$msgobj_v_1059" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_1058", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_1060", align 8
  %"$msgobj_fname_1062" = getelementptr i8, i8* %"$msgobj_1052", i32 41
  %"$msgobj_fname_1063" = bitcast i8* %"$msgobj_fname_1062" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1061", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1063", align 8
  %"$msgobj_td_1064" = getelementptr i8, i8* %"$msgobj_1052", i32 57
  %"$msgobj_td_1065" = bitcast i8* %"$msgobj_td_1064" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ** %"$msgobj_td_1065", align 8
  %"$msgobj_v_1066" = getelementptr i8, i8* %"$msgobj_1052", i32 65
  %"$msgobj_v_1067" = bitcast i8* %"$msgobj_v_1066" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_1067", align 1
  %"$msgobj_fname_1069" = getelementptr i8, i8* %"$msgobj_1052", i32 85
  %"$msgobj_fname_1070" = bitcast i8* %"$msgobj_fname_1069" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1068", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1070", align 8
  %"$msgobj_td_1071" = getelementptr i8, i8* %"$msgobj_1052", i32 101
  %"$msgobj_td_1072" = bitcast i8* %"$msgobj_td_1071" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", %_TyDescrTy_Typ** %"$msgobj_td_1072", align 8
  %"$msgobj_v_1073" = getelementptr i8, i8* %"$msgobj_1052", i32 109
  %"$msgobj_v_1074" = bitcast i8* %"$msgobj_v_1073" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_1074", align 8
  %"$msgobj_fname_1076" = getelementptr i8, i8* %"$msgobj_1052", i32 125
  %"$msgobj_fname_1077" = bitcast i8* %"$msgobj_fname_1076" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1075", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1077", align 8
  %"$msgobj_td_1078" = getelementptr i8, i8* %"$msgobj_1052", i32 141
  %"$msgobj_td_1079" = bitcast i8* %"$msgobj_td_1078" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ** %"$msgobj_td_1079", align 8
  %"$cparam3_1080" = load [20 x i8], [20 x i8]* @cparam3, align 1
  %"$msgobj_v_1081" = getelementptr i8, i8* %"$msgobj_1052", i32 149
  %"$msgobj_v_1082" = bitcast i8* %"$msgobj_v_1081" to [20 x i8]*
  store [20 x i8] %"$cparam3_1080", [20 x i8]* %"$msgobj_v_1082", align 1
  store i8* %"$msgobj_1052", i8** %msg, align 8
  %"$gasrem_1084" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1085" = icmp ugt i64 1, %"$gasrem_1084"
  br i1 %"$gascmp_1085", label %"$out_of_gas_1086", label %"$have_gas_1087"

"$out_of_gas_1086":                               ; preds = %"$have_gas_1050"
  call void @_out_of_gas()
  br label %"$have_gas_1087"

"$have_gas_1087":                                 ; preds = %"$out_of_gas_1086", %"$have_gas_1050"
  %"$consume_1088" = sub i64 %"$gasrem_1084", 1
  store i64 %"$consume_1088", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_1089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1090" = icmp ugt i64 1, %"$gasrem_1089"
  br i1 %"$gascmp_1090", label %"$out_of_gas_1091", label %"$have_gas_1092"

"$out_of_gas_1091":                               ; preds = %"$have_gas_1087"
  call void @_out_of_gas()
  br label %"$have_gas_1092"

"$have_gas_1092":                                 ; preds = %"$out_of_gas_1091", %"$have_gas_1087"
  %"$consume_1093" = sub i64 %"$gasrem_1089", 1
  store i64 %"$consume_1093", i64* @_gasrem, align 8
  %n = alloca %TName_List_Message*, align 8
  %"$gasrem_1094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1095" = icmp ugt i64 1, %"$gasrem_1094"
  br i1 %"$gascmp_1095", label %"$out_of_gas_1096", label %"$have_gas_1097"

"$out_of_gas_1096":                               ; preds = %"$have_gas_1092"
  call void @_out_of_gas()
  br label %"$have_gas_1097"

"$have_gas_1097":                                 ; preds = %"$out_of_gas_1096", %"$have_gas_1092"
  %"$consume_1098" = sub i64 %"$gasrem_1094", 1
  store i64 %"$consume_1098", i64* @_gasrem, align 8
  %"$adtval_1099_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1099_salloc" = call i8* @_salloc(i8* %"$adtval_1099_load", i64 1)
  %"$adtval_1099" = bitcast i8* %"$adtval_1099_salloc" to %CName_Nil_Message*
  %"$adtgep_1100" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_1099", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1100", align 1
  %"$adtptr_1101" = bitcast %CName_Nil_Message* %"$adtval_1099" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1101", %TName_List_Message** %n, align 8
  %"$gasrem_1102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1103" = icmp ugt i64 1, %"$gasrem_1102"
  br i1 %"$gascmp_1103", label %"$out_of_gas_1104", label %"$have_gas_1105"

"$out_of_gas_1104":                               ; preds = %"$have_gas_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1105"

"$have_gas_1105":                                 ; preds = %"$out_of_gas_1104", %"$have_gas_1097"
  %"$consume_1106" = sub i64 %"$gasrem_1102", 1
  store i64 %"$consume_1106", i64* @_gasrem, align 8
  %"$msg_1107" = load i8*, i8** %msg, align 8
  %"$n_1108" = load %TName_List_Message*, %TName_List_Message** %n, align 8
  %"$adtval_1109_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1109_salloc" = call i8* @_salloc(i8* %"$adtval_1109_load", i64 17)
  %"$adtval_1109" = bitcast i8* %"$adtval_1109_salloc" to %CName_Cons_Message*
  %"$adtgep_1110" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1109", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1110", align 1
  %"$adtgep_1111" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1109", i32 0, i32 1
  store i8* %"$msg_1107", i8** %"$adtgep_1111", align 8
  %"$adtgep_1112" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1109", i32 0, i32 2
  store %TName_List_Message* %"$n_1108", %TName_List_Message** %"$adtgep_1112", align 8
  %"$adtptr_1113" = bitcast %CName_Cons_Message* %"$adtval_1109" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1113", %TName_List_Message** %msgs, align 8
  %"$msgs_1114" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_1114_1115" = bitcast %TName_List_Message* %"$msgs_1114" to i8*
  %"$_literal_cost_call_1116" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_64", i8* %"$$msgs_1114_1115")
  %"$gasrem_1117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1118" = icmp ugt i64 %"$_literal_cost_call_1116", %"$gasrem_1117"
  br i1 %"$gascmp_1118", label %"$out_of_gas_1119", label %"$have_gas_1120"

"$out_of_gas_1119":                               ; preds = %"$have_gas_1105"
  call void @_out_of_gas()
  br label %"$have_gas_1120"

"$have_gas_1120":                                 ; preds = %"$out_of_gas_1119", %"$have_gas_1105"
  %"$consume_1121" = sub i64 %"$gasrem_1117", %"$_literal_cost_call_1116"
  store i64 %"$consume_1121", i64* @_gasrem, align 8
  %"$execptr_load_1122" = load i8*, i8** @_execptr, align 8
  %"$msgs_1123" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_1122", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_64", %TName_List_Message* %"$msgs_1123")
  %"$gasrem_1124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1125" = icmp ugt i64 1, %"$gasrem_1124"
  br i1 %"$gascmp_1125", label %"$out_of_gas_1126", label %"$have_gas_1127"

"$out_of_gas_1126":                               ; preds = %"$have_gas_1120"
  call void @_out_of_gas()
  br label %"$have_gas_1127"

"$have_gas_1127":                                 ; preds = %"$out_of_gas_1126", %"$have_gas_1120"
  %"$consume_1128" = sub i64 %"$gasrem_1124", 1
  store i64 %"$consume_1128", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_1129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1130" = icmp ugt i64 1, %"$gasrem_1129"
  br i1 %"$gascmp_1130", label %"$out_of_gas_1131", label %"$have_gas_1132"

"$out_of_gas_1131":                               ; preds = %"$have_gas_1127"
  call void @_out_of_gas()
  br label %"$have_gas_1132"

"$have_gas_1132":                                 ; preds = %"$out_of_gas_1131", %"$have_gas_1127"
  %"$consume_1133" = sub i64 %"$gasrem_1129", 1
  store i64 %"$consume_1133", i64* @_gasrem, align 8
  %"$msgobj_1134_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1134_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1134_salloc_load", i64 85)
  %"$msgobj_1134_salloc" = bitcast i8* %"$msgobj_1134_salloc_salloc" to [85 x i8]*
  %"$msgobj_1134" = bitcast [85 x i8]* %"$msgobj_1134_salloc" to i8*
  store i8 2, i8* %"$msgobj_1134", align 1
  %"$msgobj_fname_1136" = getelementptr i8, i8* %"$msgobj_1134", i32 1
  %"$msgobj_fname_1137" = bitcast i8* %"$msgobj_fname_1136" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1135", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1137", align 8
  %"$msgobj_td_1138" = getelementptr i8, i8* %"$msgobj_1134", i32 17
  %"$msgobj_td_1139" = bitcast i8* %"$msgobj_td_1138" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_48", %_TyDescrTy_Typ** %"$msgobj_td_1139", align 8
  %"$msgobj_v_1141" = getelementptr i8, i8* %"$msgobj_1134", i32 25
  %"$msgobj_v_1142" = bitcast i8* %"$msgobj_v_1141" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1140", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1142", align 8
  %"$msgobj_fname_1144" = getelementptr i8, i8* %"$msgobj_1134", i32 41
  %"$msgobj_fname_1145" = bitcast i8* %"$msgobj_fname_1144" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1143", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1145", align 8
  %"$msgobj_td_1146" = getelementptr i8, i8* %"$msgobj_1134", i32 57
  %"$msgobj_td_1147" = bitcast i8* %"$msgobj_td_1146" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ** %"$msgobj_td_1147", align 8
  %"$cparam2_1148" = load [20 x i8], [20 x i8]* @cparam2, align 1
  %"$msgobj_v_1149" = getelementptr i8, i8* %"$msgobj_1134", i32 65
  %"$msgobj_v_1150" = bitcast i8* %"$msgobj_v_1149" to [20 x i8]*
  store [20 x i8] %"$cparam2_1148", [20 x i8]* %"$msgobj_v_1150", align 1
  store i8* %"$msgobj_1134", i8** %e1, align 8
  %"$e1_1152" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_1154" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_54", i8* %"$e1_1152")
  %"$gasrem_1155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1156" = icmp ugt i64 %"$_literal_cost_call_1154", %"$gasrem_1155"
  br i1 %"$gascmp_1156", label %"$out_of_gas_1157", label %"$have_gas_1158"

"$out_of_gas_1157":                               ; preds = %"$have_gas_1132"
  call void @_out_of_gas()
  br label %"$have_gas_1158"

"$have_gas_1158":                                 ; preds = %"$out_of_gas_1157", %"$have_gas_1132"
  %"$consume_1159" = sub i64 %"$gasrem_1155", %"$_literal_cost_call_1154"
  store i64 %"$consume_1159", i64* @_gasrem, align 8
  %"$execptr_load_1160" = load i8*, i8** @_execptr, align 8
  %"$e1_1161" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_1160", %_TyDescrTy_Typ* @"$TyDescr_Event_54", i8* %"$e1_1161")
  %"$gasrem_1162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1163" = icmp ugt i64 1, %"$gasrem_1162"
  br i1 %"$gascmp_1163", label %"$out_of_gas_1164", label %"$have_gas_1165"

"$out_of_gas_1164":                               ; preds = %"$have_gas_1158"
  call void @_out_of_gas()
  br label %"$have_gas_1165"

"$have_gas_1165":                                 ; preds = %"$out_of_gas_1164", %"$have_gas_1158"
  %"$consume_1166" = sub i64 %"$gasrem_1162", 1
  store i64 %"$consume_1166", i64* @_gasrem, align 8
  %e2 = alloca i8*, align 8
  %"$gasrem_1167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1168" = icmp ugt i64 1, %"$gasrem_1167"
  br i1 %"$gascmp_1168", label %"$out_of_gas_1169", label %"$have_gas_1170"

"$out_of_gas_1169":                               ; preds = %"$have_gas_1165"
  call void @_out_of_gas()
  br label %"$have_gas_1170"

"$have_gas_1170":                                 ; preds = %"$out_of_gas_1169", %"$have_gas_1165"
  %"$consume_1171" = sub i64 %"$gasrem_1167", 1
  store i64 %"$consume_1171", i64* @_gasrem, align 8
  %"$msgobj_1172_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1172_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1172_salloc_load", i64 85)
  %"$msgobj_1172_salloc" = bitcast i8* %"$msgobj_1172_salloc_salloc" to [85 x i8]*
  %"$msgobj_1172" = bitcast [85 x i8]* %"$msgobj_1172_salloc" to i8*
  store i8 2, i8* %"$msgobj_1172", align 1
  %"$msgobj_fname_1174" = getelementptr i8, i8* %"$msgobj_1172", i32 1
  %"$msgobj_fname_1175" = bitcast i8* %"$msgobj_fname_1174" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1173", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1175", align 8
  %"$msgobj_td_1176" = getelementptr i8, i8* %"$msgobj_1172", i32 17
  %"$msgobj_td_1177" = bitcast i8* %"$msgobj_td_1176" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_48", %_TyDescrTy_Typ** %"$msgobj_td_1177", align 8
  %"$msgobj_v_1179" = getelementptr i8, i8* %"$msgobj_1172", i32 25
  %"$msgobj_v_1180" = bitcast i8* %"$msgobj_v_1179" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1178", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1180", align 8
  %"$msgobj_fname_1182" = getelementptr i8, i8* %"$msgobj_1172", i32 41
  %"$msgobj_fname_1183" = bitcast i8* %"$msgobj_fname_1182" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1181", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1183", align 8
  %"$msgobj_td_1184" = getelementptr i8, i8* %"$msgobj_1172", i32 57
  %"$msgobj_td_1185" = bitcast i8* %"$msgobj_td_1184" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ** %"$msgobj_td_1185", align 8
  %"$cparam3_1186" = load [20 x i8], [20 x i8]* @cparam3, align 1
  %"$msgobj_v_1187" = getelementptr i8, i8* %"$msgobj_1172", i32 65
  %"$msgobj_v_1188" = bitcast i8* %"$msgobj_v_1187" to [20 x i8]*
  store [20 x i8] %"$cparam3_1186", [20 x i8]* %"$msgobj_v_1188", align 1
  store i8* %"$msgobj_1172", i8** %e2, align 8
  %"$e2_1190" = load i8*, i8** %e2, align 8
  %"$_literal_cost_call_1192" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_54", i8* %"$e2_1190")
  %"$gasrem_1193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1194" = icmp ugt i64 %"$_literal_cost_call_1192", %"$gasrem_1193"
  br i1 %"$gascmp_1194", label %"$out_of_gas_1195", label %"$have_gas_1196"

"$out_of_gas_1195":                               ; preds = %"$have_gas_1170"
  call void @_out_of_gas()
  br label %"$have_gas_1196"

"$have_gas_1196":                                 ; preds = %"$out_of_gas_1195", %"$have_gas_1170"
  %"$consume_1197" = sub i64 %"$gasrem_1193", %"$_literal_cost_call_1192"
  store i64 %"$consume_1197", i64* @_gasrem, align 8
  %"$execptr_load_1198" = load i8*, i8** @_execptr, align 8
  %"$e2_1199" = load i8*, i8** %e2, align 8
  call void @_event(i8* %"$execptr_load_1198", %_TyDescrTy_Typ* @"$TyDescr_Event_54", i8* %"$e2_1199")
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @OutgoingMsgTest(i8* %0) {
entry:
  %"$_amount_1201" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1202" = bitcast i8* %"$_amount_1201" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1202", align 8
  %"$_origin_1203" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1204" = bitcast i8* %"$_origin_1203" to [20 x i8]*
  %"$_sender_1205" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1206" = bitcast i8* %"$_sender_1205" to [20 x i8]*
  call void @"$OutgoingMsgTest_1039"(%Uint128 %_amount, [20 x i8]* %"$_origin_1204", [20 x i8]* %"$_sender_1206")
  ret void
}

define internal void @"$ExceptionTest_1207"(%Uint128 %_amount, [20 x i8]* %"$_origin_1208", [20 x i8]* %"$_sender_1209") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1208", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1209", align 1
  %"$gasrem_1210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1211" = icmp ugt i64 1, %"$gasrem_1210"
  br i1 %"$gascmp_1211", label %"$out_of_gas_1212", label %"$have_gas_1213"

"$out_of_gas_1212":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1213"

"$have_gas_1213":                                 ; preds = %"$out_of_gas_1212", %entry
  %"$consume_1214" = sub i64 %"$gasrem_1210", 1
  store i64 %"$consume_1214", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_1215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1216" = icmp ugt i64 1, %"$gasrem_1215"
  br i1 %"$gascmp_1216", label %"$out_of_gas_1217", label %"$have_gas_1218"

"$out_of_gas_1217":                               ; preds = %"$have_gas_1213"
  call void @_out_of_gas()
  br label %"$have_gas_1218"

"$have_gas_1218":                                 ; preds = %"$out_of_gas_1217", %"$have_gas_1213"
  %"$consume_1219" = sub i64 %"$gasrem_1215", 1
  store i64 %"$consume_1219", i64* @_gasrem, align 8
  %"$msgobj_1220_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1220_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1220_salloc_load", i64 85)
  %"$msgobj_1220_salloc" = bitcast i8* %"$msgobj_1220_salloc_salloc" to [85 x i8]*
  %"$msgobj_1220" = bitcast [85 x i8]* %"$msgobj_1220_salloc" to i8*
  store i8 2, i8* %"$msgobj_1220", align 1
  %"$msgobj_fname_1222" = getelementptr i8, i8* %"$msgobj_1220", i32 1
  %"$msgobj_fname_1223" = bitcast i8* %"$msgobj_fname_1222" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1221", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1223", align 8
  %"$msgobj_td_1224" = getelementptr i8, i8* %"$msgobj_1220", i32 17
  %"$msgobj_td_1225" = bitcast i8* %"$msgobj_td_1224" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_48", %_TyDescrTy_Typ** %"$msgobj_td_1225", align 8
  %"$msgobj_v_1227" = getelementptr i8, i8* %"$msgobj_1220", i32 25
  %"$msgobj_v_1228" = bitcast i8* %"$msgobj_v_1227" to %String*
  store %String { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$stringlit_1226", i32 0, i32 0), i32 13 }, %String* %"$msgobj_v_1228", align 8
  %"$msgobj_fname_1230" = getelementptr i8, i8* %"$msgobj_1220", i32 41
  %"$msgobj_fname_1231" = bitcast i8* %"$msgobj_fname_1230" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1229", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1231", align 8
  %"$msgobj_td_1232" = getelementptr i8, i8* %"$msgobj_1220", i32 57
  %"$msgobj_td_1233" = bitcast i8* %"$msgobj_td_1232" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_60", %_TyDescrTy_Typ** %"$msgobj_td_1233", align 8
  %"$cparam3_1234" = load [20 x i8], [20 x i8]* @cparam3, align 1
  %"$msgobj_v_1235" = getelementptr i8, i8* %"$msgobj_1220", i32 65
  %"$msgobj_v_1236" = bitcast i8* %"$msgobj_v_1235" to [20 x i8]*
  store [20 x i8] %"$cparam3_1234", [20 x i8]* %"$msgobj_v_1236", align 1
  store i8* %"$msgobj_1220", i8** %e, align 8
  %"$e_1238" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_1240" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_56", i8* %"$e_1238")
  %"$gasrem_1241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1242" = icmp ugt i64 %"$_literal_cost_call_1240", %"$gasrem_1241"
  br i1 %"$gascmp_1242", label %"$out_of_gas_1243", label %"$have_gas_1244"

"$out_of_gas_1243":                               ; preds = %"$have_gas_1218"
  call void @_out_of_gas()
  br label %"$have_gas_1244"

"$have_gas_1244":                                 ; preds = %"$out_of_gas_1243", %"$have_gas_1218"
  %"$consume_1245" = sub i64 %"$gasrem_1241", %"$_literal_cost_call_1240"
  store i64 %"$consume_1245", i64* @_gasrem, align 8
  %"$execptr_load_1246" = load i8*, i8** @_execptr, align 8
  %"$e_1247" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_1246", %_TyDescrTy_Typ* @"$TyDescr_Exception_56", i8* %"$e_1247")
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ExceptionTest(i8* %0) {
entry:
  %"$_amount_1249" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1250" = bitcast i8* %"$_amount_1249" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1250", align 8
  %"$_origin_1251" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1252" = bitcast i8* %"$_origin_1251" to [20 x i8]*
  %"$_sender_1253" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1254" = bitcast i8* %"$_sender_1253" to [20 x i8]*
  call void @"$ExceptionTest_1207"(%Uint128 %_amount, [20 x i8]* %"$_origin_1252", [20 x i8]* %"$_sender_1254")
  ret void
}

define internal void @"$AssignTest_1255"(%Uint128 %_amount, [20 x i8]* %"$_origin_1256", [20 x i8]* %"$_sender_1257") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1256", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1257", align 1
  %"$gasrem_1258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1259" = icmp ugt i64 1, %"$gasrem_1258"
  br i1 %"$gascmp_1259", label %"$out_of_gas_1260", label %"$have_gas_1261"

"$out_of_gas_1260":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1261"

"$have_gas_1261":                                 ; preds = %"$out_of_gas_1260", %entry
  %"$consume_1262" = sub i64 %"$gasrem_1258", 1
  store i64 %"$consume_1262", i64* @_gasrem, align 8
  %"$x_1" = alloca %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1264" = icmp ugt i64 1, %"$gasrem_1263"
  br i1 %"$gascmp_1264", label %"$out_of_gas_1265", label %"$have_gas_1266"

"$out_of_gas_1265":                               ; preds = %"$have_gas_1261"
  call void @_out_of_gas()
  br label %"$have_gas_1266"

"$have_gas_1266":                                 ; preds = %"$out_of_gas_1265", %"$have_gas_1261"
  %"$consume_1267" = sub i64 %"$gasrem_1263", 1
  store i64 %"$consume_1267", i64* @_gasrem, align 8
  %"$cparam3_1268" = load [20 x i8], [20 x i8]* @cparam3, align 1
  %"$adtval_1269_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1269_salloc" = call i8* @_salloc(i8* %"$adtval_1269_load", i64 21)
  %"$adtval_1269" = bitcast i8* %"$adtval_1269_salloc" to %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2*
  %"$adtgep_1270" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1269", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1270", align 1
  %"$adtgep_1271" = getelementptr inbounds %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2, %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1269", i32 0, i32 1
  store [20 x i8] %"$cparam3_1268", [20 x i8]* %"$adtgep_1271", align 1
  %"$adtptr_1272" = bitcast %CName_0x3620c286757a29985cee194eb90064270fb65414.Address2* %"$adtval_1269" to %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1272", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$$x_1_1273" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$$$x_1_1273_1274" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1273" to i8*
  %"$_literal_cost_call_1275" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", i8* %"$$$x_1_1273_1274")
  %"$gasrem_1276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1277" = icmp ugt i64 %"$_literal_cost_call_1275", %"$gasrem_1276"
  br i1 %"$gascmp_1277", label %"$out_of_gas_1278", label %"$have_gas_1279"

"$out_of_gas_1278":                               ; preds = %"$have_gas_1266"
  call void @_out_of_gas()
  br label %"$have_gas_1279"

"$have_gas_1279":                                 ; preds = %"$out_of_gas_1278", %"$have_gas_1266"
  %"$consume_1280" = sub i64 %"$gasrem_1276", %"$_literal_cost_call_1275"
  store i64 %"$consume_1280", i64* @_gasrem, align 8
  %"$execptr_load_1281" = load i8*, i8** @_execptr, align 8
  %"$$x_1_1283" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$update_value_1284" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1283" to i8*
  call void @_update_field(i8* %"$execptr_load_1281", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_8_1282", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", i32 0, i8* null, i8* %"$update_value_1284")
  %"$gasrem_1285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1286" = icmp ugt i64 1, %"$gasrem_1285"
  br i1 %"$gascmp_1286", label %"$out_of_gas_1287", label %"$have_gas_1288"

"$out_of_gas_1287":                               ; preds = %"$have_gas_1279"
  call void @_out_of_gas()
  br label %"$have_gas_1288"

"$have_gas_1288":                                 ; preds = %"$out_of_gas_1287", %"$have_gas_1279"
  %"$consume_1289" = sub i64 %"$gasrem_1285", 1
  store i64 %"$consume_1289", i64* @_gasrem, align 8
  %y = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1291" = icmp ugt i64 1, %"$gasrem_1290"
  br i1 %"$gascmp_1291", label %"$out_of_gas_1292", label %"$have_gas_1293"

"$out_of_gas_1292":                               ; preds = %"$have_gas_1288"
  call void @_out_of_gas()
  br label %"$have_gas_1293"

"$have_gas_1293":                                 ; preds = %"$out_of_gas_1292", %"$have_gas_1288"
  %"$consume_1294" = sub i64 %"$gasrem_1290", 1
  store i64 %"$consume_1294", i64* @_gasrem, align 8
  %n = alloca %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1296" = icmp ugt i64 1, %"$gasrem_1295"
  br i1 %"$gascmp_1296", label %"$out_of_gas_1297", label %"$have_gas_1298"

"$out_of_gas_1297":                               ; preds = %"$have_gas_1293"
  call void @_out_of_gas()
  br label %"$have_gas_1298"

"$have_gas_1298":                                 ; preds = %"$out_of_gas_1297", %"$have_gas_1293"
  %"$consume_1299" = sub i64 %"$gasrem_1295", 1
  store i64 %"$consume_1299", i64* @_gasrem, align 8
  %"$adtval_1300_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1300_salloc" = call i8* @_salloc(i8* %"$adtval_1300_load", i64 1)
  %"$adtval_1300" = bitcast i8* %"$adtval_1300_salloc" to %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1301" = getelementptr inbounds %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1300", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1301", align 1
  %"$adtptr_1302" = bitcast %CName_Nil_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1300" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1302", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8
  %"$gasrem_1303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1304" = icmp ugt i64 1, %"$gasrem_1303"
  br i1 %"$gascmp_1304", label %"$out_of_gas_1305", label %"$have_gas_1306"

"$out_of_gas_1305":                               ; preds = %"$have_gas_1298"
  call void @_out_of_gas()
  br label %"$have_gas_1306"

"$have_gas_1306":                                 ; preds = %"$out_of_gas_1305", %"$have_gas_1298"
  %"$consume_1307" = sub i64 %"$gasrem_1303", 1
  store i64 %"$consume_1307", i64* @_gasrem, align 8
  %"$$x_1_1308" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$n_1309" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %n, align 8
  %"$adtval_1310_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1310_salloc" = call i8* @_salloc(i8* %"$adtval_1310_load", i64 17)
  %"$adtval_1310" = bitcast i8* %"$adtval_1310_salloc" to %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  %"$adtgep_1311" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1310", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1311", align 1
  %"$adtgep_1312" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1310", i32 0, i32 1
  store %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1308", %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1312", align 8
  %"$adtgep_1313" = getelementptr inbounds %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT, %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1310", i32 0, i32 2
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$n_1309", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$adtgep_1313", align 8
  %"$adtptr_1314" = bitcast %CName_Cons_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtval_1310" to %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$adtptr_1314", %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$y_1315" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$$y_1315_1316" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1315" to i8*
  %"$_literal_cost_call_1317" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_68", i8* %"$$y_1315_1316")
  %"$gasrem_1318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1319" = icmp ugt i64 %"$_literal_cost_call_1317", %"$gasrem_1318"
  br i1 %"$gascmp_1319", label %"$out_of_gas_1320", label %"$have_gas_1321"

"$out_of_gas_1320":                               ; preds = %"$have_gas_1306"
  call void @_out_of_gas()
  br label %"$have_gas_1321"

"$have_gas_1321":                                 ; preds = %"$out_of_gas_1320", %"$have_gas_1306"
  %"$consume_1322" = sub i64 %"$gasrem_1318", %"$_literal_cost_call_1317"
  store i64 %"$consume_1322", i64* @_gasrem, align 8
  %"$execptr_load_1323" = load i8*, i8** @_execptr, align 8
  %"$y_1325" = load %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %y, align 8
  %"$update_value_1326" = bitcast %TName_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$y_1325" to i8*
  call void @_update_field(i8* %"$execptr_load_1323", i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$assign_test_9_1324", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_68", i32 0, i8* null, i8* %"$update_value_1326")
  %"$gasrem_1327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1328" = icmp ugt i64 1, %"$gasrem_1327"
  br i1 %"$gascmp_1328", label %"$out_of_gas_1329", label %"$have_gas_1330"

"$out_of_gas_1329":                               ; preds = %"$have_gas_1321"
  call void @_out_of_gas()
  br label %"$have_gas_1330"

"$have_gas_1330":                                 ; preds = %"$out_of_gas_1329", %"$have_gas_1321"
  %"$consume_1331" = sub i64 %"$gasrem_1327", 1
  store i64 %"$consume_1331", i64* @_gasrem, align 8
  %z = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1333" = icmp ugt i64 1, %"$gasrem_1332"
  br i1 %"$gascmp_1333", label %"$out_of_gas_1334", label %"$have_gas_1335"

"$out_of_gas_1334":                               ; preds = %"$have_gas_1330"
  call void @_out_of_gas()
  br label %"$have_gas_1335"

"$have_gas_1335":                                 ; preds = %"$out_of_gas_1334", %"$have_gas_1330"
  %"$consume_1336" = sub i64 %"$gasrem_1332", 1
  store i64 %"$consume_1336", i64* @_gasrem, align 8
  %"$n_2" = alloca %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, align 8
  %"$gasrem_1337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1338" = icmp ugt i64 1, %"$gasrem_1337"
  br i1 %"$gascmp_1338", label %"$out_of_gas_1339", label %"$have_gas_1340"

"$out_of_gas_1339":                               ; preds = %"$have_gas_1335"
  call void @_out_of_gas()
  br label %"$have_gas_1340"

"$have_gas_1340":                                 ; preds = %"$out_of_gas_1339", %"$have_gas_1335"
  %"$consume_1341" = sub i64 %"$gasrem_1337", 1
  store i64 %"$consume_1341", i64* @_gasrem, align 8
  %"$execptr_load_1342" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1343" = call i8* @_new_empty_map(i8* %"$execptr_load_1342")
  %"$_new_empty_map_1344" = bitcast i8* %"$_new_empty_map_call_1343" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$_new_empty_map_1344", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_2", align 8
  %"$gasrem_1345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1346" = icmp ugt i64 1, %"$gasrem_1345"
  br i1 %"$gascmp_1346", label %"$out_of_gas_1347", label %"$have_gas_1348"

"$out_of_gas_1347":                               ; preds = %"$have_gas_1340"
  call void @_out_of_gas()
  br label %"$have_gas_1348"

"$have_gas_1348":                                 ; preds = %"$out_of_gas_1347", %"$have_gas_1340"
  %"$consume_1349" = sub i64 %"$gasrem_1345", 1
  store i64 %"$consume_1349", i64* @_gasrem, align 8
  %sub_n = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$gasrem_1350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1351" = icmp ugt i64 1, %"$gasrem_1350"
  br i1 %"$gascmp_1351", label %"$out_of_gas_1352", label %"$have_gas_1353"

"$out_of_gas_1352":                               ; preds = %"$have_gas_1348"
  call void @_out_of_gas()
  br label %"$have_gas_1353"

"$have_gas_1353":                                 ; preds = %"$out_of_gas_1352", %"$have_gas_1348"
  %"$consume_1354" = sub i64 %"$gasrem_1350", 1
  store i64 %"$consume_1354", i64* @_gasrem, align 8
  %"$execptr_load_1355" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1356" = call i8* @_new_empty_map(i8* %"$execptr_load_1355")
  %"$_new_empty_map_1357" = bitcast i8* %"$_new_empty_map_call_1356" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$_new_empty_map_1357", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$gasrem_1358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1359" = icmp ugt i64 1, %"$gasrem_1358"
  br i1 %"$gascmp_1359", label %"$out_of_gas_1360", label %"$have_gas_1361"

"$out_of_gas_1360":                               ; preds = %"$have_gas_1353"
  call void @_out_of_gas()
  br label %"$have_gas_1361"

"$have_gas_1361":                                 ; preds = %"$out_of_gas_1360", %"$have_gas_1353"
  %"$consume_1362" = sub i64 %"$gasrem_1358", 1
  store i64 %"$consume_1362", i64* @_gasrem, align 8
  %sub_k = alloca %Uint128, align 8
  %"$gasrem_1363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1364" = icmp ugt i64 1, %"$gasrem_1363"
  br i1 %"$gascmp_1364", label %"$out_of_gas_1365", label %"$have_gas_1366"

"$out_of_gas_1365":                               ; preds = %"$have_gas_1361"
  call void @_out_of_gas()
  br label %"$have_gas_1366"

"$have_gas_1366":                                 ; preds = %"$out_of_gas_1365", %"$have_gas_1361"
  %"$consume_1367" = sub i64 %"$gasrem_1363", 1
  store i64 %"$consume_1367", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %sub_k, align 8
  %"$gasrem_1368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1369" = icmp ugt i64 1, %"$gasrem_1368"
  br i1 %"$gascmp_1369", label %"$out_of_gas_1370", label %"$have_gas_1371"

"$out_of_gas_1370":                               ; preds = %"$have_gas_1366"
  call void @_out_of_gas()
  br label %"$have_gas_1371"

"$have_gas_1371":                                 ; preds = %"$out_of_gas_1370", %"$have_gas_1366"
  %"$consume_1372" = sub i64 %"$gasrem_1368", 1
  store i64 %"$consume_1372", i64* @_gasrem, align 8
  %sub_res = alloca %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, align 8
  %"$execptr_load_1373" = load i8*, i8** @_execptr, align 8
  %"$sub_n_1374" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_n, align 8
  %"$$sub_n_1374_1375" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_n_1374" to i8*
  %"$put_sub_k_1376" = alloca %Uint128, align 8
  %"$sub_k_1377" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1377", %Uint128* %"$put_sub_k_1376", align 8
  %"$$put_sub_k_1376_1378" = bitcast %Uint128* %"$put_sub_k_1376" to i8*
  %"$$x_1_1379" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$$$x_1_1379_1380" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1379" to i8*
  %"$put_call_1381" = call i8* @_put(i8* %"$execptr_load_1373", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$sub_n_1374_1375", i8* %"$$put_sub_k_1376_1378", i8* %"$$$x_1_1379_1380")
  %"$put_1382" = bitcast i8* %"$put_call_1381" to %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*
  store %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$put_1382", %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8
  %"$execptr_load_1383" = load i8*, i8** @_execptr, align 8
  %"$$n_2_1384" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %"$n_2", align 8
  %"$$$n_2_1384_1385" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$$n_2_1384" to i8*
  %"$put_sub_k_1386" = alloca %Uint128, align 8
  %"$sub_k_1387" = load %Uint128, %Uint128* %sub_k, align 8
  store %Uint128 %"$sub_k_1387", %Uint128* %"$put_sub_k_1386", align 8
  %"$$put_sub_k_1386_1388" = bitcast %Uint128* %"$put_sub_k_1386" to i8*
  %"$sub_res_1389" = load %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %sub_res, align 8
  %"$$sub_res_1389_1390" = bitcast %Map_Uint128_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$sub_res_1389" to i8*
  %"$put_call_1391" = call i8* @_put(i8* %"$execptr_load_1383", %_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$$n_2_1384_1385", i8* %"$$put_sub_k_1386_1388", i8* %"$$sub_res_1389_1390")
  %"$put_1392" = bitcast i8* %"$put_call_1391" to %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*
  store %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$put_1392", %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$z_1393" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$$z_1393_1394" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1393" to i8*
  %"$_literal_cost_call_1395" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$z_1393_1394")
  %"$gasrem_1396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1397" = icmp ugt i64 %"$_literal_cost_call_1395", %"$gasrem_1396"
  br i1 %"$gascmp_1397", label %"$out_of_gas_1398", label %"$have_gas_1399"

"$out_of_gas_1398":                               ; preds = %"$have_gas_1371"
  call void @_out_of_gas()
  br label %"$have_gas_1399"

"$have_gas_1399":                                 ; preds = %"$out_of_gas_1398", %"$have_gas_1371"
  %"$consume_1400" = sub i64 %"$gasrem_1396", %"$_literal_cost_call_1395"
  store i64 %"$consume_1400", i64* @_gasrem, align 8
  %"$execptr_load_1401" = load i8*, i8** @_execptr, align 8
  %"$z_1403" = load %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"*, %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"** %z, align 8
  %"$update_value_1404" = bitcast %"Map_Uint128_Map_(Uint128)_(0x3620c286757a29985cee194eb90064270fb65414.AddressADT)"* %"$z_1403" to i8*
  call void @_update_field(i8* %"$execptr_load_1401", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1402", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 0, i8* null, i8* %"$update_value_1404")
  %"$gasrem_1405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1406" = icmp ugt i64 1, %"$gasrem_1405"
  br i1 %"$gascmp_1406", label %"$out_of_gas_1407", label %"$have_gas_1408"

"$out_of_gas_1407":                               ; preds = %"$have_gas_1399"
  call void @_out_of_gas()
  br label %"$have_gas_1408"

"$have_gas_1408":                                 ; preds = %"$out_of_gas_1407", %"$have_gas_1399"
  %"$consume_1409" = sub i64 %"$gasrem_1405", 1
  store i64 %"$consume_1409", i64* @_gasrem, align 8
  %k1 = alloca %Uint128, align 8
  %"$gasrem_1410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1411" = icmp ugt i64 1, %"$gasrem_1410"
  br i1 %"$gascmp_1411", label %"$out_of_gas_1412", label %"$have_gas_1413"

"$out_of_gas_1412":                               ; preds = %"$have_gas_1408"
  call void @_out_of_gas()
  br label %"$have_gas_1413"

"$have_gas_1413":                                 ; preds = %"$out_of_gas_1412", %"$have_gas_1408"
  %"$consume_1414" = sub i64 %"$gasrem_1410", 1
  store i64 %"$consume_1414", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %k1, align 8
  %"$gasrem_1415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1416" = icmp ugt i64 1, %"$gasrem_1415"
  br i1 %"$gascmp_1416", label %"$out_of_gas_1417", label %"$have_gas_1418"

"$out_of_gas_1417":                               ; preds = %"$have_gas_1413"
  call void @_out_of_gas()
  br label %"$have_gas_1418"

"$have_gas_1418":                                 ; preds = %"$out_of_gas_1417", %"$have_gas_1413"
  %"$consume_1419" = sub i64 %"$gasrem_1415", 1
  store i64 %"$consume_1419", i64* @_gasrem, align 8
  %k2 = alloca %Uint128, align 8
  %"$gasrem_1420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1421" = icmp ugt i64 1, %"$gasrem_1420"
  br i1 %"$gascmp_1421", label %"$out_of_gas_1422", label %"$have_gas_1423"

"$out_of_gas_1422":                               ; preds = %"$have_gas_1418"
  call void @_out_of_gas()
  br label %"$have_gas_1423"

"$have_gas_1423":                                 ; preds = %"$out_of_gas_1422", %"$have_gas_1418"
  %"$consume_1424" = sub i64 %"$gasrem_1420", 1
  store i64 %"$consume_1424", i64* @_gasrem, align 8
  store %Uint128 { i128 42 }, %Uint128* %k2, align 8
  %"$$x_1_1425" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$$$x_1_1425_1426" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1425" to i8*
  %"$_literal_cost_call_1427" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_0x3620c286757a29985cee194eb90064270fb65414.AddressADT_72", i8* %"$$$x_1_1425_1426")
  %"$gasadd_1428" = add i64 %"$_literal_cost_call_1427", 2
  %"$gasrem_1429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1430" = icmp ugt i64 %"$gasadd_1428", %"$gasrem_1429"
  br i1 %"$gascmp_1430", label %"$out_of_gas_1431", label %"$have_gas_1432"

"$out_of_gas_1431":                               ; preds = %"$have_gas_1423"
  call void @_out_of_gas()
  br label %"$have_gas_1432"

"$have_gas_1432":                                 ; preds = %"$out_of_gas_1431", %"$have_gas_1423"
  %"$consume_1433" = sub i64 %"$gasrem_1429", %"$gasadd_1428"
  store i64 %"$consume_1433", i64* @_gasrem, align 8
  %"$indices_buf_1434_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1434_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1434_salloc_load", i64 32)
  %"$indices_buf_1434_salloc" = bitcast i8* %"$indices_buf_1434_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1434" = bitcast [32 x i8]* %"$indices_buf_1434_salloc" to i8*
  %"$k1_1435" = load %Uint128, %Uint128* %k1, align 8
  %"$indices_gep_1436" = getelementptr i8, i8* %"$indices_buf_1434", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1436" to %Uint128*
  store %Uint128 %"$k1_1435", %Uint128* %indices_cast, align 8
  %"$k2_1437" = load %Uint128, %Uint128* %k2, align 8
  %"$indices_gep_1438" = getelementptr i8, i8* %"$indices_buf_1434", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1438" to %Uint128*
  store %Uint128 %"$k2_1437", %Uint128* %indices_cast1, align 8
  %"$execptr_load_1439" = load i8*, i8** @_execptr, align 8
  %"$$x_1_1441" = load %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT*, %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT** %"$x_1", align 8
  %"$update_value_1442" = bitcast %TName_0x3620c286757a29985cee194eb90064270fb65414.AddressADT* %"$$x_1_1441" to i8*
  call void @_update_field(i8* %"$execptr_load_1439", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$assign_test_10_1440", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_1434", i8* %"$update_value_1442")
  ret void
}

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @AssignTest(i8* %0) {
entry:
  %"$_amount_1444" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1445" = bitcast i8* %"$_amount_1444" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1445", align 8
  %"$_origin_1446" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1447" = bitcast i8* %"$_origin_1446" to [20 x i8]*
  %"$_sender_1448" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1449" = bitcast i8* %"$_sender_1448" to [20 x i8]*
  call void @"$AssignTest_1255"(%Uint128 %_amount, [20 x i8]* %"$_origin_1447", [20 x i8]* %"$_sender_1449")
  ret void
}

define internal void @"$SenderBalanceTest_1450"(%Uint128 %_amount, [20 x i8]* %"$_origin_1451", [20 x i8]* %"$_sender_1452") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1451", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1452", align 1
  %pre = alloca %Uint128, align 8
  %"$execptr_load_1454" = load i8*, i8** @_execptr, align 8
  %"$pre__sender_1455" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$pre__sender_1455", align 1
  %"$pre_call_1456" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1454", [20 x i8]* %"$pre__sender_1455", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1453", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i32 1)
  %"$pre_1457" = bitcast i8* %"$pre_call_1456" to %Uint128*
  %"$pre_1458" = load %Uint128, %Uint128* %"$pre_1457", align 8
  store %Uint128 %"$pre_1458", %Uint128* %pre, align 8
  %"$_literal_cost_pre_1459" = alloca %Uint128, align 8
  %"$pre_1460" = load %Uint128, %Uint128* %pre, align 8
  store %Uint128 %"$pre_1460", %Uint128* %"$_literal_cost_pre_1459", align 8
  %"$$_literal_cost_pre_1459_1461" = bitcast %Uint128* %"$_literal_cost_pre_1459" to i8*
  %"$_literal_cost_call_1462" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_pre_1459_1461")
  %"$gasadd_1463" = add i64 %"$_literal_cost_call_1462", 0
  %"$gasrem_1464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1465" = icmp ugt i64 %"$gasadd_1463", %"$gasrem_1464"
  br i1 %"$gascmp_1465", label %"$out_of_gas_1466", label %"$have_gas_1467"

"$out_of_gas_1466":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1467"

"$have_gas_1467":                                 ; preds = %"$out_of_gas_1466", %entry
  %"$consume_1468" = sub i64 %"$gasrem_1464", %"$gasadd_1463"
  store i64 %"$consume_1468", i64* @_gasrem, align 8
  %"$_literal_cost_pre_1469" = alloca %Uint128, align 8
  %"$pre_1470" = load %Uint128, %Uint128* %pre, align 8
  store %Uint128 %"$pre_1470", %Uint128* %"$_literal_cost_pre_1469", align 8
  %"$$_literal_cost_pre_1469_1471" = bitcast %Uint128* %"$_literal_cost_pre_1469" to i8*
  %"$_literal_cost_call_1472" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_pre_1469_1471")
  %"$gasrem_1473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1474" = icmp ugt i64 %"$_literal_cost_call_1472", %"$gasrem_1473"
  br i1 %"$gascmp_1474", label %"$out_of_gas_1475", label %"$have_gas_1476"

"$out_of_gas_1475":                               ; preds = %"$have_gas_1467"
  call void @_out_of_gas()
  br label %"$have_gas_1476"

"$have_gas_1476":                                 ; preds = %"$out_of_gas_1475", %"$have_gas_1467"
  %"$consume_1477" = sub i64 %"$gasrem_1473", %"$_literal_cost_call_1472"
  store i64 %"$consume_1477", i64* @_gasrem, align 8
  %"$execptr_load_1478" = load i8*, i8** @_execptr, align 8
  %"$pre_1480" = load %Uint128, %Uint128* %pre, align 8
  %"$update_value_1481" = alloca %Uint128, align 8
  store %Uint128 %"$pre_1480", %Uint128* %"$update_value_1481", align 8
  %"$update_value_1482" = bitcast %Uint128* %"$update_value_1481" to i8*
  call void @_update_field(i8* %"$execptr_load_1478", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_pre_1479", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_1482")
  %"$gasrem_1483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1484" = icmp ugt i64 1, %"$gasrem_1483"
  br i1 %"$gascmp_1484", label %"$out_of_gas_1485", label %"$have_gas_1486"

"$out_of_gas_1485":                               ; preds = %"$have_gas_1476"
  call void @_out_of_gas()
  br label %"$have_gas_1486"

"$have_gas_1486":                                 ; preds = %"$out_of_gas_1485", %"$have_gas_1476"
  %"$consume_1487" = sub i64 %"$gasrem_1483", 1
  store i64 %"$consume_1487", i64* @_gasrem, align 8
  %"$execptr_load_1488" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_1488")
  %mid = alloca %Uint128, align 8
  %"$execptr_load_1490" = load i8*, i8** @_execptr, align 8
  %"$mid__sender_1491" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$mid__sender_1491", align 1
  %"$mid_call_1492" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1490", [20 x i8]* %"$mid__sender_1491", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1489", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i32 1)
  %"$mid_1493" = bitcast i8* %"$mid_call_1492" to %Uint128*
  %"$mid_1494" = load %Uint128, %Uint128* %"$mid_1493", align 8
  store %Uint128 %"$mid_1494", %Uint128* %mid, align 8
  %"$_literal_cost_mid_1495" = alloca %Uint128, align 8
  %"$mid_1496" = load %Uint128, %Uint128* %mid, align 8
  store %Uint128 %"$mid_1496", %Uint128* %"$_literal_cost_mid_1495", align 8
  %"$$_literal_cost_mid_1495_1497" = bitcast %Uint128* %"$_literal_cost_mid_1495" to i8*
  %"$_literal_cost_call_1498" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_mid_1495_1497")
  %"$gasadd_1499" = add i64 %"$_literal_cost_call_1498", 0
  %"$gasrem_1500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1501" = icmp ugt i64 %"$gasadd_1499", %"$gasrem_1500"
  br i1 %"$gascmp_1501", label %"$out_of_gas_1502", label %"$have_gas_1503"

"$out_of_gas_1502":                               ; preds = %"$have_gas_1486"
  call void @_out_of_gas()
  br label %"$have_gas_1503"

"$have_gas_1503":                                 ; preds = %"$out_of_gas_1502", %"$have_gas_1486"
  %"$consume_1504" = sub i64 %"$gasrem_1500", %"$gasadd_1499"
  store i64 %"$consume_1504", i64* @_gasrem, align 8
  %"$_literal_cost_mid_1505" = alloca %Uint128, align 8
  %"$mid_1506" = load %Uint128, %Uint128* %mid, align 8
  store %Uint128 %"$mid_1506", %Uint128* %"$_literal_cost_mid_1505", align 8
  %"$$_literal_cost_mid_1505_1507" = bitcast %Uint128* %"$_literal_cost_mid_1505" to i8*
  %"$_literal_cost_call_1508" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_mid_1505_1507")
  %"$gasrem_1509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1510" = icmp ugt i64 %"$_literal_cost_call_1508", %"$gasrem_1509"
  br i1 %"$gascmp_1510", label %"$out_of_gas_1511", label %"$have_gas_1512"

"$out_of_gas_1511":                               ; preds = %"$have_gas_1503"
  call void @_out_of_gas()
  br label %"$have_gas_1512"

"$have_gas_1512":                                 ; preds = %"$out_of_gas_1511", %"$have_gas_1503"
  %"$consume_1513" = sub i64 %"$gasrem_1509", %"$_literal_cost_call_1508"
  store i64 %"$consume_1513", i64* @_gasrem, align 8
  %"$execptr_load_1514" = load i8*, i8** @_execptr, align 8
  %"$mid_1516" = load %Uint128, %Uint128* %mid, align 8
  %"$update_value_1517" = alloca %Uint128, align 8
  store %Uint128 %"$mid_1516", %Uint128* %"$update_value_1517", align 8
  %"$update_value_1518" = bitcast %Uint128* %"$update_value_1517" to i8*
  call void @_update_field(i8* %"$execptr_load_1514", i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$sender_balance_mid_1515", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_1518")
  %"$gasrem_1519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1520" = icmp ugt i64 1, %"$gasrem_1519"
  br i1 %"$gascmp_1520", label %"$out_of_gas_1521", label %"$have_gas_1522"

"$out_of_gas_1521":                               ; preds = %"$have_gas_1512"
  call void @_out_of_gas()
  br label %"$have_gas_1522"

"$have_gas_1522":                                 ; preds = %"$out_of_gas_1521", %"$have_gas_1512"
  %"$consume_1523" = sub i64 %"$gasrem_1519", 1
  store i64 %"$consume_1523", i64* @_gasrem, align 8
  %"$execptr_load_1524" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_1524")
  %post = alloca %Uint128, align 8
  %"$execptr_load_1526" = load i8*, i8** @_execptr, align 8
  %"$post__sender_1527" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$post__sender_1527", align 1
  %"$post_call_1528" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1526", [20 x i8]* %"$post__sender_1527", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1525", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i32 1)
  %"$post_1529" = bitcast i8* %"$post_call_1528" to %Uint128*
  %"$post_1530" = load %Uint128, %Uint128* %"$post_1529", align 8
  store %Uint128 %"$post_1530", %Uint128* %post, align 8
  %"$_literal_cost_post_1531" = alloca %Uint128, align 8
  %"$post_1532" = load %Uint128, %Uint128* %post, align 8
  store %Uint128 %"$post_1532", %Uint128* %"$_literal_cost_post_1531", align 8
  %"$$_literal_cost_post_1531_1533" = bitcast %Uint128* %"$_literal_cost_post_1531" to i8*
  %"$_literal_cost_call_1534" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_post_1531_1533")
  %"$gasadd_1535" = add i64 %"$_literal_cost_call_1534", 0
  %"$gasrem_1536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1537" = icmp ugt i64 %"$gasadd_1535", %"$gasrem_1536"
  br i1 %"$gascmp_1537", label %"$out_of_gas_1538", label %"$have_gas_1539"

"$out_of_gas_1538":                               ; preds = %"$have_gas_1522"
  call void @_out_of_gas()
  br label %"$have_gas_1539"

"$have_gas_1539":                                 ; preds = %"$out_of_gas_1538", %"$have_gas_1522"
  %"$consume_1540" = sub i64 %"$gasrem_1536", %"$gasadd_1535"
  store i64 %"$consume_1540", i64* @_gasrem, align 8
  %"$_literal_cost_post_1541" = alloca %Uint128, align 8
  %"$post_1542" = load %Uint128, %Uint128* %post, align 8
  store %Uint128 %"$post_1542", %Uint128* %"$_literal_cost_post_1541", align 8
  %"$$_literal_cost_post_1541_1543" = bitcast %Uint128* %"$_literal_cost_post_1541" to i8*
  %"$_literal_cost_call_1544" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i8* %"$$_literal_cost_post_1541_1543")
  %"$gasrem_1545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1546" = icmp ugt i64 %"$_literal_cost_call_1544", %"$gasrem_1545"
  br i1 %"$gascmp_1546", label %"$out_of_gas_1547", label %"$have_gas_1548"

"$out_of_gas_1547":                               ; preds = %"$have_gas_1539"
  call void @_out_of_gas()
  br label %"$have_gas_1548"

"$have_gas_1548":                                 ; preds = %"$out_of_gas_1547", %"$have_gas_1539"
  %"$consume_1549" = sub i64 %"$gasrem_1545", %"$_literal_cost_call_1544"
  store i64 %"$consume_1549", i64* @_gasrem, align 8
  %"$execptr_load_1550" = load i8*, i8** @_execptr, align 8
  %"$post_1552" = load %Uint128, %Uint128* %post, align 8
  %"$update_value_1553" = alloca %Uint128, align 8
  store %Uint128 %"$post_1552", %Uint128* %"$update_value_1553", align 8
  %"$update_value_1554" = bitcast %Uint128* %"$update_value_1553" to i8*
  call void @_update_field(i8* %"$execptr_load_1550", i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$sender_balance_post_1551", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_42", i32 0, i8* null, i8* %"$update_value_1554")
  ret void
}

declare void @_accept(i8*)

define void @SenderBalanceTest(i8* %0) {
entry:
  %"$_amount_1556" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1557" = bitcast i8* %"$_amount_1556" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1557", align 8
  %"$_origin_1558" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1559" = bitcast i8* %"$_origin_1558" to [20 x i8]*
  %"$_sender_1560" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1561" = bitcast i8* %"$_sender_1560" to [20 x i8]*
  call void @"$SenderBalanceTest_1450"(%Uint128 %_amount, [20 x i8]* %"$_origin_1559", [20 x i8]* %"$_sender_1561")
  ret void
}
