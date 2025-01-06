#! /bin/sh

#Run this shell script in the parent folder!

mkdir build

cd src/native
echo ---Building native libraries---
cargo b --release

cd target/release
mv *.so ../../../../build/

cd ../../defs
mv *.def ../../../build/
cd ../../../build
echo ---Generating kotlin bindings---
cinterop -def native.def -o native

mv *.def ../src/native/defs

cd ../src/kotlin
echo ---Compiling kotlin---
kotlinc-native *.kt -o App -l /your_path/rust-kotlin-native-interop/build/native.klib

mv App.kexe ../../build

cd ../../build/
chmod +x App.kexe

cd ../../
