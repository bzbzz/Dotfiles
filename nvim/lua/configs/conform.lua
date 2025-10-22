local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		c = { "clang-format" },
		css = { "prettier" },
		html = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
        json = { "prettier" },
		-- php = { "php-cs-fixer" },
		-- python = { "black" },
	},

	format_on_save = {
	  -- These options will be passed to conform.format()
	  timeout_ms = 500,
	  lsp_fallback = false,
	},
}

return options
