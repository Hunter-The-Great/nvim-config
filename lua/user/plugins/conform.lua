return {
  'stevearc/conform.nvim',
  dependencies = { 'zapling/mason-conform.nvim' },
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform will run multiple formatters sequentially
        -- python = { "isort", "black" },
        go = { 'goimports', 'gofmt' },
        -- Use a sub-list to run only the first available formatter
        javascript = { { 'prettierd' } },
        javascriptreact = { { 'prettierd' } },
        typescript = { { 'prettierd' } },
        typescriptreact = { { 'prettierd' } },
      },
      format_on_save = function(bufnr)
        -- These options will be passed to conform.format()
        local ignore_filetypes = { 'java' }
        if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
          return
        end
        return {
          timeout_ms = 500,
          lsp_fallback = true,
        }
      end,
      vim.keymap.set('n', '<leader>ff', function()
        require('conform').format { lsp_fallback = true }
      end, { desc = 'Format buffer' }),
      vim.keymap.set('n', '<leader>fm', '<cmd>Mason<CR>', { desc = 'Opens Mason' }),
    }

    require('mason-conform').setup()
  end,
}
