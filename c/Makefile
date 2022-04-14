default: build

build:
	emcc -o main.js main.c
	wasm-gc main.wasm main.stripped.wasm
	wasm-opt -O3 -o main.o3.wasm main.wasm
	wasm-gc main.o3.wasm main.o3.stripped.wasm

clean:
	rm main.js main.wasm main.stripped.wasm main.o3.wasm main.o3.stripped.wasm