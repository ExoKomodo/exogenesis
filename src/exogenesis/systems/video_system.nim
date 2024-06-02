import exogenesis/systems

type
    VideoSystem* = object of System

proc init(self: VideoSystem): bool =
  true
