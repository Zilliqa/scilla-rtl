

; gas_remaining: 4001918
; ModuleID = 'HelloWorld'
source_filename = "HelloWorld"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_641" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_642" = type { %ParamDescrString, i32, %"$ParamDescr_641"* }
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
@"$stringlit_153" = unnamed_addr constant [8 x i8] c"get lost"
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
@"$welcome_msg_166" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$sendoff_msg_177" = unnamed_addr constant [12 x i8] c"sendoff_msg\00"
@"$stringlit_225" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_230" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_233" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_263" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_277" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_282" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_285" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_316" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_342" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_347" = unnamed_addr constant [10 x i8] c"getHello()"
@"$stringlit_350" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_390" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_395" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_398" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_405" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_424" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_429" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_432" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_439" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_511" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_516" = unnamed_addr constant [15 x i8] c"ContractAddress"
@"$stringlit_519" = unnamed_addr constant [4 x i8] c"addr"
@"$stringlit_559" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_564" = unnamed_addr constant [14 x i8] c"AllContrparams"
@"$stringlit_567" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_575" = unnamed_addr constant [4 x i8] c"name"
@"$stringlit_583" = unnamed_addr constant [7 x i8] c"uint256"
@"$stringlit_591" = unnamed_addr constant [5 x i8] c"int32"
@"$stringlit_599" = unnamed_addr constant [4 x i8] c"bstr"
@"$stringlit_607" = unnamed_addr constant [9 x i8] c"all_names"
@"$stringlit_615" = unnamed_addr constant [4 x i8] c"pear"
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_50", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_44", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_45", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 21
@"$pname__scilla_version_643" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_644" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_645" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_owner_646" = unnamed_addr constant [5 x i8] c"owner"
@"$pname_name_647" = unnamed_addr constant [4 x i8] c"name"
@"$pname_uint256_648" = unnamed_addr constant [7 x i8] c"uint256"
@"$pname_int32_649" = unnamed_addr constant [5 x i8] c"int32"
@"$pname_bstr_650" = unnamed_addr constant [4 x i8] c"bstr"
@"$pname_all_names_651" = unnamed_addr constant [9 x i8] c"all_names"
@"$pname_pear_652" = unnamed_addr constant [4 x i8] c"pear"
@_contract_parameters = constant [10 x %"$ParamDescr_641"] [%"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_643", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_11" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_644", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_645", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_27" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_owner_646", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_name_647", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_String_25" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_uint256_648", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint256_23" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_int32_649", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_9" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_bstr_650", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr_37" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$pname_all_names_651", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_45" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_pear_652", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_44" }]
@_contract_parameters_length = constant i32 10
@"$tpname__amount_653" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_654" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_655" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_msg_656" = unnamed_addr constant [3 x i8] c"msg"
@"$tparams_setHello_657" = unnamed_addr constant [4 x %"$ParamDescr_641"] [%"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_653", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_654", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_655", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_msg_656", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_String_25" }]
@"$tname_setHello_658" = unnamed_addr constant [8 x i8] c"setHello"
@"$tpname__amount_659" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_660" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_661" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_getHello_662" = unnamed_addr constant [3 x %"$ParamDescr_641"] [%"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_659", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_660", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_661", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_getHello_663" = unnamed_addr constant [8 x i8] c"getHello"
@"$tpname__amount_664" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_665" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_666" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_multipleMsgs_667" = unnamed_addr constant [3 x %"$ParamDescr_641"] [%"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_664", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_665", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_666", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_multipleMsgs_668" = unnamed_addr constant [12 x i8] c"multipleMsgs"
@"$tpname__amount_669" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_670" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_671" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_contrAddr_672" = unnamed_addr constant [3 x %"$ParamDescr_641"] [%"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_669", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_670", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_671", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_contrAddr_673" = unnamed_addr constant [9 x i8] c"contrAddr"
@"$tpname__amount_674" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_675" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_676" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_printContrParams_677" = unnamed_addr constant [3 x %"$ParamDescr_641"] [%"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_674", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_675", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_641" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_676", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_printContrParams_678" = unnamed_addr constant [16 x i8] c"printContrParams"
@_transition_parameters = constant [5 x %"$TransDescr_642"] [%"$TransDescr_642" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setHello_658", i32 0, i32 0), i32 8 }, i32 4, %"$ParamDescr_641"* getelementptr inbounds ([4 x %"$ParamDescr_641"], [4 x %"$ParamDescr_641"]* @"$tparams_setHello_657", i32 0, i32 0) }, %"$TransDescr_642" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_getHello_663", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_641"* getelementptr inbounds ([3 x %"$ParamDescr_641"], [3 x %"$ParamDescr_641"]* @"$tparams_getHello_662", i32 0, i32 0) }, %"$TransDescr_642" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_multipleMsgs_668", i32 0, i32 0), i32 12 }, i32 3, %"$ParamDescr_641"* getelementptr inbounds ([3 x %"$ParamDescr_641"], [3 x %"$ParamDescr_641"]* @"$tparams_multipleMsgs_667", i32 0, i32 0) }, %"$TransDescr_642" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_contrAddr_673", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_641"* getelementptr inbounds ([3 x %"$ParamDescr_641"], [3 x %"$ParamDescr_641"]* @"$tparams_contrAddr_672", i32 0, i32 0) }, %"$TransDescr_642" { %ParamDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$tname_printContrParams_678", i32 0, i32 0), i32 16 }, i32 3, %"$ParamDescr_641"* getelementptr inbounds ([3 x %"$ParamDescr_641"], [3 x %"$ParamDescr_641"]* @"$tparams_printContrParams_677", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define internal %TName_List_Message* @"$fundef_3"(%"$$fundef_3_env_94"* %0, i8* %1) !dbg !4 {
entry:
  %"$retval_4" = alloca %TName_List_Message*, align 8
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
  store %TName_List_Message* %"$adtptr_107", %TName_List_Message** %nil_msg, align 8, !dbg !8
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
  store %TName_List_Message* %"$adtptr_118", %TName_List_Message** %"$retval_4", align 8, !dbg !9
  %"$$retval_4_119" = load %TName_List_Message*, %TName_List_Message** %"$retval_4", align 8
  ret %TName_List_Message* %"$$retval_4_119"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !10 {
entry:
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 5, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %entry
  %"$consume_124" = sub i64 %"$gasrem_120", 5
  store i64 %"$consume_124", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_1", align 4, !dbg !12
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 20, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 20
  store i64 %"$consume_129", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_0", align 4, !dbg !12
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_94"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8, !dbg !13
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_133"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @helloWorld.not_owner_code, align 4, !dbg !14
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @helloWorld.set_hello_code, align 4, !dbg !15
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_146"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_153", i32 0, i32 0), i32 8 }, %String* @helloWorld.smsg, align 8, !dbg !16
  ret void
}

define void @_deploy_ops() !dbg !17 {
entry:
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %entry
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %"$welcome_msg_5" = alloca %String, align 8
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_157"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %"$name_164" = load %String, %String* @_cparam_name, align 8
  store %String %"$name_164", %String* %"$welcome_msg_5", align 8, !dbg !18
  %"$execptr_load_165" = load i8*, i8** @_execptr, align 8
  %"$$welcome_msg_5_167" = load %String, %String* %"$welcome_msg_5", align 8
  %"$update_value_168" = alloca %String, align 8
  store %String %"$$welcome_msg_5_167", %String* %"$update_value_168", align 8
  %"$update_value_169" = bitcast %String* %"$update_value_168" to i8*
  call void @_update_field(i8* %"$execptr_load_165", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_166", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_169"), !dbg !18
  %"$sendoff_msg_6" = alloca %String, align 8
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_162"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$helloWorld.smsg_175" = load %String, %String* @helloWorld.smsg, align 8
  store %String %"$helloWorld.smsg_175", %String* %"$sendoff_msg_6", align 8, !dbg !19
  %"$execptr_load_176" = load i8*, i8** @_execptr, align 8
  %"$$sendoff_msg_6_178" = load %String, %String* %"$sendoff_msg_6", align 8
  %"$update_value_179" = alloca %String, align 8
  store %String %"$$sendoff_msg_6_178", %String* %"$update_value_179", align 8
  %"$update_value_180" = bitcast %String* %"$update_value_179" to i8*
  call void @_update_field(i8* %"$execptr_load_176", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$sendoff_msg_177", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_180"), !dbg !19
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setHello_181"(%Uint128 %_amount, [20 x i8]* %"$_origin_182", [20 x i8]* %"$_sender_183", %String %msg) !dbg !20 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_182", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_183", align 1
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %entry
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %is_owner = alloca %TName_Bool*, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 20, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 20
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$execptr_load_194" = load i8*, i8** @_execptr, align 8
  %"$eq_owner_195" = alloca [20 x i8], align 1
  %"$owner_196" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  store [20 x i8] %"$owner_196", [20 x i8]* %"$eq_owner_195", align 1
  %"$$eq_owner_195_197" = bitcast [20 x i8]* %"$eq_owner_195" to i8*
  %"$eq__sender_198" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_198", align 1
  %"$$eq__sender_198_199" = bitcast [20 x i8]* %"$eq__sender_198" to i8*
  %"$eq_call_200" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_194", i32 20, i8* %"$$eq_owner_195_197", i8* %"$$eq__sender_198_199"), !dbg !21
  store %TName_Bool* %"$eq_call_200", %TName_Bool** %is_owner, align 8, !dbg !21
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 2, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_192"
  %"$consume_206" = sub i64 %"$gasrem_202", 2
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$is_owner_208" = load %TName_Bool*, %TName_Bool** %is_owner, align 8
  %"$is_owner_tag_209" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_owner_208", i32 0, i32 0
  %"$is_owner_tag_210" = load i8, i8* %"$is_owner_tag_209", align 1
  switch i8 %"$is_owner_tag_210", label %"$empty_default_211" [
    i8 1, label %"$False_212"
    i8 0, label %"$True_252"
  ], !dbg !22

"$False_212":                                     ; preds = %"$have_gas_205"
  %"$is_owner_213" = bitcast %TName_Bool* %"$is_owner_208" to %CName_False*
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 1, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$False_212"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$False_212"
  %"$consume_218" = sub i64 %"$gasrem_214", 1
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_217"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_217"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$msgobj_224_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_224_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_224_salloc_load", i64 69)
  %"$msgobj_224_salloc" = bitcast i8* %"$msgobj_224_salloc_salloc" to [69 x i8]*
  %"$msgobj_224" = bitcast [69 x i8]* %"$msgobj_224_salloc" to i8*
  store i8 2, i8* %"$msgobj_224", align 1
  %"$msgobj_fname_226" = getelementptr i8, i8* %"$msgobj_224", i32 1
  %"$msgobj_fname_227" = bitcast i8* %"$msgobj_fname_226" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_225", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_227", align 8
  %"$msgobj_td_228" = getelementptr i8, i8* %"$msgobj_224", i32 17
  %"$msgobj_td_229" = bitcast i8* %"$msgobj_td_228" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_229", align 8
  %"$msgobj_v_231" = getelementptr i8, i8* %"$msgobj_224", i32 25
  %"$msgobj_v_232" = bitcast i8* %"$msgobj_v_231" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_230", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_232", align 8
  %"$msgobj_fname_234" = getelementptr i8, i8* %"$msgobj_224", i32 41
  %"$msgobj_fname_235" = bitcast i8* %"$msgobj_fname_234" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_233", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_235", align 8
  %"$msgobj_td_236" = getelementptr i8, i8* %"$msgobj_224", i32 57
  %"$msgobj_td_237" = bitcast i8* %"$msgobj_td_236" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_237", align 8
  %"$helloWorld.not_owner_code_238" = load %Int32, %Int32* @helloWorld.not_owner_code, align 4
  %"$msgobj_v_239" = getelementptr i8, i8* %"$msgobj_224", i32 65
  %"$msgobj_v_240" = bitcast i8* %"$msgobj_v_239" to %Int32*
  store %Int32 %"$helloWorld.not_owner_code_238", %Int32* %"$msgobj_v_240", align 4
  store i8* %"$msgobj_224", i8** %e, align 8, !dbg !23
  %"$e_242" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_244" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_242")
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 %"$_literal_cost_call_244", %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_222"
  %"$consume_249" = sub i64 %"$gasrem_245", %"$_literal_cost_call_244"
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %"$execptr_load_250" = load i8*, i8** @_execptr, align 8
  %"$e_251" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_250", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_251"), !dbg !26
  br label %"$matchsucc_207"

"$True_252":                                      ; preds = %"$have_gas_205"
  %"$is_owner_253" = bitcast %TName_Bool* %"$is_owner_208" to %CName_True*
  %"$_literal_cost_msg_254" = alloca %String, align 8
  store %String %msg, %String* %"$_literal_cost_msg_254", align 8
  %"$$_literal_cost_msg_254_255" = bitcast %String* %"$_literal_cost_msg_254" to i8*
  %"$_literal_cost_call_256" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_msg_254_255")
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 %"$_literal_cost_call_256", %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$True_252"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$True_252"
  %"$consume_261" = sub i64 %"$gasrem_257", %"$_literal_cost_call_256"
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$execptr_load_262" = load i8*, i8** @_execptr, align 8
  %"$update_value_264" = alloca %String, align 8
  store %String %msg, %String* %"$update_value_264", align 8
  %"$update_value_265" = bitcast %String* %"$update_value_264" to i8*
  call void @_update_field(i8* %"$execptr_load_262", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_263", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_265"), !dbg !27
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_260"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_269"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %"$msgobj_276_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_276_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_276_salloc_load", i64 69)
  %"$msgobj_276_salloc" = bitcast i8* %"$msgobj_276_salloc_salloc" to [69 x i8]*
  %"$msgobj_276" = bitcast [69 x i8]* %"$msgobj_276_salloc" to i8*
  store i8 2, i8* %"$msgobj_276", align 1
  %"$msgobj_fname_278" = getelementptr i8, i8* %"$msgobj_276", i32 1
  %"$msgobj_fname_279" = bitcast i8* %"$msgobj_fname_278" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_277", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_279", align 8
  %"$msgobj_td_280" = getelementptr i8, i8* %"$msgobj_276", i32 17
  %"$msgobj_td_281" = bitcast i8* %"$msgobj_td_280" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_281", align 8
  %"$msgobj_v_283" = getelementptr i8, i8* %"$msgobj_276", i32 25
  %"$msgobj_v_284" = bitcast i8* %"$msgobj_v_283" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_282", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_284", align 8
  %"$msgobj_fname_286" = getelementptr i8, i8* %"$msgobj_276", i32 41
  %"$msgobj_fname_287" = bitcast i8* %"$msgobj_fname_286" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_285", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_287", align 8
  %"$msgobj_td_288" = getelementptr i8, i8* %"$msgobj_276", i32 57
  %"$msgobj_td_289" = bitcast i8* %"$msgobj_td_288" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_289", align 8
  %"$helloWorld.set_hello_code_290" = load %Int32, %Int32* @helloWorld.set_hello_code, align 4
  %"$msgobj_v_291" = getelementptr i8, i8* %"$msgobj_276", i32 65
  %"$msgobj_v_292" = bitcast i8* %"$msgobj_v_291" to %Int32*
  store %Int32 %"$helloWorld.set_hello_code_290", %Int32* %"$msgobj_v_292", align 4
  store i8* %"$msgobj_276", i8** %e1, align 8, !dbg !29
  %"$e_294" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_296" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_294")
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 %"$_literal_cost_call_296", %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_274"
  %"$consume_301" = sub i64 %"$gasrem_297", %"$_literal_cost_call_296"
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %"$execptr_load_302" = load i8*, i8** @_execptr, align 8
  %"$e_303" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_302", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_303"), !dbg !30
  br label %"$matchsucc_207"

"$empty_default_211":                             ; preds = %"$have_gas_205"
  br label %"$matchsucc_207"

"$matchsucc_207":                                 ; preds = %"$have_gas_300", %"$have_gas_248", %"$empty_default_211"
  ret void
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setHello(i8* %0) !dbg !31 {
entry:
  %"$_amount_305" = getelementptr i8, i8* %0, i32 0
  %"$_amount_306" = bitcast i8* %"$_amount_305" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_306", align 8
  %"$_origin_307" = getelementptr i8, i8* %0, i32 16
  %"$_origin_308" = bitcast i8* %"$_origin_307" to [20 x i8]*
  %"$_sender_309" = getelementptr i8, i8* %0, i32 36
  %"$_sender_310" = bitcast i8* %"$_sender_309" to [20 x i8]*
  %"$msg_311" = getelementptr i8, i8* %0, i32 56
  %"$msg_312" = bitcast i8* %"$msg_311" to %String*
  %msg = load %String, %String* %"$msg_312", align 8
  call void @"$setHello_181"(%Uint128 %_amount, [20 x i8]* %"$_origin_308", [20 x i8]* %"$_sender_310", %String %msg), !dbg !32
  ret void
}

define internal void @"$getHello_313"(%Uint128 %_amount, [20 x i8]* %"$_origin_314", [20 x i8]* %"$_sender_315") !dbg !33 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_314", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_315", align 1
  %r = alloca %String, align 8
  %"$execptr_load_317" = load i8*, i8** @_execptr, align 8
  %"$r_call_318" = call i8* @_fetch_field(i8* %"$execptr_load_317", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_316", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i32 1), !dbg !34
  %"$r_319" = bitcast i8* %"$r_call_318" to %String*
  %"$r_320" = load %String, %String* %"$r_319", align 8
  store %String %"$r_320", %String* %r, align 8
  %"$_literal_cost_r_321" = alloca %String, align 8
  %"$r_322" = load %String, %String* %r, align 8
  store %String %"$r_322", %String* %"$_literal_cost_r_321", align 8
  %"$$_literal_cost_r_321_323" = bitcast %String* %"$_literal_cost_r_321" to i8*
  %"$_literal_cost_call_324" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_r_321_323")
  %"$gasadd_325" = add i64 %"$_literal_cost_call_324", 0
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 %"$gasadd_325", %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %entry
  %"$consume_330" = sub i64 %"$gasrem_326", %"$gasadd_325"
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_334"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %"$msgobj_341_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_341_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_341_salloc_load", i64 81)
  %"$msgobj_341_salloc" = bitcast i8* %"$msgobj_341_salloc_salloc" to [81 x i8]*
  %"$msgobj_341" = bitcast [81 x i8]* %"$msgobj_341_salloc" to i8*
  store i8 2, i8* %"$msgobj_341", align 1
  %"$msgobj_fname_343" = getelementptr i8, i8* %"$msgobj_341", i32 1
  %"$msgobj_fname_344" = bitcast i8* %"$msgobj_fname_343" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_342", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_344", align 8
  %"$msgobj_td_345" = getelementptr i8, i8* %"$msgobj_341", i32 17
  %"$msgobj_td_346" = bitcast i8* %"$msgobj_td_345" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_346", align 8
  %"$msgobj_v_348" = getelementptr i8, i8* %"$msgobj_341", i32 25
  %"$msgobj_v_349" = bitcast i8* %"$msgobj_v_348" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_347", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_349", align 8
  %"$msgobj_fname_351" = getelementptr i8, i8* %"$msgobj_341", i32 41
  %"$msgobj_fname_352" = bitcast i8* %"$msgobj_fname_351" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_350", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_352", align 8
  %"$msgobj_td_353" = getelementptr i8, i8* %"$msgobj_341", i32 57
  %"$msgobj_td_354" = bitcast i8* %"$msgobj_td_353" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_354", align 8
  %"$r_355" = load %String, %String* %r, align 8
  %"$msgobj_v_356" = getelementptr i8, i8* %"$msgobj_341", i32 65
  %"$msgobj_v_357" = bitcast i8* %"$msgobj_v_356" to %String*
  store %String %"$r_355", %String* %"$msgobj_v_357", align 8
  store i8* %"$msgobj_341", i8** %e, align 8, !dbg !35
  %"$e_359" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_361" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_359")
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 %"$_literal_cost_call_361", %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_339"
  %"$consume_366" = sub i64 %"$gasrem_362", %"$_literal_cost_call_361"
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$execptr_load_367" = load i8*, i8** @_execptr, align 8
  %"$e_368" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_367", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_368"), !dbg !36
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @getHello(i8* %0) !dbg !37 {
entry:
  %"$_amount_370" = getelementptr i8, i8* %0, i32 0
  %"$_amount_371" = bitcast i8* %"$_amount_370" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_371", align 8
  %"$_origin_372" = getelementptr i8, i8* %0, i32 16
  %"$_origin_373" = bitcast i8* %"$_origin_372" to [20 x i8]*
  %"$_sender_374" = getelementptr i8, i8* %0, i32 36
  %"$_sender_375" = bitcast i8* %"$_sender_374" to [20 x i8]*
  call void @"$getHello_313"(%Uint128 %_amount, [20 x i8]* %"$_origin_373", [20 x i8]* %"$_sender_375"), !dbg !38
  ret void
}

define internal void @"$multipleMsgs_376"(%Uint128 %_amount, [20 x i8]* %"$_origin_377", [20 x i8]* %"$_sender_378") !dbg !39 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_377", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_378", align 1
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %entry
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %"$msgobj_389_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_389_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_389_salloc_load", i64 125)
  %"$msgobj_389_salloc" = bitcast i8* %"$msgobj_389_salloc_salloc" to [125 x i8]*
  %"$msgobj_389" = bitcast [125 x i8]* %"$msgobj_389_salloc" to i8*
  store i8 3, i8* %"$msgobj_389", align 1
  %"$msgobj_fname_391" = getelementptr i8, i8* %"$msgobj_389", i32 1
  %"$msgobj_fname_392" = bitcast i8* %"$msgobj_fname_391" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_390", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_392", align 8
  %"$msgobj_td_393" = getelementptr i8, i8* %"$msgobj_389", i32 17
  %"$msgobj_td_394" = bitcast i8* %"$msgobj_td_393" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_394", align 8
  %"$msgobj_v_396" = getelementptr i8, i8* %"$msgobj_389", i32 25
  %"$msgobj_v_397" = bitcast i8* %"$msgobj_v_396" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_395", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_397", align 8
  %"$msgobj_fname_399" = getelementptr i8, i8* %"$msgobj_389", i32 41
  %"$msgobj_fname_400" = bitcast i8* %"$msgobj_fname_399" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_398", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_400", align 8
  %"$msgobj_td_401" = getelementptr i8, i8* %"$msgobj_389", i32 57
  %"$msgobj_td_402" = bitcast i8* %"$msgobj_td_401" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ** %"$msgobj_td_402", align 8
  %"$msgobj_v_403" = getelementptr i8, i8* %"$msgobj_389", i32 65
  %"$msgobj_v_404" = bitcast i8* %"$msgobj_v_403" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_404", align 1
  %"$msgobj_fname_406" = getelementptr i8, i8* %"$msgobj_389", i32 85
  %"$msgobj_fname_407" = bitcast i8* %"$msgobj_fname_406" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_405", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_407", align 8
  %"$msgobj_td_408" = getelementptr i8, i8* %"$msgobj_389", i32 101
  %"$msgobj_td_409" = bitcast i8* %"$msgobj_td_408" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ** %"$msgobj_td_409", align 8
  %"$msgobj_v_410" = getelementptr i8, i8* %"$msgobj_389", i32 109
  %"$msgobj_v_411" = bitcast i8* %"$msgobj_v_410" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_411", align 8
  store i8* %"$msgobj_389", i8** %msg1, align 8, !dbg !40
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_387"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %"$msgobj_423_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_423_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_423_salloc_load", i64 125)
  %"$msgobj_423_salloc" = bitcast i8* %"$msgobj_423_salloc_salloc" to [125 x i8]*
  %"$msgobj_423" = bitcast [125 x i8]* %"$msgobj_423_salloc" to i8*
  store i8 3, i8* %"$msgobj_423", align 1
  %"$msgobj_fname_425" = getelementptr i8, i8* %"$msgobj_423", i32 1
  %"$msgobj_fname_426" = bitcast i8* %"$msgobj_fname_425" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_424", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_426", align 8
  %"$msgobj_td_427" = getelementptr i8, i8* %"$msgobj_423", i32 17
  %"$msgobj_td_428" = bitcast i8* %"$msgobj_td_427" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_428", align 8
  %"$msgobj_v_430" = getelementptr i8, i8* %"$msgobj_423", i32 25
  %"$msgobj_v_431" = bitcast i8* %"$msgobj_v_430" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_429", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_431", align 8
  %"$msgobj_fname_433" = getelementptr i8, i8* %"$msgobj_423", i32 41
  %"$msgobj_fname_434" = bitcast i8* %"$msgobj_fname_433" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_432", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_434", align 8
  %"$msgobj_td_435" = getelementptr i8, i8* %"$msgobj_423", i32 57
  %"$msgobj_td_436" = bitcast i8* %"$msgobj_td_435" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ** %"$msgobj_td_436", align 8
  %"$msgobj_v_437" = getelementptr i8, i8* %"$msgobj_423", i32 65
  %"$msgobj_v_438" = bitcast i8* %"$msgobj_v_437" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_438", align 1
  %"$msgobj_fname_440" = getelementptr i8, i8* %"$msgobj_423", i32 85
  %"$msgobj_fname_441" = bitcast i8* %"$msgobj_fname_440" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_439", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_441", align 8
  %"$msgobj_td_442" = getelementptr i8, i8* %"$msgobj_423", i32 101
  %"$msgobj_td_443" = bitcast i8* %"$msgobj_td_442" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ** %"$msgobj_td_443", align 8
  %"$msgobj_v_444" = getelementptr i8, i8* %"$msgobj_423", i32 109
  %"$msgobj_v_445" = bitcast i8* %"$msgobj_v_444" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_445", align 8
  store i8* %"$msgobj_423", i8** %msg2, align 8, !dbg !41
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_421"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_453" = icmp ugt i64 1, %"$gasrem_452"
  br i1 %"$gascmp_453", label %"$out_of_gas_454", label %"$have_gas_455"

"$out_of_gas_454":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_455"

"$have_gas_455":                                  ; preds = %"$out_of_gas_454", %"$have_gas_450"
  %"$consume_456" = sub i64 %"$gasrem_452", 1
  store i64 %"$consume_456", i64* @_gasrem, align 8
  %"$helloWorld.one_msg_2" = alloca %TName_List_Message*, align 8
  %"$helloWorld.one_msg_457" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8
  %"$helloWorld.one_msg_fptr_458" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_457", 0
  %"$helloWorld.one_msg_envptr_459" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_457", 1
  %"$msg1_460" = load i8*, i8** %msg1, align 8
  %"$helloWorld.one_msg_call_461" = call %TName_List_Message* %"$helloWorld.one_msg_fptr_458"(i8* %"$helloWorld.one_msg_envptr_459", i8* %"$msg1_460"), !dbg !42
  store %TName_List_Message* %"$helloWorld.one_msg_call_461", %TName_List_Message** %"$helloWorld.one_msg_2", align 8, !dbg !42
  %"$$helloWorld.one_msg_2_462" = load %TName_List_Message*, %TName_List_Message** %"$helloWorld.one_msg_2", align 8
  store %TName_List_Message* %"$$helloWorld.one_msg_2_462", %TName_List_Message** %msgs1, align 8, !dbg !42
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_455"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_455"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %"$msg2_473" = load i8*, i8** %msg2, align 8
  %"$msgs1_474" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_475_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_475_salloc" = call i8* @_salloc(i8* %"$adtval_475_load", i64 17)
  %"$adtval_475" = bitcast i8* %"$adtval_475_salloc" to %CName_Cons_Message*
  %"$adtgep_476" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_475", i32 0, i32 0
  store i8 0, i8* %"$adtgep_476", align 1
  %"$adtgep_477" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_475", i32 0, i32 1
  store i8* %"$msg2_473", i8** %"$adtgep_477", align 8
  %"$adtgep_478" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_475", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_474", %TName_List_Message** %"$adtgep_478", align 8
  %"$adtptr_479" = bitcast %CName_Cons_Message* %"$adtval_475" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_479", %TName_List_Message** %msgs2, align 8, !dbg !43
  %"$msgs2_480" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_480_481" = bitcast %TName_List_Message* %"$msgs2_480" to i8*
  %"$_literal_cost_call_482" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", i8* %"$$msgs2_480_481")
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 %"$_literal_cost_call_482", %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_471"
  %"$consume_487" = sub i64 %"$gasrem_483", %"$_literal_cost_call_482"
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %"$execptr_load_488" = load i8*, i8** @_execptr, align 8
  %"$msgs2_489" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_488", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %TName_List_Message* %"$msgs2_489"), !dbg !44
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @multipleMsgs(i8* %0) !dbg !45 {
entry:
  %"$_amount_491" = getelementptr i8, i8* %0, i32 0
  %"$_amount_492" = bitcast i8* %"$_amount_491" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_492", align 8
  %"$_origin_493" = getelementptr i8, i8* %0, i32 16
  %"$_origin_494" = bitcast i8* %"$_origin_493" to [20 x i8]*
  %"$_sender_495" = getelementptr i8, i8* %0, i32 36
  %"$_sender_496" = bitcast i8* %"$_sender_495" to [20 x i8]*
  call void @"$multipleMsgs_376"(%Uint128 %_amount, [20 x i8]* %"$_origin_494", [20 x i8]* %"$_sender_496"), !dbg !46
  ret void
}

define internal void @"$contrAddr_497"(%Uint128 %_amount, [20 x i8]* %"$_origin_498", [20 x i8]* %"$_sender_499") !dbg !47 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_498", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_499", align 1
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 1, %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %entry
  %"$consume_504" = sub i64 %"$gasrem_500", 1
  store i64 %"$consume_504", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_506" = icmp ugt i64 1, %"$gasrem_505"
  br i1 %"$gascmp_506", label %"$out_of_gas_507", label %"$have_gas_508"

"$out_of_gas_507":                                ; preds = %"$have_gas_503"
  call void @_out_of_gas()
  br label %"$have_gas_508"

"$have_gas_508":                                  ; preds = %"$out_of_gas_507", %"$have_gas_503"
  %"$consume_509" = sub i64 %"$gasrem_505", 1
  store i64 %"$consume_509", i64* @_gasrem, align 8
  %"$msgobj_510_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_510_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_510_salloc_load", i64 85)
  %"$msgobj_510_salloc" = bitcast i8* %"$msgobj_510_salloc_salloc" to [85 x i8]*
  %"$msgobj_510" = bitcast [85 x i8]* %"$msgobj_510_salloc" to i8*
  store i8 2, i8* %"$msgobj_510", align 1
  %"$msgobj_fname_512" = getelementptr i8, i8* %"$msgobj_510", i32 1
  %"$msgobj_fname_513" = bitcast i8* %"$msgobj_fname_512" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_511", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_513", align 8
  %"$msgobj_td_514" = getelementptr i8, i8* %"$msgobj_510", i32 17
  %"$msgobj_td_515" = bitcast i8* %"$msgobj_td_514" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_515", align 8
  %"$msgobj_v_517" = getelementptr i8, i8* %"$msgobj_510", i32 25
  %"$msgobj_v_518" = bitcast i8* %"$msgobj_v_517" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_516", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_518", align 8
  %"$msgobj_fname_520" = getelementptr i8, i8* %"$msgobj_510", i32 41
  %"$msgobj_fname_521" = bitcast i8* %"$msgobj_fname_520" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_519", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_521", align 8
  %"$msgobj_td_522" = getelementptr i8, i8* %"$msgobj_510", i32 57
  %"$msgobj_td_523" = bitcast i8* %"$msgobj_td_522" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ** %"$msgobj_td_523", align 8
  %"$_this_address_524" = load [20 x i8], [20 x i8]* @_cparam__this_address, align 1
  %"$msgobj_v_525" = getelementptr i8, i8* %"$msgobj_510", i32 65
  %"$msgobj_v_526" = bitcast i8* %"$msgobj_v_525" to [20 x i8]*
  store [20 x i8] %"$_this_address_524", [20 x i8]* %"$msgobj_v_526", align 1
  store i8* %"$msgobj_510", i8** %msg1, align 8, !dbg !48
  %"$msg1_528" = load i8*, i8** %msg1, align 8
  %"$_literal_cost_call_530" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$msg1_528")
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 %"$_literal_cost_call_530", %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_508"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_508"
  %"$consume_535" = sub i64 %"$gasrem_531", %"$_literal_cost_call_530"
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$execptr_load_536" = load i8*, i8** @_execptr, align 8
  %"$msg1_537" = load i8*, i8** %msg1, align 8
  call void @_event(i8* %"$execptr_load_536", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$msg1_537"), !dbg !49
  ret void
}

define void @contrAddr(i8* %0) !dbg !50 {
entry:
  %"$_amount_539" = getelementptr i8, i8* %0, i32 0
  %"$_amount_540" = bitcast i8* %"$_amount_539" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_540", align 8
  %"$_origin_541" = getelementptr i8, i8* %0, i32 16
  %"$_origin_542" = bitcast i8* %"$_origin_541" to [20 x i8]*
  %"$_sender_543" = getelementptr i8, i8* %0, i32 36
  %"$_sender_544" = bitcast i8* %"$_sender_543" to [20 x i8]*
  call void @"$contrAddr_497"(%Uint128 %_amount, [20 x i8]* %"$_origin_542", [20 x i8]* %"$_sender_544"), !dbg !51
  ret void
}

define internal void @"$printContrParams_545"(%Uint128 %_amount, [20 x i8]* %"$_origin_546", [20 x i8]* %"$_sender_547") !dbg !52 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_546", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_547", align 1
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 1, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %entry
  %"$consume_552" = sub i64 %"$gasrem_548", 1
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_554" = icmp ugt i64 1, %"$gasrem_553"
  br i1 %"$gascmp_554", label %"$out_of_gas_555", label %"$have_gas_556"

"$out_of_gas_555":                                ; preds = %"$have_gas_551"
  call void @_out_of_gas()
  br label %"$have_gas_556"

"$have_gas_556":                                  ; preds = %"$out_of_gas_555", %"$have_gas_551"
  %"$consume_557" = sub i64 %"$gasrem_553", 1
  store i64 %"$consume_557", i64* @_gasrem, align 8
  %"$msgobj_558_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_558_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_558_salloc_load", i64 313)
  %"$msgobj_558_salloc" = bitcast i8* %"$msgobj_558_salloc_salloc" to [313 x i8]*
  %"$msgobj_558" = bitcast [313 x i8]* %"$msgobj_558_salloc" to i8*
  store i8 8, i8* %"$msgobj_558", align 1
  %"$msgobj_fname_560" = getelementptr i8, i8* %"$msgobj_558", i32 1
  %"$msgobj_fname_561" = bitcast i8* %"$msgobj_fname_560" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_559", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_561", align 8
  %"$msgobj_td_562" = getelementptr i8, i8* %"$msgobj_558", i32 17
  %"$msgobj_td_563" = bitcast i8* %"$msgobj_td_562" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_563", align 8
  %"$msgobj_v_565" = getelementptr i8, i8* %"$msgobj_558", i32 25
  %"$msgobj_v_566" = bitcast i8* %"$msgobj_v_565" to %String*
  store %String { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$stringlit_564", i32 0, i32 0), i32 14 }, %String* %"$msgobj_v_566", align 8
  %"$msgobj_fname_568" = getelementptr i8, i8* %"$msgobj_558", i32 41
  %"$msgobj_fname_569" = bitcast i8* %"$msgobj_fname_568" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_567", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_569", align 8
  %"$msgobj_td_570" = getelementptr i8, i8* %"$msgobj_558", i32 57
  %"$msgobj_td_571" = bitcast i8* %"$msgobj_td_570" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ** %"$msgobj_td_571", align 8
  %"$owner_572" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  %"$msgobj_v_573" = getelementptr i8, i8* %"$msgobj_558", i32 65
  %"$msgobj_v_574" = bitcast i8* %"$msgobj_v_573" to [20 x i8]*
  store [20 x i8] %"$owner_572", [20 x i8]* %"$msgobj_v_574", align 1
  %"$msgobj_fname_576" = getelementptr i8, i8* %"$msgobj_558", i32 85
  %"$msgobj_fname_577" = bitcast i8* %"$msgobj_fname_576" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_575", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_577", align 8
  %"$msgobj_td_578" = getelementptr i8, i8* %"$msgobj_558", i32 101
  %"$msgobj_td_579" = bitcast i8* %"$msgobj_td_578" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_579", align 8
  %"$name_580" = load %String, %String* @_cparam_name, align 8
  %"$msgobj_v_581" = getelementptr i8, i8* %"$msgobj_558", i32 109
  %"$msgobj_v_582" = bitcast i8* %"$msgobj_v_581" to %String*
  store %String %"$name_580", %String* %"$msgobj_v_582", align 8
  %"$msgobj_fname_584" = getelementptr i8, i8* %"$msgobj_558", i32 125
  %"$msgobj_fname_585" = bitcast i8* %"$msgobj_fname_584" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_583", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_585", align 8
  %"$msgobj_td_586" = getelementptr i8, i8* %"$msgobj_558", i32 141
  %"$msgobj_td_587" = bitcast i8* %"$msgobj_td_586" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ** %"$msgobj_td_587", align 8
  %"$uint256_588" = load %Uint256, %Uint256* @_cparam_uint256, align 8
  %"$msgobj_v_589" = getelementptr i8, i8* %"$msgobj_558", i32 149
  %"$msgobj_v_590" = bitcast i8* %"$msgobj_v_589" to %Uint256*
  store %Uint256 %"$uint256_588", %Uint256* %"$msgobj_v_590", align 8
  %"$msgobj_fname_592" = getelementptr i8, i8* %"$msgobj_558", i32 181
  %"$msgobj_fname_593" = bitcast i8* %"$msgobj_fname_592" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_591", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_593", align 8
  %"$msgobj_td_594" = getelementptr i8, i8* %"$msgobj_558", i32 197
  %"$msgobj_td_595" = bitcast i8* %"$msgobj_td_594" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_595", align 8
  %"$int32_596" = load %Int32, %Int32* @_cparam_int32, align 4
  %"$msgobj_v_597" = getelementptr i8, i8* %"$msgobj_558", i32 205
  %"$msgobj_v_598" = bitcast i8* %"$msgobj_v_597" to %Int32*
  store %Int32 %"$int32_596", %Int32* %"$msgobj_v_598", align 4
  %"$msgobj_fname_600" = getelementptr i8, i8* %"$msgobj_558", i32 209
  %"$msgobj_fname_601" = bitcast i8* %"$msgobj_fname_600" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_599", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_601", align 8
  %"$msgobj_td_602" = getelementptr i8, i8* %"$msgobj_558", i32 225
  %"$msgobj_td_603" = bitcast i8* %"$msgobj_td_602" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ** %"$msgobj_td_603", align 8
  %"$bstr_604" = load %Bystr, %Bystr* @_cparam_bstr, align 8
  %"$msgobj_v_605" = getelementptr i8, i8* %"$msgobj_558", i32 233
  %"$msgobj_v_606" = bitcast i8* %"$msgobj_v_605" to %Bystr*
  store %Bystr %"$bstr_604", %Bystr* %"$msgobj_v_606", align 8
  %"$msgobj_fname_608" = getelementptr i8, i8* %"$msgobj_558", i32 249
  %"$msgobj_fname_609" = bitcast i8* %"$msgobj_fname_608" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_607", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_609", align 8
  %"$msgobj_td_610" = getelementptr i8, i8* %"$msgobj_558", i32 265
  %"$msgobj_td_611" = bitcast i8* %"$msgobj_td_610" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_45", %_TyDescrTy_Typ** %"$msgobj_td_611", align 8
  %"$all_names_612" = load %TName_List_String*, %TName_List_String** @_cparam_all_names, align 8
  %"$msgobj_v_613" = getelementptr i8, i8* %"$msgobj_558", i32 273
  %"$msgobj_v_614" = bitcast i8* %"$msgobj_v_613" to %TName_List_String**
  store %TName_List_String* %"$all_names_612", %TName_List_String** %"$msgobj_v_614", align 8
  %"$msgobj_fname_616" = getelementptr i8, i8* %"$msgobj_558", i32 281
  %"$msgobj_fname_617" = bitcast i8* %"$msgobj_fname_616" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_615", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_617", align 8
  %"$msgobj_td_618" = getelementptr i8, i8* %"$msgobj_558", i32 297
  %"$msgobj_td_619" = bitcast i8* %"$msgobj_td_618" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_44", %_TyDescrTy_Typ** %"$msgobj_td_619", align 8
  %"$pear_620" = load %TName_Pair_Int128_String*, %TName_Pair_Int128_String** @_cparam_pear, align 8
  %"$msgobj_v_621" = getelementptr i8, i8* %"$msgobj_558", i32 305
  %"$msgobj_v_622" = bitcast i8* %"$msgobj_v_621" to %TName_Pair_Int128_String**
  store %TName_Pair_Int128_String* %"$pear_620", %TName_Pair_Int128_String** %"$msgobj_v_622", align 8
  store i8* %"$msgobj_558", i8** %e, align 8, !dbg !53
  %"$e_624" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_626" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_624")
  %"$gasrem_627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_628" = icmp ugt i64 %"$_literal_cost_call_626", %"$gasrem_627"
  br i1 %"$gascmp_628", label %"$out_of_gas_629", label %"$have_gas_630"

"$out_of_gas_629":                                ; preds = %"$have_gas_556"
  call void @_out_of_gas()
  br label %"$have_gas_630"

"$have_gas_630":                                  ; preds = %"$out_of_gas_629", %"$have_gas_556"
  %"$consume_631" = sub i64 %"$gasrem_627", %"$_literal_cost_call_626"
  store i64 %"$consume_631", i64* @_gasrem, align 8
  %"$execptr_load_632" = load i8*, i8** @_execptr, align 8
  %"$e_633" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_632", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_633"), !dbg !54
  ret void
}

define void @printContrParams(i8* %0) !dbg !55 {
entry:
  %"$_amount_635" = getelementptr i8, i8* %0, i32 0
  %"$_amount_636" = bitcast i8* %"$_amount_635" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_636", align 8
  %"$_origin_637" = getelementptr i8, i8* %0, i32 16
  %"$_origin_638" = bitcast i8* %"$_origin_637" to [20 x i8]*
  %"$_sender_639" = getelementptr i8, i8* %0, i32 36
  %"$_sender_640" = bitcast i8* %"$_sender_639" to [20 x i8]*
  call void @"$printContrParams_545"(%Uint128 %_amount, [20 x i8]* %"$_origin_638", [20 x i8]* %"$_sender_640"), !dbg !56
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "helloWorld.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 14, column: 17, scope: !4)
!9 = !DILocation(line: 15, column: 3, scope: !4)
!10 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DIFile(filename: ".", directory: ".")
!12 = !DILocation(line: 0, scope: !10)
!13 = !DILocation(line: 14, column: 3, scope: !10)
!14 = !DILocation(line: 17, column: 22, scope: !10)
!15 = !DILocation(line: 18, column: 22, scope: !10)
!16 = !DILocation(line: 20, column: 21, scope: !10)
!17 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 36, column: 30, scope: !17)
!19 = !DILocation(line: 37, column: 30, scope: !17)
!20 = distinct !DISubprogram(name: "setHello", linkageName: "setHello", scope: !2, file: !2, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 40, column: 14, scope: !20)
!22 = !DILocation(line: 41, column: 3, scope: !20)
!23 = !DILocation(line: 43, column: 9, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !2, line: 42, column: 5)
!25 = distinct !DILexicalBlock(scope: !20, file: !2, line: 41, column: 3)
!26 = !DILocation(line: 44, column: 5, scope: !24)
!27 = !DILocation(line: 46, column: 5, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !2, line: 45, column: 5)
!29 = !DILocation(line: 47, column: 9, scope: !28)
!30 = !DILocation(line: 48, column: 5, scope: !28)
!31 = distinct !DISubprogram(name: "setHello", linkageName: "setHello", scope: !2, file: !2, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 39, column: 12, scope: !31)
!33 = distinct !DISubprogram(name: "getHello", linkageName: "getHello", scope: !2, file: !2, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DILocation(line: 54, column: 5, scope: !33)
!35 = !DILocation(line: 55, column: 9, scope: !33)
!36 = !DILocation(line: 56, column: 5, scope: !33)
!37 = distinct !DISubprogram(name: "getHello", linkageName: "getHello", scope: !2, file: !2, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!38 = !DILocation(line: 53, column: 12, scope: !37)
!39 = distinct !DISubprogram(name: "multipleMsgs", linkageName: "multipleMsgs", scope: !2, file: !2, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DILocation(line: 60, column: 10, scope: !39)
!41 = !DILocation(line: 61, column: 10, scope: !39)
!42 = !DILocation(line: 62, column: 11, scope: !39)
!43 = !DILocation(line: 63, column: 11, scope: !39)
!44 = !DILocation(line: 64, column: 3, scope: !39)
!45 = distinct !DISubprogram(name: "multipleMsgs", linkageName: "multipleMsgs", scope: !2, file: !2, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 59, column: 12, scope: !45)
!47 = distinct !DISubprogram(name: "contrAddr", linkageName: "contrAddr", scope: !2, file: !2, line: 67, type: !5, scopeLine: 67, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!48 = !DILocation(line: 68, column: 10, scope: !47)
!49 = !DILocation(line: 69, column: 3, scope: !47)
!50 = distinct !DISubprogram(name: "contrAddr", linkageName: "contrAddr", scope: !2, file: !2, line: 67, type: !5, scopeLine: 67, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!51 = !DILocation(line: 67, column: 12, scope: !50)
!52 = distinct !DISubprogram(name: "printContrParams", linkageName: "printContrParams", scope: !2, file: !2, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!53 = !DILocation(line: 73, column: 7, scope: !52)
!54 = !DILocation(line: 83, column: 3, scope: !52)
!55 = distinct !DISubprogram(name: "printContrParams", linkageName: "printContrParams", scope: !2, file: !2, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!56 = !DILocation(line: 72, column: 12, scope: !55)
