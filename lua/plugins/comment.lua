return {
  'numToStr/Comment.nvim',
  opts = {},
  config = function()
    require('Comment').setup()

    vim.keymap.set('n', '<leader>/', function()
      require('Comment.api').toggle.linewise.current()
    end, { desc = 'Toggle comment on current line' })

    vim.keymap.set('v', '<leader>/', function()
      local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
      vim.api.nvim_feedkeys(esc, 'nx', false)
      require('Comment.api').toggle.linewise(vim.fn.visualmode())
    end, { desc = 'Toggle comment on selection' })
  end,
}
