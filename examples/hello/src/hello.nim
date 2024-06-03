import exogenesis/systems/prelude

when isMainModule:
  var done = false

  let audio_system = audio.System()
  let video_system = video.System()
  let input_system = input.System()
  assert audio_system.init()
  assert video_system.init()
  assert input_system.init()

  assert audio_system.check()
  assert video_system.check()
  assert input_system.check()

  while not done:
    done = true

  discard input_system.close()
  discard video_system.close()
  discard audio_system.close()
