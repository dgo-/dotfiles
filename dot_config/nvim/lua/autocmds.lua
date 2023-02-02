-------------------------------------------------------------------------------
-- Remove all trailing whitespace on save

vim.api.nvim_create_augroup("Trim", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
      local save = vim.fn.winsaveview()
      vim.api.nvim_exec([[keepjumps keeppatterns silent! %s/\s\+$//e]], false)          -- removes all trailing whitspace
      vim.fn.winrestview(save)
    end,
    desc = "CleanupFile",
    group = "Trim"
})

-------------------------------------------------------------------------------
-- Prevent new line to also start with a comment
vim.api.nvim_create_augroup("formatoptions", {clear = true})
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function ()
    vim.cmd [[set formatoptions-=cro]]
  end,
  group = "formatoptions"
})
