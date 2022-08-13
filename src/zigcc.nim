import os, strutils
discard execShellCmd "zig cc " & commandLineParams().join(" ")