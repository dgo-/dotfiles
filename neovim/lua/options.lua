-------------------------------------------------------------------------
-- general
vim.opt.title         = true    -- set title
vim.opt.clipboard     = 'unnamedplus' -- use system clipboard
vim.opt.mouse         = 'a'    -- enable mouse support
vim.opt.hidden        = true
vim.opt.termguicolors = true
vim.opt.completeopt   = {"menu", "menuone", "noselect", "noinsert"} -- A comma separated list of options for Insert mode completion
vim.opt.updatetime    = 300 -- faster completion
vim.opt.timeoutlen    = 400 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.ttimeoutlen   = 0 -- Time in milliseconds to wait for a key code sequence to complete
vim.opt.lazyredraw    = true -- do not redraw screen while running macros
vim.opt.fileencoding  = "utf-8" -- the encoding written to a file

-------------------------------------------------------------------------
-- look and feel
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50" -- block in normal and beam cursor in insert mode
vim.opt.cmdheight     = 1    -- set commandline height
vim.opt.splitbelow    = true -- force all horizontal splits to go below current window
vim.opt.splitright    = true -- force all vertical splits to go to the right of current window
vim.opt.cursorline    = true -- highlight the current line
vim.opt.scrolloff     = 3 -- Minimal number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 5 -- The minimal number of columns to scroll horizontally

--[[
vim.opt.list = true -- enable listchars
vim.opt.listchars = {
  eol     = '↵',
  tab     = '>·',
  trail   = '~',
  extends = '>',
  space   = '␣'
}
]]--

-------------------------------------------------------------------------
-- files
vim.opt.backup   = false                                -- don't create backup files
vim.opt.swapfile = true                                 -- enable/disable swap file creation
vim.opt.dir      = vim.fn.stdpath("data") .. "/swp"     -- swap file dir
vim.opt.undofile = true                                 -- enable persitent undo
vim.opt.undodir  = vim.fn.stdpath("data") .. "/undodir" -- undo file dir

-------------------------------------------------------------------------
-- line numbers
vim.opt.number         = true  -- enable linenumbers
vim.opt.numberwidth    = 1     -- initial line number width use minimal space by default
vim.opt.relativenumber = false -- disable relative numbers
vim.opt.ruler          = true  -- enable ruler(line and charakter number)

-------------------------------------------------------------------------
-- search
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.smartcase  = true -- enable smart case
vim.opt.hlsearch   = true -- highlight all matches on previous search pattern

-------------------------------------------------------------------------
-- ident
vim.opt.smartindent = true -- autoindent new lines
vim.opt.expandtab   = true -- use spaces as tabs
vim.opt.shiftwidth  = 2    -- 2 spaces for autoindent
vim.opt.tabstop     = 2    -- 2 spaces for a tab

-------------------------------------------------------------------------
-- wildignore
vim.opt.wildignorecase = true -- When set case is ignored when completing file names and directories
vim.opt.wildignore = [[
.git,.hg,.svn
*.aux,*.out,*.toc
*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
*.mp3,*.oga,*.ogg,*.wav,*.flac
*.eot,*.otf,*.ttf,*.woff
*.doc,*.pdf,*.cbr,*.cbz
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
*.swp,.lock,.DS_Store,._*
*/tmp/*,*.so,*.swp,*.zip,**/node_modules/**,**/target/**,**.terraform/**"
]]
-------------------------------------------------------------------------
-- disable buitins
local disabled_builtins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "man",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "tutor_mode_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
}
for _, plugin in pairs(disabled_builtins) do
  vim.g["loaded_" .. plugin] = 1
end

-- disable filetypes.vim only use lua version
vim.g.do_filetype_lua = 1
vim.g.did_load_filetypes = 0

-- disable plugin interface for scripting languages
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0
