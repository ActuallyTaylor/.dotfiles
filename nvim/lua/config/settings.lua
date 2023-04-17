vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.spelllang = { "en" }
opt.autowrite = true -- Enable auto write

opt.number = true -- Turn on line numbers
opt.scrolloff = 4 -- Lines of context

opt.shiftwidth = 4 -- The size of tabs
opt.tabstop = 4 --Number of spaces tabs count for 
opt.expandtab = true -- Use spaces instead of tabs
opt.smarttab = true -- Smart insert tabs
opt.smartindent = true -- Insert indents automatically

opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.completeopt = "menu,menuone,noselect" -- 

opt.list = true -- Show some invisible characters (tabs...
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup

opt.mouse = "a" -- Enable mouse mode

opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current

opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap

opt.title = true
opt.autoread = true
opt.hidden = true

opt.ignorecase = true
opt.incsearch = true
opt.smartcase = true
opt.showcmd = true

opt.termguicolors = true -- True color support

