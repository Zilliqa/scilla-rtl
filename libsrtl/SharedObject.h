/*
 * Copyright (C) 2021 Zilliqa
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

#include <dlfcn.h>

#include <ScillaVM/Errors.h>

namespace ScillaVM {

class SharedObject {
  void *Handle;

public:
  SharedObject(const std::string &ObjFile) {
    Handle = dlopen(ObjFile.c_str(), RTLD_NOW);
    if (!Handle) {
      CREATE_ERROR(dlerror());
    }
  }
  ~SharedObject() { dlclose(Handle); }

  void *getAddressFor(const std::string &Name) const {
    auto Ptr = dlsym(Handle, Name.c_str());
    if (!Ptr) {
      CREATE_ERROR(dlerror());
    }
    return Ptr;
  }
};
} // namespace ScillaVM