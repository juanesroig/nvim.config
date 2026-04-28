return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  init = function()
    vim.treesitter.language.register('tsx', 'typescriptreact')
  end,
  opts = {
    ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'tsx', 'typescript', 'javascript' },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true, disable = { 'ruby' } },
  },
}
