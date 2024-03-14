return {
  'goolord/alpha-nvim',
  -- dependencies = {
  --	'BlakeJC94/alpha-nvim-fortune'
  -- },
  config = function()
    local dashboard = require 'alpha.themes.dashboard'
    --local fortune = require("alpha.fortune")
    math.randomseed(os.time())
    local function pick_color()
      local colors = { 'String', 'Constant', 'Function', 'Operator', 'ErrorMsg', 'DiffChange', 'Question', 'Conditional' }
      return colors[math.random(#colors)]
    end
    local function pick_header()
      local headers = {
        {
          '                                                     ',
          '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
          '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
          '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
          '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
          '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
          '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
          '                                                     ',
        },
        {
          '    		                                       	 ',
          '   ██████╗  ██████╗  ██████╗ ███████╗██╗   ██╗  ',
          '  ██╔════╝ ██╔═══██╗██╔═══██╗██╔════╝╚██╗ ██╔╝  ',
          '  ██║  ███╗██║   ██║██║   ██║█████╗   ╚████╔╝   ',
          '  ██║   ██║██║   ██║██║   ██║██╔══╝    ╚██╔╝    ',
          '  ╚██████╔╝╚██████╔╝╚██████╔╝██║        ██║     ',
          '   ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝        ╚═╝     ',
          '                                                ',
        },
        {
          '                                                        ',
          '            ██╗      █████╗ ███████╗██╗   ██╗          Z',
          '            ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝      Z    ',
          '            ██║     ███████║  ███╔╝  ╚████╔╝    z       ',
          '            ██║     ██╔══██║ ███╔╝    ╚██╔╝   z         ',
          '            ███████╗██║  ██║███████╗   ██║            ',
          '            ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝              ',
          '                                                        ',
        },
      }
      return headers[math.random(#headers)]
    end
    local function footer()
      -- local total_plugins = #vim.tbl_keys(packer_plugins)
      local datetime = os.date ' %d-%m-%Y   %H:%M:%S'
      local version = vim.version()
      local nvim_version_info = '   v' .. version.major .. '.' .. version.minor .. '.' .. version.patch

      return datetime .. nvim_version_info
    end

    dashboard.section.header.val = pick_header()
    dashboard.section.header.opts.hl = pick_color()

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button('e', '  > New file', '<cmd>ene<CR>'),
      dashboard.button('f', '  > Find file', ':cd $HOME/Desktop/Code | Telescope find_files<CR>'),
      dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
      dashboard.button('u', '  > Update plugins', '<cmd>Lazy sync<CR>'),
      dashboard.button('c', '  > Configuration', ':cd $HOME/.config/nvim | :e $MYVIMRC <CR>'),
      dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
    }

    -- dashboard.section.footer.val = fortune()
    dashboard.section.footer.val = footer()
    dashboard.section.footer.opts.hl = 'Constant'

    require('alpha').setup(dashboard.config)
  end,
}
