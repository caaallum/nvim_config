local M = {
  "goolord/alpha-nvim",
  commit = "89eaa18a472be680539dee5977e2255f4dbd0738",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local theme = require("alpha.themes.dashboard").config
    alpha.setup(theme)
  end
}

return M
