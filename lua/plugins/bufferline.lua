return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  dependencies = {
    "famiu/bufdelete.nvim",
  },
  opts = {
    options = {
      close_command = "Bdelete! %d",       -- can be a string | function, see "Mouse actions"
      right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left"
        }
      },
      separator_style = "thin",            -- | "thick" | "thin" | { 'any', 'any' },
      always_show_bufferline = true,
      diagnostics = "nvim_lsp"
    }
  },
  keys = {
    { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Move to next buffer", mode = "n" },
    { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Move to previous buffer", mode = "n" },
    { "<leader>c", function() require("bufdelete").bufdelete(0, false) end, desc = "Close buffer", mode = "n" }
  }
}
