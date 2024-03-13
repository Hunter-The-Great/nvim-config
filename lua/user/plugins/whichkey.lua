return {
  'folke/which-key.nvim',
  opts = {},
  config = function()
    require('which-key').register {
      ['<leader>1'] = 'which_key_ignore',
      ['<leader>2'] = 'which_key_ignore',
      ['<leader>3'] = 'which_key_ignore',
      ['<leader>4'] = 'which_key_ignore',
      ['<leader>5'] = 'which_key_ignore',
      ['<leader>6'] = 'which_key_ignore',
      ['<leader>7'] = 'which_key_ignore',
      ['<leader>8'] = 'which_key_ignore',
      ['<leader>9'] = 'which_key_ignore',
      ['<leader>h1'] = 'which_key_ignore',
      ['<leader>h2'] = 'which_key_ignore',
      ['<leader>h3'] = 'which_key_ignore',
      ['<leader>h4'] = 'which_key_ignore',
      ['<leader>h5'] = 'which_key_ignore',
      ['<leader>h6'] = 'which_key_ignore',
      ['<leader>h7'] = 'which_key_ignore',
      ['<leader>h8'] = 'which_key_ignore',
      ['<leader>h9'] = 'which_key_ignore',
      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
      ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
      ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
    }

    require('which-key').register({
      ['<leader>'] = { name = 'VISUAL <leader>' },
      ['<leader>h'] = { 'Git [H]unk' },
    }, { mode = 'v' })
  end,
}
