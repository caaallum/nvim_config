local M = {
  "akinsho/bufferline.nvim",
  commit = "c7492a76ce8218e3335f027af44930576b561013",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
  dependencies = {
    {
      "famiu/bufdelete.nvim",
      commit = "8933abc09df6c381d47dc271b1ee5d266541448e",
    },
  },
}

function M.config()
  require("bufferline").setup {
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
    },
    highlights = require("catppuccin.groups.integrations.bufferline").get()
  }
end

return M
