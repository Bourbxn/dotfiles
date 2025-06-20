local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font
-- Font Family
config.font = wezterm.font("Hack Nerd Font", { weight = "DemiBold" })
-- Font Size
config.font_size = 16

-- Colorscheme
config.color_scheme = "Catppuccin Mocha"

-- Line height
config.line_height = 1.2

-- Windows
-- Tab Bar
config.enable_tab_bar = false
-- Window Decorations: disable the title bar but enable the resizable border
config.window_decorations = "RESIZE"
-- Window Padding
config.window_padding = {
	left = 10,
	right = 10,
	top = 20,
	bottom = 20,
}
-- Window Background Opacity
config.window_background_opacity = 0.9
-- Window Backgroud Blur: for macos
config.macos_window_background_blur = 20

-- Macos Full Screen
config.native_macos_fullscreen_mode = false

-- Short Keys
-- Toggle Full Screen
config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
