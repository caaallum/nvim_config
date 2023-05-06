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
map({ "n", "v" }, "<S-Tab>", "<<")
map("i", "<S-Tab>", "<C-d>")
map("v", "<Tab>", ">>")

-- Save and close files
map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>q", "<cmd>q<cr>")
map("n", "<leader>W", "<cmd>w!<cr>")
map("n", "<leader>Q", "<cmd>q!<cr>")
map("n", "<leader>x", "<cmd>wq!<cr>")

-- Escape
map("i", "jj", "<Esc>")
map("i", "jk", "<Esc>")

-- Comment
map("n", "<leader>/", function()
    require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
  end)
map("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode(h))<cr>")
