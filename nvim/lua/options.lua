require "nvchad.options"

-- add yours here!
vim.opt.tabstop = 4 -- number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4 -- number of spaces to use for each step of (auto)indent
vim.opt.completeopt = { "menu", "menuone", "noselect", "noinsert", "popup" } -- for copilot, doesn't work though...
vim.opt.cmdheight = 0 -- height of command line
vim.opt.relativenumber = true -- show relative line numbers
-- set clipboard+=unnamedplus
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
