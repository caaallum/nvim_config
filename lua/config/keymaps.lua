local map = vim.keymap.set

function opts(desc)
  return {
    silent = true,
    desc = desc
  }
end

-- Remap space as leader key
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "

-- Remove highlight
map("n", "<leader>h", "<cmd>nohlsearch<cr>", opts("Remove hightlight"))

-- Disable arrow key movement
map({ "n", "i", "v" }, "<Down>", "<Nop>", opts())
map({ "n", "i", "v" }, "<Left>", "<Nop>", opts())
map({ "n", "i", "v" }, "<Right>", "<Nop>", opts())
map({ "n", "i", "v" }, "<Up>", "<Nop>", opts())

-- Movement in insert mode
map("i", "<C-h>", "<Left>", opts())
map("i", "<C-j>", "<Down>", opts())
map("i", "<C-k>", "<Up>", opts())
map("i", "<C-l>", "<Right>", opts())

-- Reverse tab
map("n", "<S-Tab>", "<<", opts())
map("i", "<S-Tab>", "<C-d>", opts())
map("v", "<Tab>", ">gv", opts())
map("v", "<S-Tab>", "<gv", opts())

-- Save and close files
map("n", "<leader>w", "<cmd>w<cr>", opts("Write"))
map("n", "<leader>q", "<cmd>q<cr>", opts("Quit"))
map("n", "<leader>W", "<cmd>w!<cr>", opts("Force write"))
map("n", "<leader>Q", "<cmd>q!<cr>", opts("Force quit"))
map("n", "<leader>x", "<cmd>wq!<cr>", opts("Force write & quit"))

-- Escape
map("i", "jj", "<Esc>", opts())
map("i", "jk", "<Esc>", opts())

-- Comment
map("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts("Comment"))
map("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode(h))<cr>", opts("Comment"))

-- Create split
map("n", "|", "<cmd>vsplit<cr>", opts())
map("n", "\\", "<cmd>split<cr>", opts())

-- Resize splits
map("n", "<C-A-h>", function() require("smart-splits").resize_left() end, opts("Resize left"))
map("n", "<C-A-j>", function() require("smart-splits").resize_down() end, opts("Resize down"))
map("n", "<C-A-k>", function() require("smart-splits").resize_up() end, opts("Resize up"))
map("n", "<C-A-l>", function() require("smart-splits").resize_right() end, opts("Resize right"))

-- Moving between splits
map("n", "<C-h>", function() require("smart-splits").move_cursor_left() end, opts("Move left"))
map("n", "<C-j>", function() require("smart-splits").move_cursor_down() end, opts("Move down"))
map("n", "<C-k>", function() require("smart-splits").move_cursor_up() end, opts("Move up"))
map("n", "<C-l>", function() require("smart-splits").move_cursor_right() end, opts("Move right"))

-- Swapping buffers between windows
map("n", "<leader><leader>h", function() require("smart-splits").swap_buf_left() end, opts("Swap left"))
map("n", "<leader><leader>j", function() require("smart-splits").swap_buf_down() end, opts("Swap down"))
map("n", "<leader><leader>k", function() require("smart-splits").swap_buf_up() end, opts("Swap up"))
map("n", "<leader><leader>l", function() require("smart-splits").swap_buf_right() end, opts("Swap right"))

-- Dap
map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts("Toggle breakpoint"))
map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts("Start/Continue"))
map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts("Step into"))
map("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts("Step over"))
map("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts("Step out"))
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts())
map("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts())
map("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts())
map("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts())

-- Lsp
map("n", "<leader>lf", "<cmd>Format<cr>", opts("Format"))
map("n", "<leader>lF", "<cmd>FormatWrite<cr>", opts("FormatWrite"))

-- Buffers
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", opts())
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", opts())
map("n", "<leader>c", function() require("bufdelete").bufdelete(0, false) end, opts("Close buffer"))

-- Terminal
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", opts("Open floating terminal"))
map("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", opts("Open horizontal terminal"))

map("t", "<C-h>", "<cmd>wincmd h<cr>", opts())
map("t", "<C-j>", "<cmd>wincmd j<cr>", opts())
map("t", "<C-k>", "<cmd>wincmd k<cr>", opts())
map("t", "<C-l>", "<cmd>wincmd l<cr>", opts())

-- Neotree
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", opts("Toggle neotree"))
map("n", "<leader>o", "<cmd>Neotree<cr>", opts("Focus neotree"))

-- Hop
map("n", "<leader>f",
  function()
    require("hop").hint_char1({
      direction = require("hop.hint").HintDirection.AFTER_CURSOR,
      current_line_only = true
    })
  end,
  opts("Hop before")
)
map("n", "<leader>F",
  function()
    require("hop").hint_char1({
      direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
      current_line_only = true
    })
  end,
  opts("Hop after")
)
