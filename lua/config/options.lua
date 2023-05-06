vim.g.mapleader = " " -- Map space to leader
vim.g.maplocalleader = " " -- Map space to local leader

vim.opt.shortmess:append { s = true, I = true } -- Disable startup message
vim.opt.backspace:append { "nostop" } -- Don't stop backspace at insert

if vim.fn.has "nvim-0.9" == 1 then
  vim.opt.diffopt:append "linematch:60" -- Enable linematch diff algorithm
end

vim.opt.breakindent = true -- Wrap indent to match  line start
vim.opt.clipboard = "unnamedplus" -- Connection to the system clipboard
vim.opt.cmdheight = 0 -- hide command line unless needed
vim.opt.completeopt = { "menuone", "noselect" } -- Options for insert mode completion
vim.opt.copyindent = true -- Copy the previous indentation on autoindenting
vim.opt.cursorline = true -- Highlight the text line of the cursor
vim.opt.expandtab = true -- Enable the use of space in tab
vim.opt.fileencoding = "utf-8" -- File content encoding for the buffer
vim.opt.fillchars = { eob = " " } -- Disable `~` on nonexistent lines
vim.opt.foldenable = true -- enable fold for nvim-ufo
vim.opt.foldlevel = 99 -- set high foldlevel for nvim-ufo
vim.opt.foldlevelstart = 99 -- start with all code unfolded
--vim.opt.foldcolumn = vim.fn.has "nvim-0.9" == 1 and "1" or nil -- show foldcolumn in nvim 0.9
vim.opt.history = 100 -- Number of commands to remember in a history table
vim.opt.ignorecase = true -- Case insensitive searching
vim.opt.infercase = true -- Infer cases in keyword completion
vim.opt.laststatus = 3 -- globalstatus
vim.opt.linebreak = true -- Wrap lines at 'breakat'
vim.opt.mouse = "a" -- Enable mouse support
vim.opt.number = true -- Show numberline
vim.opt.preserveindent = true -- Preserve indent structure as much as possible
vim.opt.pumheight = 10 -- Height of the pop up menu
vim.opt.relativenumber = true -- Show relative numberline
vim.opt.scrolloff = 8 -- Number of lines to keep above and below the cursor
vim.opt.shiftwidth = 4 -- Number of space inserted for indentation
vim.opt.showmode = false -- Disable showing modes in command line
vim.opt.showtabline = 2 -- always display tabline
vim.opt.sidescrolloff = 8 -- Number of columns to keep at the sides of the cursor
vim.opt.signcolumn = "yes" -- Always show the sign column
vim.opt.smartcase = true -- Case sensitivie searching
vim.opt.smartindent = true -- Smarter autoindentation
vim.opt.splitbelow = true -- Splitting a new window below the current one
-- vim.opt.splitkeep = vim.fn.has "nvim-0.9" == 1 and "screen" or nil -- Maintain code view when splitting
vim.opt.splitright = true -- Splitting a new window at the right of the current one
vim.opt.tabstop = 4 -- Number of space in a tab
vim.opt.termguicolors = true -- Enable 24-bit RGB color in the TUI
vim.opt.timeoutlen = 500 -- Shorten key timeout length a little bit for which-key
vim.opt.undofile = true -- Enable persistent undo
vim.opt.updatetime = 300 -- Length of time to wait before triggering the plugin
vim.opt.virtualedit = "block" -- allow going past end of line in visual block mode
vim.opt.wrap = false -- Disable wrapping of lines longer than the width of window
vim.opt.writebackup = false -- Disable making a backup before overwriting a file

vim.g.highlighturl_enabled = true -- highlight URLs by default
vim.g.autoformat_enabled = true -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
vim.g.codelens_enabled = true -- enable or disable automatic codelens refreshing for lsp that support it
vim.g.lsp_handlers_enabled = true -- enable or disable default vim.lsp.handlers (hover and signatureHelp)
vim.g.cmp_enabled = true -- enable completion at start
vim.g.autopairs_enabled = true -- enable autopairs at start
vim.g.diagnostics_mode = 3 -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
vim.g.icons_enabled = true -- disable icons in the UI (disable if no nerd font is available)
vim.g.ui_notifications_enabled = true -- disable notifications when toggling UI elements

vim.t = vim.t.bufs and vim.t.bufs or { bufs = vim.api.nvim_list_bufs() } -- initialize buffers for the current tab

vim.diagnostic.config({
  virtual_test = true,
  update_in_insert = true
})
