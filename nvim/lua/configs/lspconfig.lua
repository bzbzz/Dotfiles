-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = { "rust_analyzer", "vtsls", "cssls", "clangd",  "pyright", "jdtls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
