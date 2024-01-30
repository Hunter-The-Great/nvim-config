return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.keymap.set("n", "<c-j>", "<cmd>bdelete<CR>")
    vim.keymap.set("n", "<c-m>", "<cmd>BufferLineCycleNext<CR>")
    vim.keymap.set("n", "<c-n>", "<cmd>BufferLineCyclePrev<CR>")

    require('bufferline').setup({})
    vim.opt.termguicolors = true
  end,
}
