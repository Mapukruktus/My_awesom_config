return {
  'hkupty/iron.nvim',
  config = function()
    local iron = require 'iron.core'

    iron.setup {
      config = {
        -- Whether a repl should be discarded or not
        scratch_repl = false,
        -- Your preferred terminal tool (e.g. "vertical", "horizontal", "tab")
        repl_definition = {
          sh = { command = { 'zsh' } },
          python = {
            command = { 'ipython3', '--no-autoindent' },
            format = function(lines)
              return vim.list_extend({ '%cpaste -q' }, vim.list_extend(lines, { '--' }))
            end,
          },
        },
        -- How the REPL window opens
        repl_open_cmd = require('iron.view').right '40%',
      },
      -- Keymaps are NOT set by default; you must define them
      keymaps = {
        send_motion = '<space>sc',
        visual_send = '<space>sc',
        send_file = '<space>sf',
        send_line = '<space>sl',
        toggle_repl = '<space>st',
        interrupt = '<space>si',
        exit = '<space>sq',
        clear = '<space>cl',
      },
      -- If the highlight is on, you can change how it looks
      highlight = {
        italic = true,
      },
      ignore_blank_lines = true,
    }
  end,
}
