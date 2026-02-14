return {
  'nvim-telescope/telescope-media-files.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup {
      extensions = {
        media_files = {
          -- filetypes whitelist
          filetypes = { 'png', 'webp', 'jpg', 'jpeg' },
          find_cmd = 'rg', -- ensure ripgrep is installed
        },
      },
    }
    -- Load the extension
    require('telescope').load_extension 'media_files'
  end,
}
