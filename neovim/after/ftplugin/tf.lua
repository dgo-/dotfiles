-- force tf files to filetype terraform
vim.api.nvim_exec([[
  augroup tf
    autocmd!
    autocmd BufRead,BufNewFile *.tf set filetype=terraform
  augroup END
]], false)
