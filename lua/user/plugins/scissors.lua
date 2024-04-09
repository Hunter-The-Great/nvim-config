return {
  'chrisgrieser/nvim-scissors',
  dependencies = 'nvim-telescope/telescope.nvim', -- optional
  opts = {
    snippetDir = '/Users/Benjamin/.config/nvim/snippets',
    vim.keymap.set('n', '<leader>se', function()
      require('scissors').editSnippet()
    end, { desc = 'Edit a snippet' }),

    vim.keymap.set({ 'n', 'x' }, '<leader>sa', function()
      require('scissors').addNewSnippet()
    end, { desc = 'Add a snippet' }),

  },
}
