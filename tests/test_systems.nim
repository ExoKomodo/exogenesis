import unittest

import exogenesis/systems/prelude

test "Audio system initialization":
  let audio_system = audio.System()
  check audio_system.init()
  check audio_system.check()
  check audio_system.close()

test "Video system initialization":
  let video_system = video.System()
  check video_system.init()
  check video_system.check()
  check video_system.close()

test "Input system initialization":
  let input_system = input.System()
  check input_system.init()
  check input_system.check()
  check input_system.close()

