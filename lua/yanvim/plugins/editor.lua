local M = {}

-- Oil.nvim
M.oil = {
  spec = {
    source = 'stevearc/oil.nvim',
  },
  opts = {},
  config = function(opts)
    require('oil').setup(opts)
    local map = vim.keymap.set
    map('n', '<leader>e', '<cmd>Oil<cr>', { desc = 'Open file explorer (oil)' })
  end,
}

-- Mini.pick
M.pick = {
  opts = {},
  config = function(opts)
    require('mini.pick').setup(opts)

    local map = vim.keymap.set
    map('n', '<leader>ff', '<cmd>Pick files<cr>', { desc = 'Open file finder (Pick)' })
    map('n', '<leader>fb', '<cmd>Pick buffers<cr>', { desc = 'Open buffer finder (Pick)' })
    map('n', '<leader>fg', '<cmd>Pick grep_live<cr>', { desc = 'Open file grep live (Pick)' })
  end,
}

-- Mini.ai
M.ai = {
  opts = {},
  config = function(opts) require('mini.ai').setup(opts) end,
}

-- Mini.comment
M.comment = {
  opts = {},
  config = function(opts) require('mini.comment').setup(opts) end,
}

-- Mini.extra
M.extra = {
  opts = {},
  config = function(opts) require('mini.extra').setup(opts) end,
}

-- Mini.keymap
M.keymap = {
  opts = {},
  config = function(opts)
    local keymap = require('mini.keymap')
    keymap.setup(opts)

    local map_combo = keymap.map_combo
    local mode = { 'i', 'c', 'x', 's' }
    map_combo(mode, 'jk', '<BS><BS><Esc>')
    map_combo(mode, 'kj', '<BS><BS><Esc>')
    map_combo('t', 'jk', '<BS><BS><C-\\><C-n>')
    map_combo('t', 'kj', '<BS><BS><C-\\><C-n>')
  end,
}

-- Mini.move
M.move = {
  opts = {},
  config = function(opts) require('mini.move').setup(opts) end,
}

-- Mini.pairs
M.pairs = {
  opts = {},
  config = function(opts) require('mini.pairs').setup(opts) end,
}

-- Mini.surround
M.surround = {
  opts = {},
  config = function(opts) require('mini.surround').setup(opts) end,
}

return M
