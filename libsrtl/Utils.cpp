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

#include <jsoncpp/json/reader.h>
#include <jsoncpp/json/value.h>
#include <memory>

#include "ScillaVM/Errors.h"

namespace ScillaVM {

Json::Value parseJSONString(const std::string &JS) {
  Json::Value Ret;
  Json::CharReaderBuilder ReadBuilder;
  std::unique_ptr<Json::CharReader> Reader(ReadBuilder.newCharReader());
  std::string Error;
  try {
    Reader->parse(JS.c_str(), JS.c_str() + JS.length(), &Ret, &Error);
  } catch (const std::exception &e) {
    CREATE_ERROR(std::string(e.what()) + ": " + Error);
  }

  return Ret;
}
} // namespace ScillaVM
