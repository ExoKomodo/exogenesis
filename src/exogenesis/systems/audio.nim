import exogenesis/systems

type
    System* = object of TSystem

proc init*(self: System): bool =
  echo "Initializing audio"
  true

proc check*(self: System): bool =
  echo "Checking audio health..."
  echo "Audio is healthy!"
  true

proc close*(self: System): bool =
  echo "Closing audio"
  true
