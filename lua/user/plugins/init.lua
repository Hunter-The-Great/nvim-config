local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  --require 'user.plugins.copilot',
  require 'user.plugins.autopair',
  --require("user.plugins.autoformat"),
  require 'user.plugins.debug',
  require 'user.plugins.lspconfig',
  require 'user.plugins.cmp',
  require 'user.plugins.whichkey',
  require 'user.plugins.gitsigns',
  require 'user.plugins.lualine',
  require 'user.plugins.telescope',
  require 'user.plugins.indentblankline',
  require 'user.plugins.treesitter',
  require 'user.plugins.themes',
  require 'user.plugins.toggleterm',
  require 'user.plugins.comment',
  -- require 'user.plugins.neotree',
  -- require 'user.plugins.bufferline',
  require 'user.plugins.harpoon',
  -- require 'user.plugins.alpha',
  require 'user.plugins.navbuddy',
  require 'user.plugins.todocomments',
  require 'user.plugins.trouble',
  require 'user.plugins.quickfix',
  -- require 'user.plugins.oil',
  require 'user.plugins.conform',
  require 'user.plugins.tsc',
  require 'user.plugins.ts-error-translator',
  require 'user.plugins.glow',
  require 'user.plugins.scissors',
  require 'user.plugins.supermaven',
  require 'user.plugins.avante',
  require 'user.plugins.fzf-lua',
  require 'user.plugins.ghostty',
  require 'user.plugins.yazi',
  require 'user.plugins.snacks',
  require 'user.plugins.yanky',

  'mfussenegger/nvim-jdtls',
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'tpope/vim-sleuth',

  --fun
  'eandrju/cellular-automaton.nvim',
}
