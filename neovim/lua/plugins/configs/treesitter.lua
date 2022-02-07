require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true
  },
  ensure_installed = "maintained",
  indent = {enable = true},
  autopairs = {{enable = true}},
}
