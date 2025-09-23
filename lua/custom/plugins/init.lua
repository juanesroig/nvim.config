-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
return {
  {
    'akinsho/bufferline.nvim',
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
    end,
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
    config = function()
      require('Comment').setup()
    end
  },
  {
    "goolord/alpha-nvim",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Banner ASCII (puedes cambiarlo por otro)
      dashboard.section.header.val = {
        "⠀⠀⠀⠀⠀⢀⡄⠀⠀⠀⠀⠀⠀⢰⡀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⢀⡴⡏⡇⠀⠀⣰⣇⡄⠀⢸⢹⢦⡀⠀⠀⠀",
        "⠀⢀⡴⣿⢦⡇⡇⠀⢧⣿⣿⡼⠀⢸⢸⡴⣿⢦⡀⠀",
        "⡴⠋⠀⣿⠀⡟⣧⣰⠏⠁⠈⠹⣆⣼⢻⠀⣿⠀⠙⢦",
        "⠀⠀⠀⣾⠀⡇⡇⢹⢦⡀⢀⡴⡏⢸⢸⠀⣿⠀⠀⠀",
        "⠀⠀⠀⣿⠀⡇⡇⢸⠀⣹⣏⠀⡇⢸⢸⠀⣿⠀⠀⠀",
        "⠀⠀⠀⣿⠀⠁⡇⣸⠞⠁⠈⠳⣇⢸⠈⠀⣿⠀⠀⠀",
        "⠀⠀⠀⣿⠀⠀⠟⢹⠀⠀⠀⠀⡏⠻⠀⠀⣿⠀⠀⠀",
        "⠀⠀⠀⠉⠀⠀⠀⠸⠀⠀⠀⠀⠇⠀⠀⠀⠙⠀⠀⠀",
      }

      -- Botones de acceso rápido
      dashboard.section.buttons.val = {
        dashboard.button("SPC b", "  Nuevo archivo", ":ene <BAR> startinsert <CR>"),
        dashboard.button("SPC f f", "󰱼  Buscar archivo"),
        dashboard.button("SPC f r", "  Recientes"),
        dashboard.button("q", "  Salir", ":qa<CR>"),
      }

      alpha.setup(dashboard.opts)
    end,
  }
}
