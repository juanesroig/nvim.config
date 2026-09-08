return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = { 'markdown' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  keys = {
    { '<leader>tm', '<cmd>RenderMarkdown toggle<CR>', desc = '[T]oggle [M]arkdown render' },
  },
  opts = {
    -- Show the raw markup on the cursor line so the text stays editable
    anti_conceal = { enabled = true },
    heading = {
      sign = false,
      width = 'block',
      left_pad = 0,
      right_pad = 2,
    },
    code = {
      sign = false,
      width = 'block',
      right_pad = 2,
      border = 'thin',
    },
    bullet = {
      icons = { '●', '○', '◆', '◇' },
    },
    checkbox = {
      unchecked = { icon = '󰄱 ' },
      checked = { icon = '󰄲 ' },
    },
    pipe_table = { preset = 'round' },
    -- No latex parser / utftex installed, and no need for it here
    latex = { enabled = false },
    quote = { icon = '▌' },
  },
}
