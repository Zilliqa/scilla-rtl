

; gas_remaining: 4001918
; ModuleID = 'HelloWorld'
source_filename = "HelloWorld"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_41" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_40"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_40" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_42"**, %"$TyDescrTy_ADTTyp_41"* }
%"$TyDescrTy_ADTTyp_Constr_42" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_49" = type { i32, %"$TyDescr_AddrFieldTyp_48"* }
%"$TyDescr_AddrFieldTyp_48" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%String = type { i8*, i32 }
%Uint32 = type { i32 }
%Uint256 = type { i256 }
%Bystr = type { i8*, i32 }
%TName_List_String = type { i8, %CName_Cons_String*, %CName_Nil_String* }
%CName_Cons_String = type <{ i8, %String, %TName_List_String* }>
%CName_Nil_String = type <{ i8 }>
%TName_Pair_Int128_String = type { i8, %CName_Pair_Int128_String* }
%CName_Pair_Int128_String = type <{ i8, %Int128, %String }>
%Int128 = type { i128 }
%"$ParamDescr_658" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_659" = type { %ParamDescrString, i32, %"$ParamDescr_658"* }
%"$$fundef_3_env_94" = type {}
%Uint128 = type { i128 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_8" = global %"$TyDescrTy_PrimTyp_7" zeroinitializer
@"$TyDescr_Int32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int32_Prim_8" to i8*) }
@"$TyDescr_Uint32_Prim_10" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 0 }
@"$TyDescr_Uint32_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint32_Prim_10" to i8*) }
@"$TyDescr_Int64_Prim_12" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 1 }
@"$TyDescr_Int64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int64_Prim_12" to i8*) }
@"$TyDescr_Uint64_Prim_14" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 1 }
@"$TyDescr_Uint64_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint64_Prim_14" to i8*) }
@"$TyDescr_Int128_Prim_16" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 2 }
@"$TyDescr_Int128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int128_Prim_16" to i8*) }
@"$TyDescr_Uint128_Prim_18" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 2 }
@"$TyDescr_Uint128_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint128_Prim_18" to i8*) }
@"$TyDescr_Int256_Prim_20" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 3 }
@"$TyDescr_Int256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int256_Prim_20" to i8*) }
@"$TyDescr_Uint256_Prim_22" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 3 }
@"$TyDescr_Uint256_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint256_Prim_22" to i8*) }
@"$TyDescr_String_Prim_24" = global %"$TyDescrTy_PrimTyp_7" { i32 2, i32 0 }
@"$TyDescr_String_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_String_Prim_24" to i8*) }
@"$TyDescr_Bnum_Prim_26" = global %"$TyDescrTy_PrimTyp_7" { i32 3, i32 0 }
@"$TyDescr_Bnum_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bnum_Prim_26" to i8*) }
@"$TyDescr_Message_Prim_28" = global %"$TyDescrTy_PrimTyp_7" { i32 4, i32 0 }
@"$TyDescr_Message_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Message_Prim_28" to i8*) }
@"$TyDescr_Event_Prim_30" = global %"$TyDescrTy_PrimTyp_7" { i32 5, i32 0 }
@"$TyDescr_Event_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Event_Prim_30" to i8*) }
@"$TyDescr_Exception_Prim_32" = global %"$TyDescrTy_PrimTyp_7" { i32 6, i32 0 }
@"$TyDescr_Exception_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Exception_Prim_32" to i8*) }
@"$TyDescr_ReplicateContr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_ReplicateContr_Prim_34" to i8*) }
@"$TyDescr_Bystr_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_36" to i8*) }
@"$TyDescr_Bystr20_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 20 }
@"$TyDescr_Bystr20_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr20_Prim_38" to i8*) }
@"$TyDescr_ADT_Bool_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Bool_ADTTyp_Specl_60" to i8*) }
@"$TyDescr_ADT_Pair_Int128_String_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_69" to i8*) }
@"$TyDescr_ADT_List_String_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_List_String_ADTTyp_Specl_81" to i8*) }
@"$TyDescr_ADT_List_Message_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_List_Message_ADTTyp_Specl_90" to i8*) }
@"$TyDescr_Addr_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_49"* @"$TyDescr_AddrFields_93" to i8*) }
@"$TyDescr_Bool_ADTTyp_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_62", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_40"*], [1 x %"$TyDescrTy_ADTTyp_Specl_40"*]* @"$TyDescr_Bool_ADTTyp_m_specls_61", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_53" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_53", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_55" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_56" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_56", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_55", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_58" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_42"*] [%"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Bool_True_ADTTyp_Constr_54", %"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Bool_False_ADTTyp_Constr_57"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_40" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_42"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_42"*], [2 x %"$TyDescrTy_ADTTyp_Constr_42"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_41"* @"$TyDescr_Bool_ADTTyp_51" }
@"$TyDescr_Bool_ADTTyp_m_specls_61" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_40"*] [%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Bool_ADTTyp_Specl_60"]
@"$TyDescr_ADT_Bool_62" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_Pair_ADTTyp_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_71", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_40"*], [1 x %"$TyDescrTy_ADTTyp_Specl_40"*]* @"$TyDescr_Pair_ADTTyp_m_specls_70", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int128_String_Constr_m_args_64" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_String_25"]
@"$TyDescr_ADT_Pair_65" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int128_String_ADTTyp_Constr_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_65", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int128_String_Constr_m_args_64", i32 0, i32 0) }
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_constrs_67" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_42"*] [%"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Pair_Pair_Int128_String_ADTTyp_Constr_66"]
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_TArgs_68" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_String_25"]
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_40" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_TArgs_68", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_42"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_42"*], [1 x %"$TyDescrTy_ADTTyp_Constr_42"*]* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_constrs_67", i32 0, i32 0), %"$TyDescrTy_ADTTyp_41"* @"$TyDescr_Pair_ADTTyp_63" }
@"$TyDescr_Pair_ADTTyp_m_specls_70" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_40"*] [%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_69"]
@"$TyDescr_ADT_Pair_71" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_List_ADTTyp_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_92", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_40"*], [2 x %"$TyDescrTy_ADTTyp_Specl_40"*]* @"$TyDescr_List_ADTTyp_m_specls_91", i32 0, i32 0) }
@"$TyDescr_List_Cons_String_Constr_m_args_73" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_45"]
@"$TyDescr_ADT_Cons_74" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_74", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_76" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_77" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_77", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_76", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_79" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_42"*] [%"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_75", %"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_78"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_80" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25"]
@"$TyDescr_List_String_ADTTyp_Specl_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_40" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_42"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_42"*], [2 x %"$TyDescrTy_ADTTyp_Constr_42"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_41"* @"$TyDescr_List_ADTTyp_72" }
@"$TyDescr_List_Cons_Message_Constr_m_args_82" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46"]
@"$TyDescr_ADT_Cons_83" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_83", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_82", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_85" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_86" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_86", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_85", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_88" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_42"*] [%"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_84", %"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_87"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_89" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_29"]
@"$TyDescr_List_Message_ADTTyp_Specl_90" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_40" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_89", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_42"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_42"*], [2 x %"$TyDescrTy_ADTTyp_Constr_42"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_88", i32 0, i32 0), %"$TyDescrTy_ADTTyp_41"* @"$TyDescr_List_ADTTyp_72" }
@"$TyDescr_List_ADTTyp_m_specls_91" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_40"*] [%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_List_String_ADTTyp_Specl_81", %"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_List_Message_ADTTyp_Specl_90"]
@"$TyDescr_ADT_List_92" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_93" = unnamed_addr constant %"$TyDescr_AddrTyp_49" { i32 -3, %"$TyDescr_AddrFieldTyp_48"* null }
@"$_gas_charge_acc_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_0" = global %Int32 zeroinitializer
@helloWorld.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@helloWorld.not_owner_code = global %Int32 zeroinitializer
@helloWorld.set_hello_code = global %Int32 zeroinitializer
@helloWorld.smsg = global %String zeroinitializer
@"$stringlit_154" = unnamed_addr constant [8 x i8] c"get lost"
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_owner = global [20 x i8] zeroinitializer
@_cparam_name = global %String zeroinitializer
@_cparam_uint256 = global %Uint256 zeroinitializer
@_cparam_int32 = global %Int32 zeroinitializer
@_cparam_bstr = global %Bystr zeroinitializer
@_cparam_all_names = global %TName_List_String* null
@_cparam_pear = global %TName_Pair_Int128_String* null
@"$welcome_msg_167" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$sendoff_msg_178" = unnamed_addr constant [12 x i8] c"sendoff_msg\00"
@"$stringlit_226" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_231" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_234" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_264" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_278" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_283" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_286" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_321" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_347" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_352" = unnamed_addr constant [10 x i8] c"getHello()"
@"$stringlit_355" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_398" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_403" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_406" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_413" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_432" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_437" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_440" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_447" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_522" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_527" = unnamed_addr constant [15 x i8] c"ContractAddress"
@"$stringlit_530" = unnamed_addr constant [4 x i8] c"addr"
@"$stringlit_573" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_578" = unnamed_addr constant [14 x i8] c"AllContrparams"
@"$stringlit_581" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_589" = unnamed_addr constant [4 x i8] c"name"
@"$stringlit_597" = unnamed_addr constant [7 x i8] c"uint256"
@"$stringlit_605" = unnamed_addr constant [5 x i8] c"int32"
@"$stringlit_613" = unnamed_addr constant [4 x i8] c"bstr"
@"$stringlit_621" = unnamed_addr constant [9 x i8] c"all_names"
@"$stringlit_629" = unnamed_addr constant [4 x i8] c"pear"
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_50", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_44", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_45", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 21
@"$pname__scilla_version_660" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_661" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_662" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_owner_663" = unnamed_addr constant [5 x i8] c"owner"
@"$pname_name_664" = unnamed_addr constant [4 x i8] c"name"
@"$pname_uint256_665" = unnamed_addr constant [7 x i8] c"uint256"
@"$pname_int32_666" = unnamed_addr constant [5 x i8] c"int32"
@"$pname_bstr_667" = unnamed_addr constant [4 x i8] c"bstr"
@"$pname_all_names_668" = unnamed_addr constant [9 x i8] c"all_names"
@"$pname_pear_669" = unnamed_addr constant [4 x i8] c"pear"
@_contract_parameters = constant [10 x %"$ParamDescr_658"] [%"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_660", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_11" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_661", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_662", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_27" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_owner_663", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_name_664", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_String_25" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_uint256_665", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint256_23" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_int32_666", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_9" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_bstr_667", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr_37" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$pname_all_names_668", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_45" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_pear_669", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_44" }]
@_contract_parameters_length = constant i32 10
@"$tpname__amount_670" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_671" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_672" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_msg_673" = unnamed_addr constant [3 x i8] c"msg"
@"$tparams_setHello_674" = unnamed_addr constant [4 x %"$ParamDescr_658"] [%"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_670", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_671", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_672", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_msg_673", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_String_25" }]
@"$tname_setHello_675" = unnamed_addr constant [8 x i8] c"setHello"
@"$tpname__amount_676" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_677" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_678" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_getHello_679" = unnamed_addr constant [3 x %"$ParamDescr_658"] [%"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_676", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_677", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_678", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_getHello_680" = unnamed_addr constant [8 x i8] c"getHello"
@"$tpname__amount_681" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_682" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_683" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_multipleMsgs_684" = unnamed_addr constant [3 x %"$ParamDescr_658"] [%"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_681", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_682", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_683", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_multipleMsgs_685" = unnamed_addr constant [12 x i8] c"multipleMsgs"
@"$tpname__amount_686" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_687" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_688" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_contrAddr_689" = unnamed_addr constant [3 x %"$ParamDescr_658"] [%"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_686", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_687", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_688", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_contrAddr_690" = unnamed_addr constant [9 x i8] c"contrAddr"
@"$tpname__amount_691" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_692" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_693" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_printContrParams_694" = unnamed_addr constant [3 x %"$ParamDescr_658"] [%"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_691", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_692", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_658" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_693", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_printContrParams_695" = unnamed_addr constant [16 x i8] c"printContrParams"
@_transition_parameters = constant [5 x %"$TransDescr_659"] [%"$TransDescr_659" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setHello_675", i32 0, i32 0), i32 8 }, i32 4, %"$ParamDescr_658"* getelementptr inbounds ([4 x %"$ParamDescr_658"], [4 x %"$ParamDescr_658"]* @"$tparams_setHello_674", i32 0, i32 0) }, %"$TransDescr_659" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_getHello_680", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_658"* getelementptr inbounds ([3 x %"$ParamDescr_658"], [3 x %"$ParamDescr_658"]* @"$tparams_getHello_679", i32 0, i32 0) }, %"$TransDescr_659" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_multipleMsgs_685", i32 0, i32 0), i32 12 }, i32 3, %"$ParamDescr_658"* getelementptr inbounds ([3 x %"$ParamDescr_658"], [3 x %"$ParamDescr_658"]* @"$tparams_multipleMsgs_684", i32 0, i32 0) }, %"$TransDescr_659" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_contrAddr_690", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_658"* getelementptr inbounds ([3 x %"$ParamDescr_658"], [3 x %"$ParamDescr_658"]* @"$tparams_contrAddr_689", i32 0, i32 0) }, %"$TransDescr_659" { %ParamDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$tname_printContrParams_695", i32 0, i32 0), i32 16 }, i32 3, %"$ParamDescr_658"* getelementptr inbounds ([3 x %"$ParamDescr_658"], [3 x %"$ParamDescr_658"]* @"$tparams_printContrParams_694", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define internal %TName_List_Message* @"$fundef_3"(%"$$fundef_3_env_94"* %0, i8* %1) !dbg !3 {
entry:
  %"$msg_120" = alloca i8*, align 8
  store i8* %1, i8** %"$msg_120", align 8
  call void @llvm.dbg.declare(metadata i8** %"$msg_120", metadata !8, metadata !DIExpression()), !dbg !11
  %"$retval_4" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$retval_4", metadata !12, metadata !DIExpression()), !dbg !15
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %entry
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %nil_msg = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %nil_msg, metadata !16, metadata !DIExpression()), !dbg !17
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$adtval_105_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_105_salloc" = call i8* @_salloc(i8* %"$adtval_105_load", i64 1)
  %"$adtval_105" = bitcast i8* %"$adtval_105_salloc" to %CName_Nil_Message*
  %"$adtgep_106" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_105", i32 0, i32 0
  store i8 1, i8* %"$adtgep_106", align 1
  %"$adtptr_107" = bitcast %CName_Nil_Message* %"$adtval_105" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_107", %TName_List_Message** %nil_msg, align 8, !dbg !18
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_103"
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %"$nil_msg_113" = load %TName_List_Message*, %TName_List_Message** %nil_msg, align 8
  %"$adtval_114_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_114_salloc" = call i8* @_salloc(i8* %"$adtval_114_load", i64 17)
  %"$adtval_114" = bitcast i8* %"$adtval_114_salloc" to %CName_Cons_Message*
  %"$adtgep_115" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_114", i32 0, i32 0
  store i8 0, i8* %"$adtgep_115", align 1
  %"$adtgep_116" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_114", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_116", align 8
  %"$adtgep_117" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_114", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_113", %TName_List_Message** %"$adtgep_117", align 8
  %"$adtptr_118" = bitcast %CName_Cons_Message* %"$adtval_114" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_118", %TName_List_Message** %"$retval_4", align 8, !dbg !19
  %"$$retval_4_119" = load %TName_List_Message*, %TName_List_Message** %"$retval_4", align 8
  ret %TName_List_Message* %"$$retval_4_119"
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !20 {
entry:
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 5, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %entry
  %"$consume_125" = sub i64 %"$gasrem_121", 5
  store i64 %"$consume_125", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_1", align 4, !dbg !22
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 20, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 20
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_0", align 4, !dbg !22
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_94"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8, !dbg !23
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_134"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @helloWorld.not_owner_code, align 4, !dbg !24
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @helloWorld.set_hello_code, align 4, !dbg !25
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_147"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_154", i32 0, i32 0), i32 8 }, %String* @helloWorld.smsg, align 8, !dbg !26
  ret void
}

define void @_deploy_ops() !dbg !27 {
entry:
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %entry
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %"$welcome_msg_5" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$welcome_msg_5", metadata !28, metadata !DIExpression()), !dbg !30
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$name_165" = load %String, %String* @_cparam_name, align 8
  store %String %"$name_165", %String* %"$welcome_msg_5", align 8, !dbg !31
  %"$execptr_load_166" = load i8*, i8** @_execptr, align 8
  %"$$welcome_msg_5_168" = load %String, %String* %"$welcome_msg_5", align 8
  %"$update_value_169" = alloca %String, align 8
  store %String %"$$welcome_msg_5_168", %String* %"$update_value_169", align 8
  %"$update_value_170" = bitcast %String* %"$update_value_169" to i8*
  call void @_update_field(i8* %"$execptr_load_166", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_167", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_170"), !dbg !31
  %"$sendoff_msg_6" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$sendoff_msg_6", metadata !32, metadata !DIExpression()), !dbg !33
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_163"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$helloWorld.smsg_176" = load %String, %String* @helloWorld.smsg, align 8
  store %String %"$helloWorld.smsg_176", %String* %"$sendoff_msg_6", align 8, !dbg !34
  %"$execptr_load_177" = load i8*, i8** @_execptr, align 8
  %"$$sendoff_msg_6_179" = load %String, %String* %"$sendoff_msg_6", align 8
  %"$update_value_180" = alloca %String, align 8
  store %String %"$$sendoff_msg_6_179", %String* %"$update_value_180", align 8
  %"$update_value_181" = bitcast %String* %"$update_value_180" to i8*
  call void @_update_field(i8* %"$execptr_load_177", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$sendoff_msg_178", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_181"), !dbg !34
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setHello_182"(%Uint128 %_amount, [20 x i8]* %"$_origin_183", [20 x i8]* %"$_sender_184", %String %msg) !dbg !35 {
entry:
  %"$msg_308" = alloca %String, align 8
  store %String %msg, %String* %"$msg_308", align 8
  call void @llvm.dbg.declare(metadata %String* %"$msg_308", metadata !36, metadata !DIExpression()), !dbg !37
  %"$_sender_307" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_184", [20 x i8]** %"$_sender_307", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_307", metadata !38, metadata !DIExpression()), !dbg !40
  %"$_origin_306" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_183", [20 x i8]** %"$_origin_306", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_306", metadata !41, metadata !DIExpression()), !dbg !40
  %"$_amount_305" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_305", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_305", metadata !42, metadata !DIExpression()), !dbg !40
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_183", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_184", align 1
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %entry
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %is_owner = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %is_owner, metadata !44, metadata !DIExpression()), !dbg !47
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 20, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$have_gas_188"
  %"$consume_194" = sub i64 %"$gasrem_190", 20
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %"$execptr_load_195" = load i8*, i8** @_execptr, align 8
  %"$eq_owner_196" = alloca [20 x i8], align 1
  %"$owner_197" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  store [20 x i8] %"$owner_197", [20 x i8]* %"$eq_owner_196", align 1
  %"$$eq_owner_196_198" = bitcast [20 x i8]* %"$eq_owner_196" to i8*
  %"$eq__sender_199" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_199", align 1
  %"$$eq__sender_199_200" = bitcast [20 x i8]* %"$eq__sender_199" to i8*
  %"$eq_call_201" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_195", i32 20, i8* %"$$eq_owner_196_198", i8* %"$$eq__sender_199_200"), !dbg !48
  store %TName_Bool* %"$eq_call_201", %TName_Bool** %is_owner, align 8, !dbg !48
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 2, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_193"
  %"$consume_207" = sub i64 %"$gasrem_203", 2
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$is_owner_209" = load %TName_Bool*, %TName_Bool** %is_owner, align 8
  %"$is_owner_tag_210" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_owner_209", i32 0, i32 0
  %"$is_owner_tag_211" = load i8, i8* %"$is_owner_tag_210", align 1
  switch i8 %"$is_owner_tag_211", label %"$empty_default_212" [
    i8 1, label %"$False_213"
    i8 0, label %"$True_253"
  ], !dbg !49

"$False_213":                                     ; preds = %"$have_gas_206"
  %"$is_owner_214" = bitcast %TName_Bool* %"$is_owner_209" to %CName_False*
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$False_213"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$False_213"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !50, metadata !DIExpression()), !dbg !55
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_218"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %"$msgobj_225_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_225_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_225_salloc_load", i64 69)
  %"$msgobj_225_salloc" = bitcast i8* %"$msgobj_225_salloc_salloc" to [69 x i8]*
  %"$msgobj_225" = bitcast [69 x i8]* %"$msgobj_225_salloc" to i8*
  store i8 2, i8* %"$msgobj_225", align 1
  %"$msgobj_fname_227" = getelementptr i8, i8* %"$msgobj_225", i32 1
  %"$msgobj_fname_228" = bitcast i8* %"$msgobj_fname_227" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_226", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_228", align 8
  %"$msgobj_td_229" = getelementptr i8, i8* %"$msgobj_225", i32 17
  %"$msgobj_td_230" = bitcast i8* %"$msgobj_td_229" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_230", align 8
  %"$msgobj_v_232" = getelementptr i8, i8* %"$msgobj_225", i32 25
  %"$msgobj_v_233" = bitcast i8* %"$msgobj_v_232" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_231", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_233", align 8
  %"$msgobj_fname_235" = getelementptr i8, i8* %"$msgobj_225", i32 41
  %"$msgobj_fname_236" = bitcast i8* %"$msgobj_fname_235" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_234", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_236", align 8
  %"$msgobj_td_237" = getelementptr i8, i8* %"$msgobj_225", i32 57
  %"$msgobj_td_238" = bitcast i8* %"$msgobj_td_237" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_238", align 8
  %"$helloWorld.not_owner_code_239" = load %Int32, %Int32* @helloWorld.not_owner_code, align 4
  %"$msgobj_v_240" = getelementptr i8, i8* %"$msgobj_225", i32 65
  %"$msgobj_v_241" = bitcast i8* %"$msgobj_v_240" to %Int32*
  store %Int32 %"$helloWorld.not_owner_code_239", %Int32* %"$msgobj_v_241", align 4
  store i8* %"$msgobj_225", i8** %e, align 8, !dbg !56
  %"$e_243" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_245" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_243")
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 %"$_literal_cost_call_245", %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_223"
  %"$consume_250" = sub i64 %"$gasrem_246", %"$_literal_cost_call_245"
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %"$execptr_load_251" = load i8*, i8** @_execptr, align 8
  %"$e_252" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_251", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_252"), !dbg !57
  br label %"$matchsucc_208"

"$True_253":                                      ; preds = %"$have_gas_206"
  %"$is_owner_254" = bitcast %TName_Bool* %"$is_owner_209" to %CName_True*
  %"$_literal_cost_msg_255" = alloca %String, align 8
  store %String %msg, %String* %"$_literal_cost_msg_255", align 8
  %"$$_literal_cost_msg_255_256" = bitcast %String* %"$_literal_cost_msg_255" to i8*
  %"$_literal_cost_call_257" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_msg_255_256")
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 %"$_literal_cost_call_257", %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$True_253"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$True_253"
  %"$consume_262" = sub i64 %"$gasrem_258", %"$_literal_cost_call_257"
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %"$execptr_load_263" = load i8*, i8** @_execptr, align 8
  %"$update_value_265" = alloca %String, align 8
  store %String %msg, %String* %"$update_value_265", align 8
  %"$update_value_266" = bitcast %String* %"$update_value_265" to i8*
  call void @_update_field(i8* %"$execptr_load_263", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_264", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_266"), !dbg !58
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_261"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e1, metadata !60, metadata !DIExpression()), !dbg !61
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_270"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %"$msgobj_277_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_277_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_277_salloc_load", i64 69)
  %"$msgobj_277_salloc" = bitcast i8* %"$msgobj_277_salloc_salloc" to [69 x i8]*
  %"$msgobj_277" = bitcast [69 x i8]* %"$msgobj_277_salloc" to i8*
  store i8 2, i8* %"$msgobj_277", align 1
  %"$msgobj_fname_279" = getelementptr i8, i8* %"$msgobj_277", i32 1
  %"$msgobj_fname_280" = bitcast i8* %"$msgobj_fname_279" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_278", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_280", align 8
  %"$msgobj_td_281" = getelementptr i8, i8* %"$msgobj_277", i32 17
  %"$msgobj_td_282" = bitcast i8* %"$msgobj_td_281" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_282", align 8
  %"$msgobj_v_284" = getelementptr i8, i8* %"$msgobj_277", i32 25
  %"$msgobj_v_285" = bitcast i8* %"$msgobj_v_284" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_283", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_285", align 8
  %"$msgobj_fname_287" = getelementptr i8, i8* %"$msgobj_277", i32 41
  %"$msgobj_fname_288" = bitcast i8* %"$msgobj_fname_287" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_286", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_288", align 8
  %"$msgobj_td_289" = getelementptr i8, i8* %"$msgobj_277", i32 57
  %"$msgobj_td_290" = bitcast i8* %"$msgobj_td_289" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_290", align 8
  %"$helloWorld.set_hello_code_291" = load %Int32, %Int32* @helloWorld.set_hello_code, align 4
  %"$msgobj_v_292" = getelementptr i8, i8* %"$msgobj_277", i32 65
  %"$msgobj_v_293" = bitcast i8* %"$msgobj_v_292" to %Int32*
  store %Int32 %"$helloWorld.set_hello_code_291", %Int32* %"$msgobj_v_293", align 4
  store i8* %"$msgobj_277", i8** %e1, align 8, !dbg !62
  %"$e_295" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_297" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_295")
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 %"$_literal_cost_call_297", %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_275"
  %"$consume_302" = sub i64 %"$gasrem_298", %"$_literal_cost_call_297"
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$execptr_load_303" = load i8*, i8** @_execptr, align 8
  %"$e_304" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_303", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_304"), !dbg !63
  br label %"$matchsucc_208"

"$empty_default_212":                             ; preds = %"$have_gas_206"
  br label %"$matchsucc_208"

"$matchsucc_208":                                 ; preds = %"$have_gas_301", %"$have_gas_249", %"$empty_default_212"
  ret void
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setHello(i8* %0) !dbg !64 {
entry:
  %"$_amount_310" = getelementptr i8, i8* %0, i32 0
  %"$_amount_311" = bitcast i8* %"$_amount_310" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_311", align 8
  %"$_origin_312" = getelementptr i8, i8* %0, i32 16
  %"$_origin_313" = bitcast i8* %"$_origin_312" to [20 x i8]*
  %"$_sender_314" = getelementptr i8, i8* %0, i32 36
  %"$_sender_315" = bitcast i8* %"$_sender_314" to [20 x i8]*
  %"$msg_316" = getelementptr i8, i8* %0, i32 56
  %"$msg_317" = bitcast i8* %"$msg_316" to %String*
  %msg = load %String, %String* %"$msg_317", align 8
  call void @"$setHello_182"(%Uint128 %_amount, [20 x i8]* %"$_origin_313", [20 x i8]* %"$_sender_315", %String %msg), !dbg !65
  ret void
}

define internal void @"$getHello_318"(%Uint128 %_amount, [20 x i8]* %"$_origin_319", [20 x i8]* %"$_sender_320") !dbg !66 {
entry:
  %"$_sender_376" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_320", [20 x i8]** %"$_sender_376", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_376", metadata !67, metadata !DIExpression()), !dbg !68
  %"$_origin_375" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_319", [20 x i8]** %"$_origin_375", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_375", metadata !69, metadata !DIExpression()), !dbg !68
  %"$_amount_374" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_374", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_374", metadata !70, metadata !DIExpression()), !dbg !68
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_319", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_320", align 1
  %r = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %r, metadata !71, metadata !DIExpression()), !dbg !72
  %"$execptr_load_322" = load i8*, i8** @_execptr, align 8
  %"$r_call_323" = call i8* @_fetch_field(i8* %"$execptr_load_322", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_321", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i32 1), !dbg !72
  %"$r_324" = bitcast i8* %"$r_call_323" to %String*
  %"$r_325" = load %String, %String* %"$r_324", align 8
  store %String %"$r_325", %String* %r, align 8
  %"$_literal_cost_r_326" = alloca %String, align 8
  %"$r_327" = load %String, %String* %r, align 8
  store %String %"$r_327", %String* %"$_literal_cost_r_326", align 8
  %"$$_literal_cost_r_326_328" = bitcast %String* %"$_literal_cost_r_326" to i8*
  %"$_literal_cost_call_329" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_r_326_328")
  %"$gasadd_330" = add i64 %"$_literal_cost_call_329", 0
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 %"$gasadd_330", %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %entry
  %"$consume_335" = sub i64 %"$gasrem_331", %"$gasadd_330"
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_334"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !73, metadata !DIExpression()), !dbg !74
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_339"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %"$msgobj_346_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_346_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_346_salloc_load", i64 81)
  %"$msgobj_346_salloc" = bitcast i8* %"$msgobj_346_salloc_salloc" to [81 x i8]*
  %"$msgobj_346" = bitcast [81 x i8]* %"$msgobj_346_salloc" to i8*
  store i8 2, i8* %"$msgobj_346", align 1
  %"$msgobj_fname_348" = getelementptr i8, i8* %"$msgobj_346", i32 1
  %"$msgobj_fname_349" = bitcast i8* %"$msgobj_fname_348" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_347", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_349", align 8
  %"$msgobj_td_350" = getelementptr i8, i8* %"$msgobj_346", i32 17
  %"$msgobj_td_351" = bitcast i8* %"$msgobj_td_350" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_351", align 8
  %"$msgobj_v_353" = getelementptr i8, i8* %"$msgobj_346", i32 25
  %"$msgobj_v_354" = bitcast i8* %"$msgobj_v_353" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_352", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_354", align 8
  %"$msgobj_fname_356" = getelementptr i8, i8* %"$msgobj_346", i32 41
  %"$msgobj_fname_357" = bitcast i8* %"$msgobj_fname_356" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_355", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_357", align 8
  %"$msgobj_td_358" = getelementptr i8, i8* %"$msgobj_346", i32 57
  %"$msgobj_td_359" = bitcast i8* %"$msgobj_td_358" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_359", align 8
  %"$r_360" = load %String, %String* %r, align 8
  %"$msgobj_v_361" = getelementptr i8, i8* %"$msgobj_346", i32 65
  %"$msgobj_v_362" = bitcast i8* %"$msgobj_v_361" to %String*
  store %String %"$r_360", %String* %"$msgobj_v_362", align 8
  store i8* %"$msgobj_346", i8** %e, align 8, !dbg !75
  %"$e_364" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_366" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_364")
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 %"$_literal_cost_call_366", %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_344"
  %"$consume_371" = sub i64 %"$gasrem_367", %"$_literal_cost_call_366"
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %"$execptr_load_372" = load i8*, i8** @_execptr, align 8
  %"$e_373" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_372", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_373"), !dbg !76
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @getHello(i8* %0) !dbg !77 {
entry:
  %"$_amount_378" = getelementptr i8, i8* %0, i32 0
  %"$_amount_379" = bitcast i8* %"$_amount_378" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_379", align 8
  %"$_origin_380" = getelementptr i8, i8* %0, i32 16
  %"$_origin_381" = bitcast i8* %"$_origin_380" to [20 x i8]*
  %"$_sender_382" = getelementptr i8, i8* %0, i32 36
  %"$_sender_383" = bitcast i8* %"$_sender_382" to [20 x i8]*
  call void @"$getHello_318"(%Uint128 %_amount, [20 x i8]* %"$_origin_381", [20 x i8]* %"$_sender_383"), !dbg !78
  ret void
}

define internal void @"$multipleMsgs_384"(%Uint128 %_amount, [20 x i8]* %"$_origin_385", [20 x i8]* %"$_sender_386") !dbg !79 {
entry:
  %"$_sender_500" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_386", [20 x i8]** %"$_sender_500", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_500", metadata !80, metadata !DIExpression()), !dbg !81
  %"$_origin_499" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_385", [20 x i8]** %"$_origin_499", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_499", metadata !82, metadata !DIExpression()), !dbg !81
  %"$_amount_498" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_498", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_498", metadata !83, metadata !DIExpression()), !dbg !81
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_385", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_386", align 1
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %entry
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %msg1, metadata !84, metadata !DIExpression()), !dbg !85
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_390"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %"$msgobj_397_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_397_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_397_salloc_load", i64 125)
  %"$msgobj_397_salloc" = bitcast i8* %"$msgobj_397_salloc_salloc" to [125 x i8]*
  %"$msgobj_397" = bitcast [125 x i8]* %"$msgobj_397_salloc" to i8*
  store i8 3, i8* %"$msgobj_397", align 1
  %"$msgobj_fname_399" = getelementptr i8, i8* %"$msgobj_397", i32 1
  %"$msgobj_fname_400" = bitcast i8* %"$msgobj_fname_399" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_398", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_400", align 8
  %"$msgobj_td_401" = getelementptr i8, i8* %"$msgobj_397", i32 17
  %"$msgobj_td_402" = bitcast i8* %"$msgobj_td_401" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_402", align 8
  %"$msgobj_v_404" = getelementptr i8, i8* %"$msgobj_397", i32 25
  %"$msgobj_v_405" = bitcast i8* %"$msgobj_v_404" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_403", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_405", align 8
  %"$msgobj_fname_407" = getelementptr i8, i8* %"$msgobj_397", i32 41
  %"$msgobj_fname_408" = bitcast i8* %"$msgobj_fname_407" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_406", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_408", align 8
  %"$msgobj_td_409" = getelementptr i8, i8* %"$msgobj_397", i32 57
  %"$msgobj_td_410" = bitcast i8* %"$msgobj_td_409" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ** %"$msgobj_td_410", align 8
  %"$msgobj_v_411" = getelementptr i8, i8* %"$msgobj_397", i32 65
  %"$msgobj_v_412" = bitcast i8* %"$msgobj_v_411" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_412", align 1
  %"$msgobj_fname_414" = getelementptr i8, i8* %"$msgobj_397", i32 85
  %"$msgobj_fname_415" = bitcast i8* %"$msgobj_fname_414" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_413", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_415", align 8
  %"$msgobj_td_416" = getelementptr i8, i8* %"$msgobj_397", i32 101
  %"$msgobj_td_417" = bitcast i8* %"$msgobj_td_416" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ** %"$msgobj_td_417", align 8
  %"$msgobj_v_418" = getelementptr i8, i8* %"$msgobj_397", i32 109
  %"$msgobj_v_419" = bitcast i8* %"$msgobj_v_418" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_419", align 8
  store i8* %"$msgobj_397", i8** %msg1, align 8, !dbg !86
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_395"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %msg2, metadata !87, metadata !DIExpression()), !dbg !88
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 1, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_424"
  %"$consume_430" = sub i64 %"$gasrem_426", 1
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %"$msgobj_431_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_431_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_431_salloc_load", i64 125)
  %"$msgobj_431_salloc" = bitcast i8* %"$msgobj_431_salloc_salloc" to [125 x i8]*
  %"$msgobj_431" = bitcast [125 x i8]* %"$msgobj_431_salloc" to i8*
  store i8 3, i8* %"$msgobj_431", align 1
  %"$msgobj_fname_433" = getelementptr i8, i8* %"$msgobj_431", i32 1
  %"$msgobj_fname_434" = bitcast i8* %"$msgobj_fname_433" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_432", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_434", align 8
  %"$msgobj_td_435" = getelementptr i8, i8* %"$msgobj_431", i32 17
  %"$msgobj_td_436" = bitcast i8* %"$msgobj_td_435" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_436", align 8
  %"$msgobj_v_438" = getelementptr i8, i8* %"$msgobj_431", i32 25
  %"$msgobj_v_439" = bitcast i8* %"$msgobj_v_438" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_437", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_439", align 8
  %"$msgobj_fname_441" = getelementptr i8, i8* %"$msgobj_431", i32 41
  %"$msgobj_fname_442" = bitcast i8* %"$msgobj_fname_441" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_440", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_442", align 8
  %"$msgobj_td_443" = getelementptr i8, i8* %"$msgobj_431", i32 57
  %"$msgobj_td_444" = bitcast i8* %"$msgobj_td_443" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ** %"$msgobj_td_444", align 8
  %"$msgobj_v_445" = getelementptr i8, i8* %"$msgobj_431", i32 65
  %"$msgobj_v_446" = bitcast i8* %"$msgobj_v_445" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_446", align 1
  %"$msgobj_fname_448" = getelementptr i8, i8* %"$msgobj_431", i32 85
  %"$msgobj_fname_449" = bitcast i8* %"$msgobj_fname_448" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_447", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_449", align 8
  %"$msgobj_td_450" = getelementptr i8, i8* %"$msgobj_431", i32 101
  %"$msgobj_td_451" = bitcast i8* %"$msgobj_td_450" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ** %"$msgobj_td_451", align 8
  %"$msgobj_v_452" = getelementptr i8, i8* %"$msgobj_431", i32 109
  %"$msgobj_v_453" = bitcast i8* %"$msgobj_v_452" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_453", align 8
  store i8* %"$msgobj_431", i8** %msg2, align 8, !dbg !89
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_429"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %msgs1, metadata !90, metadata !DIExpression()), !dbg !91
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %"$helloWorld.one_msg_2" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$helloWorld.one_msg_2", metadata !92, metadata !DIExpression()), !dbg !93
  %"$helloWorld.one_msg_465" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8
  %"$helloWorld.one_msg_fptr_466" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_465", 0
  %"$helloWorld.one_msg_envptr_467" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_465", 1
  %"$msg1_468" = load i8*, i8** %msg1, align 8
  %"$helloWorld.one_msg_call_469" = call %TName_List_Message* %"$helloWorld.one_msg_fptr_466"(i8* %"$helloWorld.one_msg_envptr_467", i8* %"$msg1_468"), !dbg !93
  store %TName_List_Message* %"$helloWorld.one_msg_call_469", %TName_List_Message** %"$helloWorld.one_msg_2", align 8, !dbg !93
  %"$$helloWorld.one_msg_2_470" = load %TName_List_Message*, %TName_List_Message** %"$helloWorld.one_msg_2", align 8
  store %TName_List_Message* %"$$helloWorld.one_msg_2_470", %TName_List_Message** %msgs1, align 8, !dbg !93
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_463"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %msgs2, metadata !94, metadata !DIExpression()), !dbg !95
  %"$gasrem_476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_474"
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem, align 8
  %"$msg2_481" = load i8*, i8** %msg2, align 8
  %"$msgs1_482" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_483_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_483_salloc" = call i8* @_salloc(i8* %"$adtval_483_load", i64 17)
  %"$adtval_483" = bitcast i8* %"$adtval_483_salloc" to %CName_Cons_Message*
  %"$adtgep_484" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_483", i32 0, i32 0
  store i8 0, i8* %"$adtgep_484", align 1
  %"$adtgep_485" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_483", i32 0, i32 1
  store i8* %"$msg2_481", i8** %"$adtgep_485", align 8
  %"$adtgep_486" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_483", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_482", %TName_List_Message** %"$adtgep_486", align 8
  %"$adtptr_487" = bitcast %CName_Cons_Message* %"$adtval_483" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_487", %TName_List_Message** %msgs2, align 8, !dbg !96
  %"$msgs2_488" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_488_489" = bitcast %TName_List_Message* %"$msgs2_488" to i8*
  %"$_literal_cost_call_490" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", i8* %"$$msgs2_488_489")
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 %"$_literal_cost_call_490", %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$have_gas_479"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$have_gas_479"
  %"$consume_495" = sub i64 %"$gasrem_491", %"$_literal_cost_call_490"
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %"$execptr_load_496" = load i8*, i8** @_execptr, align 8
  %"$msgs2_497" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_496", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %TName_List_Message* %"$msgs2_497"), !dbg !97
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @multipleMsgs(i8* %0) !dbg !98 {
entry:
  %"$_amount_502" = getelementptr i8, i8* %0, i32 0
  %"$_amount_503" = bitcast i8* %"$_amount_502" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_503", align 8
  %"$_origin_504" = getelementptr i8, i8* %0, i32 16
  %"$_origin_505" = bitcast i8* %"$_origin_504" to [20 x i8]*
  %"$_sender_506" = getelementptr i8, i8* %0, i32 36
  %"$_sender_507" = bitcast i8* %"$_sender_506" to [20 x i8]*
  call void @"$multipleMsgs_384"(%Uint128 %_amount, [20 x i8]* %"$_origin_505", [20 x i8]* %"$_sender_507"), !dbg !99
  ret void
}

define internal void @"$contrAddr_508"(%Uint128 %_amount, [20 x i8]* %"$_origin_509", [20 x i8]* %"$_sender_510") !dbg !100 {
entry:
  %"$_sender_551" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_510", [20 x i8]** %"$_sender_551", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_551", metadata !101, metadata !DIExpression()), !dbg !102
  %"$_origin_550" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_509", [20 x i8]** %"$_origin_550", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_550", metadata !103, metadata !DIExpression()), !dbg !102
  %"$_amount_549" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_549", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_549", metadata !104, metadata !DIExpression()), !dbg !102
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_509", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_510", align 1
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %entry
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %msg1, metadata !105, metadata !DIExpression()), !dbg !106
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 1, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_514"
  %"$consume_520" = sub i64 %"$gasrem_516", 1
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %"$msgobj_521_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_521_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_521_salloc_load", i64 85)
  %"$msgobj_521_salloc" = bitcast i8* %"$msgobj_521_salloc_salloc" to [85 x i8]*
  %"$msgobj_521" = bitcast [85 x i8]* %"$msgobj_521_salloc" to i8*
  store i8 2, i8* %"$msgobj_521", align 1
  %"$msgobj_fname_523" = getelementptr i8, i8* %"$msgobj_521", i32 1
  %"$msgobj_fname_524" = bitcast i8* %"$msgobj_fname_523" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_522", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_524", align 8
  %"$msgobj_td_525" = getelementptr i8, i8* %"$msgobj_521", i32 17
  %"$msgobj_td_526" = bitcast i8* %"$msgobj_td_525" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_526", align 8
  %"$msgobj_v_528" = getelementptr i8, i8* %"$msgobj_521", i32 25
  %"$msgobj_v_529" = bitcast i8* %"$msgobj_v_528" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_527", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_529", align 8
  %"$msgobj_fname_531" = getelementptr i8, i8* %"$msgobj_521", i32 41
  %"$msgobj_fname_532" = bitcast i8* %"$msgobj_fname_531" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_530", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_532", align 8
  %"$msgobj_td_533" = getelementptr i8, i8* %"$msgobj_521", i32 57
  %"$msgobj_td_534" = bitcast i8* %"$msgobj_td_533" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ** %"$msgobj_td_534", align 8
  %"$_this_address_535" = load [20 x i8], [20 x i8]* @_cparam__this_address, align 1
  %"$msgobj_v_536" = getelementptr i8, i8* %"$msgobj_521", i32 65
  %"$msgobj_v_537" = bitcast i8* %"$msgobj_v_536" to [20 x i8]*
  store [20 x i8] %"$_this_address_535", [20 x i8]* %"$msgobj_v_537", align 1
  store i8* %"$msgobj_521", i8** %msg1, align 8, !dbg !107
  %"$msg1_539" = load i8*, i8** %msg1, align 8
  %"$_literal_cost_call_541" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$msg1_539")
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 %"$_literal_cost_call_541", %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_519"
  %"$consume_546" = sub i64 %"$gasrem_542", %"$_literal_cost_call_541"
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %"$execptr_load_547" = load i8*, i8** @_execptr, align 8
  %"$msg1_548" = load i8*, i8** %msg1, align 8
  call void @_event(i8* %"$execptr_load_547", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$msg1_548"), !dbg !108
  ret void
}

define void @contrAddr(i8* %0) !dbg !109 {
entry:
  %"$_amount_553" = getelementptr i8, i8* %0, i32 0
  %"$_amount_554" = bitcast i8* %"$_amount_553" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_554", align 8
  %"$_origin_555" = getelementptr i8, i8* %0, i32 16
  %"$_origin_556" = bitcast i8* %"$_origin_555" to [20 x i8]*
  %"$_sender_557" = getelementptr i8, i8* %0, i32 36
  %"$_sender_558" = bitcast i8* %"$_sender_557" to [20 x i8]*
  call void @"$contrAddr_508"(%Uint128 %_amount, [20 x i8]* %"$_origin_556", [20 x i8]* %"$_sender_558"), !dbg !110
  ret void
}

define internal void @"$printContrParams_559"(%Uint128 %_amount, [20 x i8]* %"$_origin_560", [20 x i8]* %"$_sender_561") !dbg !111 {
entry:
  %"$_sender_650" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_561", [20 x i8]** %"$_sender_650", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_650", metadata !112, metadata !DIExpression()), !dbg !113
  %"$_origin_649" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_560", [20 x i8]** %"$_origin_649", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_649", metadata !114, metadata !DIExpression()), !dbg !113
  %"$_amount_648" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_648", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_648", metadata !115, metadata !DIExpression()), !dbg !113
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_560", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_561", align 1
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %entry
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !116, metadata !DIExpression()), !dbg !117
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_565"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem, align 8
  %"$msgobj_572_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_572_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_572_salloc_load", i64 313)
  %"$msgobj_572_salloc" = bitcast i8* %"$msgobj_572_salloc_salloc" to [313 x i8]*
  %"$msgobj_572" = bitcast [313 x i8]* %"$msgobj_572_salloc" to i8*
  store i8 8, i8* %"$msgobj_572", align 1
  %"$msgobj_fname_574" = getelementptr i8, i8* %"$msgobj_572", i32 1
  %"$msgobj_fname_575" = bitcast i8* %"$msgobj_fname_574" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_573", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_575", align 8
  %"$msgobj_td_576" = getelementptr i8, i8* %"$msgobj_572", i32 17
  %"$msgobj_td_577" = bitcast i8* %"$msgobj_td_576" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_577", align 8
  %"$msgobj_v_579" = getelementptr i8, i8* %"$msgobj_572", i32 25
  %"$msgobj_v_580" = bitcast i8* %"$msgobj_v_579" to %String*
  store %String { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$stringlit_578", i32 0, i32 0), i32 14 }, %String* %"$msgobj_v_580", align 8
  %"$msgobj_fname_582" = getelementptr i8, i8* %"$msgobj_572", i32 41
  %"$msgobj_fname_583" = bitcast i8* %"$msgobj_fname_582" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_581", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_583", align 8
  %"$msgobj_td_584" = getelementptr i8, i8* %"$msgobj_572", i32 57
  %"$msgobj_td_585" = bitcast i8* %"$msgobj_td_584" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ** %"$msgobj_td_585", align 8
  %"$owner_586" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  %"$msgobj_v_587" = getelementptr i8, i8* %"$msgobj_572", i32 65
  %"$msgobj_v_588" = bitcast i8* %"$msgobj_v_587" to [20 x i8]*
  store [20 x i8] %"$owner_586", [20 x i8]* %"$msgobj_v_588", align 1
  %"$msgobj_fname_590" = getelementptr i8, i8* %"$msgobj_572", i32 85
  %"$msgobj_fname_591" = bitcast i8* %"$msgobj_fname_590" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_589", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_591", align 8
  %"$msgobj_td_592" = getelementptr i8, i8* %"$msgobj_572", i32 101
  %"$msgobj_td_593" = bitcast i8* %"$msgobj_td_592" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_593", align 8
  %"$name_594" = load %String, %String* @_cparam_name, align 8
  %"$msgobj_v_595" = getelementptr i8, i8* %"$msgobj_572", i32 109
  %"$msgobj_v_596" = bitcast i8* %"$msgobj_v_595" to %String*
  store %String %"$name_594", %String* %"$msgobj_v_596", align 8
  %"$msgobj_fname_598" = getelementptr i8, i8* %"$msgobj_572", i32 125
  %"$msgobj_fname_599" = bitcast i8* %"$msgobj_fname_598" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_597", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_599", align 8
  %"$msgobj_td_600" = getelementptr i8, i8* %"$msgobj_572", i32 141
  %"$msgobj_td_601" = bitcast i8* %"$msgobj_td_600" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ** %"$msgobj_td_601", align 8
  %"$uint256_602" = load %Uint256, %Uint256* @_cparam_uint256, align 8
  %"$msgobj_v_603" = getelementptr i8, i8* %"$msgobj_572", i32 149
  %"$msgobj_v_604" = bitcast i8* %"$msgobj_v_603" to %Uint256*
  store %Uint256 %"$uint256_602", %Uint256* %"$msgobj_v_604", align 8
  %"$msgobj_fname_606" = getelementptr i8, i8* %"$msgobj_572", i32 181
  %"$msgobj_fname_607" = bitcast i8* %"$msgobj_fname_606" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_605", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_607", align 8
  %"$msgobj_td_608" = getelementptr i8, i8* %"$msgobj_572", i32 197
  %"$msgobj_td_609" = bitcast i8* %"$msgobj_td_608" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_609", align 8
  %"$int32_610" = load %Int32, %Int32* @_cparam_int32, align 4
  %"$msgobj_v_611" = getelementptr i8, i8* %"$msgobj_572", i32 205
  %"$msgobj_v_612" = bitcast i8* %"$msgobj_v_611" to %Int32*
  store %Int32 %"$int32_610", %Int32* %"$msgobj_v_612", align 4
  %"$msgobj_fname_614" = getelementptr i8, i8* %"$msgobj_572", i32 209
  %"$msgobj_fname_615" = bitcast i8* %"$msgobj_fname_614" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_613", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_615", align 8
  %"$msgobj_td_616" = getelementptr i8, i8* %"$msgobj_572", i32 225
  %"$msgobj_td_617" = bitcast i8* %"$msgobj_td_616" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ** %"$msgobj_td_617", align 8
  %"$bstr_618" = load %Bystr, %Bystr* @_cparam_bstr, align 8
  %"$msgobj_v_619" = getelementptr i8, i8* %"$msgobj_572", i32 233
  %"$msgobj_v_620" = bitcast i8* %"$msgobj_v_619" to %Bystr*
  store %Bystr %"$bstr_618", %Bystr* %"$msgobj_v_620", align 8
  %"$msgobj_fname_622" = getelementptr i8, i8* %"$msgobj_572", i32 249
  %"$msgobj_fname_623" = bitcast i8* %"$msgobj_fname_622" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_621", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_623", align 8
  %"$msgobj_td_624" = getelementptr i8, i8* %"$msgobj_572", i32 265
  %"$msgobj_td_625" = bitcast i8* %"$msgobj_td_624" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_45", %_TyDescrTy_Typ** %"$msgobj_td_625", align 8
  %"$all_names_626" = load %TName_List_String*, %TName_List_String** @_cparam_all_names, align 8
  %"$msgobj_v_627" = getelementptr i8, i8* %"$msgobj_572", i32 273
  %"$msgobj_v_628" = bitcast i8* %"$msgobj_v_627" to %TName_List_String**
  store %TName_List_String* %"$all_names_626", %TName_List_String** %"$msgobj_v_628", align 8
  %"$msgobj_fname_630" = getelementptr i8, i8* %"$msgobj_572", i32 281
  %"$msgobj_fname_631" = bitcast i8* %"$msgobj_fname_630" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_629", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_631", align 8
  %"$msgobj_td_632" = getelementptr i8, i8* %"$msgobj_572", i32 297
  %"$msgobj_td_633" = bitcast i8* %"$msgobj_td_632" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_44", %_TyDescrTy_Typ** %"$msgobj_td_633", align 8
  %"$pear_634" = load %TName_Pair_Int128_String*, %TName_Pair_Int128_String** @_cparam_pear, align 8
  %"$msgobj_v_635" = getelementptr i8, i8* %"$msgobj_572", i32 305
  %"$msgobj_v_636" = bitcast i8* %"$msgobj_v_635" to %TName_Pair_Int128_String**
  store %TName_Pair_Int128_String* %"$pear_634", %TName_Pair_Int128_String** %"$msgobj_v_636", align 8
  store i8* %"$msgobj_572", i8** %e, align 8, !dbg !118
  %"$e_638" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_640" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_638")
  %"$gasrem_641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_642" = icmp ugt i64 %"$_literal_cost_call_640", %"$gasrem_641"
  br i1 %"$gascmp_642", label %"$out_of_gas_643", label %"$have_gas_644"

"$out_of_gas_643":                                ; preds = %"$have_gas_570"
  call void @_out_of_gas()
  br label %"$have_gas_644"

"$have_gas_644":                                  ; preds = %"$out_of_gas_643", %"$have_gas_570"
  %"$consume_645" = sub i64 %"$gasrem_641", %"$_literal_cost_call_640"
  store i64 %"$consume_645", i64* @_gasrem, align 8
  %"$execptr_load_646" = load i8*, i8** @_execptr, align 8
  %"$e_647" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_646", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_647"), !dbg !119
  ret void
}

define void @printContrParams(i8* %0) !dbg !120 {
entry:
  %"$_amount_652" = getelementptr i8, i8* %0, i32 0
  %"$_amount_653" = bitcast i8* %"$_amount_652" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_653", align 8
  %"$_origin_654" = getelementptr i8, i8* %0, i32 16
  %"$_origin_655" = bitcast i8* %"$_origin_654" to [20 x i8]*
  %"$_sender_656" = getelementptr i8, i8* %0, i32 36
  %"$_sender_657" = bitcast i8* %"$_sender_656" to [20 x i8]*
  call void @"$printContrParams_559"(%Uint128 %_amount, [20 x i8]* %"$_origin_655", [20 x i8]* %"$_sender_657"), !dbg !121
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "helloWorld.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 14, type: !4, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "msg", scope: !3, file: !2, line: 13, type: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Message", baseType: !10, size: 8, align: 8, dwarfAddressSpace: 0)
!10 = !DIBasicType(name: "Message", size: 8)
!11 = !DILocation(line: 13, column: 8, scope: !3)
!12 = !DILocalVariable(name: "$retval_4", scope: !3, file: !2, line: 14, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (Message)", baseType: !14, size: 8, align: 8, dwarfAddressSpace: 0)
!14 = !DIBasicType(name: "List (Message)", size: 8)
!15 = !DILocation(line: 14, column: 3, scope: !3)
!16 = !DILocalVariable(name: "nil_msg", scope: !3, file: !2, line: 14, type: !13)
!17 = !DILocation(line: 14, column: 7, scope: !3)
!18 = !DILocation(line: 14, column: 17, scope: !3)
!19 = !DILocation(line: 15, column: 3, scope: !3)
!20 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !21, file: !21, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!21 = !DIFile(filename: ".", directory: ".")
!22 = !DILocation(line: 0, scope: !20)
!23 = !DILocation(line: 14, column: 3, scope: !20)
!24 = !DILocation(line: 17, column: 22, scope: !20)
!25 = !DILocation(line: 18, column: 22, scope: !20)
!26 = !DILocation(line: 20, column: 21, scope: !20)
!27 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !21, file: !21, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!28 = !DILocalVariable(name: "$welcome_msg_5", scope: !27, file: !2, line: 36, type: !29)
!29 = !DIBasicType(name: "String", size: 16)
!30 = !DILocation(line: 36, column: 7, scope: !27)
!31 = !DILocation(line: 36, column: 30, scope: !27)
!32 = !DILocalVariable(name: "$sendoff_msg_6", scope: !27, file: !2, line: 37, type: !29)
!33 = !DILocation(line: 37, column: 7, scope: !27)
!34 = !DILocation(line: 37, column: 30, scope: !27)
!35 = distinct !DISubprogram(name: "setHello", linkageName: "setHello", scope: !2, file: !2, line: 39, type: !4, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!36 = !DILocalVariable(name: "msg", scope: !35, file: !2, line: 39, type: !29)
!37 = !DILocation(line: 39, column: 22, scope: !35)
!38 = !DILocalVariable(name: "_sender", scope: !35, file: !2, line: 39, type: !39)
!39 = !DIBasicType(name: "ByStr20 with end", size: 20)
!40 = !DILocation(line: 39, column: 12, scope: !35)
!41 = !DILocalVariable(name: "_origin", scope: !35, file: !2, line: 39, type: !39)
!42 = !DILocalVariable(name: "_amount", scope: !35, file: !2, line: 39, type: !43)
!43 = !DIBasicType(name: "Uint128", size: 16)
!44 = !DILocalVariable(name: "is_owner", scope: !35, file: !2, line: 40, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !46, size: 8, align: 8, dwarfAddressSpace: 0)
!46 = !DIBasicType(name: "Bool", size: 8)
!47 = !DILocation(line: 40, column: 3, scope: !35)
!48 = !DILocation(line: 40, column: 14, scope: !35)
!49 = !DILocation(line: 41, column: 3, scope: !35)
!50 = !DILocalVariable(name: "e", scope: !51, file: !2, line: 43, type: !53)
!51 = distinct !DILexicalBlock(scope: !52, file: !2, line: 42, column: 5)
!52 = distinct !DILexicalBlock(scope: !35, file: !2, line: 41, column: 3)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !54, size: 8, align: 8, dwarfAddressSpace: 0)
!54 = !DIBasicType(name: "Event", size: 8)
!55 = !DILocation(line: 43, column: 5, scope: !51)
!56 = !DILocation(line: 43, column: 9, scope: !51)
!57 = !DILocation(line: 44, column: 5, scope: !51)
!58 = !DILocation(line: 46, column: 5, scope: !59)
!59 = distinct !DILexicalBlock(scope: !52, file: !2, line: 45, column: 5)
!60 = !DILocalVariable(name: "e", scope: !59, file: !2, line: 47, type: !53)
!61 = !DILocation(line: 47, column: 5, scope: !59)
!62 = !DILocation(line: 47, column: 9, scope: !59)
!63 = !DILocation(line: 48, column: 5, scope: !59)
!64 = distinct !DISubprogram(name: "setHello", linkageName: "setHello", scope: !2, file: !2, line: 39, type: !4, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!65 = !DILocation(line: 39, column: 12, scope: !64)
!66 = distinct !DISubprogram(name: "getHello", linkageName: "getHello", scope: !2, file: !2, line: 53, type: !4, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!67 = !DILocalVariable(name: "_sender", scope: !66, file: !2, line: 53, type: !39)
!68 = !DILocation(line: 53, column: 12, scope: !66)
!69 = !DILocalVariable(name: "_origin", scope: !66, file: !2, line: 53, type: !39)
!70 = !DILocalVariable(name: "_amount", scope: !66, file: !2, line: 53, type: !43)
!71 = !DILocalVariable(name: "r", scope: !66, file: !2, line: 54, type: !29)
!72 = !DILocation(line: 54, column: 5, scope: !66)
!73 = !DILocalVariable(name: "e", scope: !66, file: !2, line: 55, type: !53)
!74 = !DILocation(line: 55, column: 5, scope: !66)
!75 = !DILocation(line: 55, column: 9, scope: !66)
!76 = !DILocation(line: 56, column: 5, scope: !66)
!77 = distinct !DISubprogram(name: "getHello", linkageName: "getHello", scope: !2, file: !2, line: 53, type: !4, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!78 = !DILocation(line: 53, column: 12, scope: !77)
!79 = distinct !DISubprogram(name: "multipleMsgs", linkageName: "multipleMsgs", scope: !2, file: !2, line: 59, type: !4, scopeLine: 59, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!80 = !DILocalVariable(name: "_sender", scope: !79, file: !2, line: 59, type: !39)
!81 = !DILocation(line: 59, column: 12, scope: !79)
!82 = !DILocalVariable(name: "_origin", scope: !79, file: !2, line: 59, type: !39)
!83 = !DILocalVariable(name: "_amount", scope: !79, file: !2, line: 59, type: !43)
!84 = !DILocalVariable(name: "msg1", scope: !79, file: !2, line: 60, type: !9)
!85 = !DILocation(line: 60, column: 3, scope: !79)
!86 = !DILocation(line: 60, column: 10, scope: !79)
!87 = !DILocalVariable(name: "msg2", scope: !79, file: !2, line: 61, type: !9)
!88 = !DILocation(line: 61, column: 3, scope: !79)
!89 = !DILocation(line: 61, column: 10, scope: !79)
!90 = !DILocalVariable(name: "msgs1", scope: !79, file: !2, line: 62, type: !13)
!91 = !DILocation(line: 62, column: 3, scope: !79)
!92 = !DILocalVariable(name: "$helloWorld.one_msg_2", scope: !79, file: !2, line: 62, type: !13)
!93 = !DILocation(line: 62, column: 11, scope: !79)
!94 = !DILocalVariable(name: "msgs2", scope: !79, file: !2, line: 63, type: !13)
!95 = !DILocation(line: 63, column: 3, scope: !79)
!96 = !DILocation(line: 63, column: 11, scope: !79)
!97 = !DILocation(line: 64, column: 3, scope: !79)
!98 = distinct !DISubprogram(name: "multipleMsgs", linkageName: "multipleMsgs", scope: !2, file: !2, line: 59, type: !4, scopeLine: 59, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!99 = !DILocation(line: 59, column: 12, scope: !98)
!100 = distinct !DISubprogram(name: "contrAddr", linkageName: "contrAddr", scope: !2, file: !2, line: 67, type: !4, scopeLine: 67, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!101 = !DILocalVariable(name: "_sender", scope: !100, file: !2, line: 67, type: !39)
!102 = !DILocation(line: 67, column: 12, scope: !100)
!103 = !DILocalVariable(name: "_origin", scope: !100, file: !2, line: 67, type: !39)
!104 = !DILocalVariable(name: "_amount", scope: !100, file: !2, line: 67, type: !43)
!105 = !DILocalVariable(name: "msg1", scope: !100, file: !2, line: 68, type: !53)
!106 = !DILocation(line: 68, column: 3, scope: !100)
!107 = !DILocation(line: 68, column: 10, scope: !100)
!108 = !DILocation(line: 69, column: 3, scope: !100)
!109 = distinct !DISubprogram(name: "contrAddr", linkageName: "contrAddr", scope: !2, file: !2, line: 67, type: !4, scopeLine: 67, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!110 = !DILocation(line: 67, column: 12, scope: !109)
!111 = distinct !DISubprogram(name: "printContrParams", linkageName: "printContrParams", scope: !2, file: !2, line: 72, type: !4, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!112 = !DILocalVariable(name: "_sender", scope: !111, file: !2, line: 72, type: !39)
!113 = !DILocation(line: 72, column: 12, scope: !111)
!114 = !DILocalVariable(name: "_origin", scope: !111, file: !2, line: 72, type: !39)
!115 = !DILocalVariable(name: "_amount", scope: !111, file: !2, line: 72, type: !43)
!116 = !DILocalVariable(name: "e", scope: !111, file: !2, line: 73, type: !53)
!117 = !DILocation(line: 73, column: 3, scope: !111)
!118 = !DILocation(line: 73, column: 7, scope: !111)
!119 = !DILocation(line: 83, column: 3, scope: !111)
!120 = distinct !DISubprogram(name: "printContrParams", linkageName: "printContrParams", scope: !2, file: !2, line: 72, type: !4, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!121 = !DILocation(line: 72, column: 12, scope: !120)
