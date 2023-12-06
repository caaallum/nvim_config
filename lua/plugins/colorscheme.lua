local M = {
  "catppuccin/nvim",
  tag = "v1.1.1",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  opts = {
    flavour = "mocha",
    integrations = {
      neotree = true,
      treesitter = true,
      ts_rainbow2 = true,
      notify = true,
      dashboard = true,
      mini = true,
      cmp = true
    },
    show_end_of_buffer = true,
    term_colors = true
  }
}

return M
