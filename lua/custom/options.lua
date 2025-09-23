vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.shiftround = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '90'
vim.opt.showmatch = true
vim.opt.matchtime = 2
vim.opt.cmdheight = 1
vim.opt.showmode = true
vim.opt.pumheight = 0
vim.opt.pumblend = 0
vim.opt.winblend = 0
vim.opt.conceallevel = 0
vim.opt.concealcursor = ''
vim.opt.lazyredraw = true
vim.opt.synmaxcol = 3000

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.updatetime = 50
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 50
vim.opt.autoread = true
vim.opt.autowrite = false

vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.backspace = 'indent,eol,start'
vim.opt.autochdir = false
-- vim.iskeyword:append('-')  -- css mode does that automatically, I don't think I need it in other context
-- vim.opt.path:append('**')  -- include subdirectory in search
vim.opt.selection = 'inclusive'
vim.opt.mouse = 'a'
vim.opt.clipboard:append 'unnamedplus'
vim.opt.modifiable = true
vim.opt.encoding = 'utf-8'
