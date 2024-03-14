return {
  {
    'navarasu/onedark.nvim',
  },
  {
    'folke/tokyonight.nvim',
    opts = {},
  },
  {
    'bluz71/vim-moonfly-colors',
    name = 'moonfly',
  },
  { 'EdenEast/nightfox.nvim' },
  { 'marko-cerovac/material.nvim' },
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('cyberdream').setup {
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
      }
    end,
  },
}
