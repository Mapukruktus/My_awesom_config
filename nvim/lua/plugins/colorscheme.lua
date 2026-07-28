return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = true,
    config = function()
      require('rose-pine').setup { variant = 'auto', dark_variant = 'main', styles = { transparency = true } }
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = true,
    config = function()
      require('catppuccin').setup {
        integrations = { cmp = true, treesitter = true, notify = true, mini = { enabled = true, indentscope = true } },
        custom_highlights = function()
          return { NormalFloat = { bg = 'none' }, FloatBorder = { bg = 'none' } }
        end,
      }
    end,
  },
  {
    'zenbones-theme/zenbones.nvim',
    dependencies = 'rktjmp/lush.nvim',
    lazy = true,
    config = function()
      vim.g.zenbones_darken_comments = 45
    end,
  },
  {
    'bluz71/vim-moonfly-colors',
    name = 'moonfly',
    lazy = true,
    config = function()
      vim.g.moonflyTransparent = true
    end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = true,
    config = function()
      require('tokyonight').setup { transparent = true }
    end,
  },
  {
    'craftzdog/solarized-osaka.nvim',
    lazy = true,
    opts = { transparent = true },
    config = function(_, opts)
      require('solarized-osaka').setup(opts)
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    lazy = true,
    config = function()
      require('kanagawa').setup { transparent = true }
    end,
  },
  {
    'sainnhe/everforest',
    lazy = true,
    config = function()
      vim.g.everforest_transparent_background = 1
    end,
  },
  {
    'sainnhe/gruvbox-material',
    lazy = true,
    config = function()
      vim.g.gruvbox_material_transparent_background = 1
    end,
  },
  {
    'EdenEast/nightfox.nvim',
    lazy = true,
    config = function()
      require('nightfox').setup { options = { transparent = true } }
    end,
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = true,
    config = function()
      require('nordic').setup {}
    end,
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
    lazy = true,
    config = function()
      vim.opt.background = 'dark'
    end,
  },
  {
    'oxfist/night-owl.nvim',
    lazy = true,
    config = function()
      require('night-owl').setup { transparent_background = true }
    end,
  },
  {
    'shaunsingh/nord.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_bold = false
      vim.g.nord_italic = false
      vim.g.nord_italic_comments = false
      vim.g.nord_disable_background = false
    end,
  },
  {
    'Mofiqul/dracula.nvim',
    lazy = true,
    config = function()
      require('dracula').setup {}
    end,
  },
}
