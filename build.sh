#!/bin/sh

#Run this shell script in the parent folder!

mkdir build

cd src/native
echo ---Building native libraries---
cargo b --release

cd target/release
mv libnative.so ../../../../build/

cd ../../defs
mv native.def ../../../build/
cd ../../../build
echo ---Generating kotlin bindings---
cinterop -def native.def -o native

mv native.def ../src/native/defs

cd ../src/kotlin
echo ---Compiling kotlin---
kotlinc-native App.kt -o App -l /your_path/rust-kotlin-native-interop/build/native.klib -linker-option -rpath=/your_path/rust-kotlin-native-interop/build

mv App.kexe ../../build

cd ../../build/
chmod +x App.kexe

cd ../../
