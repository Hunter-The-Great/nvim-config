return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      -- NOTE: If you are having trouble with this installation,
      --       refer to the README for telescope-fzf-native for more instructions.
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  config = function()
    vim.keymap.set("n", "<leader>sc", "<cmd>Telescope colorscheme<CR>")

    require('telescope').setup {
      defaults = {
        file_ignore_patterns = { "node%_modules/.*" },
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },
      },
      pickers = {
        -- Enable live colorscheme preview
        colorscheme = {
          enable_preview = true,
        },
      },
    }
  end,
}
