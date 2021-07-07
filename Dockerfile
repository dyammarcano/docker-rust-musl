FROM scratch
COPY target/x86_64-unknown-linux-musl/release/hello ./hello_world
RUN ["./hello_world"]
