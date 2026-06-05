return {
  'nvim-tree/nvim-web-devicons',
  config = function()
    require('nvim-web-devicons').setup {
      -- enable default icons
      default = true,
      -- Catppuccin mocha colors will be applied automatically
      -- if the colorscheme is loaded first.
      color_icons = true,
    }
  end,
}
