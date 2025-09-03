local M = {}

M.conform = {
  spec = {
    source = 'stevearc/conform.nvim',
  },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
    },
  },

  config = function(opts)
    local conform = require('conform').setup(opts)

    local map = vim.keymap.set
    map(
      'n',
      '<leader>lf',
      function()
        conform.format({
          async = true,
          lsp_format = 'fallback',
        })
      end,
      { desc = 'Format current buffer (conform)' }
    )
  end,
}
return M
