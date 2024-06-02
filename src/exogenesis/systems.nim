type
  System* = object of RootObj

template init(self: System): bool =
  {.error: "abstract proc missing concrete implementation"}
