local M = {
  "phaazon/hop.nvim",
  event = "VeryLazy",
  branch = "v2",
  opts = function()
    return {
      keys = "etovxqpdygfblzhckisuran"
    }
  end,
  config = function(_, opts) 
    require("hop").setup(opts)
  end,
  keys = {
    {
      "f",
      function()
        require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true })
      end,
      remap = true
    },
    {
      "F",
      function()
        require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true })
      end,
      remap = true
    },
    {
      "t",
      function()
        require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
      end,
      remap = true
    },
    {
      "t",
      function()
        require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
      end,
      remap = true
    }
  }
}

return M
