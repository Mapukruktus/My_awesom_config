-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  enabled = false,
  lazy = false,
  keys = {
    { '<Leader>e', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    default_component_configs = {
      icon = {
        folder_closed = '',
        folder_open = '',
        folder_empty = '',
        default = '',
      },
      git_status = {
        symbols = {
          added = '✚',
          modified = '',
          deleted = '✖',
          renamed = '',
          untracked = '',
          ignored = '',
          unstaged = '',
          staged = '',
          conflict = '',
        },
      },
    },

    filesystem = {
      follow_current_file = {
        enabled = true,
      },
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = true,
      },
      window = {
        position = 'left',
        width = 32,
        mappings = {
          ['<Leader>e'] = 'close_window',
        },
      },
    },
  },
}
