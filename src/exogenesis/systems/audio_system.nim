import exogenesis/systems

type
    AudioSystem* = object of System

proc init(self: AudioSystem): bool =
  true
