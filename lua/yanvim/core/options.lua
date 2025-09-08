local g = vim.g
local opt = vim.opt

-- Key mappings
g.mapleader = ' '
g.maplocalleader = ' '

-- Indentation
opt.tabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2

-- UI
opt.relativenumber = true
opt.ruler = false
opt.signcolumn = 'yes'
opt.numberwidth = 2
opt.cursorline = true
opt.cursorlineopt = 'number'
opt.winborder = 'rounded'
opt.list = true

-- Search behavior
opt.ignorecase = true
opt.smartcase = true

-- Editing and file management
opt.clipboard = 'unnamedplus'
opt.undofile = true
opt.whichwrap:append('<>[]hl')

-- Window management
opt.splitbelow = true
opt.splitright = true

-- Timings
opt.timeoutlen = 400
opt.updatetime = 500

-- Performance settings
g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

-- add binaries installed by mason.nvim to path
local is_windows = vim.fn.has('win32') ~= 0
local sep = is_windows and '\\' or '/'
local delim = is_windows and ';' or ':'
vim.env.PATH = table.concat({ vim.fn.stdpath('data'), 'mason', 'bin' }, sep) .. delim .. vim.env.PATH
