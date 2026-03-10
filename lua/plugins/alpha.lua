return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      '⠀⠀⠀⠀⠀⢀⡄⠀⠀⠀⠀⠀⠀⢰⡀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⢀⡴⡏⡇⠀⠀⣰⣇⡄⠀⢸⢹⢦⡀⠀⠀⠀',
      '⠀⢀⡴⣿⢦⡇⡇⠀⢧⣿⣿⡼⠀⢸⢸⡴⣿⢦⡀⠀',
      '⡴⠋⠀⣿⠀⡟⣧⣰⠏⠁⠈⠹⣆⣼⢻⠀⣿⠀⠙⢦',
      '⠀⠀⠀⣾⠀⡇⡇⢹⢦⡀⢀⡴⡏⢸⢸⠀⣿⠀⠀⠀',
      '⠀⠀⠀⣿⠀⡇⡇⢸⠀⣹⣏⠀⡇⢸⢸⠀⣿⠀⠀⠀',
      '⠀⠀⠀⣿⠀⠁⡇⣸⠞⠁⠈⠳⣇⢸⠈⠀⣿⠀⠀⠀',
      '⠀⠀⠀⣿⠀⠀⠟⢹⠀⠀⠀⠀⡏⠻⠀⠀⣿⠀⠀⠀',
      '⠀⠀⠀⠉⠀⠀⠀⠸⠀⠀⠀⠀⠇⠀⠀⠀⠙⠀⠀⠀',
    }

    dashboard.section.buttons.val = {
      dashboard.button('SPC b', '  Nuevo archivo', ':ene <BAR> startinsert <CR>'),
      dashboard.button('SPC f f', '󰱼  Buscar archivo'),
      dashboard.button('SPC f r', '  Recientes'),
      dashboard.button('q', '  Salir', ':qa<CR>'),
    }

    alpha.setup(dashboard.opts)
  end,
}
