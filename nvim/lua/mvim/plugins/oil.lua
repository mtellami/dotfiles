return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },
  cmd = { 'Oil' },
  keys = {
    {'<leader>-', function() require('oil').open_float() end, desc = 'Open parent directory in a floating window'},
  },
  event = 'FileType netrw'
}
