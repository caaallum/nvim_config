return {
  "mrjones2014/smart-splits.nvim",
  event = "VeryLazy",
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
