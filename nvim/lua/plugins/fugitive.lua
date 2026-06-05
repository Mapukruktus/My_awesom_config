return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Git Status' })

    -- Quick vertical split for diffs or status
    -- Useful for a high-performance terminal workflow
    local fugitive_group = vim.api.nvim_create_augroup('MyFugitive', {})
    vim.api.nvim_create_autocmd('BufWinEnter', {
      group = fugitive_group,
      pattern = '*',
      callback = function()
        if vim.bo.ft ~= 'fugitive' then
          return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = { buffer = bufnr, remap = false }
        vim.keymap.set('n', '<leader>p', function()
          vim.cmd.Git 'push'
        end, opts)
        vim.keymap.set('n', '<leader>P', function()
          vim.cmd.Git 'pull --rebase'
        end, opts)
        vim.keymap.set('n', '<leader>t', ':Git push -u origin ', opts)
      end,
    })
  end,
}
