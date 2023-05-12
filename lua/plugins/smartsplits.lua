local M = {
  "mrjones2014/smart-splits.nvim",
  event = "VeryLazy",
  commit = "a2668b59bf3f9b87d47b42e7e8d08200ff0ab3b5"
}

function M.config()
  require("smart-splits").setup({
    ignored_buftypes = { "Neo-tree" }
  })
end

return M
