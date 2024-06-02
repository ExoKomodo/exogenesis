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

task build_hello, "[hello] Build":
  exec "nimble -d:nimpretty build -Y"

task debug_hello, "[hello] Debug":
  exec "nimble -g --debugger:native -d:nimpretty build -Y"

task run_hello, "[hello] Run":
  exec "nimble -d:nimpretty run -Y"