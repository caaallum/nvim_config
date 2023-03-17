-- Remove highlight
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>")

-- Reverse tab
vim.keymap.set("n", "<S-Tab>", "<<")
vim.keymap.set("i", "<S-Tab>", "<C-d>")

-- Save and close files
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>")
vim.keymap.set("n", "<leader>W", "<cmd>w!<cr>")
vim.keymap.set("n", "<leader>Q", "<cmd>q!<cr>")
vim.keymap.set("n", "<leader>x", "<cmd>wq!<cr>")

-- Neotree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>")
vim.keymap.set("n", "<leader>o", "<cmd>Neotree<cr>")

-- Splits
vim.keymap.set("n", "<C-Left>", require("smart-splits").resize_left)
vim.keymap.set("n", "<C-Right>", require("smart-splits").resize_right)
vim.keymap.set("n", "<C-Up>", require("smart-splits").resize_up)
vim.keymap.set("n", "<C-Down>", require("smart-splits").resize_down)

vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)

vim.keymap.set("n", "\\", "<cmd>split<cr>")
vim.keymap.set("n", "|", "<cmd>vsplit<cr>")

-- Terminal
vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>")
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>")
vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<cr>")
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<cr>")
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<cr>")
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<cr>")

-- Comment
vim.keymap.set("n", "<leader>/", require("Comment.api").toggle.linewise.current)
-- vim.keymap.set("v", "<leader>/", require("Comment.api").toggle.linewise(vim.fn.visualmode()))

-- Buffer
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
vim.keymap.set("n", "<leader>c", function()
	require("bufdelete").bufdelete(0, false)
end)

-- Sessions
vim.keymap.set("n", "<leader>S.", "<cmd>SessionManager! load_current_dir_session<cr>")
vim.keymap.set("n", "<leader>Sl", "<cmd>SessionManager! load_last_session<cr>")
vim.keymap.set("n", "<leader>Ss", "<cmd>SessionManager! save_current_session<cr>")
vim.keymap.set("n", "<leader>Sd", "<cmd>SessionManager! delete_session<cr>")
vim.keymap.set("n", "<leader>Sf", "<cmd>SessionManager! load_session<cr>")

-- Games
vim.keymap.set("n", "<leader>gt", "<cmd>Tetris<cr>")
