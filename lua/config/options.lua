-- Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local o = vim.opt
local g = vim.g
local t = vim.t

o.shortmess:append { s = true, I = true }
o.backspace:append { "nostop" }

if vim.fn.has "nvim-0.9" == 1 then
  o.diffopt:append "linematch:60"
end

o.list = true
o.breakindent = true
o.clipboard = "unnamedplus"
o.cmdheight = 0
o.completeopt = { "menuone", "noselect" }
o.copyindent = true
o.cursorline = true
o.expandtab = true
-- o.fileencoding = "utf-8"
o.fillchars = { eob = " " }
o.foldenable = true
o.foldlevel = 99
o.foldlevelstart = 99
o.history = 100
o.ignorecase = true
o.infercase = true
o.laststatus = 3
o.linebreak = true
o.mouse = "a"
o.number = true
o.preserveindent = true
o.pumheight = 10
o.relativenumber = true
o.scrolloff = 8
o.shiftwidth = 4
o.showmode = false
o.showtabline = 2
o.sidescrolloff = 8
o.signcolumn = "yes"
o.smartcase = true
o.smartindent = true
o.splitbelow = true
o.splitright = true
o.tabstop = 4
o.termguicolors = true
o.timeoutlen = 500
o.undofile = true
o.updatetime = 300
o.virtualedit = "block"
o.wrap = false
o.writebackup = false
o.colorcolumn = "80"

g.highlighturl_enabled = true
g.mapleader = " "
g.autoformat_enabled = true
g.codelens_enabled = true
g.lsp_handlers_enabled = true
g.cmp_enabled = true
g.autopairs_enabled = true
g.diagnostics_mode = 3
g.icons_enabled = true
g.ui_notifications_enabled = true

t.bufs = vim.api.nvim_list_bufs()
