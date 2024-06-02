import exogenesis/systems

type
    InputSystem* = object of System

proc init(self: InputSystem): bool =
  true
