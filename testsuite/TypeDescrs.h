#include "../libsrtl/ScillaTypes.h"

namespace TypeDescrs {

using namespace ScillaVM::ScillaTypes;

// IntX types
extern Typ Int32_typ;
extern Typ Int64_typ;
extern Typ Int128_typ;
extern Typ Int256_typ;

// UintX types
extern Typ Uint32_typ;
extern Typ Uint64_typ;
extern Typ Uint128_typ;
extern Typ Uint256_typ;

// String type
extern Typ String_typ;
extern Typ BNum_typ;

// ADTs
extern Typ List_int32_typ;
extern Typ List_int64_typ;
extern Typ Pair_list_int32_int64_typ;
extern Typ Pair_int32_list_int64_typ;

// Map Int32 String, Map Int64 (Pair Int32 (List Int64))
// and Map Int32 (Map Int32 String)
extern Typ Map_int32_string_typ;
extern Typ Map_int64_pair_int32_list_int64_typ;
extern Typ Map_int32_map_int32_string_typ;

extern Typ ByStr20_typ;
extern Typ ByStr_typ;

extern Typ ByStr20_with_1_field_Typ, ByStr20_with_2_fields_Typ;

extern const Typ *AllTyDescrs[];
extern size_t NTyDescrs;
} // namespace TypeDescrs