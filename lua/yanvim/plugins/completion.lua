local M = {}
local BLINK_CMP_VERSION = 'v1.6.0'

-- Blink.cmp
M.blink = {
  spec = {
    source = 'Saghen/blink.cmp',
    depends = { 'rafamadriz/friendly-snippets' },
    checkout = BLINK_CMP_VERSION,
  },
  opts = {
    completion = {
      menu = {
        draw = {
          columns = {
            { 'kind_icon', 'label', 'label_description', gap = 1 },
            { 'kind' },
          },
          padding = { 0, 1 },
          components = {
            kind_icon = {
              text = function(ctx)
                local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
                return kind_icon
              end,
              highlight = function(ctx)
                local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                return hl
              end,
            },
            kind = {
              highlight = function(ctx)
                local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                return hl
              end,
            },
          },
        },
      },

      documentation = {
        auto_show = true,
        auto_show_delay_ms = 250,
      },

      ghost_text = { enabled = true, show_with_menu = false },

      list = {
        selection = { preselect = false },
      },
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        lsp = {
          transform_items = function(_, items)
            return vim.tbl_filter(
              function(item) return item.kind ~= require('blink.cmp.types').CompletionItemKind.Keyword end,
              items
            )
          end,
        },
      },
    },
  },
  config = function(opts) require('blink.cmp').setup(opts) end,
}

-- Mini.snippets
M.snippets = {
  opts = {},
  config = function(opts) require('mini.snippets').setup(opts) end,
}
return M
