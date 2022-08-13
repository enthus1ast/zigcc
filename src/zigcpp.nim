import os, strutils
discard execShellCmd "zig c++ " & commandLineParams().join(" ")