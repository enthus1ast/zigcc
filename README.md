installs

- `zigcc`
- `zigcpp`

to your nimble dir.
Both are wrappers for calling zig:

- `zig cc`
- `zig c++`

also see this https://stackoverflow.com/questions/73345643/how-to-use-the-zig-compiler-in-order-to-compile-nim-code

# Installation
```
nimble install zigcc
```

# windows

```
nim c --cc:clang --clang.exe="zigcc.cmd" --clang.linkerexe="zigcc.cmd" --forceBuild:on --opt:speed hello.nim
```

# linux and rest

```
nim c --cc:clang --clang.exe="zigcc" --clang.linkerexe="zigcc" --forceBuild:on --opt:speed hello.nim
```

# cross compilation example

build linux executables from windows:

```
nim c --cc:clang --clang.exe="zigcc.cmd" --clang.linkerexe="zigcc.cmd" --passc:"-target x86_64-linux-gnu" --passl:"-target x86_64-linux-gnu" --forceBuild:on --os:linux --opt:speed  --out:hellolinux hello.nim
```
