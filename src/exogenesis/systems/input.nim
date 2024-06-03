import exogenesis/systems

type
    System* = object of TSystem

proc init*(self: System): bool =
  echo "Initializing input"
  true

proc check*(self: System): bool =
  echo "Checking input health..."
  echo "Input is healthy!"
  true

proc close*(self: System): bool =
  echo "Closing input"
  true
