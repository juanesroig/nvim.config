return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()

    local statusline = require 'mini.statusline'
    statusline.setup {
      use_icons = true,
      content = {
        active = function()
          local mode, mode_hl = statusline.section_mode { trunc_width = 120 }
          local git = statusline.section_git { trunc_width = 40 }
          local diagnostics = statusline.section_diagnostics { trunc_width = 75 }
          local filename = statusline.section_filename { trunc_width = 140 }
          local fileinfo = statusline.section_fileinfo { trunc_width = 120 }
          local location = statusline.section_location { trunc_width = 75 }
          local search = statusline.section_searchcount { trunc_width = 75 }

          local modified = vim.bo.modified and ' ●' or ''

          return statusline.combine_groups {
            { hl = mode_hl, strings = { mode } },
            { hl = 'MiniStatuslineDevinfo', strings = { git, diagnostics } },
            '%<',
            { hl = 'StatuslineFilename', strings = { filename } },
            { hl = 'StatuslineModified', strings = { modified } },
            '%=',
            { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
            { hl = mode_hl, strings = { location } },
            { hl = 'MiniStatuslineModeOther', strings = { search } },
          }
        end,
        inactive = function()
          local filename = statusline.section_filename { trunc_width = 140 }
          local modified = vim.bo.modified and ' ●' or ''

          return statusline.combine_groups {
            { hl = 'StatuslineFilename', strings = { filename } },
            { hl = 'StatuslineModified', strings = { modified } },
          }
        end,
      },
    }

    vim.api.nvim_set_hl(0, 'StatuslineFilenameStrong', { bold = false })
    vim.api.nvim_set_hl(0, 'StatuslineModified', { link = 'DiagnosticWarn' })
  end,
}
