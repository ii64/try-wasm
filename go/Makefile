default: build

build: build_go build_tinygo

build_go:
	GOOS=js GOARCH=wasm go build -o main.wasm main.go
	wasm-gc main.wasm main.stripped.wasm
	wasm-opt -O3 -o main.o3.wasm main.wasm
	wasm-gc main.o3.wasm main.o3.stripped.wasm

build_tinygo:
	tinygo build -o main.min.wasm -target wasm ./main.go
	wasm-gc main.min.wasm main.min.stripped.wasm
	wasm-opt -O3 -o main.min.o3.wasm main.min.wasm
	wasm-gc main.min.o3.wasm main.min.o3.stripped.wasm

clean: clean_go clean_tinygo

clean_go:
	rm main.wasm main.stripped.wasm main.o3.wasm main.o3.stripped.wasm

clean_tinygo:
	rm main.min.wasm main.min.stripped.wasm main.min.o3.wasm main.min.o3.stripped.wasm