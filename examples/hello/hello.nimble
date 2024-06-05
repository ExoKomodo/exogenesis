# Package

version       = "0.1.0"
author        = "James Orson"
description   = "Simplest example"
license       = "MIT"
srcDir        = "src"
bin           = @["hello"]


# Dependencies

requires "nim >= 2.0.4"

requires "exogenesis"

task exo_build, "[hello] Build":
  exec "nimble -d:nimpretty -d:nimDebugDlOpen build -Y"

task exo_debug, "[hello] Debug":
  exec "nimble -g --debugger:native -d:nimpretty build -Y"

task exo_run, "[hello] Run":
  exec "nimble -d:nimpretty run -Y"