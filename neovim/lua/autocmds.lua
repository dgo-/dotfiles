-------------------------------------------------------------------------------
-- Remove all trailing whitespace on save

-- check if current filetype is in filetypes array
local match_filetype = function(filetypes)
  for _, filetype in ipairs(filetypes) do
    if vim.bo.filetype == filetype then
      return true
    end
  end
  return false
end

vim.api.nvim_create_augroup("TrimWhiteSpace", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
      disabled_filetypes = {"markdown"}
      if not match_filetype(disabled_filetypes) then
        local save = vim.fn.winsaveview()
        vim.api.nvim_exec([[keepjumps keeppatterns silent! %s/\s\+$//e]], false)          -- removes all trailing whitspace
        vim.api.nvim_exec([[keepjumps keeppatterns silent! %s/\($\n\s*\)\+\%$//]], false) -- trim last line
        vim.fn.winrestview(save)
      end
    end,
    desc = "CleanupFile",
    group = "TrimWhiteSpace"
})

-------------------------------------------------------------------------------
-- Prevent new line to also start with a comment
vim.api.nvim_exec([[
  augroup NewLineComment
    au!
    autocmd BufEnter * set formatoptions-=cro
  augroup END
]], false)
