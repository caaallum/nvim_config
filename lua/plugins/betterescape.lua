local M = {
  "max397574/better-escape.nvim",
  event = "VeryLazy",
  opts = function()
    return {
      mapping = { "jj" },
      timeout = vim.o.timeoutlen,
      clear_empty_lines = false,
      keys = "<Esc>"
    }
  end,
  config = function(_, opts)
    require("better_escape").setup(opts)
  end
}

return M
