type
  TSystem* = object of RootObj

template init*(self: TSystem): bool =
  {.error: "abstract proc missing concrete implementation"}

template check*(self: TSystem): bool =
  {.error: "abstract proc missing concrete implementation"}

template close*(self: TSystem): bool =
  {.error: "abstract proc missing concrete implementation"}
