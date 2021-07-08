# https://doc.rust-lang.org/edition-guide/rust-2018/platform-and-target-support/musl-support-for-fully-static-binaries.html
# rustup target add x86_64-unknown-linux-musl
cargo build --release --target x86_64-unknown-linux-musl

# build docker image
docker build -t dyam/rust_hello:latest .
