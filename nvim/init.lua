vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.number = true
vim.wo.relativenumber = false
vim.opt.mouse = 'a'
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 2
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true 
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.wrap = false 
vim.opt.helplang = 'ja','en'
vim.opt.updatetime = 300
vim.opt.showtabline = 2
vim.opt.clipboard = 'unnamedplus'
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.wrap = true
vim.opt.pumblend = 7
vim.opt.cmdheight = 0

vim.opt.winblend = 0 -- ウィンドウの不透明度
vim.opt.pumblend = 0 -- ポップアップメニューの不透明度

-- 不可視文字を非表示(colorscheme用)
vim.opt.list = false
-- Leder Key
vim.g.mapleader = ','

local keymap = vim.keymap
keymap.set('i','jj','<Esc>')
keymap.set("t", "<Esc>", "<C-\\><C-n>")
keymap.set('n', 'tt', ':T<CR>')
-- keymap.set('n', '<C-p>', '<cmd>Telescope find_files<CR>')
keymap.set('n', '<C-z>', '<cmd>NvimTreeToggle<CR>')
keymap.set('n', '<C-x>', '<cmd>NvimTreeFocus<CR>')
keymap.set('n', '<C-h>', '<cmd>BufferLineCyclePrev<CR>')
keymap.set('n', '<C-l>', '<cmd>BufferLineCycleNext<CR>')

vim.cmd('command! -nargs=* T split | wincmd j | resize 20 | terminal <args>')
vim.cmd('autocmd TermOpen * startinsert')

-- load lazy.nvim
require('lazynvim')
