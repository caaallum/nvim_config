local M = {
  "folke/zen-mode.nvim",
  commit = "6e6c963d70a8e47854fa656987666bfb863f9c4e",
  event = "VeryLazy",
  keys = {
    { "<leader>z", "<cmd>ZenMode<cr>", desc = "Toggle zenmode" }
  },
  opts = function() 
    return {
      window = {
        width = .85,
      }
    }
  end,
  config = function(_, opts)
    require("zen-mode").setup(opts)
  end
}

return M
