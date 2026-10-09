return {

  -- 1. Kanagawa (Default Startup Theme)
  {
    'rebelot/kanagawa.nvim',
    lazy = false, -- Load on startup
    priority = 1000, -- Load before other plugins
    config = function()
      require('kanagawa').setup {
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = 'wave', -- Select "wave" variant
        background = { -- map the value of 'background' option to a theme
          dark = 'wave',
          light = 'lotus',
        },
      }

      -- Set kanagawa as the active colorscheme on startup
      vim.cmd 'colorscheme kanagawa'
    end,
  },

  -- 2. Nord (Lazy loaded)
  {
    'shaunsingh/nord.nvim',
    lazy = true,
    config = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = true
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false

      -- Toggle background transparency for Nord (only when it is active)
      local bg_transparent = true
      local toggle_transparency = function()
        bg_transparent = not bg_transparent
        vim.g.nord_disable_background = bg_transparent
        vim.cmd [[colorscheme nord]]
      end

      vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
    end,
  },

  -- 3. Gruvbox (Lazy loaded)
  {
    'ellisonleao/gruvbox.nvim',
    lazy = true,
    config = function()
      require('gruvbox').setup {
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true,
        contrast = '',
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      }
    end,
  },
}
