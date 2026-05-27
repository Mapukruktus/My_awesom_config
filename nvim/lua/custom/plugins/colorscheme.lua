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

  -- Tokyo Night
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        transparent = true,
        styles = {
          sidebars = 'transparent',
          floats = 'transparent',
        },
      }
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

  -- Kanagawa
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        transparent = true,
        theme = 'wave', -- Load "wave" theme by default
        background = {
          dark = 'wave',
          light = 'lotus',
        },
      }
    end,
  },

  -- Everforest
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_background = 'soft'
      vim.g.everforest_transparent_background = 1
    end,
  },

  -- Gruvbox Material
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = 'soft'
      vim.g.gruvbox_material_foreground = 'material'
      vim.g.gruvbox_material_transparent_background = 1
    end,
  },

  -- Nightfox
  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('nightfox').setup {
        options = {
          transparent = true,
        },
      }
    end,
  },

  -- Nordic
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('nordic').setup {
        -- transparent_bg = true,
      }
    end,
  },

  -- Oxocarbon
  {
    'nyoom-engineering/oxocarbon.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.background = 'dark'
    end,
  },

  -- Night Owl
  {
    'oxfist/night-owl.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('night-owl').setup {
        transparent_background = true,
      }
    end,
  },

  -- Dracula
  {
    'Mofiqul/dracula.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('dracula').setup {
        j,
        -- transparent_bg = true,
      }
    end,
  },
}
