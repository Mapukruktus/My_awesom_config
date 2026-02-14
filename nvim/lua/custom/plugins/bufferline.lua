return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  enabled = false,
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers',
        numbers = 'none',

        indicator = {
          style = 'none',
        },

        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',

        max_name_length = 100,
        truncate_names = false,
        tab_size = 0,

        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
          local icon = level:match 'error' and ' ' or ' '
          return icon .. count
        end,

        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            highlight = 'Directory',
            separator = true,
          },
        },

        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,

        separator_style = 'thin', -- 🔥 LazyVim look
        always_show_bufferline = true,
      },
    }
  end,
}
