local M = {
  "mrjones2014/smart-splits.nvim",
  event = "VeryLazy",
  commit = "a2668b59bf3f9b87d47b42e7e8d08200ff0ab3b5",
  opts = {
    default_amount = 3,
    ignored_filetypes = {
      "nofile",
      "quickfix",
      "promp",
    },
    ignored_buftypes = { "Neo-tree" },
    ignored_events = {
      'BufEnter',
      'WinEnter',
    },
  }
}

return M
