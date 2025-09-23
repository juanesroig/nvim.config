print 'mappings'

-- Bufferline
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Prev buffer' })
vim.keymap.set('n', '<leader>x', '<Cmd>bdelete<CR>', { desc = 'Close buffer' })
vim.keymap.set('n', '<leader>b', '<Cmd>enew<CR>', { desc = 'New buffer' })


-- Comments
vim.keymap.set('n', '<leader>/', function()
  require('Comment.api').toggle.linewise.current()
end, { desc = 'Toggle comment on current line' })

vim.keymap.set('v', '<leader>/', function()
  local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
  vim.api.nvim_feedkeys(esc, 'nx', false)
  require('Comment.api').toggle.linewise(vim.fn.visualmode())
end, { desc = 'Toggle comment on selection' })

