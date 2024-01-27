return {
  {
    'navarasu/onedark.nvim',
  },
  {
    'folke/tokyonight.nvim',
    opts = {},
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
  },
  {
    "scottmckendry/cyberdream.nvim",
    config = function()
      require("cyberdream").setup({
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
      })
    end,
  },
}
