local hyper = {"ctrl", "alt", "cmd"}

hs.loadSpoon("MiroWindowsManager")

hs.window.animationDuration = 0

nextScreen = function()
  local currentWindow = hs.window.focusedWindow()
  local nextScreen = currentWindow:screen():previous()
  currentWindow:moveToScreen(nextScreen)
end

spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "up"},
  right = {hyper, "right"},
  down = {hyper, "down"},
  left = {hyper, "left"},
  fullscreen = {hyper, "m"}
})

hs.hotkey.bind(hyper, "n", nextScreen)
