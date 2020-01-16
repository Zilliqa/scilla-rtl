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

template <unsigned Bits>
using BoostInt =
    boost::multiprecision::number<boost::multiprecision::cpp_int_backend<
        Bits, Bits, boost::multiprecision::signed_magnitude,
        boost::multiprecision::checked, void>>;

template <unsigned Bits>
using BoostUint =
    boost::multiprecision::number<boost::multiprecision::cpp_int_backend<
        Bits, Bits, boost::multiprecision::unsigned_magnitude,
        boost::multiprecision::checked, void>>;

// Create boost::multiprecision signed integer from raw bytes
template <unsigned Bits> BoostInt<Bits> rawToBoostInt(const void *V);
// Create boost::multiprecision unsigned integer from raw bytes
template <unsigned Bits> BoostInt<Bits> rawToBoostUint(const void *V);

// Stringify Scilla value @V of type @T
std::string toString(const ScillaTypes::Typ *T, void *V);

} // namespace ScillaValues
} // namespace ScillaVM
