return {
	model = "claude-sonnet-4",
	temperature = 0.1, -- Lower = focused, higher = creative
	sticky = { "#buffers" },


	mappings = {
		complete = {
			normal = "<C-q>",
			insert = "<C-q>",
        },
		reset = {
			normal = "<C-a>",
			insert = "<C-a>",
		},
	},

	-- Window & Appearance
	window = {
		layout = "vertical", -- vertical horizontal float
		width = 0.5, -- 50% of screen width
	},

	headers = {
		user = "bzbzz",
		assistant = "cop", -- Icon of copilot
		tool = "🔧 Tool",
	},

	separator = "━━",
	auto_fold = true, -- Automatically folds non-assistant messages
}
