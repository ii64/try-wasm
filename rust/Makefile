PREFIX := target/wasm32-unknown-unknown/release

default: build

setup:
	rustup target add wasm32-unknown-unknown
	cargo install wasm-gc

build:
	cargo build --target wasm32-unknown-unknown --release
	wasm-gc $(PREFIX)/main.wasm $(PREFIX)/main.stripped.wasm
	wasm-opt -O3 -o $(PREFIX)/main.o3.wasm $(PREFIX)/main.wasm
	wasm-gc $(PREFIX)/main.o3.wasm $(PREFIX)/main.o3.stripped.wasm

clean:
	cargo clean