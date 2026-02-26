return {
  '3rd/image.nvim',
  enabled = false,
  opts = {
    dependencies = { 'luarocks.nvim' },
    backend = 'kitty',
    processor = 'magick_rock', -- or "magick" depending on your install
    integrations = {
      markdown = {
        enabled = true,
        clear_in_insert_mode = false,
        download_remote_images = true,
        only_render_image_at_cursor = false,
        filetypes = { 'markdown', 'vimwiki', 'quarto' }, -- add quarto here!
      },
    },
    max_width = 100,
    max_height = 12,
    window_overlap_clear_enabled = true,
    -- This is the important part for tmux:
    tmux_passthrough_updated = true,
  },
}
