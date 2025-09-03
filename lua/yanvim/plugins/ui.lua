local M = {}

-- Kanagawa theme
M.kanagawa = {
  spec = {
    source = 'rebelot/kanagawa.nvim',
  },
  opts = {
    transparent = true,
    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = 'none',
          },
        },
      },
    },
    overrides = function(colors)
      local theme = colors.theme
      return {
        NormalFloat = { bg = 'none' },
        FloatBorder = { bg = 'none' },
        FloatTitle = { bg = 'none' },
        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
        Pmenu = { fg = theme.ui.shade0, bg = 'none' },
        PmenuSel = { fg = 'none', bg = theme.ui.bg_p1, bold = true },
        PmenuSbar = { bg = theme.ui.bg_m1 },
        PmenuThumb = { bg = theme.ui.bg_p2 },
        BlinkCmpMenuBorder = { bg = 'none' },
        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        MiniPickNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
      }
    end,
  },
  load_later = false,
  config = function(opts) require('kanagawa').setup(opts) end,
}

-- Mini.icons
M.icons = {
  opts = {},
  config = function(opts) require('mini.icons').setup(opts) end,
}

-- Mini.indentscope
M.indentscope = {
  opts = {},
  config = function(opts) require('mini.indentscope').setup(opts) end,
}

-- Mini.notify
M.notify = {
  opts = {},
  config = function(opts) require('mini.notify').setup(opts) end,
}

-- Mini.tabline
M.tabline = {
  opts = {},
  config = function(opts) require('mini.tabline').setup(opts) end,
}

-- Mini.hippatterns
M.hipatterns = {
  opts = {},
  config = function(_)
    local hipatterns = require('mini.hippatterns')
    hipatterns.setup({
      highlighters = {
        fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
        hack = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
        todo = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
        note = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },
        -- Highlight hex color strings (`#rrggbb`) using that color
        hex_color = hipatterns.gen_highlighter.hex_color(),
      },
    })
  end,
}

return M
