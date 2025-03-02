

-- auto install vim-plug and plugins, if not found
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'ellisonleao/gruvbox.nvim'
Plug('folke/zen-mode.nvim', { ['as'] = 'zen-mode' }) --Zen-mode
Plug('folke/which-key.nvim') --mappings popup
Plug('nvim-tree/nvim-tree.lua') --file explorer
Plug 'vimwiki/vimwiki'
Plug('nvim-lualine/lualine.nvim') --statusline
Plug 'mhinz/vim-startify'
Plug 'iamcco/markdown-preview.nvim'


vim.call('plug#end')

-- move config and plugin config to alternate files
require("plugins.which-key")
require("plugins.nvim-tree")
require("config.mappings")
require("plugins.lualine")

-- Set Theme

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Basic settings
vim.o.number = true -- Enable line numbers
vim.o.relativenumber = true -- Enable relative line numbers
vim.o.tabstop = 4 -- Number of spaces a tab represents
vim.o.shiftwidth = 4 -- Number of spaces for each indentation
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.smartindent = true -- Automatically indent new lines
vim.o.wrap = false -- Disable line wrapping
vim.o.cursorline = true -- Highlight the current line
vim.o.termguicolors = true -- Enable 24-bit RGB colors

-- Syntax highlighting and filetype plugins
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

-- Leader key
vim.g.mapleader = ' ' -- Space as the leader key
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })

-- Syntax highlighting and filetype plugins
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

-- Leader key
vim.g.mapleader = ' ' -- Space as the leader key
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })

