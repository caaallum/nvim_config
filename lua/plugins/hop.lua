local M = {
  "phaazon/hop.nvim",
  event = "VeryLazy",
  branch = "v2",
}

function M.config()
  require("hop").setup({
    keys = "etovxqpdygfblzhckisuran"
  })
end

return M
