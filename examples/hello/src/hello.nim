import exogenesis/systems/prelude

import sdl2

when isMainModule:
  var
    done = false
    audio_system = audio.System()
    video_system = video.System()
    input_system = input.System()
  assert audio_system.init()
  assert video_system.init()
  assert input_system.init()

  assert audio_system.check()
  assert video_system.check()
  assert input_system.check()

  while not done:
    var event = sdl2.defaultEvent
    while pollEvent(event):
      if event.kind == QuitEvent:
        done = true
    discard video_system.clear()

  discard input_system.close()
  discard video_system.close()
  discard audio_system.close()
