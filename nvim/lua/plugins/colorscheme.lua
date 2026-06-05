return {
  -- Rose Pine
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = true,
    
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
    lazy = true, -- Added this to ensure it loads on startup alongside your active theme
    
    config = function()
      require('catppuccin').setup {
        -- transparent_background = true, -- This disables the main background fill
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
    lazy = true,
    
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
    lazy = true,
    
    config = function()
      vim.g.moonflyTransparent = true
      vim.g.moonflyNormalFloat = true
    end,
  },

  -- Tokyo Night
  {
    'folke/tokyonight.nvim',
    lazy = true,
    
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
    lazy = true,
    
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
    lazy = true,
    
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
    lazy = true,
    
    config = function()
      vim.g.everforest_background = 'soft'
      vim.g.everforest_transparent_background = 1
    end,
  },

  -- Gruvbox Material
  {
    'sainnhe/gruvbox-material',
    lazy = true,
    
    config = function()
      vim.g.gruvbox_material_background = 'soft'
      vim.g.gruvbox_material_foreground = 'material'
      vim.g.gruvbox_material_transparent_background = 1
    end,
  },

  -- Nightfox
  {
    'EdenEast/nightfox.nvim',
    lazy = true,
    
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
    lazy = true,
    
    config = function()
      require('nordic').setup {
        -- transparent_bg = true,
      }
    end,
  },

  -- Oxocarbon
  {
    'nyoom-engineering/oxocarbon.nvim',
    lazy = true,
    
    config = function()
      vim.opt.background = 'dark'
    end,
  },

  -- Night Owl
  {
    'oxfist/night-owl.nvim',
    lazy = true,
    
    config = function()
      require('night-owl').setup {
        transparent_background = true,
      }
    end,
  },

  -- Nord
  {
    'shaunsingh/nord.nvim',
    lazy = false, priority = 1000,
    
    config = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false

      vim.api.nvim_create_autocmd('ColorScheme', {
        group = vim.api.nvim_create_augroup('nord_custom', { clear = true }),
        pattern = 'nord',
        callback = function()
          local bg = '#2e3440'
          local bg_alt = '#3b4252'
          local bg_pop = '#434c5e'

          vim.api.nvim_set_hl(0, 'Normal', { bg = bg })
          vim.api.nvim_set_hl(0, 'NormalNC', { bg = bg })
          vim.api.nvim_set_hl(0, 'SignColumn', { bg = bg })
          vim.api.nvim_set_hl(0, 'LineNr', { bg = bg })
          vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = bg })
          vim.api.nvim_set_hl(0, 'NormalFloat', { bg = bg })
          vim.api.nvim_set_hl(0, 'FloatBorder', { bg = bg })

          vim.api.nvim_set_hl(0, 'Pmenu', { bg = bg_alt })
          vim.api.nvim_set_hl(0, 'PmenuSel', { bg = bg_pop })
          vim.api.nvim_set_hl(0, 'PmenuSbar', { bg = bg_alt })
          vim.api.nvim_set_hl(0, 'PmenuThumb', { bg = bg_pop })

          vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = bg })
          vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = bg })
          vim.api.nvim_set_hl(0, 'TelescopeTitle', { bg = bg_alt })
          vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = bg_alt })
          vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = bg_alt })
          vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg = bg })
          vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = bg })
          vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = bg })
          vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = bg })
          vim.api.nvim_set_hl(0, 'TelescopeSelection', { bg = bg_alt })

          vim.api.nvim_set_hl(0, 'SnacksDashboard', { bg = bg })
          vim.api.nvim_set_hl(0, 'SnacksDashboardDesc', { fg = '#88c0d0' })
          vim.api.nvim_set_hl(0, 'SnacksDashboardKey', { fg = '#a3be8c' })
          vim.api.nvim_set_hl(0, 'SnacksPicker', { bg = bg })
          vim.api.nvim_set_hl(0, 'SnacksPickerBorder', { bg = bg })

          vim.api.nvim_set_hl(0, 'StatusLine', { bg = bg_alt })
          vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = bg })
          vim.api.nvim_set_hl(0, 'WinSeparator', { bg = bg })

          vim.api.nvim_set_hl(0, 'LazyNormal', { bg = bg })
          vim.api.nvim_set_hl(0, 'MasonNormal', { bg = bg })
          vim.api.nvim_set_hl(0, 'WhichKeyNormal', { bg = bg })
          vim.api.nvim_set_hl(0, 'WhichKeyBorder', { bg = bg })
          vim.api.nvim_set_hl(0, 'OilNormal', { bg = bg })
        end,
      })
    end,
  },

  -- Dracula
  {
    'Mofiqul/dracula.nvim',
    lazy = true,
    
    config = function()
      require('dracula').setup {
        j,
        -- transparent_bg = true,
      }
    end,
  },
}
