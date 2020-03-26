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
extern Typ Map_int32_string_typ;
extern Typ Map_int64_pair_int32_list_int64_typ;

extern const Typ *AllTyDescrs[];
extern size_t NTyDescrs;
} // namespace TypeDescrs