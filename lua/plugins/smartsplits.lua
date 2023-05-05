local M = {
  "mrjones2014/smart-splits.nvim",
  keys = {
    {
      "<C-Left>",
      function()
        require("smart-splits").resize_left()
      end,
      desc = "Resize window left"
    },
    {
      "<C-Right>",
      function()
        require("smart-splits").resize_right()
      end,
      desc = "Resize window right"
    },
    {
      "<C-Up>",
      function()
        require("smart-splits").resize_up()
      end,
      desc = "Resize window up"
    },
    {
      "<C-Down>",
      function()
        require("smart-splits").resize_down()
      end,
      desc = "Resize down"
    },
    {
      "<C-h>",
      function()
        require("smart-splits").move_cursor_left()
      end,
      desc = "Move cursor left"
    },
    {
      "<C-j>",
      function()
        require("smart-splits").move_cursor_down()
      end,
      desc = "Move cursor down"
    },
    {
      "<C-k>",
      function()
        require("smart-splits").move_cursor_up()
      end,
      desc = "Move cursor up"
    },
    {
      "<C-l>",
      function()
        require("smart-splits").move_cursor_right()
      end,
      desc = "Move cursor right"
    },
    {
      "\\",
      "<cmd>split<cr>",
      desc = "Split window horizontal"
    },
    {
      "|",
      "<cmd>vsplit<cr>",
      desc = "Split window vertical"
    }
  }
}

return M
