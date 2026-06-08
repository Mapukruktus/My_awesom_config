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
      vim.api.nvim_create_autocmd('ColorScheme', {
        callback = function()
          -- local bg = '#2e3440'
          -- local bg_alt = '#3b4252'
          -- local bg_sel = '#434c5e'
          -- local border = '#4c566a'
          -- local fg = '#d8dee9'
          -- local fg_bright = '#eceff4'
          -- local accent = '#88c0d0'
          -- vim.api.nvim_set_hl(0, 'Normal', { bg = bg })
          -- vim.api.nvim_set_hl(0, 'NormalNC', { bg = bg })
          -- vim.api.nvim_set_hl(0, 'Pmenu', { bg = bg_alt })
          -- vim.api.nvim_set_hl(0, 'PmenuSel', { bg = bg_sel, bold = true })
          -- vim.api.nvim_set_hl(0, 'StatusLine', { bg = bg_alt })
          -- vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = bg })
          -- vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = bg, fg = border })
          -- vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = bg_alt })
          -- vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = bg_alt, fg = border })
          -- vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg = bg })
          -- vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = bg, fg = border })
          -- vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = bg })
          -- vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = bg, fg = border })
          -- vim.api.nvim_set_hl(0, 'TelescopeSelection', { bg = bg_sel, bold = true })
          -- vim.api.nvim_set_hl(0, 'TelescopeSelectionCaret', { fg = accent })
          -- vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { bg = accent, fg = bg, bold = true })
          -- vim.api.nvim_set_hl(0, 'TelescopeResultsTitle', { fg = accent })
          -- vim.api.nvim_set_hl(0, 'TelescopePreviewTitle', { fg = accent })
          -- vim.api.nvim_set_hl(0, 'TelescopeMatching', { fg = accent, bold = true })
          -- vim.api.nvim_set_hl(0, 'TelescopeResultsFilename', { fg = fg })
          -- vim.api.nvim_set_hl(0, 'TelescopeResultsLineNr', { fg = border })
          -- vim.api.nvim_set_hl(0, 'TelescopeResultsClass', { fg = accent })
          -- vim.api.nvim_set_hl(0, 'TelescopeResultsFunction', { fg = '#8fbcbb' })
        end,
      })
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
