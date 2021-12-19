#! /bin/bash

cargo build --release --target wasm32-unknown-unknown
wasm-bindgen target/wasm32-unknown-unknown/release/Rusty_rogue.wasm --out-dir wasm --no-modules --no-typescript
basic-http-server
