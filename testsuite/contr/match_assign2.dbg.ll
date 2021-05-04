

; gas_remaining: 4002000
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_33" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_32"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_32" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_34"**, %"$TyDescrTy_ADTTyp_33"* }
%"$TyDescrTy_ADTTyp_Constr_34" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_39" = type { i32, %"$TyDescr_AddrFieldTyp_38"* }
%"$TyDescr_AddrFieldTyp_38" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Uint32 = type { i32 }
%Uint128 = type { i128 }
%Int32 = type { i32 }
%String = type { i8*, i32 }
%"TName_Pair_List_(Int32)_Int32" = type { i8, %"CName_Pair_List_(Int32)_Int32"* }
%"CName_Pair_List_(Int32)_Int32" = type <{ i8, %TName_List_Int32*, %Int32 }>
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_Bystr20_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_30" to i8*) }
@"$TyDescr_ADT_List_Int32_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_List_Int32_ADTTyp_Specl_50" to i8*) }
@"$TyDescr_ADT_Pair_List_(Int32)_Int32_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_59" to i8*) }
@"$TyDescr_Addr_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_39"* @"$TyDescr_AddrFields_62" to i8*) }
@"$TyDescr_List_ADTTyp_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_52", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_32"*], [1 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_List_ADTTyp_m_specls_51", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_42" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_35"]
@"$TyDescr_ADT_Cons_43" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_43", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_42", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_45" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_46" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_46", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_48" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_44", %"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_47"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_49" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_List_Int32_ADTTyp_Specl_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_34"*], [2 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_List_ADTTyp_41" }
@"$TyDescr_List_ADTTyp_m_specls_51" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_List_Int32_ADTTyp_Specl_50"]
@"$TyDescr_ADT_List_52" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_61", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_32"*], [1 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_Pair_ADTTyp_m_specls_60", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_List_(Int32)_Int32_Constr_m_args_54" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_ADT_Pair_55" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_List_(Int32)_Int32_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_55", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_List_(Int32)_Int32_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_constrs_57" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_List_(Int32)_Int32_ADTTyp_Constr_56"]
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_TArgs_58" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_TArgs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_m_constrs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_53" }
@"$TyDescr_Pair_ADTTyp_m_specls_60" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_List_(Int32)_Int32_ADTTyp_Specl_59"]
@"$TyDescr_ADT_Pair_61" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_AddrFields_62" = unnamed_addr constant %"$TyDescr_AddrTyp_39" { i32 -1, %"$TyDescr_AddrFieldTyp_38"* null }
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_76" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_81" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_84" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_Int32_36", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 18

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define void @_init_state() !dbg !9 {
entry:
  ret void
}

define internal void @"$create_event_63"(%Uint128 %_amount, [20 x i8]* %"$_sender_64", %Int32 %m) !dbg !10 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_64", align 1
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 1, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %entry
  %"$consume_69" = sub i64 %"$gasrem_65", 1
  store i64 %"$consume_69", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$have_gas_68"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$have_gas_68"
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %"$msgobj_75_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_75_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_75_salloc_load", i64 69)
  %"$msgobj_75_salloc" = bitcast i8* %"$msgobj_75_salloc_salloc" to [69 x i8]*
  %"$msgobj_75" = bitcast [69 x i8]* %"$msgobj_75_salloc" to i8*
  store i8 2, i8* %"$msgobj_75", align 1
  %"$msgobj_fname_77" = getelementptr i8, i8* %"$msgobj_75", i32 1
  %"$msgobj_fname_78" = bitcast i8* %"$msgobj_fname_77" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_76", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_78", align 8
  %"$msgobj_td_79" = getelementptr i8, i8* %"$msgobj_75", i32 17
  %"$msgobj_td_80" = bitcast i8* %"$msgobj_td_79" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_80", align 8
  %"$msgobj_v_82" = getelementptr i8, i8* %"$msgobj_75", i32 25
  %"$msgobj_v_83" = bitcast i8* %"$msgobj_v_82" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_81", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_83", align 8
  %"$msgobj_fname_85" = getelementptr i8, i8* %"$msgobj_75", i32 41
  %"$msgobj_fname_86" = bitcast i8* %"$msgobj_fname_85" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_84", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_86", align 8
  %"$msgobj_td_87" = getelementptr i8, i8* %"$msgobj_75", i32 57
  %"$msgobj_td_88" = bitcast i8* %"$msgobj_td_87" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ** %"$msgobj_td_88", align 8
  %"$msgobj_v_89" = getelementptr i8, i8* %"$msgobj_75", i32 65
  %"$msgobj_v_90" = bitcast i8* %"$msgobj_v_89" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_90", align 4
  store i8* %"$msgobj_75", i8** %e, align 8, !dbg !11
  %"$e_92" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_94" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_92")
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 %"$_literal_cost_call_94", %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_73"
  %"$consume_99" = sub i64 %"$gasrem_95", %"$_literal_cost_call_94"
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %"$execptr_load_100" = load i8*, i8** @_execptr, align 8
  %"$e_101" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_100", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_101"), !dbg !12
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_102"(%Uint128 %_amount, [20 x i8]* %"$_sender_103", %"TName_Pair_List_(Int32)_Int32"* %p) !dbg !13 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_103", align 1
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %entry
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %a = alloca %Int32, align 8
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_107"
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem, align 8
  store %Int32 { i32 31 }, %Int32* %a, align 4, !dbg !14
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %"$p_tag_120" = getelementptr inbounds %"TName_Pair_List_(Int32)_Int32", %"TName_Pair_List_(Int32)_Int32"* %p, i32 0, i32 0
  %"$p_tag_121" = load i8, i8* %"$p_tag_120", align 1
  switch i8 %"$p_tag_121", label %"$empty_default_122" [
    i8 0, label %"$Pair_123"
  ], !dbg !15

"$Pair_123":                                      ; preds = %"$have_gas_117"
  %"$p_124" = bitcast %"TName_Pair_List_(Int32)_Int32"* %p to %"CName_Pair_List_(Int32)_Int32"*
  %"$b_gep_125" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_124", i32 0, i32 1
  %"$b_load_126" = load %TName_List_Int32*, %TName_List_Int32** %"$b_gep_125", align 8
  %b = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$b_load_126", %TName_List_Int32** %b, align 8
  %"$$a_0_gep_127" = getelementptr inbounds %"CName_Pair_List_(Int32)_Int32", %"CName_Pair_List_(Int32)_Int32"* %"$p_124", i32 0, i32 2
  %"$$a_0_load_128" = load %Int32, %Int32* %"$$a_0_gep_127", align 4
  %"$a_0" = alloca %Int32, align 8
  store %Int32 %"$$a_0_load_128", %Int32* %"$a_0", align 4
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$Pair_123"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$Pair_123"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$create_event__sender_134" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_134", align 1
  %"$$a_0_135" = load %Int32, %Int32* %"$a_0", align 4
  call void @"$create_event_63"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_134", %Int32 %"$$a_0_135"), !dbg !16
  br label %"$matchsucc_119"

"$empty_default_122":                             ; preds = %"$have_gas_117"
  br label %"$matchsucc_119"

"$matchsucc_119":                                 ; preds = %"$have_gas_132", %"$empty_default_122"
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$matchsucc_119"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$matchsucc_119"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %"$create_event__sender_141" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_141", align 1
  %"$a_142" = load %Int32, %Int32* %a, align 4
  call void @"$create_event_63"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_141", %Int32 %"$a_142"), !dbg !19
  ret void
}

define void @t1(i8* %0) !dbg !20 {
entry:
  %"$_amount_144" = getelementptr i8, i8* %0, i32 0
  %"$_amount_145" = bitcast i8* %"$_amount_144" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_145", align 8
  %"$_sender_146" = getelementptr i8, i8* %0, i32 16
  %"$_sender_147" = bitcast i8* %"$_sender_146" to [20 x i8]*
  %"$p_148" = getelementptr i8, i8* %0, i32 36
  %"$p_149" = bitcast i8* %"$p_148" to %"TName_Pair_List_(Int32)_Int32"**
  %p = load %"TName_Pair_List_(Int32)_Int32"*, %"TName_Pair_List_(Int32)_Int32"** %"$p_149", align 8
  call void @"$t1_102"(%Uint128 %_amount, [20 x i8]* %"$_sender_147", %"TName_Pair_List_(Int32)_Int32"* %p), !dbg !21
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "match_assign2.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = distinct !DISubprogram(name: "create_event", linkageName: "create_event", scope: !2, file: !2, line: 5, type: !6, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 6, column: 7, scope: !10)
!12 = !DILocation(line: 7, column: 3, scope: !10)
!13 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !6, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 12, column: 7, scope: !13)
!15 = !DILocation(line: 13, column: 3, scope: !13)
!16 = !DILocation(line: 15, column: 5, scope: !17)
!17 = distinct !DILexicalBlock(scope: !18, file: !2, line: 14, column: 5)
!18 = distinct !DILexicalBlock(scope: !13, file: !2, line: 13, column: 3)
!19 = !DILocation(line: 18, column: 3, scope: !13)
!20 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !6, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 10, column: 12, scope: !20)
