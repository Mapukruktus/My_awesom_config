return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false, -- Load this immediately
  priority = 1000, -- Load this before other plugins
  config = function()
    require('rose-pine').setup {
      variant = 'auto',
      dark_variant = 'main',
      styles = {
        bold = false, -- No bold
        italic = false, -- No italics
        transparency = true,
      },
    }

    -- vim.cmd 'colorscheme rose-pine'
  end,
}
