return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    lazy = false,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- sets the specific flavor to Mocha
        transparent_background = false,
        term_colors = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          telescope = {
            enabled = true,
          },
          yazi = false,
        },
      }

      -- This actually applies the theme
    end,
  },
  {
    'zenbones-theme/zenbones.nvim',
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = 'rktjmp/lush.nvim',
    lazy = false,
    priority = 1000,
    italic = false,
    -- you can set set configuration options here
    config = function()
      vim.g.zenbones_italic = false
      vim.opt.signcolumn = 'no'
      vim.g.zenbones_darken_comments = 45
      vim.cmd.colorscheme 'zenbones'
    end,
  },
}
