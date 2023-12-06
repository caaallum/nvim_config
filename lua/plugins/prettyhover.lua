local M = {
  "Fildo7525/pretty_hover",
  opts = {
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
}

return M
