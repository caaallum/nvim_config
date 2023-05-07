local M = {
  "mfussenegger/nvim-dap",
  commit = "6b12294a57001d994022df8acbe2ef7327d30587",
  event = "User",
  enabled = vim.fn.has "win32" == 0,
  dependencies = {
    {
      "jay-babu/mason-nvim-dap.nvim",
      dependencies = { "nvim-dap" },
      cmd = { "DapInstall", "DapUninstall" },
      opts = { handlers = {} },
    },
    {
      "rcarriga/nvim-dap-ui",
      opts = { floating = { border = "rounded"} },
      config = function(_, opts) 
        local dap, dapui = require("dap"), require("dapui")
         dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
         dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
         dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
         dapui.setup(opts)
      end
    }
  }
}

return M
