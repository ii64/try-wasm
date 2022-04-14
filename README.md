# WASM

Comparing emcc, go, tinygo, rust wasm output.

```bash
make clean
make
make view
```

| size | lang | file |
| - | - | - |
| 12288   | c | main.o3.stripped.wasm |
| 12288   | c | main.o3.wasm |
| 12288   | c | main.stripped.wasm |
| 12288   | c | main.wasm |
| 12288   | go | main.min.o3.stripped.wasm |
| 49152   | go | main.min.o3.wasm |
| 16384   | go | main.min.stripped.wasm |
| 57344   | go | main.min.wasm |
| 1187840 | go | main.o3.stripped.wasm |
| 1187840 | go | main.o3.wasm |
| 1249280 | go | main.stripped.wasm |
| 1249280 | go | main.wasm |
| 167936  | rust | target/wasm32-unknown-unknown/release/deps/main-6da5e0908c8a7541.wasm |
| 20480   | rust | target/wasm32-unknown-unknown/release/main.o3.stripped.wasm |
| 143360  | rust | target/wasm32-unknown-unknown/release/main.o3.wasm |
| 28672   | rust | target/wasm32-unknown-unknown/release/main.stripped.wasm |

```
> tinygo version
tinygo version 0.23.0-dev-2dc46a85 linux/amd64 (using go version go1.18.1 and LLVM version 13.0.0)
> go version
go version go1.18.1 linux/amd64
> rustc --version
rustc 1.59.0 (9d1b2106e 2022-02-23)
> emcc --version
emcc (Emscripten gcc/clang-like replacement + linker emulating GNU ld) 3.1.8 (3ff7eff373d31d8c0179895165462019221f192e)
Copyright (C) 2014 the Emscripten authors (see AUTHORS.txt)
This is free and open source software under the MIT license.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```