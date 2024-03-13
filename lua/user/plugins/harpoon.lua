return {
  'ThePrimeagen/harpoon',
  config = function()
    require('harpoon').setup {
      tabline = true,
      tabline_prefix = '   ',
      tabline_suffix = '   ',
      enter_on_sendcmd = true,
      global_settings = {
        tabline = true,
        tabline_prefix = '   ',
        tabline_suffix = '   ',
        enter_on_sendcmd = true,
      },
    }
    local ui = require 'harpoon.ui'
    vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file, { desc = 'Add File' })
    vim.keymap.set('n', '<leader>he', ui.toggle_quick_menu, { desc = 'Edit' })
    vim.keymap.set('n', '<leader>hn', ui.nav_next, { desc = 'Nav Next' })
    vim.keymap.set('n', '<leader>hp', ui.nav_prev, { desc = 'Nav Next' })
    vim.keymap.set('n', '<leader>hs', '<cmd>Telescope harpoon marks<cr>', { desc = 'Search Marks' })
    vim.keymap.set('n', '<leader>hc', require('harpoon.cmd-ui').toggle_quick_menu, { desc = 'Search Marks' })
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<leader>1', '<cmd>:lua require("harpoon.ui").nav_file(1)<cr>', opts)
    vim.keymap.set('n', '<leader>2', '<cmd>:lua require("harpoon.ui").nav_file(2)<cr>', opts)
    vim.keymap.set('n', '<leader>3', '<cmd>:lua require("harpoon.ui").nav_file(3)<cr>', opts)
    vim.keymap.set('n', '<leader>4', '<cmd>:lua require("harpoon.ui").nav_file(4)<cr>', opts)
    vim.keymap.set('n', '<leader>5', '<cmd>:lua require("harpoon.ui").nav_file(5)<cr>', opts)
    vim.keymap.set('n', '<leader>6', '<cmd>:lua require("harpoon.ui").nav_file(6)<cr>', opts)
    vim.keymap.set('n', '<leader>7', '<cmd>:lua require("harpoon.ui").nav_file(7)<cr>', opts)
    vim.keymap.set('n', '<leader>8', '<cmd>:lua require("harpoon.ui").nav_file(8)<cr>', opts)
    vim.keymap.set('n', '<leader>9', '<cmd>:lua require("harpoon.ui").nav_file(9)<cr>', opts)

    vim.keymap.set('n', '<leader>h1', '<cmd>:lua require("harpoon.tmux").sendCommand("{last}", 1)<cr>', opts)
    vim.keymap.set('n', '<leader>h2', '<cmd>:lua require("harpoon.tmux").sendCommand("{last}", 2)<cr>', opts)
    vim.keymap.set('n', '<leader>h3', '<cmd>:lua require("harpoon.tmux").sendCommand("{last}", 3)<cr>', opts)
    vim.keymap.set('n', '<leader>h4', '<cmd>:lua require("harpoon.tmux").sendCommand("{last}", 4)<cr>', opts)
    vim.keymap.set('n', '<leader>h5', '<cmd>:lua require("harpoon.tmux").sendCommand("{last}", 5)<cr>', opts)
    vim.keymap.set('n', '<leader>h6', '<cmd>:lua require("harpoon.tmux").sendCommand("{last}", 6)<cr>', opts)
    vim.keymap.set('n', '<leader>h7', '<cmd>:lua require("harpoon.tmux").sendCommand("{last}", 7)<cr>', opts)
    vim.keymap.set('n', '<leader>h8', '<cmd>:lua require("harpoon.tmux").sendCommand("{last}", 8)<cr>', opts)
    vim.keymap.set('n', '<leader>h9', '<cmd>:lua require("harpoon.tmux").sendCommand("{last}", 9)<cr>', opts)
  end,
}
