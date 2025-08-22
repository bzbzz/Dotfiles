return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		opts = require("configs.conform"),
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	{
		"ThePrimeagen/vim-be-good",
		cmd = "VimBeGood",
	},

	{
		"github/copilot.vim",
		cmd = "Copilot",
	},

	{
		"junegunn/fzf.vim",
		dependencies = {
			"junegunn/fzf",
		},
		lazy = false,
	},

	-- {
	--     "prettier/vim-prettier",
	--     cmd = "Prettier",
	-- },

	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		opts = {
			mappings = {
				complete = {
					insert = "<Tab>",
				},
				reset = {
					normal = "<C-r>",
					insert = "<C-r>",
				},
			},
			-- context = "buffer", -- This enables the buffer as context for every request
			context = "buffers", -- This enables all buffers as context for every request
			-- context = "files", -- This enables all files as context for every request
			model = "claude-3.7-sonnet",
			chat_autocomplete = true,
		},

		cmd = "CopilotChat",
	},

	{
		"sphamba/smear-cursor.nvim",
		event = "VimEnter",
		opts = {},
	},

	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {
			heading = { sign = false, position = "inline" },
			code = { sign = false },
		},
		lazy = false,
	},

	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
        -- stylua: ignore
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            -- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
	},

	{
		"rcarriga/nvim-notify",
		opts = {},
	},
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>dd",
				"<cmd>Trouble diagnostics toggle focus=true win.type=split <cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>ql",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
	-- {
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	opts = {
	-- 		ensure_installed = {
	-- 			"vim", "lua", "vimdoc",
	--      "html", "css"
	-- 		},
	-- 	},
	-- },
}
