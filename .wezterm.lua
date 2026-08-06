-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 12

-- blackhole background image
-- fixed so it doesnt weirdly resize to window
config.background = {
	{
		source = {
			File = "C:\\Users\\yourname\\Desktop\\wezterm-config\\blackhole.png",
		},
		width = "1920px", -- fixed pixel size instead of "100%"
		height = "1080px",
		horizontal_align = "Right",
		-- darken image to make text more visible
		vertical_align = "Middle",
		hsb = { brightness = 0.5, hue = 1.0, saturation = 1.0 },
	},
}
config.colors = {
	foreground = "#e8e6e3", -- soft white, reads clearly on black
	background = "#000000", -- matches the pure black of the image

	cursor_bg = "#ff6b1a",
	cursor_fg = "#000000",
	cursor_border = "#ff6b1a",

	selection_fg = "#000000",
	selection_bg = "#ff8c42",

	scrollbar_thumb = "#3a1f0f",
	split = "#5c2e0e",

	ansi = {
		"#000000", -- black
		"#c1440e", -- red -> deep ember orange
		"#2e8b57", -- green (kept legible, not orange-clashing)
		"#d4a017", -- yellow -> amber
		"#3b6ea5", -- blue (cool contrast so it doesn't vanish into the orange)
		"#a05fb4", -- magenta
		"#3aa6a0", -- cyan (cool accent, pops against warm image)
		"#e8e6e3", -- white/silver
	},
	brights = {
		"#5c3a2e",
		"#ff5733", -- bright red -> hot orange
		"#3ddc84",
		"#ffb800", -- bright yellow -> gold
		"#5a9bd4",
		"#c77dff",
		"#5fd4ce",
		"#ffffff",
	},
}

config.window_background_opacity = 1

-- Finally, return the configuration to wezterm:
return config
