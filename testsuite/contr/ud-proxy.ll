

; gas_remaining: 4001918
; ModuleID = 'Admin'
source_filename = "Admin"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%"$ParamDescr_563" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_564" = type { %ParamDescrString, i32, %"$ParamDescr_563"* }
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
@"$TyDescr_AddrFields_92" = unnamed_addr constant %"$TyDescr_AddrTyp_53" { i32 -1, %"$TyDescr_AddrFieldTyp_52"* null }
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
@"$admins_252" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_261" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_333" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_395" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_472" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_477" = unnamed_addr constant [6 x i8] c"bestow"
@"$stringlit_480" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_488" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_495" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_502" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_509" = unnamed_addr constant [8 x i8] c"resolver"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_49", %_TyDescrTy_Typ* @"$TyDescr_Event_37", %_TyDescrTy_Typ* @"$TyDescr_Int64_19", %_TyDescrTy_Typ* @"$TyDescr_Addr_54", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_47", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", %_TyDescrTy_Typ* @"$TyDescr_Bnum_33", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ* @"$TyDescr_Map_51", %_TyDescrTy_Typ* @"$TyDescr_Exception_39", %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ* @"$TyDescr_Int256_27", %_TyDescrTy_Typ* @"$TyDescr_Int128_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr_41", %_TyDescrTy_Typ* @"$TyDescr_Message_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_15"]
@_tydescr_table_length = constant i32 20
@"$pname__scilla_version_565" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_566" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_567" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_initialAdmin_568" = unnamed_addr constant [12 x i8] c"initialAdmin"
@"$pname_registry_569" = unnamed_addr constant [8 x i8] c"registry"
@_contract_parameters = constant [5 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_565", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_17" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_566", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_567", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_33" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialAdmin_568", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_registry_569", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_570" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_571" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_572" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_573" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_574" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_575" = unnamed_addr constant [5 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_570", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_25" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_571", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_572", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_573", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_574", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48" }]
@"$tname_setAdmin_576" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_577" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_578" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_579" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_580" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_581" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_582" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_583" = unnamed_addr constant [6 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_577", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_25" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_578", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_579", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_580", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_31" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_581", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_582", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43" }]
@"$tname_bestow_584" = unnamed_addr constant [6 x i8] c"bestow"
@_transition_parameters = constant [2 x %"$TransDescr_564"] [%"$TransDescr_564" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_576", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_563"* getelementptr inbounds ([5 x %"$ParamDescr_563"], [5 x %"$ParamDescr_563"]* @"$tparams_setAdmin_575", i32 0, i32 0) }, %"$TransDescr_564" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_584", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_563"* getelementptr inbounds ([6 x %"$ParamDescr_563"], [6 x %"$ParamDescr_563"]* @"$tparams_bestow_583", i32 0, i32 0) }]
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

define void @_init_state() {
entry:
  %"$admins_12" = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %entry
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_222"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %"$execptr_load_229" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_230" = call i8* @_new_empty_map(i8* %"$execptr_load_229")
  %"$_new_empty_map_231" = bitcast i8* %"$_new_empty_map_call_230" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$_new_empty_map_231", %Map_ByStr20_Bool** %empty, align 8
  %"$empty_232" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_232_233" = bitcast %Map_ByStr20_Bool* %"$empty_232" to i8*
  %"$_lengthof_call_234" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_51", i8* %"$$empty_232_233")
  %"$gasadd_235" = add i64 1, %"$_lengthof_call_234"
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 %"$gasadd_235", %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_227"
  %"$consume_240" = sub i64 %"$gasrem_236", %"$gasadd_235"
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %"$execptr_load_241" = load i8*, i8** @_execptr, align 8
  %"$empty_242" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_242_243" = bitcast %Map_ByStr20_Bool* %"$empty_242" to i8*
  %"$put_initialAdmin_244" = alloca [20 x i8], align 1
  %"$initialAdmin_245" = load [20 x i8], [20 x i8]* @_cparam_initialAdmin, align 1
  store [20 x i8] %"$initialAdmin_245", [20 x i8]* %"$put_initialAdmin_244", align 1
  %"$$put_initialAdmin_244_246" = bitcast [20 x i8]* %"$put_initialAdmin_244" to i8*
  %"$ud-proxy.true_247" = load %TName_Bool*, %TName_Bool** @ud-proxy.true, align 8
  %"$$ud-proxy.true_247_248" = bitcast %TName_Bool* %"$ud-proxy.true_247" to i8*
  %"$put_call_249" = call i8* @_put(i8* %"$execptr_load_241", %_TyDescrTy_Typ* @"$TyDescr_Map_51", i8* %"$$empty_242_243", i8* %"$$put_initialAdmin_244_246", i8* %"$$ud-proxy.true_247_248")
  %"$put_250" = bitcast i8* %"$put_call_249" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$put_250", %Map_ByStr20_Bool** %"$admins_12", align 8
  %"$execptr_load_251" = load i8*, i8** @_execptr, align 8
  %"$$admins_12_253" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %"$admins_12", align 8
  %"$update_value_254" = bitcast %Map_ByStr20_Bool* %"$$admins_12_253" to i8*
  call void @_update_field(i8* %"$execptr_load_251", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_252", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_51", i32 0, i8* null, i8* %"$update_value_254")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_255"(%Uint128 %_amount, [20 x i8]* %"$_origin_256", [20 x i8]* %"$_sender_257", [20 x i8]* %"$address_258", %TName_Bool* %isApproved) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_256", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_257", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_258", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_259_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_259_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_259_salloc_load", i64 20)
  %"$indices_buf_259_salloc" = bitcast i8* %"$indices_buf_259_salloc_salloc" to [20 x i8]*
  %"$indices_buf_259" = bitcast [20 x i8]* %"$indices_buf_259_salloc" to i8*
  %"$indices_gep_260" = getelementptr i8, i8* %"$indices_buf_259", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_260" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_262" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_263" = call i8* @_fetch_field(i8* %"$execptr_load_262", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_261", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_51", i32 1, i8* %"$indices_buf_259", i32 1)
  %"$maybeAdmin_264" = bitcast i8* %"$maybeAdmin_call_263" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_264", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_265" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_265_266" = bitcast %TName_Option_Bool* %"$maybeAdmin_265" to i8*
  %"$_literal_cost_call_267" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_47", i8* %"$$maybeAdmin_265_266")
  %"$gasadd_268" = add i64 %"$_literal_cost_call_267", 0
  %"$gasadd_269" = add i64 %"$gasadd_268", 1
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 %"$gasadd_269", %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %entry
  %"$consume_274" = sub i64 %"$gasrem_270", %"$gasadd_269"
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_273"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 2, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_278"
  %"$consume_284" = sub i64 %"$gasrem_280", 2
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %"$maybeAdmin_286" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_287" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_286", i32 0, i32 0
  %"$maybeAdmin_tag_288" = load i8, i8* %"$maybeAdmin_tag_287", align 1
  switch i8 %"$maybeAdmin_tag_288", label %"$empty_default_289" [
    i8 0, label %"$Some_290"
    i8 1, label %"$None_300"
  ]

"$Some_290":                                      ; preds = %"$have_gas_283"
  %"$maybeAdmin_291" = bitcast %TName_Option_Bool* %"$maybeAdmin_286" to %CName_Some_Bool*
  %"$approval_gep_292" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_291", i32 0, i32 1
  %"$approval_load_293" = load %TName_Bool*, %TName_Bool** %"$approval_gep_292", align 8
  %approval = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$approval_load_293", %TName_Bool** %approval, align 8
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 1, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$Some_290"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$Some_290"
  %"$consume_298" = sub i64 %"$gasrem_294", 1
  store i64 %"$consume_298", i64* @_gasrem, align 8
  %"$approval_299" = load %TName_Bool*, %TName_Bool** %approval, align 8
  store %TName_Bool* %"$approval_299", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_285"

"$None_300":                                      ; preds = %"$have_gas_283"
  %"$maybeAdmin_301" = bitcast %TName_Option_Bool* %"$maybeAdmin_286" to %CName_None_Bool*
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$None_300"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$None_300"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %"$adtval_307_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_307_salloc" = call i8* @_salloc(i8* %"$adtval_307_load", i64 1)
  %"$adtval_307" = bitcast i8* %"$adtval_307_salloc" to %CName_False*
  %"$adtgep_308" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_307", i32 0, i32 0
  store i8 1, i8* %"$adtgep_308", align 1
  %"$adtptr_309" = bitcast %CName_False* %"$adtval_307" to %TName_Bool*
  store %TName_Bool* %"$adtptr_309", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_285"

"$empty_default_289":                             ; preds = %"$have_gas_283"
  br label %"$matchsucc_285"

"$matchsucc_285":                                 ; preds = %"$have_gas_305", %"$have_gas_297", %"$empty_default_289"
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 2, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$matchsucc_285"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$matchsucc_285"
  %"$consume_314" = sub i64 %"$gasrem_310", 2
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$isSenderAdmin_316" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_317" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_316", i32 0, i32 0
  %"$isSenderAdmin_tag_318" = load i8, i8* %"$isSenderAdmin_tag_317", align 1
  switch i8 %"$isSenderAdmin_tag_318", label %"$empty_default_319" [
    i8 0, label %"$True_320"
    i8 1, label %"$False_365"
  ]

"$True_320":                                      ; preds = %"$have_gas_313"
  %"$isSenderAdmin_321" = bitcast %TName_Bool* %"$isSenderAdmin_316" to %CName_True*
  %"$isApproved_322" = bitcast %TName_Bool* %isApproved to i8*
  %"$_literal_cost_call_323" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48", i8* %"$isApproved_322")
  %"$gasadd_324" = add i64 %"$_literal_cost_call_323", 1
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 %"$gasadd_324", %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$True_320"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$True_320"
  %"$consume_329" = sub i64 %"$gasrem_325", %"$gasadd_324"
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$indices_buf_330_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_330_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_330_salloc_load", i64 20)
  %"$indices_buf_330_salloc" = bitcast i8* %"$indices_buf_330_salloc_salloc" to [20 x i8]*
  %"$indices_buf_330" = bitcast [20 x i8]* %"$indices_buf_330_salloc" to i8*
  %"$indices_gep_331" = getelementptr i8, i8* %"$indices_buf_330", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_331" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_332" = load i8*, i8** @_execptr, align 8
  %"$update_value_334" = bitcast %TName_Bool* %isApproved to i8*
  call void @_update_field(i8* %"$execptr_load_332", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_333", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_51", i32 1, i8* %"$indices_buf_330", i8* %"$update_value_334")
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_328"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %"$ud-proxy.eAdminSet_3" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-proxy.eAdminSet_345" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8
  %"$ud-proxy.eAdminSet_fptr_346" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_345", 0
  %"$ud-proxy.eAdminSet_envptr_347" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_345", 1
  %"$ud-proxy.eAdminSet_address_348" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-proxy.eAdminSet_address_348", align 1
  %"$ud-proxy.eAdminSet_call_349" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_fptr_346"(i8* %"$ud-proxy.eAdminSet_envptr_347", [20 x i8]* %"$ud-proxy.eAdminSet_address_348")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_call_349", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_3", align 8
  %"$ud-proxy.eAdminSet_4" = alloca i8*, align 8
  %"$$ud-proxy.eAdminSet_3_350" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_3", align 8
  %"$$ud-proxy.eAdminSet_3_fptr_351" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_3_350", 0
  %"$$ud-proxy.eAdminSet_3_envptr_352" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_3_350", 1
  %"$$ud-proxy.eAdminSet_3_call_353" = call i8* %"$$ud-proxy.eAdminSet_3_fptr_351"(i8* %"$$ud-proxy.eAdminSet_3_envptr_352", %TName_Bool* %isApproved)
  store i8* %"$$ud-proxy.eAdminSet_3_call_353", i8** %"$ud-proxy.eAdminSet_4", align 8
  %"$$ud-proxy.eAdminSet_4_354" = load i8*, i8** %"$ud-proxy.eAdminSet_4", align 8
  store i8* %"$$ud-proxy.eAdminSet_4_354", i8** %e, align 8
  %"$e_355" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_357" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$e_355")
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 %"$_literal_cost_call_357", %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_343"
  %"$consume_362" = sub i64 %"$gasrem_358", %"$_literal_cost_call_357"
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %"$execptr_load_363" = load i8*, i8** @_execptr, align 8
  %"$e_364" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_363", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$e_364")
  br label %"$matchsucc_315"

"$False_365":                                     ; preds = %"$have_gas_313"
  %"$isSenderAdmin_366" = bitcast %TName_Bool* %"$isSenderAdmin_316" to %CName_False*
  %"$ud-proxy.eError_367" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_369" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_367")
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 %"$_literal_cost_call_369", %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$False_365"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$False_365"
  %"$consume_374" = sub i64 %"$gasrem_370", %"$_literal_cost_call_369"
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %"$execptr_load_375" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_376" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_375", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_376")
  br label %"$matchsucc_315"

"$empty_default_319":                             ; preds = %"$have_gas_313"
  br label %"$matchsucc_315"

"$matchsucc_315":                                 ; preds = %"$have_gas_373", %"$have_gas_361", %"$empty_default_319"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) {
entry:
  %"$_amount_378" = getelementptr i8, i8* %0, i32 0
  %"$_amount_379" = bitcast i8* %"$_amount_378" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_379", align 8
  %"$_origin_380" = getelementptr i8, i8* %0, i32 16
  %"$_origin_381" = bitcast i8* %"$_origin_380" to [20 x i8]*
  %"$_sender_382" = getelementptr i8, i8* %0, i32 36
  %"$_sender_383" = bitcast i8* %"$_sender_382" to [20 x i8]*
  %"$address_384" = getelementptr i8, i8* %0, i32 56
  %"$address_385" = bitcast i8* %"$address_384" to [20 x i8]*
  %"$isApproved_386" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_387" = bitcast i8* %"$isApproved_386" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_387", align 8
  call void @"$setAdmin_255"(%Uint128 %_amount, [20 x i8]* %"$_origin_381", [20 x i8]* %"$_sender_383", [20 x i8]* %"$address_385", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$bestow_388"(%Uint128 %_amount, [20 x i8]* %"$_origin_389", [20 x i8]* %"$_sender_390", %String %label, [20 x i8]* %"$owner_391", [20 x i8]* %"$resolver_392") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_389", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_390", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_391", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_392", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_393_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_393_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_393_salloc_load", i64 20)
  %"$indices_buf_393_salloc" = bitcast i8* %"$indices_buf_393_salloc_salloc" to [20 x i8]*
  %"$indices_buf_393" = bitcast [20 x i8]* %"$indices_buf_393_salloc" to i8*
  %"$indices_gep_394" = getelementptr i8, i8* %"$indices_buf_393", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_394" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_396" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_397" = call i8* @_fetch_field(i8* %"$execptr_load_396", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_395", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_51", i32 1, i8* %"$indices_buf_393", i32 1)
  %"$maybeAdmin_398" = bitcast i8* %"$maybeAdmin_call_397" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_398", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_399" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_399_400" = bitcast %TName_Option_Bool* %"$maybeAdmin_399" to i8*
  %"$_literal_cost_call_401" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_47", i8* %"$$maybeAdmin_399_400")
  %"$gasadd_402" = add i64 %"$_literal_cost_call_401", 0
  %"$gasadd_403" = add i64 %"$gasadd_402", 1
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 %"$gasadd_403", %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %entry
  %"$consume_408" = sub i64 %"$gasrem_404", %"$gasadd_403"
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_407"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 2, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_412"
  %"$consume_418" = sub i64 %"$gasrem_414", 2
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %"$maybeAdmin_420" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_421" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_420", i32 0, i32 0
  %"$maybeAdmin_tag_422" = load i8, i8* %"$maybeAdmin_tag_421", align 1
  switch i8 %"$maybeAdmin_tag_422", label %"$empty_default_423" [
    i8 0, label %"$Some_424"
    i8 1, label %"$None_434"
  ]

"$Some_424":                                      ; preds = %"$have_gas_417"
  %"$maybeAdmin_425" = bitcast %TName_Option_Bool* %"$maybeAdmin_420" to %CName_Some_Bool*
  %"$isAdmin_gep_426" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_425", i32 0, i32 1
  %"$isAdmin_load_427" = load %TName_Bool*, %TName_Bool** %"$isAdmin_gep_426", align 8
  %isAdmin = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$isAdmin_load_427", %TName_Bool** %isAdmin, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$Some_424"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$Some_424"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %"$isAdmin_433" = load %TName_Bool*, %TName_Bool** %isAdmin, align 8
  store %TName_Bool* %"$isAdmin_433", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_419"

"$None_434":                                      ; preds = %"$have_gas_417"
  %"$maybeAdmin_435" = bitcast %TName_Option_Bool* %"$maybeAdmin_420" to %CName_None_Bool*
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$None_434"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$None_434"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$adtval_441_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_441_salloc" = call i8* @_salloc(i8* %"$adtval_441_load", i64 1)
  %"$adtval_441" = bitcast i8* %"$adtval_441_salloc" to %CName_False*
  %"$adtgep_442" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_441", i32 0, i32 0
  store i8 1, i8* %"$adtgep_442", align 1
  %"$adtptr_443" = bitcast %CName_False* %"$adtval_441" to %TName_Bool*
  store %TName_Bool* %"$adtptr_443", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_419"

"$empty_default_423":                             ; preds = %"$have_gas_417"
  br label %"$matchsucc_419"

"$matchsucc_419":                                 ; preds = %"$have_gas_439", %"$have_gas_431", %"$empty_default_423"
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 2, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$matchsucc_419"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$matchsucc_419"
  %"$consume_448" = sub i64 %"$gasrem_444", 2
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %"$isSenderAdmin_450" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_451" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_450", i32 0, i32 0
  %"$isSenderAdmin_tag_452" = load i8, i8* %"$isSenderAdmin_tag_451", align 1
  switch i8 %"$isSenderAdmin_tag_452", label %"$empty_default_453" [
    i8 0, label %"$True_454"
    i8 1, label %"$False_538"
  ]

"$True_454":                                      ; preds = %"$have_gas_447"
  %"$isSenderAdmin_455" = bitcast %TName_Bool* %"$isSenderAdmin_450" to %CName_True*
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$True_454"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$True_454"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_459"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_464"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  %"$msgobj_471_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_471_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_471_salloc_load", i64 253)
  %"$msgobj_471_salloc" = bitcast i8* %"$msgobj_471_salloc_salloc" to [253 x i8]*
  %"$msgobj_471" = bitcast [253 x i8]* %"$msgobj_471_salloc" to i8*
  store i8 6, i8* %"$msgobj_471", align 1
  %"$msgobj_fname_473" = getelementptr i8, i8* %"$msgobj_471", i32 1
  %"$msgobj_fname_474" = bitcast i8* %"$msgobj_fname_473" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_472", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_474", align 8
  %"$msgobj_td_475" = getelementptr i8, i8* %"$msgobj_471", i32 17
  %"$msgobj_td_476" = bitcast i8* %"$msgobj_td_475" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_476", align 8
  %"$msgobj_v_478" = getelementptr i8, i8* %"$msgobj_471", i32 25
  %"$msgobj_v_479" = bitcast i8* %"$msgobj_v_478" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_477", i32 0, i32 0), i32 6 }, %String* %"$msgobj_v_479", align 8
  %"$msgobj_fname_481" = getelementptr i8, i8* %"$msgobj_471", i32 41
  %"$msgobj_fname_482" = bitcast i8* %"$msgobj_fname_481" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_480", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_482", align 8
  %"$msgobj_td_483" = getelementptr i8, i8* %"$msgobj_471", i32 57
  %"$msgobj_td_484" = bitcast i8* %"$msgobj_td_483" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43", %_TyDescrTy_Typ** %"$msgobj_td_484", align 8
  %"$registry_485" = load [20 x i8], [20 x i8]* @_cparam_registry, align 1
  %"$msgobj_v_486" = getelementptr i8, i8* %"$msgobj_471", i32 65
  %"$msgobj_v_487" = bitcast i8* %"$msgobj_v_486" to [20 x i8]*
  store [20 x i8] %"$registry_485", [20 x i8]* %"$msgobj_v_487", align 1
  %"$msgobj_fname_489" = getelementptr i8, i8* %"$msgobj_471", i32 85
  %"$msgobj_fname_490" = bitcast i8* %"$msgobj_fname_489" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_488", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_490", align 8
  %"$msgobj_td_491" = getelementptr i8, i8* %"$msgobj_471", i32 101
  %"$msgobj_td_492" = bitcast i8* %"$msgobj_td_491" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ** %"$msgobj_td_492", align 8
  %"$msgobj_v_493" = getelementptr i8, i8* %"$msgobj_471", i32 109
  %"$msgobj_v_494" = bitcast i8* %"$msgobj_v_493" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_494", align 8
  %"$msgobj_fname_496" = getelementptr i8, i8* %"$msgobj_471", i32 125
  %"$msgobj_fname_497" = bitcast i8* %"$msgobj_fname_496" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_495", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_497", align 8
  %"$msgobj_td_498" = getelementptr i8, i8* %"$msgobj_471", i32 141
  %"$msgobj_td_499" = bitcast i8* %"$msgobj_td_498" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_499", align 8
  %"$msgobj_v_500" = getelementptr i8, i8* %"$msgobj_471", i32 149
  %"$msgobj_v_501" = bitcast i8* %"$msgobj_v_500" to %String*
  store %String %label, %String* %"$msgobj_v_501", align 8
  %"$msgobj_fname_503" = getelementptr i8, i8* %"$msgobj_471", i32 165
  %"$msgobj_fname_504" = bitcast i8* %"$msgobj_fname_503" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_502", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_504", align 8
  %"$msgobj_td_505" = getelementptr i8, i8* %"$msgobj_471", i32 181
  %"$msgobj_td_506" = bitcast i8* %"$msgobj_td_505" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43", %_TyDescrTy_Typ** %"$msgobj_td_506", align 8
  %"$msgobj_v_507" = getelementptr i8, i8* %"$msgobj_471", i32 189
  %"$msgobj_v_508" = bitcast i8* %"$msgobj_v_507" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_508", align 1
  %"$msgobj_fname_510" = getelementptr i8, i8* %"$msgobj_471", i32 209
  %"$msgobj_fname_511" = bitcast i8* %"$msgobj_fname_510" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_509", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_511", align 8
  %"$msgobj_td_512" = getelementptr i8, i8* %"$msgobj_471", i32 225
  %"$msgobj_td_513" = bitcast i8* %"$msgobj_td_512" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_43", %_TyDescrTy_Typ** %"$msgobj_td_513", align 8
  %"$msgobj_v_514" = getelementptr i8, i8* %"$msgobj_471", i32 233
  %"$msgobj_v_515" = bitcast i8* %"$msgobj_v_514" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_515", align 1
  store i8* %"$msgobj_471", i8** %m, align 8
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 1, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_469"
  %"$consume_521" = sub i64 %"$gasrem_517", 1
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %"$ud-proxy.oneMsg_5" = alloca %TName_List_Message*, align 8
  %"$ud-proxy.oneMsg_522" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8
  %"$ud-proxy.oneMsg_fptr_523" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_522", 0
  %"$ud-proxy.oneMsg_envptr_524" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_522", 1
  %"$m_525" = load i8*, i8** %m, align 8
  %"$ud-proxy.oneMsg_call_526" = call %TName_List_Message* %"$ud-proxy.oneMsg_fptr_523"(i8* %"$ud-proxy.oneMsg_envptr_524", i8* %"$m_525")
  store %TName_List_Message* %"$ud-proxy.oneMsg_call_526", %TName_List_Message** %"$ud-proxy.oneMsg_5", align 8
  %"$$ud-proxy.oneMsg_5_527" = load %TName_List_Message*, %TName_List_Message** %"$ud-proxy.oneMsg_5", align 8
  store %TName_List_Message* %"$$ud-proxy.oneMsg_5_527", %TName_List_Message** %msgs, align 8
  %"$msgs_528" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_528_529" = bitcast %TName_List_Message* %"$msgs_528" to i8*
  %"$_literal_cost_call_530" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_49", i8* %"$$msgs_528_529")
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 %"$_literal_cost_call_530", %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_520"
  %"$consume_535" = sub i64 %"$gasrem_531", %"$_literal_cost_call_530"
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$execptr_load_536" = load i8*, i8** @_execptr, align 8
  %"$msgs_537" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_536", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_49", %TName_List_Message* %"$msgs_537")
  br label %"$matchsucc_449"

"$False_538":                                     ; preds = %"$have_gas_447"
  %"$isSenderAdmin_539" = bitcast %TName_Bool* %"$isSenderAdmin_450" to %CName_False*
  %"$ud-proxy.eError_540" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_542" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_540")
  %"$gasrem_543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_544" = icmp ugt i64 %"$_literal_cost_call_542", %"$gasrem_543"
  br i1 %"$gascmp_544", label %"$out_of_gas_545", label %"$have_gas_546"

"$out_of_gas_545":                                ; preds = %"$False_538"
  call void @_out_of_gas()
  br label %"$have_gas_546"

"$have_gas_546":                                  ; preds = %"$out_of_gas_545", %"$False_538"
  %"$consume_547" = sub i64 %"$gasrem_543", %"$_literal_cost_call_542"
  store i64 %"$consume_547", i64* @_gasrem, align 8
  %"$execptr_load_548" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_549" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_548", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_549")
  br label %"$matchsucc_449"

"$empty_default_453":                             ; preds = %"$have_gas_447"
  br label %"$matchsucc_449"

"$matchsucc_449":                                 ; preds = %"$have_gas_546", %"$have_gas_534", %"$empty_default_453"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @bestow(i8* %0) {
entry:
  %"$_amount_551" = getelementptr i8, i8* %0, i32 0
  %"$_amount_552" = bitcast i8* %"$_amount_551" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_552", align 8
  %"$_origin_553" = getelementptr i8, i8* %0, i32 16
  %"$_origin_554" = bitcast i8* %"$_origin_553" to [20 x i8]*
  %"$_sender_555" = getelementptr i8, i8* %0, i32 36
  %"$_sender_556" = bitcast i8* %"$_sender_555" to [20 x i8]*
  %"$label_557" = getelementptr i8, i8* %0, i32 56
  %"$label_558" = bitcast i8* %"$label_557" to %String*
  %label = load %String, %String* %"$label_558", align 8
  %"$owner_559" = getelementptr i8, i8* %0, i32 72
  %"$owner_560" = bitcast i8* %"$owner_559" to [20 x i8]*
  %"$resolver_561" = getelementptr i8, i8* %0, i32 92
  %"$resolver_562" = bitcast i8* %"$resolver_561" to [20 x i8]*
  call void @"$bestow_388"(%Uint128 %_amount, [20 x i8]* %"$_origin_554", [20 x i8]* %"$_sender_556", %String %label, [20 x i8]* %"$owner_560", [20 x i8]* %"$resolver_562")
  ret void
}
