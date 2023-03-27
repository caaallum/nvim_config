vim.opt.shortmess:append { s = true, I = true }
vim.opt.backspace:append { "nostop" }

if vim.fn.has "nvim-0.9" == 1 then
  vim.opt.diffopt:append "linematch:60"
end

vim.opt.list = true
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 0
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.copyindent = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.fillchars = { eob = " " }
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.history = 100
vim.opt.ignorecase = true
vim.opt.infercase = true
vim.opt.laststatus = 3
vim.opt.linebreak = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.preserveindent = true
vim.opt.pumheight = 10
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.timeoutlen = 500
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.virtualedit = "block"
vim.opt.wrap = false
vim.opt.writebackup = false
vim.opt.colorcolumn = "80"

vim.g.highlighturl_enabled = true
vim.g.mapleader = " "
vim.g.autoformat_enabled = true
vim.g.codelens_enabled = true
vim.g.lsp_handlers_enabled = true
vim.g.cmp_enabled = true
vim.g.autopairs_enabled = true
vim.g.diagnostics_mode = 3
vim.g.icons_enabled = true
vim.g.ui_notifications_enabled = true

vim.t.bufs = vim.api.nvim_list_bufs()
