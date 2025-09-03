local g = vim.g
local o = vim.opt

-- Key mappings
g.mapleader = ' '
g.maplocalleader = ' '

-- Indentation
o.tabstop = 2
o.expandtab = true
o.shiftwidth = 2
o.softtabstop = 2

-- UI
o.relativenumber = true
o.ruler = false
o.signcolumn = 'yes'
o.numberwidth = 2
o.cursorline = true
o.cursorlineopt = 'number'
o.winborder = 'rounded'
o.list = true

-- Search behavior
o.ignorecase = true
o.smartcase = true

-- Editing and file management
o.clipboard = 'unnamedplus'
o.undofile = true

-- Window management
o.splitbelow = true
o.splitright = true

-- Timings
o.timeoutlen = 400
o.updatetime = 500

-- Performance settings
g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
