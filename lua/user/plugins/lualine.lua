local colors = {
  blue = '#80a0ff',
  cyan = '#00efef',
  black = '#080808',
  white = '#c6c6c6',
  red = '#ff5189',
  violet = '#d183e8',
  grey = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.cyan, bg = colors.grey },
    c = { fg = colors.white },
  },

  insert = { a = { fg = colors.black, bg = colors.cyan } },
  visual = { a = { fg = colors.black, bg = colors.blue } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white },
  },
}

return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      theme = bubbles_theme,
      icons_enabled = true,
      component_separators = '|',
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff' },
      lualine_c = { 'encoding', 'fileformat', 'filetype', 'filesize' },
      lualine_x = { { 'diagnostics', sources = { 'nvim_lsp' } } },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    },
    winbar = {
      lualine_c = {
        { 'filename', path = 1 },
      },
    },
    inactive_winbar = {
      lualine_c = {
        { 'filename', path = 1 },
      },
    },
  },
}
