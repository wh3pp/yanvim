local M = {}
M.mason_tool_installer = {
  spec = {
    source = 'WhoIsSethDaniel/mason-tool-installer.nvim',
    depends = {
      'mason-org/mason.nvim',
      'neovim/nvim-lspconfig',
    },
  },
  opts = {
    ensure_installed = {
      'lua-language-server',
      'stylua',
    },
    integrations = {
      ['mason-lspconfig'] = false,
      ['mason-null-ls'] = false,
      ['mason-nvim-dap'] = false,
    },
  },
  config = function(opts) require('mason-tool-installer').setup(opts) end,
}

M.mason = {
  spec = {
    source = 'mason-org/mason.nvim',
  },
  opts = {},
  config = function(opts) require('mason').setup(opts) end,
}

return M
