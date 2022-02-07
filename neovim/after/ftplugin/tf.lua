-- force tf files to filetype terraform
vim.api.nvim_exec([[
  augroup terraform
    autocmd!
    autocmd BufRead,BufNewFile *.tf set filetype=terraform
    autocmd BufWritePre *.tf lua vim.lsp.buf.formatting_sync()
  augroup END
]], false)
