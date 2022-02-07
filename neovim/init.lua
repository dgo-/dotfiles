--[[

███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

Neovim init file
build for neovim >0.5

--]]


-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------

--require('settings')
--require('plugin-manager')
--require('plugins/nvim-tree')
--require('plugins/indent-blankline')
--require('plugins/nvim-autopairs')
--require('plugins/nvim-cmp')
--require('plugins/nvim-lspconfig')
--require('plugins/nvim-treesitter')
--require('plugins/barbar')

--require('keymaps')

require("options")
require("autocmds")
require("mappings")

require("plugins")
