installs

- `zigcc`
- `zigcpp`

to your nimble dir.
Both are wrappers for calling zig:

- `zig cc`
- `zig c++`

also see this https://stackoverflow.com/questions/73345643/how-to-use-the-zig-compiler-in-order-to-compile-nim-code

# windows

```
nim c --cc:clang --clang.exe="zigcc.cmd" --clang.linkerexe="zigcc.cmd" --forceBuild:on --opt:speed hello.nim
```

# linux and rest

```
nim c --cc:clang --clang.exe="zigcc" --clang.linkerexe="zigcc" --forceBuild:on --opt:speed hello.nim
```