--[[ vim.api.nvim_exec([[
  augroup lua
    autocmd!
    autocmd BufWritePre *.lua lua format()
  augroup END
, false) ]]
