vim.opt_local.tabstop     = 4
vim.opt_local.shiftwidth  = 4
vim.opt_local.softtabstop = 4
vim.opt_local.expandtab   = false

-- format on save
vim.api.nvim_exec([[
    autocmd BufWritePre *.go :silent! lua require('go.format').goimport()
]], false)

-- keys
local wk = require("which-key")
default_options = {noremap = true, silent = true}
wk.register({
    c = {
        name = "Coding",
        a = {"<cmd>GoAddTag<cr>", "Add tags to struct"},
        c = {"<cmd>GoCoverage<cr>", "Test coverage"},
        e = {"<cmd>GoIfErr<cr>", "Add if err"},
        g = {"<cmd>lua require('go.comment').gen()<cr>", "Generate comment"},
        l = {"<cmd>GoLint<cr>", "Run linter"},
        r = {"<cmd>GoRun<cr>", "Run"},
        s = {"<cmd>GoFillStruct<cr>", "Autofill struct"},
        t = {"<cmd>GoTest<cr>", "Run tests"},
        v = {"<cmd>GoVet<cr>", "Go vet"}
    }
}, {prefix = "<leader>", mode = "n", default_options})
