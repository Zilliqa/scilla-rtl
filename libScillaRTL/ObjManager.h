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

#include <vector>

#include <llvm/Support/Allocator.h>

namespace ScillaRTL {

// Allocates, constructs, owns and destructs objects.
// Objects of any type can be managed. It works similar to how
// std::any works. https://stackoverflow.com/a/4989141/2128804
class ObjManager {

  class MemObjBase {
  public:
    virtual ~MemObjBase() = default;
  };
  template <typename T> class MemObj : public MemObjBase {
  public:
    T O;
    MemObj(const T &O) : O(O){};
    MemObj(T &&O) : O(std::move(O)){};
    MemObj() : O(){};
  };
  std::vector<MemObjBase *> Objs;
  // We use a bump pointer allocator rather than "new"
  // because we only free all memory at once.
  llvm::BumpPtrAllocator All;

public:
  template <typename T> T *create() {
    auto P = All.Allocate<MemObj<T>>();
    new (P) MemObj<T>();
    Objs.push_back(P);
    return &P->O;
  }
  // Disable implicit instantiations of the form "auto A = create(10)" which
  // only allocates an integer, while intention might be to allocate 10 bytes.
  // allocBytes() must be used to allocate bytes.
  int *create(const int &) = delete;
  template <typename T> T *create(const T &O) {
    auto P = All.Allocate<MemObj<T>>();
    new (P) MemObj<T>(O);
    Objs.push_back(P);
    return &P->O;
  }
  template <typename T> T *create(T &&O) {
    auto P = All.Allocate<MemObj<T>>();
    new (P) MemObj<T>(std::move(O));
    Objs.push_back(P);
    return &P->O;
  }
  void *allocBytes(size_t N) {
    auto Buf = All.Allocate<uint8_t>(N);
    return reinterpret_cast<void *>(Buf);
  };
  // Destruct and free all objects owned by this manager instance.
  void deleteAll() {
    for (auto *P : Objs) {
      P->~MemObjBase();
    }
    Objs.clear();
    All.Reset();
  }
  ~ObjManager() { deleteAll(); };
};

} // namespace ScillaRTL