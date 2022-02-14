

; gas_remaining: 4001918
; ModuleID = 'Admin'
source_filename = "Admin"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_13" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_45" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_44"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_44" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_46"**, %"$TyDescrTy_ADTTyp_45"* }
%"$TyDescrTy_ADTTyp_Constr_46" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_50" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_53" = type { i32, %"$TyDescr_AddrFieldTyp_52"* }
%"$TyDescr_AddrFieldTyp_52" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_568" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_569" = type { %ParamDescrString, i32, %"$ParamDescr_568"* }
%"$$fundef_8_env_93" = type { [20 x i8] }
%String = type { i8*, i32 }
%"$$fundef_6_env_94" = type {}
%"$$fundef_10_env_95" = type { %TName_List_Message* }
%Map_ByStr20_Bool = type { [20 x i8], %TName_Bool* }
%Uint128 = type { i128 }
%TName_Option_Bool = type { i8, %CName_Some_Bool*, %CName_None_Bool* }
%CName_Some_Bool = type <{ i8, %TName_Bool* }>
%CName_None_Bool = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_14" = global %"$TyDescrTy_PrimTyp_13" zeroinitializer
@"$TyDescr_Int32_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int32_Prim_14" to i8*) }
@"$TyDescr_Uint32_Prim_16" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 0 }
@"$TyDescr_Uint32_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint32_Prim_16" to i8*) }
@"$TyDescr_Int64_Prim_18" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 1 }
@"$TyDescr_Int64_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int64_Prim_18" to i8*) }
@"$TyDescr_Uint64_Prim_20" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 1 }
@"$TyDescr_Uint64_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint64_Prim_20" to i8*) }
@"$TyDescr_Int128_Prim_22" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 2 }
@"$TyDescr_Int128_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int128_Prim_22" to i8*) }
@"$TyDescr_Uint128_Prim_24" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 2 }
@"$TyDescr_Uint128_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint128_Prim_24" to i8*) }
@"$TyDescr_Int256_Prim_26" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 3 }
@"$TyDescr_Int256_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int256_Prim_26" to i8*) }
@"$TyDescr_Uint256_Prim_28" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 3 }
@"$TyDescr_Uint256_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint256_Prim_28" to i8*) }
@"$TyDescr_String_Prim_30" = global %"$TyDescrTy_PrimTyp_13" { i32 2, i32 0 }
@"$TyDescr_String_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_String_Prim_30" to i8*) }
@"$TyDescr_Bnum_Prim_32" = global %"$TyDescrTy_PrimTyp_13" { i32 3, i32 0 }
@"$TyDescr_Bnum_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bnum_Prim_32" to i8*) }
@"$TyDescr_Message_Prim_34" = global %"$TyDescrTy_PrimTyp_13" { i32 4, i32 0 }
@"$TyDescr_Message_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Message_Prim_34" to i8*) }
@"$TyDescr_Event_Prim_36" = global %"$TyDescrTy_PrimTyp_13" { i32 5, i32 0 }
@"$TyDescr_Event_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Event_Prim_36" to i8*) }
@"$TyDescr_Exception_Prim_38" = global %"$TyDescrTy_PrimTyp_13" { i32 6, i32 0 }
@"$TyDescr_Exception_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Exception_Prim_38" to i8*) }
@"$TyDescr_Bystr_Prim_40" = global %"$TyDescrTy_PrimTyp_13" { i32 7, i32 0 }
@"$TyDescr_Bystr_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bystr_Prim_40" to i8*) }
@"$TyDescr_Bystr20_Prim_42" = global %"$TyDescrTy_PrimTyp_13" { i32 8, i32 20 }
@"$TyDescr_Bystr20_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bystr20_Prim_42" to i8*) }
@"$TyDescr_ADT_Option_Bool_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Option_Bool_ADTTyp_Specl_64" to i8*) }
@"$TyDescr_ADT_Bool_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Bool_ADTTyp_Specl_76" to i8*) }
@"$TyDescr_ADT_List_Message_49" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_List_Message_ADTTyp_Specl_88" to i8*) }
@"$TyDescr_Map_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_50"* @"$TyDescr_MapTyp_91" to i8*) }
@"$TyDescr_Addr_54" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_53"* @"$TyDescr_AddrFields_92" to i8*) }
@"$TyDescr_Option_ADTTyp_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_45" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_66", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_44"*], [1 x %"$TyDescrTy_ADTTyp_Specl_44"*]* @"$TyDescr_Option_ADTTyp_m_specls_65", i32 0, i32 0) }
@"$TyDescr_Option_Some_Bool_Constr_m_args_56" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48"]
@"$TyDescr_ADT_Some_57" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_57", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_60" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_60", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_62" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_46"*] [%"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_58", %"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_61"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_63" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_44" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_46"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_46"*], [2 x %"$TyDescrTy_ADTTyp_Constr_46"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_45"* @"$TyDescr_Option_ADTTyp_55" }
@"$TyDescr_Option_ADTTyp_m_specls_65" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_44"*] [%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Option_Bool_ADTTyp_Specl_64"]
@"$TyDescr_ADT_Option_66" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_45" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_78", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_44"*], [1 x %"$TyDescrTy_ADTTyp_Specl_44"*]* @"$TyDescr_Bool_ADTTyp_m_specls_77", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_69" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_69", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_71" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_72" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_72", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_71", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_74" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_46"*] [%"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Bool_True_ADTTyp_Constr_70", %"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Bool_False_ADTTyp_Constr_73"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_75" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_44" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_46"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_46"*], [2 x %"$TyDescrTy_ADTTyp_Constr_46"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_74", i32 0, i32 0), %"$TyDescrTy_ADTTyp_45"* @"$TyDescr_Bool_ADTTyp_67" }
@"$TyDescr_Bool_ADTTyp_m_specls_77" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_44"*] [%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Bool_ADTTyp_Specl_76"]
@"$TyDescr_ADT_Bool_78" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_45" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_90", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_44"*], [1 x %"$TyDescrTy_ADTTyp_Specl_44"*]* @"$TyDescr_List_ADTTyp_m_specls_89", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_80" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_35", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_49"]
@"$TyDescr_ADT_Cons_81" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_81", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_80", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_83" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_84" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_84", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_86" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_46"*] [%"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_82", %"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_85"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_87" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_35"]
@"$TyDescr_List_Message_ADTTyp_Specl_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_44" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_46"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_46"*], [2 x %"$TyDescrTy_ADTTyp_Constr_46"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_45"* @"$TyDescr_List_ADTTyp_79" }
@"$TyDescr_List_ADTTyp_m_specls_89" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_44"*] [%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_List_Message_ADTTyp_Specl_88"]
@"$TyDescr_ADT_List_90" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_91" = unnamed_addr constant %"$TyDescr_MapTyp_50" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48" }
@"$TyDescr_AddrFields_92" = unnamed_addr constant %"$TyDescr_AddrTyp_53" { i32 -3, %"$TyDescr_AddrFieldTyp_52"* null }
@"$stringlit_129" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_134" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_137" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_145" = unnamed_addr constant [10 x i8] c"isApproved"
@"$_gas_charge_acc_2" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_1" = global %Int32 zeroinitializer
@ud-proxy.true = global %TName_Bool* null
@ud-proxy.nilMessage = global %TName_List_Message* null
@ud-proxy.oneMsg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@ud-proxy.eAdminSet = global { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-proxy.eError = global i8* null
@"$stringlit_210" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_215" = unnamed_addr constant [5 x i8] c"Error"
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_initialAdmin = global [20 x i8] zeroinitializer
@_cparam_registry = global [20 x i8] zeroinitializer
@"$admins_257" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_266" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_338" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_400" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_477" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_482" = unnamed_addr constant [6 x i8] c"bestow"
@"$stringlit_485" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_493" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_500" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_507" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_514" = unnamed_addr constant [8 x i8] c"resolver"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_49", %_TyDescrTy_Typ* @"$TyDescr_Event_37", %_TyDescrTy_Typ* @"$TyDescr_Int64_19", %_TyDescrTy_Typ* @"$TyDescr_Addr_54", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_47", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", %_TyDescrTy_Typ* @"$TyDescr_Bnum_33", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ* @"$TyDescr_Map_51", %_TyDescrTy_Typ* @"$TyDescr_Exception_39", %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ* @"$TyDescr_Int256_27", %_TyDescrTy_Typ* @"$TyDescr_Int128_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr_41", %_TyDescrTy_Typ* @"$TyDescr_Message_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_15"]
@_tydescr_table_length = constant i32 20
@"$pname__scilla_version_570" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_571" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_572" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_initialAdmin_573" = unnamed_addr constant [12 x i8] c"initialAdmin"
@"$pname_registry_574" = unnamed_addr constant [8 x i8] c"registry"
@_contract_parameters = constant [5 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_570", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_17" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_571", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_572", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_33" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialAdmin_573", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_registry_574", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_575" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_576" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_577" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_578" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_579" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_580" = unnamed_addr constant [5 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_575", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_25" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_576", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_577", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_578", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_579", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48" }]
@"$tname_setAdmin_581" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_582" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_583" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_584" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_585" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_586" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_587" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_588" = unnamed_addr constant [6 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_582", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_25" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_583", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_584", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_585", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_31" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_586", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_587", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }]
@"$tname_bestow_589" = unnamed_addr constant [6 x i8] c"bestow"
@_transition_parameters = constant [2 x %"$TransDescr_569"] [%"$TransDescr_569" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_581", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_568"* getelementptr inbounds ([5 x %"$ParamDescr_568"], [5 x %"$ParamDescr_568"]* @"$tparams_setAdmin_580", i32 0, i32 0) }, %"$TransDescr_569" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_589", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_568"* getelementptr inbounds ([6 x %"$ParamDescr_568"], [6 x %"$ParamDescr_568"]* @"$tparams_bestow_588", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal i8* @"$fundef_8"(%"$$fundef_8_env_93"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_8_env_address_121" = getelementptr inbounds %"$$fundef_8_env_93", %"$$fundef_8_env_93"* %0, i32 0, i32 0
  %"$address_envload_122" = load [20 x i8], [20 x i8]* %"$$fundef_8_env_address_121", align 1
  %address = alloca [20 x i8], align 1
  store [20 x i8] %"$address_envload_122", [20 x i8]* %address, align 1
  %"$retval_9" = alloca i8*, align 8
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %entry
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %"$msgobj_128_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_128_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_128_salloc_load", i64 117)
  %"$msgobj_128_salloc" = bitcast i8* %"$msgobj_128_salloc_salloc" to [117 x i8]*
  %"$msgobj_128" = bitcast [117 x i8]* %"$msgobj_128_salloc" to i8*
  store i8 3, i8* %"$msgobj_128", align 1
  %"$msgobj_fname_130" = getelementptr i8, i8* %"$msgobj_128", i32 1
  %"$msgobj_fname_131" = bitcast i8* %"$msgobj_fname_130" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_129", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_131", align 8
  %"$msgobj_td_132" = getelementptr i8, i8* %"$msgobj_128", i32 17
  %"$msgobj_td_133" = bitcast i8* %"$msgobj_td_132" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_133", align 8
  %"$msgobj_v_135" = getelementptr i8, i8* %"$msgobj_128", i32 25
  %"$msgobj_v_136" = bitcast i8* %"$msgobj_v_135" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_134", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_136", align 8
  %"$msgobj_fname_138" = getelementptr i8, i8* %"$msgobj_128", i32 41
  %"$msgobj_fname_139" = bitcast i8* %"$msgobj_fname_138" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_137", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_139", align 8
  %"$msgobj_td_140" = getelementptr i8, i8* %"$msgobj_128", i32 57
  %"$msgobj_td_141" = bitcast i8* %"$msgobj_td_140" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43", %_TyDescrTy_Typ** %"$msgobj_td_141", align 8
  %"$address_142" = load [20 x i8], [20 x i8]* %address, align 1
  %"$msgobj_v_143" = getelementptr i8, i8* %"$msgobj_128", i32 65
  %"$msgobj_v_144" = bitcast i8* %"$msgobj_v_143" to [20 x i8]*
  store [20 x i8] %"$address_142", [20 x i8]* %"$msgobj_v_144", align 1
  %"$msgobj_fname_146" = getelementptr i8, i8* %"$msgobj_128", i32 85
  %"$msgobj_fname_147" = bitcast i8* %"$msgobj_fname_146" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_145", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_147", align 8
  %"$msgobj_td_148" = getelementptr i8, i8* %"$msgobj_128", i32 101
  %"$msgobj_td_149" = bitcast i8* %"$msgobj_td_148" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48", %_TyDescrTy_Typ** %"$msgobj_td_149", align 8
  %"$msgobj_v_150" = getelementptr i8, i8* %"$msgobj_128", i32 109
  %"$msgobj_v_151" = bitcast i8* %"$msgobj_v_150" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_151", align 8
  store i8* %"$msgobj_128", i8** %"$retval_9", align 8
  %"$$retval_9_153" = load i8*, i8** %"$retval_9", align 8
  ret i8* %"$$retval_9_153"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_6"(%"$$fundef_6_env_94"* %0, [20 x i8]* %1) {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_7" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %entry
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$$fundef_8_envp_115_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_8_envp_115_salloc" = call i8* @_salloc(i8* %"$$fundef_8_envp_115_load", i64 20)
  %"$$fundef_8_envp_115" = bitcast i8* %"$$fundef_8_envp_115_salloc" to %"$$fundef_8_env_93"*
  %"$$fundef_8_env_voidp_117" = bitcast %"$$fundef_8_env_93"* %"$$fundef_8_envp_115" to i8*
  %"$$fundef_8_cloval_118" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_8_env_93"*, %TName_Bool*)* @"$fundef_8" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_8_env_voidp_117", 1
  %"$$fundef_8_env_address_119" = getelementptr inbounds %"$$fundef_8_env_93", %"$$fundef_8_env_93"* %"$$fundef_8_envp_115", i32 0, i32 0
  store [20 x i8] %address, [20 x i8]* %"$$fundef_8_env_address_119", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_8_cloval_118", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_7", align 8
  %"$$retval_7_120" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_7", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_7_120"
}

define internal %TName_List_Message* @"$fundef_10"(%"$$fundef_10_env_95"* %0, i8* %1) {
entry:
  %"$$fundef_10_env_ud-proxy.nilMessage_96" = getelementptr inbounds %"$$fundef_10_env_95", %"$$fundef_10_env_95"* %0, i32 0, i32 0
  %"$ud-proxy.nilMessage_envload_97" = load %TName_List_Message*, %TName_List_Message** %"$$fundef_10_env_ud-proxy.nilMessage_96", align 8
  %ud-proxy.nilMessage = alloca %TName_List_Message*, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_envload_97", %TName_List_Message** %ud-proxy.nilMessage, align 8
  %"$retval_11" = alloca %TName_List_Message*, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %entry
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$ud-proxy.nilMessage_103" = load %TName_List_Message*, %TName_List_Message** %ud-proxy.nilMessage, align 8
  %"$adtval_104_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_104_salloc" = call i8* @_salloc(i8* %"$adtval_104_load", i64 17)
  %"$adtval_104" = bitcast i8* %"$adtval_104_salloc" to %CName_Cons_Message*
  %"$adtgep_105" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_104", i32 0, i32 0
  store i8 0, i8* %"$adtgep_105", align 1
  %"$adtgep_106" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_104", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_106", align 8
  %"$adtgep_107" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_104", i32 0, i32 2
  store %TName_List_Message* %"$ud-proxy.nilMessage_103", %TName_List_Message** %"$adtgep_107", align 8
  %"$adtptr_108" = bitcast %CName_Cons_Message* %"$adtval_104" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_108", %TName_List_Message** %"$retval_11", align 8
  %"$$retval_11_109" = load %TName_List_Message*, %TName_List_Message** %"$retval_11", align 8
  ret %TName_List_Message* %"$$retval_11_109"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 5, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %entry
  %"$consume_158" = sub i64 %"$gasrem_154", 5
  store i64 %"$consume_158", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_2", align 4
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 8, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_157"
  %"$consume_163" = sub i64 %"$gasrem_159", 8
  store i64 %"$consume_163", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 20, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 20
  store i64 %"$consume_168", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_1", align 4
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_167"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %"$adtval_174_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_174_salloc" = call i8* @_salloc(i8* %"$adtval_174_load", i64 1)
  %"$adtval_174" = bitcast i8* %"$adtval_174_salloc" to %CName_True*
  %"$adtgep_175" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_174", i32 0, i32 0
  store i8 0, i8* %"$adtgep_175", align 1
  %"$adtptr_176" = bitcast %CName_True* %"$adtval_174" to %TName_Bool*
  store %TName_Bool* %"$adtptr_176", %TName_Bool** @ud-proxy.true, align 8
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_172"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %"$adtval_182_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_182_salloc" = call i8* @_salloc(i8* %"$adtval_182_load", i64 1)
  %"$adtval_182" = bitcast i8* %"$adtval_182_salloc" to %CName_Nil_Message*
  %"$adtgep_183" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_182", i32 0, i32 0
  store i8 1, i8* %"$adtgep_183", align 1
  %"$adtptr_184" = bitcast %CName_Nil_Message* %"$adtval_182" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_184", %TName_List_Message** @ud-proxy.nilMessage, align 8
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_180"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$$fundef_10_envp_190_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_10_envp_190_salloc" = call i8* @_salloc(i8* %"$$fundef_10_envp_190_load", i64 8)
  %"$$fundef_10_envp_190" = bitcast i8* %"$$fundef_10_envp_190_salloc" to %"$$fundef_10_env_95"*
  %"$$fundef_10_env_voidp_192" = bitcast %"$$fundef_10_env_95"* %"$$fundef_10_envp_190" to i8*
  %"$$fundef_10_cloval_193" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_10_env_95"*, i8*)* @"$fundef_10" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_10_env_voidp_192", 1
  %"$$fundef_10_env_ud-proxy.nilMessage_194" = getelementptr inbounds %"$$fundef_10_env_95", %"$$fundef_10_env_95"* %"$$fundef_10_envp_190", i32 0, i32 0
  %"$ud-proxy.nilMessage_195" = load %TName_List_Message*, %TName_List_Message** @ud-proxy.nilMessage, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_195", %TName_List_Message** %"$$fundef_10_env_ud-proxy.nilMessage_194", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_10_cloval_193", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_188"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_6_env_94"*, [20 x i8]*)* @"$fundef_6" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_199"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$msgobj_209_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_209_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_209_salloc_load", i64 41)
  %"$msgobj_209_salloc" = bitcast i8* %"$msgobj_209_salloc_salloc" to [41 x i8]*
  %"$msgobj_209" = bitcast [41 x i8]* %"$msgobj_209_salloc" to i8*
  store i8 1, i8* %"$msgobj_209", align 1
  %"$msgobj_fname_211" = getelementptr i8, i8* %"$msgobj_209", i32 1
  %"$msgobj_fname_212" = bitcast i8* %"$msgobj_fname_211" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_210", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_212", align 8
  %"$msgobj_td_213" = getelementptr i8, i8* %"$msgobj_209", i32 17
  %"$msgobj_td_214" = bitcast i8* %"$msgobj_td_213" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_214", align 8
  %"$msgobj_v_216" = getelementptr i8, i8* %"$msgobj_209", i32 25
  %"$msgobj_v_217" = bitcast i8* %"$msgobj_v_216" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_215", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_217", align 8
  store i8* %"$msgobj_209", i8** @ud-proxy.eError, align 8
  ret void
}

define void @_deploy_ops() {
entry:
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %entry
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$admins_12" = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_222"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_227"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %"$execptr_load_234" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_235" = call i8* @_new_empty_map(i8* %"$execptr_load_234")
  %"$_new_empty_map_236" = bitcast i8* %"$_new_empty_map_call_235" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$_new_empty_map_236", %Map_ByStr20_Bool** %empty, align 8
  %"$empty_237" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_237_238" = bitcast %Map_ByStr20_Bool* %"$empty_237" to i8*
  %"$_lengthof_call_239" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_51", i8* %"$$empty_237_238")
  %"$gasadd_240" = add i64 1, %"$_lengthof_call_239"
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 %"$gasadd_240", %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_232"
  %"$consume_245" = sub i64 %"$gasrem_241", %"$gasadd_240"
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$execptr_load_246" = load i8*, i8** @_execptr, align 8
  %"$empty_247" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_247_248" = bitcast %Map_ByStr20_Bool* %"$empty_247" to i8*
  %"$put_initialAdmin_249" = alloca [20 x i8], align 1
  %"$initialAdmin_250" = load [20 x i8], [20 x i8]* @_cparam_initialAdmin, align 1
  store [20 x i8] %"$initialAdmin_250", [20 x i8]* %"$put_initialAdmin_249", align 1
  %"$$put_initialAdmin_249_251" = bitcast [20 x i8]* %"$put_initialAdmin_249" to i8*
  %"$ud-proxy.true_252" = load %TName_Bool*, %TName_Bool** @ud-proxy.true, align 8
  %"$$ud-proxy.true_252_253" = bitcast %TName_Bool* %"$ud-proxy.true_252" to i8*
  %"$put_call_254" = call i8* @_put(i8* %"$execptr_load_246", %_TyDescrTy_Typ* @"$TyDescr_Map_51", i8* %"$$empty_247_248", i8* %"$$put_initialAdmin_249_251", i8* %"$$ud-proxy.true_252_253")
  %"$put_255" = bitcast i8* %"$put_call_254" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$put_255", %Map_ByStr20_Bool** %"$admins_12", align 8
  %"$execptr_load_256" = load i8*, i8** @_execptr, align 8
  %"$$admins_12_258" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %"$admins_12", align 8
  %"$update_value_259" = bitcast %Map_ByStr20_Bool* %"$$admins_12_258" to i8*
  call void @_update_field(i8* %"$execptr_load_256", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_257", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_51", i32 0, i8* null, i8* %"$update_value_259")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_260"(%Uint128 %_amount, [20 x i8]* %"$_origin_261", [20 x i8]* %"$_sender_262", [20 x i8]* %"$address_263", %TName_Bool* %isApproved) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_261", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_262", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_263", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_264_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_264_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_264_salloc_load", i64 20)
  %"$indices_buf_264_salloc" = bitcast i8* %"$indices_buf_264_salloc_salloc" to [20 x i8]*
  %"$indices_buf_264" = bitcast [20 x i8]* %"$indices_buf_264_salloc" to i8*
  %"$indices_gep_265" = getelementptr i8, i8* %"$indices_buf_264", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_265" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_267" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_268" = call i8* @_fetch_field(i8* %"$execptr_load_267", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_266", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_51", i32 1, i8* %"$indices_buf_264", i32 1)
  %"$maybeAdmin_269" = bitcast i8* %"$maybeAdmin_call_268" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_269", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_270" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_270_271" = bitcast %TName_Option_Bool* %"$maybeAdmin_270" to i8*
  %"$_literal_cost_call_272" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_47", i8* %"$$maybeAdmin_270_271")
  %"$gasadd_273" = add i64 %"$_literal_cost_call_272", 0
  %"$gasadd_274" = add i64 %"$gasadd_273", 1
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 %"$gasadd_274", %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %entry
  %"$consume_279" = sub i64 %"$gasrem_275", %"$gasadd_274"
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_278"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 2, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 2
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %"$maybeAdmin_291" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_292" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_291", i32 0, i32 0
  %"$maybeAdmin_tag_293" = load i8, i8* %"$maybeAdmin_tag_292", align 1
  switch i8 %"$maybeAdmin_tag_293", label %"$empty_default_294" [
    i8 0, label %"$Some_295"
    i8 1, label %"$None_305"
  ]

"$Some_295":                                      ; preds = %"$have_gas_288"
  %"$maybeAdmin_296" = bitcast %TName_Option_Bool* %"$maybeAdmin_291" to %CName_Some_Bool*
  %"$approval_gep_297" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_296", i32 0, i32 1
  %"$approval_load_298" = load %TName_Bool*, %TName_Bool** %"$approval_gep_297", align 8
  %approval = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$approval_load_298", %TName_Bool** %approval, align 8
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$Some_295"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$Some_295"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %"$approval_304" = load %TName_Bool*, %TName_Bool** %approval, align 8
  store %TName_Bool* %"$approval_304", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_290"

"$None_305":                                      ; preds = %"$have_gas_288"
  %"$maybeAdmin_306" = bitcast %TName_Option_Bool* %"$maybeAdmin_291" to %CName_None_Bool*
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$None_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$None_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$adtval_312_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_312_salloc" = call i8* @_salloc(i8* %"$adtval_312_load", i64 1)
  %"$adtval_312" = bitcast i8* %"$adtval_312_salloc" to %CName_False*
  %"$adtgep_313" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_312", i32 0, i32 0
  store i8 1, i8* %"$adtgep_313", align 1
  %"$adtptr_314" = bitcast %CName_False* %"$adtval_312" to %TName_Bool*
  store %TName_Bool* %"$adtptr_314", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_290"

"$empty_default_294":                             ; preds = %"$have_gas_288"
  br label %"$matchsucc_290"

"$matchsucc_290":                                 ; preds = %"$have_gas_310", %"$have_gas_302", %"$empty_default_294"
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 2, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$matchsucc_290"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$matchsucc_290"
  %"$consume_319" = sub i64 %"$gasrem_315", 2
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %"$isSenderAdmin_321" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_322" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_321", i32 0, i32 0
  %"$isSenderAdmin_tag_323" = load i8, i8* %"$isSenderAdmin_tag_322", align 1
  switch i8 %"$isSenderAdmin_tag_323", label %"$empty_default_324" [
    i8 0, label %"$True_325"
    i8 1, label %"$False_370"
  ]

"$True_325":                                      ; preds = %"$have_gas_318"
  %"$isSenderAdmin_326" = bitcast %TName_Bool* %"$isSenderAdmin_321" to %CName_True*
  %"$isApproved_327" = bitcast %TName_Bool* %isApproved to i8*
  %"$_literal_cost_call_328" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48", i8* %"$isApproved_327")
  %"$gasadd_329" = add i64 %"$_literal_cost_call_328", 1
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 %"$gasadd_329", %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$True_325"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$True_325"
  %"$consume_334" = sub i64 %"$gasrem_330", %"$gasadd_329"
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %"$indices_buf_335_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_335_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_335_salloc_load", i64 20)
  %"$indices_buf_335_salloc" = bitcast i8* %"$indices_buf_335_salloc_salloc" to [20 x i8]*
  %"$indices_buf_335" = bitcast [20 x i8]* %"$indices_buf_335_salloc" to i8*
  %"$indices_gep_336" = getelementptr i8, i8* %"$indices_buf_335", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_336" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_337" = load i8*, i8** @_execptr, align 8
  %"$update_value_339" = bitcast %TName_Bool* %isApproved to i8*
  call void @_update_field(i8* %"$execptr_load_337", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_338", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_51", i32 1, i8* %"$indices_buf_335", i8* %"$update_value_339")
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_333"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %"$ud-proxy.eAdminSet_3" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-proxy.eAdminSet_350" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8
  %"$ud-proxy.eAdminSet_fptr_351" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_350", 0
  %"$ud-proxy.eAdminSet_envptr_352" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_350", 1
  %"$ud-proxy.eAdminSet_address_353" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-proxy.eAdminSet_address_353", align 1
  %"$ud-proxy.eAdminSet_call_354" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_fptr_351"(i8* %"$ud-proxy.eAdminSet_envptr_352", [20 x i8]* %"$ud-proxy.eAdminSet_address_353")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_call_354", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_3", align 8
  %"$ud-proxy.eAdminSet_4" = alloca i8*, align 8
  %"$$ud-proxy.eAdminSet_3_355" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_3", align 8
  %"$$ud-proxy.eAdminSet_3_fptr_356" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_3_355", 0
  %"$$ud-proxy.eAdminSet_3_envptr_357" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_3_355", 1
  %"$$ud-proxy.eAdminSet_3_call_358" = call i8* %"$$ud-proxy.eAdminSet_3_fptr_356"(i8* %"$$ud-proxy.eAdminSet_3_envptr_357", %TName_Bool* %isApproved)
  store i8* %"$$ud-proxy.eAdminSet_3_call_358", i8** %"$ud-proxy.eAdminSet_4", align 8
  %"$$ud-proxy.eAdminSet_4_359" = load i8*, i8** %"$ud-proxy.eAdminSet_4", align 8
  store i8* %"$$ud-proxy.eAdminSet_4_359", i8** %e, align 8
  %"$e_360" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_362" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$e_360")
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 %"$_literal_cost_call_362", %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_348"
  %"$consume_367" = sub i64 %"$gasrem_363", %"$_literal_cost_call_362"
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %"$execptr_load_368" = load i8*, i8** @_execptr, align 8
  %"$e_369" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_368", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$e_369")
  br label %"$matchsucc_320"

"$False_370":                                     ; preds = %"$have_gas_318"
  %"$isSenderAdmin_371" = bitcast %TName_Bool* %"$isSenderAdmin_321" to %CName_False*
  %"$ud-proxy.eError_372" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_374" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_372")
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 %"$_literal_cost_call_374", %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$False_370"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$False_370"
  %"$consume_379" = sub i64 %"$gasrem_375", %"$_literal_cost_call_374"
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$execptr_load_380" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_381" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_380", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_381")
  br label %"$matchsucc_320"

"$empty_default_324":                             ; preds = %"$have_gas_318"
  br label %"$matchsucc_320"

"$matchsucc_320":                                 ; preds = %"$have_gas_378", %"$have_gas_366", %"$empty_default_324"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) {
entry:
  %"$_amount_383" = getelementptr i8, i8* %0, i32 0
  %"$_amount_384" = bitcast i8* %"$_amount_383" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_384", align 8
  %"$_origin_385" = getelementptr i8, i8* %0, i32 16
  %"$_origin_386" = bitcast i8* %"$_origin_385" to [20 x i8]*
  %"$_sender_387" = getelementptr i8, i8* %0, i32 36
  %"$_sender_388" = bitcast i8* %"$_sender_387" to [20 x i8]*
  %"$address_389" = getelementptr i8, i8* %0, i32 56
  %"$address_390" = bitcast i8* %"$address_389" to [20 x i8]*
  %"$isApproved_391" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_392" = bitcast i8* %"$isApproved_391" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_392", align 8
  call void @"$setAdmin_260"(%Uint128 %_amount, [20 x i8]* %"$_origin_386", [20 x i8]* %"$_sender_388", [20 x i8]* %"$address_390", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$bestow_393"(%Uint128 %_amount, [20 x i8]* %"$_origin_394", [20 x i8]* %"$_sender_395", %String %label, [20 x i8]* %"$owner_396", [20 x i8]* %"$resolver_397") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_394", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_395", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_396", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_397", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_398_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_398_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_398_salloc_load", i64 20)
  %"$indices_buf_398_salloc" = bitcast i8* %"$indices_buf_398_salloc_salloc" to [20 x i8]*
  %"$indices_buf_398" = bitcast [20 x i8]* %"$indices_buf_398_salloc" to i8*
  %"$indices_gep_399" = getelementptr i8, i8* %"$indices_buf_398", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_399" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_401" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_402" = call i8* @_fetch_field(i8* %"$execptr_load_401", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_400", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_51", i32 1, i8* %"$indices_buf_398", i32 1)
  %"$maybeAdmin_403" = bitcast i8* %"$maybeAdmin_call_402" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_403", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_404" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_404_405" = bitcast %TName_Option_Bool* %"$maybeAdmin_404" to i8*
  %"$_literal_cost_call_406" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_47", i8* %"$$maybeAdmin_404_405")
  %"$gasadd_407" = add i64 %"$_literal_cost_call_406", 0
  %"$gasadd_408" = add i64 %"$gasadd_407", 1
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 %"$gasadd_408", %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %entry
  %"$consume_413" = sub i64 %"$gasrem_409", %"$gasadd_408"
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_412"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 2, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 2
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$maybeAdmin_425" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_426" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_425", i32 0, i32 0
  %"$maybeAdmin_tag_427" = load i8, i8* %"$maybeAdmin_tag_426", align 1
  switch i8 %"$maybeAdmin_tag_427", label %"$empty_default_428" [
    i8 0, label %"$Some_429"
    i8 1, label %"$None_439"
  ]

"$Some_429":                                      ; preds = %"$have_gas_422"
  %"$maybeAdmin_430" = bitcast %TName_Option_Bool* %"$maybeAdmin_425" to %CName_Some_Bool*
  %"$isAdmin_gep_431" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_430", i32 0, i32 1
  %"$isAdmin_load_432" = load %TName_Bool*, %TName_Bool** %"$isAdmin_gep_431", align 8
  %isAdmin = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$isAdmin_load_432", %TName_Bool** %isAdmin, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$Some_429"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$Some_429"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$isAdmin_438" = load %TName_Bool*, %TName_Bool** %isAdmin, align 8
  store %TName_Bool* %"$isAdmin_438", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_424"

"$None_439":                                      ; preds = %"$have_gas_422"
  %"$maybeAdmin_440" = bitcast %TName_Option_Bool* %"$maybeAdmin_425" to %CName_None_Bool*
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$None_439"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$None_439"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %"$adtval_446_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_446_salloc" = call i8* @_salloc(i8* %"$adtval_446_load", i64 1)
  %"$adtval_446" = bitcast i8* %"$adtval_446_salloc" to %CName_False*
  %"$adtgep_447" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_446", i32 0, i32 0
  store i8 1, i8* %"$adtgep_447", align 1
  %"$adtptr_448" = bitcast %CName_False* %"$adtval_446" to %TName_Bool*
  store %TName_Bool* %"$adtptr_448", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_424"

"$empty_default_428":                             ; preds = %"$have_gas_422"
  br label %"$matchsucc_424"

"$matchsucc_424":                                 ; preds = %"$have_gas_444", %"$have_gas_436", %"$empty_default_428"
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 2, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$matchsucc_424"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$matchsucc_424"
  %"$consume_453" = sub i64 %"$gasrem_449", 2
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %"$isSenderAdmin_455" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_456" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_455", i32 0, i32 0
  %"$isSenderAdmin_tag_457" = load i8, i8* %"$isSenderAdmin_tag_456", align 1
  switch i8 %"$isSenderAdmin_tag_457", label %"$empty_default_458" [
    i8 0, label %"$True_459"
    i8 1, label %"$False_543"
  ]

"$True_459":                                      ; preds = %"$have_gas_452"
  %"$isSenderAdmin_460" = bitcast %TName_Bool* %"$isSenderAdmin_455" to %CName_True*
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$True_459"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$True_459"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_464"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_469"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  %"$msgobj_476_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_476_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_476_salloc_load", i64 253)
  %"$msgobj_476_salloc" = bitcast i8* %"$msgobj_476_salloc_salloc" to [253 x i8]*
  %"$msgobj_476" = bitcast [253 x i8]* %"$msgobj_476_salloc" to i8*
  store i8 6, i8* %"$msgobj_476", align 1
  %"$msgobj_fname_478" = getelementptr i8, i8* %"$msgobj_476", i32 1
  %"$msgobj_fname_479" = bitcast i8* %"$msgobj_fname_478" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_477", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_479", align 8
  %"$msgobj_td_480" = getelementptr i8, i8* %"$msgobj_476", i32 17
  %"$msgobj_td_481" = bitcast i8* %"$msgobj_td_480" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_481", align 8
  %"$msgobj_v_483" = getelementptr i8, i8* %"$msgobj_476", i32 25
  %"$msgobj_v_484" = bitcast i8* %"$msgobj_v_483" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_482", i32 0, i32 0), i32 6 }, %String* %"$msgobj_v_484", align 8
  %"$msgobj_fname_486" = getelementptr i8, i8* %"$msgobj_476", i32 41
  %"$msgobj_fname_487" = bitcast i8* %"$msgobj_fname_486" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_485", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_487", align 8
  %"$msgobj_td_488" = getelementptr i8, i8* %"$msgobj_476", i32 57
  %"$msgobj_td_489" = bitcast i8* %"$msgobj_td_488" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43", %_TyDescrTy_Typ** %"$msgobj_td_489", align 8
  %"$registry_490" = load [20 x i8], [20 x i8]* @_cparam_registry, align 1
  %"$msgobj_v_491" = getelementptr i8, i8* %"$msgobj_476", i32 65
  %"$msgobj_v_492" = bitcast i8* %"$msgobj_v_491" to [20 x i8]*
  store [20 x i8] %"$registry_490", [20 x i8]* %"$msgobj_v_492", align 1
  %"$msgobj_fname_494" = getelementptr i8, i8* %"$msgobj_476", i32 85
  %"$msgobj_fname_495" = bitcast i8* %"$msgobj_fname_494" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_493", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_495", align 8
  %"$msgobj_td_496" = getelementptr i8, i8* %"$msgobj_476", i32 101
  %"$msgobj_td_497" = bitcast i8* %"$msgobj_td_496" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ** %"$msgobj_td_497", align 8
  %"$msgobj_v_498" = getelementptr i8, i8* %"$msgobj_476", i32 109
  %"$msgobj_v_499" = bitcast i8* %"$msgobj_v_498" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_499", align 8
  %"$msgobj_fname_501" = getelementptr i8, i8* %"$msgobj_476", i32 125
  %"$msgobj_fname_502" = bitcast i8* %"$msgobj_fname_501" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_500", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_502", align 8
  %"$msgobj_td_503" = getelementptr i8, i8* %"$msgobj_476", i32 141
  %"$msgobj_td_504" = bitcast i8* %"$msgobj_td_503" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_504", align 8
  %"$msgobj_v_505" = getelementptr i8, i8* %"$msgobj_476", i32 149
  %"$msgobj_v_506" = bitcast i8* %"$msgobj_v_505" to %String*
  store %String %label, %String* %"$msgobj_v_506", align 8
  %"$msgobj_fname_508" = getelementptr i8, i8* %"$msgobj_476", i32 165
  %"$msgobj_fname_509" = bitcast i8* %"$msgobj_fname_508" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_507", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_509", align 8
  %"$msgobj_td_510" = getelementptr i8, i8* %"$msgobj_476", i32 181
  %"$msgobj_td_511" = bitcast i8* %"$msgobj_td_510" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43", %_TyDescrTy_Typ** %"$msgobj_td_511", align 8
  %"$msgobj_v_512" = getelementptr i8, i8* %"$msgobj_476", i32 189
  %"$msgobj_v_513" = bitcast i8* %"$msgobj_v_512" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_513", align 1
  %"$msgobj_fname_515" = getelementptr i8, i8* %"$msgobj_476", i32 209
  %"$msgobj_fname_516" = bitcast i8* %"$msgobj_fname_515" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_514", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_516", align 8
  %"$msgobj_td_517" = getelementptr i8, i8* %"$msgobj_476", i32 225
  %"$msgobj_td_518" = bitcast i8* %"$msgobj_td_517" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43", %_TyDescrTy_Typ** %"$msgobj_td_518", align 8
  %"$msgobj_v_519" = getelementptr i8, i8* %"$msgobj_476", i32 233
  %"$msgobj_v_520" = bitcast i8* %"$msgobj_v_519" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_520", align 1
  store i8* %"$msgobj_476", i8** %m, align 8
  %"$gasrem_522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_523" = icmp ugt i64 1, %"$gasrem_522"
  br i1 %"$gascmp_523", label %"$out_of_gas_524", label %"$have_gas_525"

"$out_of_gas_524":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_525"

"$have_gas_525":                                  ; preds = %"$out_of_gas_524", %"$have_gas_474"
  %"$consume_526" = sub i64 %"$gasrem_522", 1
  store i64 %"$consume_526", i64* @_gasrem, align 8
  %"$ud-proxy.oneMsg_5" = alloca %TName_List_Message*, align 8
  %"$ud-proxy.oneMsg_527" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8
  %"$ud-proxy.oneMsg_fptr_528" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_527", 0
  %"$ud-proxy.oneMsg_envptr_529" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_527", 1
  %"$m_530" = load i8*, i8** %m, align 8
  %"$ud-proxy.oneMsg_call_531" = call %TName_List_Message* %"$ud-proxy.oneMsg_fptr_528"(i8* %"$ud-proxy.oneMsg_envptr_529", i8* %"$m_530")
  store %TName_List_Message* %"$ud-proxy.oneMsg_call_531", %TName_List_Message** %"$ud-proxy.oneMsg_5", align 8
  %"$$ud-proxy.oneMsg_5_532" = load %TName_List_Message*, %TName_List_Message** %"$ud-proxy.oneMsg_5", align 8
  store %TName_List_Message* %"$$ud-proxy.oneMsg_5_532", %TName_List_Message** %msgs, align 8
  %"$msgs_533" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_533_534" = bitcast %TName_List_Message* %"$msgs_533" to i8*
  %"$_literal_cost_call_535" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_49", i8* %"$$msgs_533_534")
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 %"$_literal_cost_call_535", %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_525"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_525"
  %"$consume_540" = sub i64 %"$gasrem_536", %"$_literal_cost_call_535"
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %"$execptr_load_541" = load i8*, i8** @_execptr, align 8
  %"$msgs_542" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_541", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_49", %TName_List_Message* %"$msgs_542")
  br label %"$matchsucc_454"

"$False_543":                                     ; preds = %"$have_gas_452"
  %"$isSenderAdmin_544" = bitcast %TName_Bool* %"$isSenderAdmin_455" to %CName_False*
  %"$ud-proxy.eError_545" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_547" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_545")
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 %"$_literal_cost_call_547", %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$False_543"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$False_543"
  %"$consume_552" = sub i64 %"$gasrem_548", %"$_literal_cost_call_547"
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %"$execptr_load_553" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_554" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_553", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_554")
  br label %"$matchsucc_454"

"$empty_default_458":                             ; preds = %"$have_gas_452"
  br label %"$matchsucc_454"

"$matchsucc_454":                                 ; preds = %"$have_gas_551", %"$have_gas_539", %"$empty_default_458"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @bestow(i8* %0) {
entry:
  %"$_amount_556" = getelementptr i8, i8* %0, i32 0
  %"$_amount_557" = bitcast i8* %"$_amount_556" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_557", align 8
  %"$_origin_558" = getelementptr i8, i8* %0, i32 16
  %"$_origin_559" = bitcast i8* %"$_origin_558" to [20 x i8]*
  %"$_sender_560" = getelementptr i8, i8* %0, i32 36
  %"$_sender_561" = bitcast i8* %"$_sender_560" to [20 x i8]*
  %"$label_562" = getelementptr i8, i8* %0, i32 56
  %"$label_563" = bitcast i8* %"$label_562" to %String*
  %label = load %String, %String* %"$label_563", align 8
  %"$owner_564" = getelementptr i8, i8* %0, i32 72
  %"$owner_565" = bitcast i8* %"$owner_564" to [20 x i8]*
  %"$resolver_566" = getelementptr i8, i8* %0, i32 92
  %"$resolver_567" = bitcast i8* %"$resolver_566" to [20 x i8]*
  call void @"$bestow_393"(%Uint128 %_amount, [20 x i8]* %"$_origin_559", [20 x i8]* %"$_sender_561", %String %label, [20 x i8]* %"$owner_565", [20 x i8]* %"$resolver_567")
  ret void
}
