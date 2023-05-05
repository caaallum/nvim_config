local M = {
  "akinsho/bufferline.nvim",
  tag = "v4.1.0",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "famiu/bufdelete.nvim",
  },
  keys = {
    {
      "<S-l>",
      "<cmd>BufferLineCycleNext<cr>",
      desc = "Cycle to next buffer"
    },
    {
      "<S-h>",
      "<cmd>BufferLineCyclePrev<cr>",
      desc = "Cycle to previous buffer"
    },
    {
      "<leader>c",
      function()
        require("bufdelete").bufdelete(0, false)
      end,
      desc = "Close current buffer"
    }
  },
  opts = function()
    return {
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
        options = {
          diagnostics = "nvim_lsp",
          always_show_bufferline = false,
          offsets = {
            {
              filetype = "neo-tree",
              text = "Neo-tree",
              highlight = "Directory",
              text_align = "left",
            }
          }
       }
  }
  end,
  config = function(_, opts)
    require("bufferline").setup(opts)
  end
}

return M
