return {
  "nvim-neo-tree/neo-tree.nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim",
  },
  config = {
    close_if_last_window = true,
    window = {
      width = 30,
    },
    filesystem = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false
      }
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
  },
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle neotree", mode = "n" },
    { "<leader>o", "<cmd>Neotree<cr>", desc = "Focus neotree", mode = "n" }
  }
}
