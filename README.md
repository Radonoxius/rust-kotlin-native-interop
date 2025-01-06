# Rust Interop with Kotlin/Native

This is a simple Rust interop with Kotlin Native.

# Prerequisites
Rust compiler version 1.83(stable), 
Kotlin Native compiler 2.1.0. 
(This is what I used. The versions should not be a problem.)

You may want to edit libc version in Cargo.toml and the file paths in the def files
and shell script.

The native library (*.so) should be moved to /usr/lib for the program to run on linux.

Sorry for not using Gradle.
Thank you.
