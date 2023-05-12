local M = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  event = "VimEnter",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
      commit = "253d34830709d690f013daf2853a9d21ad7accab" 
    },
    {
      "nvim-tree/nvim-web-devicons",
      commit = "0568104bf8d0c3ab16395433fcc5c1638efc25d4"
    },
    {
      "MunifTanjim/nui.nvim",
      commit = "698e75814cd7c56b0dd8af4936bcef2d13807f3c"
    }
  }
}

function M.config()
  require("neo-tree").setup({
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
  })
end

return M
