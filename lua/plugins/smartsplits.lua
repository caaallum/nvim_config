local M = {
  "mrjones2014/smart-splits.nvim",
  opts = function()
    return {
      ignored_buftypes = { "Neo-tree" },
    }
  end,
  config = function(_, opts)
    require("smart-splits").setup(opts)
  end
}

return M
