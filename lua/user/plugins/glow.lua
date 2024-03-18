return {
  'ellisonleao/glow.nvim',
  config = function()
    vim.keymap.set('n', '<leader>gp', '<cmd>Glow<CR>', { desc = 'Glow preview' })
    require('glow').setup {
      border = 'shadow', -- floating window border config
      style = 'dark', -- filled automatically with your current editor background, you can override using glow json style
      width_ratio = 0.9, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
      height_ratio = 0.9,
    }
  end,
}
