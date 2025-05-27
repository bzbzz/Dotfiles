return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
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

    {
        "prettier/vim-prettier",
        cmd = "Prettier",
    },

    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            {"github/copilot.vim"},
            {"nvim-lua/plenary.nvim", branch = "master" },
        },
        opts = {
            mappings = {
                complete = {
                    insert = '<Tab>',
                },
                reset = {
                    normal = '<C-r>',
                    insert = '<C-r>',
                }
            },
            -- context = "buffer", -- This enables the buffer as context for every request
            context = "buffers", -- This enables all buffers as context for every request
            -- context = "files", -- This enables all files as context for every request
            model = 'claude-3.7-sonnet',
            chat_autocomplete = true,
        },

        cmd = "CopilotChat",
    },

    {
        "sphamba/smear-cursor.nvim",
        event = "VimEnter",
        opts = {},
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
