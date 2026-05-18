return {
  -- Rose Pine
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        variant = 'auto',
        dark_variant = 'main',
        styles = {
          bold = false,
          italic = false,
          transparency = true,
        },
      }
    end,
  },

  -- Catppuccin (Fixed Braces Here)
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false, -- Added this to ensure it loads on startup alongside your active theme
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        transparent_background = true, -- This disables the main background fill
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = true,
          mini = {
            enabled = true,
            indentscope = true,
          },
        },
        custom_highlights = function(colors)
          return {
            NormalFloat = { bg = 'none' },
            FloatBorder = { bg = 'none' },
            NeoTreeNormal = { bg = 'none' },
            NeoTreeNormalNC = { bg = 'none' },
          }
        end,
      }
    end,
  },

  -- Zenbones
  {
    'zenbones-theme/zenbones.nvim',
    dependencies = 'rktjmp/lush.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.zenbones_italic = false
      vim.opt.signcolumn = 'no'
      vim.g.zenbones_darken_comments = 45
    end,
  },

  -- Moonfly
  {
    'bluz71/vim-moonfly-colors',
    name = 'moonfly',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.moonflyTransparent = true
      vim.g.moonflyNormalFloat = true
    end,
  },

  -- Solarized Osaka
  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      terminal_colors = true,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
      },
    },
    config = function(_, opts)
      require('solarized-osaka').setup(opts)
    end,
  },
}
