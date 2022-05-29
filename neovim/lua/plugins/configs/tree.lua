-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    change_dir = {
      global = false,
    },
    open_file = {
      quit_on_open = false,
      -- 0 by default, will disable the window picker.
      window_picker = {
        enable = true
      }
    }
  },
  renderer = {
    -- this option shows indent markers when folders are open
    indent_markers = {
      enable = true,
    },
    icons = {
      -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
      padding = " ",
      --  defaults to ' ➛ '. used as a separator between symlinks' source and target.
      symlink_arrow = " >> "
    },
    -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
    highlight_git = true,
    -- 0 by default, will enable folder and file icon highlight for opened files/directories.
    highlight_opened_files = "icon",
    -- This is the default. See :help filename-modifiers for more options
    root_folder_modifier = ":~",
    -- 0 by default, append a trailing slash to folder names
    add_trailing = true,
    --  0 by default, compact folders that only contain a single folder into one node in the file tree
    group_empty = true,
  }
}
