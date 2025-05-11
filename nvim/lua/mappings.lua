require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "kk", "<ESC>", { noremap = true, silent = true, desc = "Escape insert mode" }) -- map "kk" to ESC in insert mode
-- map("i", "jj", "<ESC>", { noremap = true, silent = true, desc = "Escape insert mode" }) -- map "jj" to ESC in insert mode
-- map("i", "hh", "<ESC>", { noremap = true, silent = true, desc = "Escape insert mode" }) -- map "hh" to ESC in insert mode
-- map("i", "ll", "<ESC>", { noremap = true, silent = true, desc = "Escape insert mode" }) -- map "ll" to ESC in insert mode
map("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "Scroll down and center" }) -- scroll down and center
map("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "Scroll down and center" }) -- scroll down and center
map("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true }) -- scroll up and center
map("n", "(", "(zz", { noremap = true, silent = true }) -- center when moving to the left
map("n", ")", ")zz", { noremap = true, silent = true }) -- center when moving to the right
map("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true }) -- move line up(n)
map("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true }) -- move line down(n)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true }) -- move line up(v)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true }) -- move line down(v)
map("n", "<A-w>", ":bd!<Cr>", { noremap = true, silent = true }) -- close buffer
map("n", "<leader>co", ":CopilotChat<Cr>", { noremap = true, silent = true }) -- Open Copilot chat
map("n", "<leader>cs", ":Copilot status<Cr>", { noremap = true, silent = true }) -- Show Copilot status / activate
map("n", "<leader>ce", ":Copilot enable<Cr>", { noremap = true, silent = true }) -- Enable Copilot
map("n", "<leader>cd", ":Copilot disable<Cr>", { noremap = true, silent = true }) -- Disable Copilot
map("n", "<leader>gg", ":Ag<Cr>", { noremap = true, silent = true }) -- Search in project with Ag
map("n", "<leader>fm", ":Prettier<Cr>", { noremap = true, silent = true }) -- Format with Prettier
-- Remove arrow keys and echoe "USE HJKL" instead
-- normal mode
map("n", "<Up>", "10<C-w>>", { noremap = true, silent = true }) -- Instead, decrease split's size
map("n", "<Down>", "10<C-w><", { noremap = true, silent = true }) -- Instead, increase split's size
map("n", "<Left>", "<Nop>", { noremap = true, silent = true })
map("n", "<Right>", "<Nop>", { noremap = true, silent = true })
-- visual mode
map("v", "<Up>", "<Nop>", { noremap = true, silent = true })
map("v", "<Down>", "<Nop>", { noremap = true, silent = true })
map("v", "<Left>", "<Nop>", { noremap = true, silent = true })
map("v", "<Right>", "<Nop>", { noremap = true, silent = true })
-- insert mode
map("i", "<Up>", "<Nop>", { noremap = true, silent = true })
map("i", "<Down>", "<Nop>", { noremap = true, silent = true })
map("i", "<Left>", "<Nop>", { noremap = true, silent = true })
map("i", "<Right>", "<Nop>", { noremap = true, silent = true })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("i", "<C-y>", 'copilot#Accept("<CR>")', { silent = true, expr = true, noremap = true, replace_keycodes = false }) -- Accept Copilot suggestion
map("n", "<leader>p", '"0p', { noremap = true, silent = true, desc = "Paste from clipboard" }) -- Paste from clipboard in insert
map("v", "<leader>p", '"0p', { noremap = true, silent = true, desc = "Paste from clipboard" }) -- Paste from clipboard in visual
