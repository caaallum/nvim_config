local map = vim.keymap.set

-- Remove highlight
map("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Remove hightlight" })

-- Movement in insert mode
map("i", "<C-h>", "<Left>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-l>", "<Right>")

-- Reverse tab
map("n", "<S-Tab>", "<<")
map("i", "<S-Tab>", "<C-d>")
map("v", "<Tab>", ">gv")
map("v", "<S-Tab>", "<gv")

-- Save and close files
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Write" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>W", "<cmd>w!<cr>", { desc = "Force write" })
map("n", "<leader>Q", "<cmd>q!<cr>", { desc = "Force quit" })
map("n", "<leader>x", "<cmd>wq!<cr>", { desc = "Force write & quit" })

-- Escape
map("i", "jj", "<Esc>")
map("i", "jk", "<Esc>")

-- Create split
map("n", "\\", "<cmd>split<cr>")
map("n", "|", "<cmd>vsplit<cr>")
