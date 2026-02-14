return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'zenbones',
        -- CHANGE: Use sharp triangle separators
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        icons_enabled = true,
      },
      sections = {
        -- Remove the extra padding/caps we added for the rounded look
        lualine_a = { 'mode' },
        lualine_z = { 'location' },
      },
    }
  end,
}
