-- Remove highlight
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>")

-- Disable arrow key movement
local modes = { "n", "i", "v" }
for _, mode in ipairs(modes) do
    vim.keymap.set(mode, "<Down>", "<Nop>")
    vim.keymap.set(mode, "<Left>", "<Nop>")
    vim.keymap.set(mode, "<Right>", "<Nop>")
    vim.keymap.set(mode, "<Up>", "<Nop>")
end

-- Movement in insert mode
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")

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
vim.keymap.set("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>")

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

-- Zen mode
vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<cr>")

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Git diff
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>")

-- Hop
local hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("n", "f", function() hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true }) end, { remap = true })
vim.keymap.set("n", "F", function() hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true }) end, { remap = true })

-- Dap
vim.keymap.set("n", "<F5>", function() require("dap").continue() end)
vim.keymap.set("n", "<F17>", function() require("dap").terminate() end) -- Shift+F5
vim.keymap.set("n", "<F29>", function() require("dap").restart_frame() end) -- CTRL+F5
vim.keymap.set("n", "<F6>", function() require("dap").pause() end)
vim.keymap.set("n", "<F9>", function() require("dap").toggle_breakpoint() end)
vim.keymap.set("n", "<F10>", function() require("dap").setup_over() end)
vim.keymap.set("n", "<F11>", function() require("dap").step_into() end)
vim.keymap.set("n", "<F23>", function() require("dap").step_out() end) -- Shift+F11
vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end)
vim.keymap.set("n", "<leader>dB", function() require("dap").clear_breakpoints() end)
vim.keymap.set("n", "<leader>dc", function() require("dap").continue() end)
vim.keymap.set("n", "<leader>di", function() require("dap").step_into() end)
vim.keymap.set("n", "<leader>do", function() require("dap").step_over() end)
vim.keymap.set("n", "<leader>dO", function() require("dap").step_out() end)
vim.keymap.set("n", "<leader>dq", function() require("dap").close() end)
vim.keymap.set("n", "<leader>dQ", function() require("dap").terminate() end)
vim.keymap.set("n", "<leader>dp", function() require("dap").pause() end)
vim.keymap.set("n", "<leader>dr", function() require("dap").restart_frame() end)
vim.keymap.set("n", "<leader>dR", function() require("dap").repl.toggle() end)
vim.keymap.set("n", "<leader>du", function() require("dapui").toggle() end)
vim.keymap.set("n", "<leader>dh", function() require("dap.ui.widgets").hover() end)

-- Codewindow
local codewindow = require("codewindow")
vim.keymap.set("n", "<leader>mo", codewindow.open_minimap)
vim.keymap.set("n", "<leader>mc", codewindow.close_minimap)
vim.keymap.set("n", "<leader>mf", codewindow.toggle_focus)
vim.keymap.set("n", "<leader>mm", codewindow.toggle_minimap)
