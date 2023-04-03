local map = vim.keymap.set

-- Remove highlight
map("n", "<leader>h", "<cmd>nohlsearch<cr>")

-- Disable arrow key movement
map({ "n", "i", "v" }, "<Down>", "<Nop>")
map({ "n", "i", "v" }, "<Left>", "<Nop>")
map({ "n", "i", "v" }, "<Right>", "<Nop>")
map({ "n", "i", "v" }, "<Up>", "<Nop>")

-- Movement in insert mode
map("i", "<C-h>", "<Left>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-l>", "<Right>")

-- Reverse tab
map("n", "<S-Tab>", "<<")
map("i", "<S-Tab>", "<C-d>")

-- Save and close files
map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>q", "<cmd>q<cr>")
map("n", "<leader>W", "<cmd>w!<cr>")
map("n", "<leader>Q", "<cmd>q!<cr>")
map("n", "<leader>x", "<cmd>wq!<cr>")

