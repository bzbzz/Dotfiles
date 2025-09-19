return {
	model = "claude-3.7-sonnet",
	temperature = 0.1, -- Lower = focused, higher = creative
	sticky = { "#buffers:visible" },

	chat_autocomplete = true,

	mappings = {
		complete = {},
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
		assistant = "Cop",
		tool = "🔧 Tool",
	},

	separator = "━━",
	auto_fold = true, -- Automatically folds non-assistant messages
}
