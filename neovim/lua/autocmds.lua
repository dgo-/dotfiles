-------------------------------------------------------------------------------
-- Remove all trailing whitespace on save
vim.api.nvim_exec([[
  augroup TrimWhiteSpace
    au!
    autocmd BufWritePre * :%s/\s\+$//e
  augroup END
]], false)

-------------------------------------------------------------------------------
-- Prevent new line to also start with a comment
vim.api.nvim_exec([[
  augroup NewLineComment
    au!
    autocmd BufEnter * set formatoptions-=cro
  augroup END
]], false)
