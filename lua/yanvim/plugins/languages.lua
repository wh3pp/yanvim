local M = {}
M.treesitter = {
  spec = {
    source = 'nvim-treesitter/nvim-treesitter',
    checkout = 'master',
    monitor = 'main',
    hooks = { post_checkout = function() vim.cmd('TSUpdate') end },
  },
  opts = {
    ensure_installed = { 'lua', 'vimdoc', 'luadoc' },
    highlight = { enable = true },
  },
  config = function(opts) require('nvim-treesitter.configs').setup(opts) end,
}
return M
