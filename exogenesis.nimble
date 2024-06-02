# Package

version       = "0.1.0"
author        = "James Orson and Nathan Barlow"
description   = "Game engine"
license       = "AGPL-3.0-or-later"
srcDir        = "src"


# Dependencies

requires "nim >= 2.0.4"

task genDoc, "Generate documentation":
  exec "nimble doc --project --outdir:htmldocs --index:on ./src/exogenesis.nim --git.url:https://github.com/exokomodo/exogenesis --git.commit:main --git.devel:main"