return {
	{
		"bjarneo/aether.nvim",
		branch = "v3",
		name = "aether",
		priority = 1000,
		opts = {
			colors = {
				bg = "#fafafa",
				dark_bg = "#bcbcbc",
				darker_bg = "#7d7d7d",
				lighter_bg = "#fbfbfb",

				fg = "#212121",
				dark_fg = "#191919",
				light_fg = "#424242",
				bright_fg = "#595959",
				muted = "#757575",

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
				selection = "#bcbcbc",
				selection_foreground = "#212121",
				selection_background = "#fbfbfb",
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
