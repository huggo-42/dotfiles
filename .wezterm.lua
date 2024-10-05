local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.colors = {}
config.colors.background = '#181818'

config.enable_tab_bar = false
config.enable_scroll_bar = false
config.window_decorations = "TITLE"
config.color_scheme = 'Abernathy' -- 'Kanagawa (Gogh)'

config.font = wezterm.font_with_fallback { 'Iosevka' }

config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'

config.colors.cursor_bg = 'yellow'
config.colors.cursor_fg = 'black'

local dimmer = { brightness = 0.1 }

-- local file_path = '/home/nihil/personal/anime/crown-blackhole.png'
-- local file_path = '/home/nihil/personal/anime/cyber_girl.jpg'
-- local file_path = '/home/nihil/personal/anime/dead_eyes.jpg'
-- local file_path = '/home/nihil/personal/anime/girl-with-gu.png'
-- local file_path = '/home/nihil/personal/anime/moon-upside.jpg'
-- local file_path = '/home/nihil/personal/anime/green-brown-yellow.jpg'
-- local file_path = '/home/nihil/personal/anime/rose-pine-sword.jpg'
-- local file_path = '/home/nihil/personal/anime/zelda-white.bmp'
-- local file_path = '/home/nihil/personal/anime/blue_lookback.png'
-- local file_path = '/home/nihil/Pictures/the_black_hole.png'
-- local file_path = '/home/nihil/personal/anime/blue-chains.png'
local file_path = ''
local file_path = '/home/nihil/personal/anime/white-red-green.jpg'

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.background = {
  {
    source = {
      File = file_path,
    },
    repeat_x = 'Mirror',
    hsb = dimmer,
  },
}

config.keys = {
  {
    key = 'W',
    mods = 'CTRL',
    action = wezterm.action_callback(function(win, pane)
      win:perform_action(
        wezterm.action.SendString("/home/nihil/scripts/fzf_tmux_work.sh\n"),
        pane
      )
    end),
  },
  {
    key = 'P',
    mods = 'CTRL',
    action = wezterm.action_callback(function(win, pane)
      win:perform_action(
        wezterm.action.SendString("/home/nihil/scripts/fzf_tmux_personal.sh\n"),
        pane
      )
    end),
  },
}

return config
