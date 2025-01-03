local do_autoformat = true

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
        javascript = { 'prettierd' },
        javascriptreact = { 'prettierd' },
        typescript = { 'prettierd' },
        typescriptreact = { 'prettierd' },
        astro = { 'prettierd' },
        java = { 'google-java-format' },
        css = { '' },
      },
      format_on_save = function(bufnr)
        if not do_autoformat then
          return
        end
        -- These options will be passed to conform.format()
        local ignore_filetypes = { 'java', 'css', 'html' }
        if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
          return
        end
        return {
          timeout_ms = 500,
          lsp_fallback = true,
        }
      end,
      vim.api.nvim_create_user_command('AutoformatToggle', function()
        do_autoformat = not do_autoformat
        if do_autoformat then
          print 'Autoformat enabled'
        else
          print 'Autoformat disabled'
        end
      end, { nargs = 0 }),
      vim.keymap.set('n', '<leader>ff', function()
        require('conform').format { lsp_fallback = true }
      end, { desc = 'Format buffer' }),
      vim.keymap.set('n', '<leader>fm', '<cmd>Mason<CR>', { desc = 'Opens Mason' }),
    }

    require('mason-conform').setup()
  end,
}
