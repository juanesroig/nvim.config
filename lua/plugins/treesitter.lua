return {
  'nvim-treesitter/nvim-treesitter',
  commit = "v0.9.2",
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'tsx', 'typescript', 'javascript' },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true, disable = { 'ruby' } },
    filetype_to_parsername = {
      typescriptreact = "tsx",
    },
  },
}
