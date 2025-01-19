local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",
	font_size = 13,
	default_cursor_style = "BlinkingBar",
	font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Bold" }),
	use_fancy_tab_bar = false,
	color_scheme = "Tokyo Night Storm (Gogh)",
	macos_window_background_blur = 50,
	hide_tab_bar_if_only_one_tab = true,
	text_background_opacity = 0.95,
	background = {
		{
			source = {
				Color = "#24283A",
			},
			width = "100%",
			height = "100%",
			opacity = 0.5,
		},
	},
	adjust_window_size_when_changing_font_size = false,
	window_padding = {
		left = 15,
		right = 15,
		top = 10,
		bottom = 10,
	},
	window_frame = {
		border_bottom_height = "0.1cell",
	},
	initial_rows = 50,
	initial_cols = 100,
}

return config
