# Package

version       = "3.0.0"
author        = "David Krause"
description   = "wraps `zig cc` to be able to be called by the nim compiler"
license       = "MIT"
srcDir        = "src"
bin           = @["zigcc", "zigcpp"]


# Dependencies

requires "nim >= 1.6.4"
