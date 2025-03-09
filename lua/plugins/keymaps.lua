-- fzf-lua
vim.keymap.set("n", "<leader>ff", ":FzfLua files<cr>")
vim.keymap.set("n", "<leader>fc", ":FzfLua files cwd=~/.config<cr>")

-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

-- markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>")

--Zen-mode
vim.keymap.set("n", "<leader>z", ":ZenMode<cr>")
