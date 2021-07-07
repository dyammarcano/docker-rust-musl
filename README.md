### Testing docker scratch image to run rust app with MUSL support for fully static binaries.


By default, Rust will statically link all Rust code. However, if you use the standard library, it will dynamically link to the system's libc implementation.

If you'd like a 100% static binary, the MUSL libc can be used on Linux.

## Installing MUSL support
To add support for MUSL, you need to choose the correct target. The forge has a full list of targets supported, with a number of ones using musl.

If you're not sure what you want, it's probably x86_64-unknown-linux-musl, for 64-bit Linux. We'll be using this target in this guide, but the instructions remain the same for other targets, just change the name wherever we mention the target.

To get support for this target, you use rustup:


$ rustup target add x86_64-unknown-linux-musl
This will install support for the default toolchain; to install for other toolchains, add the --toolchain flag. For example:


$ rustup target add x86_64-unknown-linux-musl --toolchain=nightly
Building with MUSL
To use this new target, pass the --target flag to Cargo:


$ cargo build --target x86_64-unknown-linux-musl
The binary produced will now be built with MUSL!
