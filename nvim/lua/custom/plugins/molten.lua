return {
  {
    'benlubas/molten-nvim',
    enabeled = false,
    version = '^2.0.0', -- use version <2.0.0 to avoid breaking changes
    build = ':UpdateRemotePlugins',
    init = function()
      -- These are global variables, so they must be set in the 'init' function
      vim.g.molten_image_provider = 'image.nvim'
      vim.g.molten_output_win_max_height = 20
    end,
  },
  {
    -- Required for image rendering
    '3rd/image.nvim',
    opts = {
      backend = 'kitty', -- or "ueberzug" if not using Kitty terminal
      max_width = 100,
      max_height = 12,
      max_height_window_percentage = math.huge,
      max_width_window_percentage = math.huge,
      window_overlap_clear_enabled = true,
    },
  },
}
