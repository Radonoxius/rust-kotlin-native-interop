# Rust Interop with Kotlin/Native

This is a simple Rust interop with Kotlin/Native project.

# Prerequisites
Rust compiler version 1.83 (stable),
 
Kotlin Native compiler 2.1.0 and

Linux. 

(This is what I used. The versions should not be a problem)

# Running the executable

You have to edit libc version in Cargo.toml and the file paths in the def file
and shell script.

The native library (*.so) should be moved manually to the system folders of your distro for the program to run.

The shell script does the compiling part for you. Just run the following on your terminal:

```
./build.sh
```

The script will create a build directory with all the compiled items.

Finally, run the app with this:

```
./App.kexe
```

Sorry for not using Gradle!
