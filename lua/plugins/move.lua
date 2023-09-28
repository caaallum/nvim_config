local M = {
  "matze/vim-move",
  branch = "v1.4",
  event = "VimEnter",
  init = function()
    vim.g.move_map_keys = false
  end,
}

return M
