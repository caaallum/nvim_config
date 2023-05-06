local M = {
  "RRethy/vim-illuminate",
  commit = "b671d8fff92dd21895f2f6c7ef1c7fa578cc0528",
  opts = function()
    return {
      under_cursor = false,
      min_count_to_highlight = 2
    }
  end,
  config = function(_, opts)
    require("illuminate").configure(opts)
  end
}

return M
