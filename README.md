# Neovim config

Configuracion modular basada en `lazy.nvim`.

## Estructura

- `init.lua`: entrypoint, leader y requires
- `lua/config/base.lua`: opciones y autocmds base
- `lua/config/keymaps.lua`: keymaps generales
- `lua/config/lazy.lua`: bootstrap y setup de lazy
- `lua/plugins/`: un archivo por plugin (config + keymaps del plugin)

## Requisitos

- Neovim estable o nightly
- `git`, `make`, `unzip`
- `ripgrep`, `fd`
- Portapapeles: `xclip`/`xsel`/`win32yank`
- Nerd Font (opcional): activa `vim.g.have_nerd_font = true` en `lua/config/base.lua`

## Instalacion

```sh
git clone <tu_repo> "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
```

Inicia Neovim y deja que `lazy` instale los plugins:

```sh
nvim
```

## Plugins

- Estado: `:Lazy`
- Actualizar: `:Lazy update`

## Notas

- Keymaps generales en `lua/config/keymaps.lua`
- Keymaps de plugins en su archivo dentro de `lua/plugins/`
