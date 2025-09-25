require "nvchad.options"

-- add yours here!
vim.opt.tabstop = 4 -- number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4 -- number of spaces to use for each step of (auto)indent
vim.opt.completeopt = { "menu", "menuone", "noselect", "noinsert", "popup" } -- for copilot, doesn't work though...
vim.opt.cmdheight = 0 -- height of command line
vim.opt.relativenumber = true -- show relative line numbers
vim.g.copilot_no_tab_map = true -- disable TAB to accept copilot suggestions, mapped it to C-Y

vim.opt_local.conceallevel = 1 -- For Obsidian disabled checkboxes

-- Blinking caret in terminal
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175,t:ver25-blinkwait700-blinkoff400-blinkon250"

local o = vim.o
o.clipboard = "unnamedplus"
-- o.cursorlineopt ='both' -- to enable cursorline!
