type
  Submodule* = object
    name*: string

proc initSubmodule*(): Submodule =
  Submodule(name: "Anonymous")
