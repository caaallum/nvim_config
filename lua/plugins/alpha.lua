local M = {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local theme = require("alpha.themes.dashboard").config
        alpha.setup(theme)
    end
}

return M
