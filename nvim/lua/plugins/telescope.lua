return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    require('telescope').setup {
      extensions = {
        ['ui-select'] = { require('telescope.themes').get_dropdown() },
      },
    }

    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>sh', function() builtin.help_tags() end, { desc = '[S]earch [H]elp' })
    vim.keymap.set('n', '<leader>sk', function() builtin.keymaps() end, { desc = '[S]earch [K]eymaps' })
    vim.keymap.set('n', '<leader>sf', function() builtin.find_files { cwd = vim.fn.getcwd() } end, { desc = '[S]earch [F]iles' })
    vim.keymap.set('n', '<leader>ss', function() builtin.builtin() end, { desc = '[S]earch [S]elect Telescope' })
    vim.keymap.set('n', '<leader>sw', function() builtin.grep_string() end, { desc = '[S]earch current [W]ord' })
    vim.keymap.set('n', '<leader>sg', function() builtin.live_grep() end, { desc = '[S]earch by [G]rep' })
    vim.keymap.set('n', '<leader>sd', function() builtin.diagnostics() end, { desc = '[S]earch [D]iagnostics' })
    vim.keymap.set('n', '<leader>sr', function() builtin.resume() end, { desc = '[S]earch [R]esume' })
    vim.keymap.set('n', '<leader>s.', function() builtin.oldfiles() end, { desc = '[S]earch Recent Files ("." for repeat)' })
    vim.keymap.set('n', '<leader><leader>', function() builtin.buffers() end, { desc = '[ ] Find existing buffers' })

    vim.keymap.set('n', '<leader>/', function()
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })

    vim.keymap.set('n', '<leader>s/', function()
      builtin.live_grep { grep_open_files = true, prompt_title = 'Live Grep in Open Files' }
    end, { desc = '[S]earch [/] in Open Files' })

    vim.keymap.set('n', '<leader>sn', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[S]earch [N]eovim files' })
  end,
}
