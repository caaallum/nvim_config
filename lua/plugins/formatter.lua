local M = {
  "mhartington/formatter.nvim",
  event = "BufReadPre",
  commit = "44c89f09dcc220dc2a9b056e93c3a87c86e79804",
}

function M.config()
  local util = require "formatter.util"
  local formatter = require "formatter"

  formatter.setup {
    logging = false,
  }
end

return M
