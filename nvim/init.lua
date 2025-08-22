vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
        local repo = "https://github.com/folke/lazy.nvim.git"
        vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
        {
                "NvChad/NvChad",
                lazy = false,
                branch = "v2.5",
                import = "nvchad.plugins",
        },

        { import = "plugins" },
}, lazy_config)

-- Fix the top/bottom padding:
vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
  callback = function()
    local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
    if not normal.bg then return end
    io.write(string.format("\027]11;#%06x\027\\", normal.bg))
  end,
})

vim.api.nvim_create_autocmd("UILeave", {
  callback = function() io.write("\027]111\027\\") end,
})

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")
dofile(vim.g.base46_cache .. "render-markdown")

require "options"
require "nvchad.autocmds"
vim.notify = require("notify") -- Make nvim.notify the default notifier
-- requiring my own little add-ons
require("discipline").cowboy() -- based on craftzdog, hjkl bw are limited
require("macroNotify").setup() -- notify when recording macros

vim.schedule(function()
        require "mappings"
end)
