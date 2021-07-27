FROM rust:1.53-slim-bullseye as builder

WORKDIR /app

COPY . .

RUN rustup target add x86_64-unknown-linux-musl \
    && cargo build --release --target x86_64-unknown-linux-musl

FROM scratch

WORKDIR /app

COPY --from=builder /app/target/x86_64-unknown-linux-musl/release/hello /app/hello_world

RUN ["./hello_world"]
