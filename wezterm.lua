local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.colors = {}
-- config.colors.background = '#111111'
config.colors.background = '#181818'

config.enable_tab_bar = false
config.enable_scroll_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.font = wezterm.font 'Iosevka'
config.font_size = 14.0

-- The art is a bit too bright and colorful to be useful as a backdrop
-- for text, so we're going to dim it down to 10% of its normal brightness
local dimmer = { brightness = 0.1 }

local file_path = '/home/shoka/Documents/repos/anime/butterfly.jpg'
local file_path = '/home/shoka/Documents/repos/anime/crown-blackhole.png'
local file_path = '/home/shoka/Documents/repos/anime/blue_lookback.png'
local file_path = '/home/shoka/Documents/repos/anime/cyber_girl.jpg'
--
-- config.background = {
--   -- This is the deepest/back-most layer. It will be rendered first
--   {
--     source = {
--       File = file_path,
--     },
--     -- The texture tiles vertically but not horizontally.
--     -- When we repeat it, mirror it so that it appears "more seamless".
--     -- An alternative to this is to set `width = "100%"` and have
--     -- it stretch across the display
--     repeat_x = 'Mirror',
--     hsb = dimmer,
--     -- When the viewport scrolls, move this layer 10% of the number of
--     -- pixels moved by the main viewport. This makes it appear to be
--     -- further behind the text.
--
--     -- attachment - controls whether the layer is fixed to the viewport or moves as it scrolls. Can be:
--     -- "Fixed" (the default) to not move as the window scrolls,
--     -- "Scroll" to scroll 1:1 with the number of pixels scrolled in the viewport,
--     -- {Parallax=0.1} to scroll 1:10 with the number of pixels scrolled in the viewport.
--     -- attachment = { Parallax = 0.1 },
--   },
-- }

return config
