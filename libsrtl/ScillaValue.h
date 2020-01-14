/*
 * Copyright (C) 2020 Zilliqa
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

#pragma once

#include <string>

#include <boost/multiprecision/cpp_int.hpp>

#include "ScillaTypes.h"

namespace ScillaVM {
namespace ScillaValues {

// Create boost::multiprecision::i128 from raw bytes
boost::multiprecision::int128_t rawToBoost_int128(const void *V);
// Create boost::multiprecision::checked_int128 from raw bytes
boost::multiprecision::int128_t rawToBoost_int128_safe(const void *V);
// Create boost::multiprecision::int128 from raw bytes
boost::multiprecision::uint128_t rawToBoost_uint128(const void *V);
// Create boost::multiprecision::checked_int128 from raw bytes
boost::multiprecision::uint128_t rawToBoost_uint128_safe(const void *V);
// Create boost::multiprecision::int128 from raw bytes
boost::multiprecision::int256_t rawToBoost_int256(const void *V);
// Create boost::multiprecision::checked_int256 from raw bytes
boost::multiprecision::int256_t rawToBoost_int256_safe(const void *V);
// Create boost::multiprecision::int256 from raw bytes
boost::multiprecision::uint256_t rawToBoost_uint256(const void *V);
// Create boost::multiprecision::checked_int256 from raw bytes
boost::multiprecision::uint256_t rawToBoost_uint256_safe(const void *V);

// Stringify Scilla value @V with type @T
std::string toString(const ScillaTypes::Typ *T, void *V);

} // namespace ScillaValues
} // namespace ScillaVM
