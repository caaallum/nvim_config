local M = {
  "Fildo7525/pretty_hover",
  opts = function() 
    return {
      line = {
        "@brief",
        "\\brief",
      },
      word = {
        "@param",
        "@tparam",
        "@see",
        "\\param",
        "\\tparam",
        "\\see"
      },
      header = {
        "@class",
        "\\class"
      },
      stylers = {
        line = "**",
        word = "`",
        header = "###"
      },
      border = "rounded"
    }
  end,
  config = function(_, opts)
    require("pretty_hover").setup(opts)
  end
}

return M
