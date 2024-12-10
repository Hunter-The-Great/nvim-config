return {
  'folke/which-key.nvim',
  opts = {},
  config = function()
    require('which-key').register({
      ['1'] = 'which_key_ignore',
      ['2'] = 'which_key_ignore',
      ['3'] = 'which_key_ignore',
      ['4'] = 'which_key_ignore',
      ['5'] = 'which_key_ignore',
      ['6'] = 'which_key_ignore',
      ['7'] = 'which_key_ignore',
      ['8'] = 'which_key_ignore',
      ['9'] = 'which_key_ignore',
      ['c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
      ['g'] = { name = '[G]it', _ = 'which_key_ignore' },
      ['r'] = { name = '[R]ename', _ = 'which_key_ignore' },
      ['s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
      ['w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
      h = {
        name = 'Harpoon',
        ['1'] = 'which_key_ignore',
        ['2'] = 'which_key_ignore',
        ['3'] = 'which_key_ignore',
        ['4'] = 'which_key_ignore',
        ['5'] = 'which_key_ignore',
        ['6'] = 'which_key_ignore',
        ['7'] = 'which_key_ignore',
        ['8'] = 'which_key_ignore',
        ['9'] = 'which_key_ignore',
      },
      k = {
        name = 'Kwik files!!!',
        e = { '<cmd>e .env<cr>', 'Open env file' },
        a = { '<cmd>e .air.toml<cr>', 'Open air config' },
        i = { '<cmd>e .gitignore<cr>', 'Open gitignore' },
        p = { '<cmd>e package.json<cr>', 'Open package.json' },
        t = { '<cmd>e cargo.toml<cr>', 'Open Cargo toml' },
        l = { '<cmd>e .eslintrc.cjs<cr>', 'Open Eslintrc' },
        r = { '<cmd>e README.md<cr>', 'Open README.md' },
        d = { '<cmd>e .dockerignore<cr>', 'Open dockerignore' },
      },
    }, {
      mode = 'n', -- NORMAL mode
      prefix = '<leader>',
      buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
      silent = true, -- use `silent` when creating keymaps
      noremap = true, -- use `noremap` when creating keymaps
      nowait = true, -- use `nowait` when creating keymaps
    })

    require('which-key').register({
      ['<leader>'] = { name = 'VISUAL <leader>' },
      ['<leader>h'] = { 'Git [H]unk' },
    }, { mode = 'v' })

    require('which-key').setup { notify = false }
  end,
}
