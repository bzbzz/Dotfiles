local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		c = { "clang-format" },
		css = { "prettier" },
		html = { "prettier" },
		ts = { "prettier" },
		tsx = { "prettier" },
		js = { "prettier" },
		jsx = { "prettier" },
        json = { "prettier" },
		-- php = { "php-cs-fixer" },
		-- python = { "black" },
	},

	-- format_on_save = {
	--   -- These options will be passed to conform.format()
	--   timeout_ms = 500,
	--   lsp_fallback = true,
	-- },
}

return options
