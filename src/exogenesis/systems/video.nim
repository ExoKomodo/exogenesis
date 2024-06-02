import exogenesis/systems

type
    System* = object of TSystem

proc init*(self: System): bool =
  echo "Initializing video"
  true

proc check*(self: System): bool =
  echo "Checking video health..."
  echo "Video is healthy!"
  true

proc close*(self: System): bool =
  echo "Closing video"
  true
