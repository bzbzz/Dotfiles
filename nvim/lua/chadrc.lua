-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "gruvbox",
	integrations = { "render-markdown" },
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.nvdash = {
	load_on_startup = true,
}

M.term = {
	sizes = { vsp = 0.4 },
	-- float = {
	--     row = 0.25, col = 0.2,
	--     width = 0.6, height = 0.5,
	-- }
}

M.ui = {
	telescope = { style = "bordered" },
	statusline = {
		theme = "minimal",
		separator_style = "round",
		order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
		modules = {},
	},
}

M.cheatsheet = {
	theme = "simple",
}

return M
