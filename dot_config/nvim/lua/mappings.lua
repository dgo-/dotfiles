local keymap = vim.api.nvim_set_keymap
default_options = {noremap = true, silent = true}
expr_options = {noremap = true, expr = true, silent = true}

-- map the leader key
keymap("n", "<Space>", "<NOP>", default_options)
vim.g.mapleader = " "

