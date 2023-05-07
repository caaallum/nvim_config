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
map("v", "<Tab>", ">gv")
map("v", "<S-Tab>", "<gv")

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

-- Create split
map("n", "|", "<cmd>vsplit<cr>")
map("n", "\\", "<cmd>split<cr>")

-- Resize splits
map("n", "<A-h>", require("smart-splits").resize_left)
map("n", "<A-j>", require("smart-splits").resize_down)
map("n", "<A-k>", require("smart-splits").resize_up)
map("n", "<A-l>", require("smart-splits").resize_right)

-- Moving between splits
map("n", "<C-h>", require("smart-splits").move_cursor_left)
map("n", "<C-j>", require("smart-splits").move_cursor_down)
map("n", "<C-k>", require("smart-splits").move_cursor_up)
map("n", "<C-l>", require("smart-splits").move_cursor_right)

-- Swapping buffers between windows
map("n", "<leader><leader>h", require("smart-splits").swap_buf_left)
map("n", "<leader><leader>j", require("smart-splits").swap_buf_down)
map("n", "<leader><leader>k", require("smart-splits").swap_buf_up)
map("n", "<leader><leader>l", require("smart-splits").swap_buf_right)

-- Dap
map("n", "<F5>", function() require("dap").continue() end) -- Debugger start
map("n", "<F17>", function() require("dap").terminate() end) -- Debugger stop (Shift+F5)
map("n", "<F21>", function() 
    vim.ui.input({ prompt = "Condition: " }, function(condition)
      if condition then require("dap").set_breakpoint(condition) end
    end)
  end
)

map("n", "<F29>", function() require("dap").restart_frame() end) -- Debugger restrt (CTRL+F5)
map("n", "<F6>", function() require("dap").pause() end) -- Debugger Pause
map("n", "<F9>", function() require("dap").toogle_breakpoint() end) -- Toggle breakpoint
map("n", "<F10>", function() require("dap").step_over() end)
map("n", "<F11>", function() require("dap").step_into() end)
map("n", "<F23>", function() require("dap").step_out() end) -- Shift+F11
map("n", "<leader>db", function() require("dap").toggle_breakpoint() end)
map("n", "<leader>dB", function() require("dap").clear_breakpoints() end)

-- Dap ui
map("n", "<leader>du", function() require("dapui").toggle() end)
