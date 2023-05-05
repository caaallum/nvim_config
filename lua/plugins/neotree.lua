local M = {
  "nvim-neo-tree/neo-tree.nvim",
  tag = "2.57",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle neotree" },
    { "<leader>o", "<cmd>Neotree<cr>", desc = "Focus neotree" }
  },
  opts = function()
    return {
      close_if_last_window = true,
      window = {
        width = 30,
      },
      filesystem = {
        follow_current_file = true,
      },
      source_selector = {
        winbar = true,
        content_layout = "center",
        sources = {
          { source = "filesystem", display_name = "File" },
          { source = "buffers", display_name = "Bufs" },
          { source = "git_status", display_name = "Git" },
          { source = "diagnostics", display_name = "Diagnostic" },
        },
    }
    }
  end,
  config = function(_, opts)
    local neotree = require("neo-tree")
    neotree.setup(opts)
  end,
}

return M
