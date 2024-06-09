return {
  "mrjones2014/smart-splits.nvim",
  event = "VeryLazy",
  config = {
    default_amount = 3,
    ignored_filetypes = {
      "nofile",
      "quickfix",
      "prompt"
    },
    ignored_buftypes = { "Neo-tree" },
    ignored_events = {
      "BufEnter",
      "WinEnter"
    }
  },
  keys = {
    -- Rezise splits
    { "<A-h>", function() require("smart-splits").resize_left() end, desc = "Resize left", mode = "n" },
    { "<A-j>", function() require("smart-splits").resize_down() end, desc = "Resize down", mode = "n" },
    { "<A-k>", function() require("smart-splits").resize_up() end, desc = "Resize up", mode = "n" },
    { "<A-l>", function() require("smart-splits").resize_right() end, desc = "Resize right", mode = "n" },

    -- Movement between splits
    { "<C-h>", function() require("smart-splits").move_cursor_left() end, desc = "Move left", mode = "n" },
    { "<C-j>", function() require("smart-splits").move_cursor_down() end, desc = "Move down", mode = "n" },
    { "<C-k>", function() require("smart-splits").move_cursor_up() end, desc = "Move up", mode = "n" },
    { "<C-l>", function() require("smart-splits").move_cursor_right() end, desc = "Move right", mode = "n" },

    -- Swap buffers between windows
    { "<leader><leader>h", function() require("smart-splits").swap_buf_left() end, desc = "Swap left", mode = "n" },
    { "<leader><leader>j", function() require("smart-splits").swap_buf_down() end, desc = "Swap down", mode = "n" },
    { "<leader><leader>k", function() require("smart-splits").swap_buf_up() end, desc = "Swap up", mode = "n" },
    { "<leader><leader>l", function() require("smart-splits").swap_buf_right() end, desc = "Swap right", mode = "n" }
  }
}
