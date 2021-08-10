/*
 * Copyright (C) 2019 Zilliqa
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

#include <functional>
#include <memory>
#include <optional>
#include <string>
#include <vector>

namespace ScillaRTL {

class ScillaExecImpl;
namespace ScillaTypes {
struct Typ;
}

using ByteVec = std::vector<uint8_t>;

const auto Schnorr_Pubkey_Len = 33;
const auto Schnorr_Signature_Len = 64;

const auto Ecdsa_Pubkey_Len = 33;
const auto Ecdsa_Signature_Len = 64;
const auto Ecdsa_Pubkey_Uncompressed_Len = 65;

const auto Zilliqa_Address_Len = 20;

const uint64_t GasScaleFactor = 8;

// Fetch the type of a remote field, if it exists.
std::optional<std::string> remoteFieldType(const ScillaExecImpl *SJ,
                                           const std::string &Addr,
                                           const std::string &FName);

// Is the given address a contract?
bool isContrAddr(const ScillaExecImpl *SJ, const std::string &Addr);
// Check if the given address has balance > 0 || nonce > 0
bool isUserAddr(const ScillaExecImpl *SJ, const std::string &Addr);

// Check that @Val is of type @Target. Asserts valueCompatible(Target, ParsedT).
// @ParsedT is the type specified in the JSON from which @Val is parsed.
// The dynamic typecheck itself is essentially ensuring that Addresses conform.
// Gas is charged only when specified.
bool dynamicTypecheck(const ScillaExecImpl *SJ, const ScillaTypes::Typ *Target,
                      const ScillaTypes::Typ *ParsedT, const void *Val,
                      bool ChargeGas);

} // namespace ScillaRTL
