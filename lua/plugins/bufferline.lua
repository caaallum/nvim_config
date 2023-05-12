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
      offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
      separator_style = "thin",            -- | "thick" | "thin" | { 'any', 'any' },
    },
    highlights = require("catppuccin.groups.integrations.bufferline").get()
  }
end

return M

-- local M = {
--   "akinsho/bufferline.nvim",
--   tag = "v4.1.0",
--   event = "VeryLazy",
--   dependencies = {
--     "nvim-tree/nvim-web-devicons",
--     "famiu/bufdelete.nvim",
--   },
--   keys = {
--     {
--       "<S-l>",
--       "<cmd>BufferLineCycleNext<cr>",
--       desc = "Cycle to next buffer"
--     },
--     {
--       "<S-h>",
--       "<cmd>BufferLineCyclePrev<cr>",
--       desc = "Cycle to previous buffer"
--     },
--     {
--       "<leader>c",
--       function()
--         require("bufdelete").bufdelete(0, false)
--       end,
--       desc = "Close current buffer"
--     }
--   },
--   opts = function()
--     return {
--       highlights = require("catppuccin.groups.integrations.bufferline").get(),
--         options = {
--           diagnostics = "nvim_lsp",
--           always_show_bufferline = false,
--           offsets = {
--             {
--               filetype = "neo-tree",
--               text = "Neo-tree",
--               highlight = "Directory",
--               text_align = "left",
--             }
--           }
--        }
--   }
--   end,
--   config = function(_, opts)
--     require("bufferline").setup(opts)
--   end
-- }

return M
