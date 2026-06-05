local map = vim.keymap.set

map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('n', '<leader>e', function()
  if vim.bo.filetype == 'oil' then require('oil').close() else require('oil').open() end
end, { desc = 'Toggle Oil' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
map('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
map('i', 'jk', '<Esc>', { desc = 'Escape to normal mode' })

-- Window navigation
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Moving lines
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

-- Terminal navigation
map('t', '<C-h>', [[<C-\><C-n><C-w>h]])
map('t', '<C-j>', [[<C-\><C-n><C-w>j]])
map('t', '<C-k>', [[<C-\><C-n><C-w>k]])
map('t', '<C-l>', [[<C-\><C-n><C-w>l]])

-- Splits and Buffers
map('n', '<leader>v', ':vsplit<CR>', { desc = 'Split Vertical' })
map('n', 'L', ':bnext<CR>', { desc = 'Next buffer' })
map('n', 'H', ':bprevious<CR>', { desc = 'Previous buffer' })

-- Window movement
map('n', '<leader>wh', '<C-w>H', { desc = 'Move window far left' })
map('n', '<leader>wj', '<C-w>J', { desc = 'Move window far down' })
map('n', '<leader>wk', '<C-w>K', { desc = 'Move window far up' })
map('n', '<leader>wl', '<C-w>L', { desc = 'Move window far right' })

-- Resizing
map('n', '<M-left>', ':vertical resize -2<CR>')
map('n', '<M-right>', ':vertical resize +2<CR>')
map('n', '<M-up>', ':resize -2<CR>')
map('n', '<M-down>', ':resize +2<CR>')

-- J and jumping (centered)
map('n', 'J', "mzJ'z")
map('n', '<C-n>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

-- Misc
map('n', '<leader>c', function() Snacks.picker.colorschemes() end, { desc = '[T]heme switcher (Snacks)' })
map('n', '<leader>u', function() require('undotree').toggle() end, { desc = 'Toggle Undotree' })
