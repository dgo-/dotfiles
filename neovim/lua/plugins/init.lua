local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

function get_config(name)
   return string.format("require(\"plugins/configs/%s\")", name)
end

return require('packer').startup(function(use)
  -- My plugins here
   use { "wbthomason/packer.nvim" }

   -----------------------------------------------------------------------------------
   -- start installing plugins

   -- filetype detection
   --use("nathom/filetype.nvim")

   -- neoscroll (smooth scrolling)
   use {
    "karb94/neoscroll.nvim",
    config = get_config("neoscroll")
   }

   -- hightlight colors
   use {
      "norcalli/nvim-colorizer.lua",
      config = get_config("colorizer")
   }

  -- completion
  use {
      "hrsh7th/nvim-cmp",
      requires = {
          {"hrsh7th/cmp-nvim-lsp"}, {"hrsh7th/cmp-buffer"}, {"hrsh7th/cmp-path"},
          {"hrsh7th/cmp-cmdline"}, {"hrsh7th/cmp-vsnip"},
          {"f3fora/cmp-spell", {"hrsh7th/cmp-calc"}, {"onsails/lspkind-nvim"}}
      },
      config = get_config("cmp")
  }

  -- snippets
  use {"hrsh7th/vim-vsnip", config = get_config("vsnip")}

  -- lsp
  use {
    "neovim/nvim-lspconfig",
    config = get_config("lspconfig"),
    requires = {{"ray-x/lsp_signature.nvim"}}
  }

   -- treesitter
   use {
       "nvim-treesitter/nvim-treesitter",
       config = get_config("treesitter"),
       run = ":TSUpdate"
   }

   --
  use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      cmd = {"TroubleToggle", "Trouble"},
      config = get_config("trouble")
  }

   -- golang
   use {
     "ray-x/go.nvim",
      config = get_config("go")
    }

   -- bufferline (tabs)
   use {
       "akinsho/bufferline.nvim",
       requires = {'kyazdani42/nvim-web-devicons'},
       config = get_config("bufferline"),
   }

   -- colorscheme
   use {
     'folke/tokyonight.nvim',
     config = get_config("colorscheme"),
   }

   -- lualine (statusline)
   use {
       "nvim-lualine/lualine.nvim",
       config = get_config("lualine"),
       requires = {"kyazdani42/nvim-web-devicons", opt = true}
   }

   use {
    "folke/which-key.nvim",
    config = get_config("which")
   }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
