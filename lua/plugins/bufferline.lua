return {
  'akinsho/bufferline.nvim',
  enabled = false,
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      show_close_icon = false,
      show_buffer_close_icons = false,
      diagnostics = 'nvim_lsp',
      diagnostics_update_on_event = true,
      offsets = {
        filetype = 'NvimTree',
        text = 'Explorer',
        text_align = 'center',
        separator = true,
      },
    },
  },
  config = function(_, opts)
    require('bufferline').setup(opts)

    vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
    vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Prev buffer' })
    vim.keymap.set('n', '<leader>x', '<Cmd>bdelete<CR>', { desc = 'Close buffer' })
    vim.keymap.set('n', '<leader>b', '<Cmd>enew<CR>', { desc = 'New buffer' })
  end,
}
