vim.cmd("colorscheme catppuccin-macchiato") -- set color theme

vim.opt.termguicolors = true --bufferline
require("bufferline").setup{} --bufferline

require('lualine').setup() --lualine
options = { theme = 'catppuccin-macchiato' }

