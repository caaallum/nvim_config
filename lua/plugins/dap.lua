local function setup_keymaps()
    vim.keymap.set('n', '<leader>dac', function() require "dap".continue() end)
    vim.keymap.set('n', '<leader>dal', function() require "dap".run_last() end)
    vim.keymap.set('n', '<leader>dan', function() require "dap".step_over() end)
    vim.keymap.set('n', '<leader>das', function() require "dap".step_into() end)
    vim.keymap.set('n', '<leader>dao', function() require "dap".step_out() end)
    vim.keymap.set('n', '<leader>dag', function() require "dap".goto_() end)
    vim.keymap.set('n', '<leader>dab', function() require "dap".toggle_breakpoint() end)
    vim.keymap.set('n', '<leader>dat', function() require "dap".terminate(); require("dapui").close() end)
    vim.keymap.set('n', '<leader>dcc', function() require "dap".run_to_cursor() end)

    vim.cmd [[ augroup emile_dap | autocmd! | augroup end ]]
    vim.cmd [[au emile_dap FileType dap-repl lua require('dap.ext.autocompl').attach()]]

    vim.keymap.set('n', '<leader>dau', function() require("dapui").toggle() end)


    -- local widgets = require('dap.ui.widgets')
    -- local my_sidebar = widgets.sidebar(widgets.scopes)
    -- my_sidebar.open()

    -- vim.keymap.set('n', '<leader>dus', function()  require("dap.ui.widgets").sidebar(require("dap.ui.widgets").scopes) end)
    vim.keymap.set('n', '<leader>dhh', function() require("dap.ui.widgets").hover() end)


    -- vim.keymap.set('n', '<leader>dsc', function()  require"dapui.variables".scopes() end)
    -- vim.keymap.set('n', '<leader>dhh', function()  require"dapui.variables".hover() end)
    -- vim.keymap.set('v', '<leader>dhv', function()  require"dapui.variables".visual_hover() end)
    -- vim.keymap.set('n', '<leader>duh', function()  require"dapui.widgets".hover() end)
    -- vim.keymap.set('n', '<leader>duf', "<cmd>lua local widgets=require'dapui.widgets';widgets.centered_float(widgets.scopes)<CR>")

    vim.keymap.set('n', '<leader>dsbr',
        function() require "dap".set_breakpoint(vim.fn.input("Breakpoint condition: ")) end)
    vim.keymap.set('n', '<leader>dsbm',
        function() require "dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: ")) end)
    vim.keymap.set('n', '<leader>dro', function() require "dap".repl.open() end)
    vim.keymap.set('n', '<leader>drl', function() require "dap".repl.run_last() end)


    -- telescope-dap
    vim.keymap.set('n', '<leader>dtc', function() require "telescope".extensions.dap.commands {} end)
    vim.keymap.set('n', '<leader>dto', function() require "telescope".extensions.dap.configurations {} end)
    vim.keymap.set('n', '<leader>dtb', function() require "telescope".extensions.dap.list_breakpoints {} end)
    vim.keymap.set('n', '<leader>dtv', function() require "telescope".extensions.dap.variables {} end)
    vim.keymap.set('n', '<leader>dtf', function() require "telescope".extensions.dap.frames {} end)

    -- nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
    --    nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
    --    nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
    --    nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
    --    nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
    --    nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
    --    nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
    --    nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
    --    nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>

    -- docs: https://github.com/mfussenegger/nvim-dap/blob/master/doc/dap.txt
    local repl = require 'dap.repl'
    repl.commands = vim.tbl_extend('force', repl.commands, {
        -- Add a new alias for commands
        exit = { 'q' },
        into = { 's' },
        out = { 'o' },
        up = { 'u' },
        down = { 'd' },
        next_ = { 'n' },
        continue = { 'c' },
        goto_ = { 'g' } -- goto line under cursor
    })

    local last_cmd = ""

    local debug_cmd = function()
        -- fills in the last used cmd, use <Ctrl-U> to remove
        local cmd = vim.fn.input("DAP launch cmd: ", last_cmd)
        if cmd == "" then return end

        last_cmd = cmd

        local program = nil
        local args = nil
        local splits = vim.split(cmd, " ")
        if #splits > 0 then
            program = splits[1]
            if #splits > 1 then
                table.remove(splits, 1)
                args = splits
            end
        end

        local config = {
            name = "cpp_launch",
            type = "lldb",
            request = "launch",
            program = program,
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
            args = args,
            runInTerminal = false,
        }
        local dap = require('dap')
        dap.run(config)
    end

    vim.keymap.set('n', '<leader>dar', function()
        require("dapui").open();
        debug_cmd()
    end,
        { noremap = true, silent = true })
end

return {
    "mfussenegger/nvim-dap",

    -- debug adapter for neovim lua
    {
        "jbyuki/one-small-step-for-vimkind",
        dependencies = { "mfussenegger/nvim-dap" },
        -- todo this config is in the wrong place
        config = function()
            local dap = require("dap")
            setup_keymaps()
            dap.configurations.lua = {
                {
                    type = "nlua",
                    request = "attach",
                    name = "Attach to running Neovim instance",
                    host = function()
                        local value = vim.fn.input("Host [127.0.0.1]: ")
                        if value ~= "" then
                            return value
                        end
                        return "127.0.0.1"
                    end,
                    port = function()
                        local val = tonumber(vim.fn.input("Port: "))
                        assert(val, "Please provide a port number")
                        return val
                    end,
                },
            }

            dap.adapters.nlua = function(callback, config)
                callback({ type = "server", host = config.host, port = config.port })
            end

            dap.adapters.lldb = {
                type = "executable",
                command = "/usr/bin/lldb-vscode", -- adjust as needed
                name = "lldb",
            }

            dap.configurations.cpp = {
                {
                    name = "cpp_launch",
                    type = "lldb",
                    request = "launch",
                    cwd = "${workspaceFolder}",
                    stopOnEntry = false,
                    args = { "--test-case=*[fast]*" },
                    -- 💀
                    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
                    --
                    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
                    --
                    -- Otherwise you might get the following error:
                    --
                    --    Error on launch: Failed to attach to the target process
                    --
                    -- But you should be aware of the implications:
                    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html

                    runInTerminal = false,

                    -- 💀
                    -- If you use `runInTerminal = true` and resize the terminal window,
                    -- lldb-vscode will receive a `SIGWINCH` signal which can cause problems
                    -- To avoid that uncomment the following option
                    -- See https://github.com/mfussenegger/nvim-dap/issues/236#issuecomment-1066306073
                    -- postRunCommands = {'process handle -p true -s false -n false SIGWINCH'}
                },
            }
        end,
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        dependencies = { "mfussenegger/nvim-dap", "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("nvim-dap-virtual-text").setup()
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap" },
        config = function()
            require("dapui").setup()
        end,
    },
}
