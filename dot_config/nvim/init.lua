-- set leader key
vim.g.mapleader = ','

vim.o.syntax = ON
vim.o.number = true -- Show line numbers

-- search
vim.o.ignorecase = true -- Ignore case for search
vim.o.smartcase = true  -- enable smartcase
vim.o.hlsearch = false  -- highlight search

-- long lines will be wrapped
vim.o.wrap = true
vim.o.breakindent = true

-- tabs and spaces
vim.o.tabstop = 2 -- tab is 2 spaces
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true -- replace tab with spaces
vim.o.smarttab = true

--indent
vim.o.autoindent = false

-- swap file
vim.o.swapfile = false
vim.o.wb = false
vim.o.backup = false
