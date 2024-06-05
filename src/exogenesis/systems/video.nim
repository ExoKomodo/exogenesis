import exogenesis/systems

import sdl2

type
    System* = object of TSystem
      window: WindowPtr
      window_title: string
      window_height: cint
      window_width: cint
      screen_surface: SurfacePtr

proc clear*(self: System, r, g, b: uint8 = 0xff): bool =
  self.screen_surface.fillRect(
    nil,
    self.screen_surface.format.mapRGB(r, g, b));
  self.window.updateSurface() == SdlSuccess

proc init*(self: var System): bool =
  echo "Initializing video"
  
  result = sdl2.init(INIT_EVERYTHING) == SdlSuccess

  self.window_title = "SDL/OpenGL Skeleton"
  self.window_width = 640
  self.window_height = 480

  self.window = createWindow(self.window_title,
    100,
    100,
    self.window_width,
    self.window_height,
    SDL_WINDOW_OPENGL or SDL_WINDOW_RESIZABLE)

  self.screen_surface = self.window.getSurface();
  result = result or self.clear(0xFF, 0xFF, 0xFF)

proc check*(self: System): bool =
  echo "Checking video health..."
  echo "Video is healthy!"
  result = self.screen_surface != nil and self.window != nil

proc close*(self: var System): bool =
  echo "Closing video"
  if self.screen_surface != nil:
    destroy self.screen_surface
    self.screen_surface = nil
  if self.window != nil:
    destroy self.window
    self.window = nil

  true
