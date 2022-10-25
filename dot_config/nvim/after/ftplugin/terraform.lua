-- format on save 
vim.api.nvim_exec([[
  augroup terraform
    autocmd!
    autocmd BufWritePre *.tf lua vim.lsp.buf.formatting_sync()
    autocmd BufWritePre *.tfvars lua vim.lsp.buf.formatting_sync()
  augroup END
]], false)
