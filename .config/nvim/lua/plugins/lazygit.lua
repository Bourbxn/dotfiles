return {
  'kdheepak/lazygit.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true, desc = 'Open LazyGit' })
  end,
}
