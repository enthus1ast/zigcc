import os, osproc
export os, osproc

template callZig*(zigCmd: string) =
  # Set the zig compiler to call and append args
  var args = @[zigCmd]
  args &= commandLineParams()
  # Start process
  let process = startProcess(
    "zig", 
    args = args, 
    options = {poStdErrToStdOut, poUsePath, poParentStreams}
  )
  # Get the code so we can carry across the exit code
  let exitCode = process.waitForExit()
  # Clean up
  close process
  quit exitCode
