return {
	{
		"bjarneo/aether.nvim",
		branch = "v3",
		name = "aether",
		priority = 1000,
		opts = {
			colors = {
				-- Background ramp: bg is the page, dark_bg/darker_bg are
				-- panels (slightly off-white), lighter_bg is a visible
				-- highlight tint used for cursorline / fold / popup-sel.
				bg = "#fafafa",
				dark_bg = "#f0f0f0",
				darker_bg = "#e8e8e8",
				lighter_bg = "#ececec",

				-- Foreground ramp goes from main text downward in saturation:
				-- fg (main) -> light_fg -> bright_fg -> dark_fg (dimmer secondary)
				-- -> muted (comments / unobtrusive UI text).
				fg = "#212121",
				light_fg = "#2f2f2f",
				bright_fg = "#000000",
				dark_fg = "#6e6e6e",
				muted = "#9a9a9a",

				red = "#c900c4",
				yellow = "#026fde",
				orange = "#d126cd",
				green = "#424242",
				cyan = "#0c67de",
				blue = "#3264eb",
				purple = "#8a4ad7",
				brown = "#7d177b",

				bright_red = "#f930fb",
				bright_yellow = "#358fff",
				bright_green = "#358fff",
				bright_cyan = "#3986ff",
				bright_blue = "#5482ff",
				bright_purple = "#b363ff",

				accent = "#3264eb",
				cursor = "#212121",
				foreground = "#212121",
				background = "#fafafa",
				selection = "#c8d4ff",
				selection_foreground = "#212121",
				selection_background = "#c8d4ff",
			},
		},
		-- set up hot reload
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
