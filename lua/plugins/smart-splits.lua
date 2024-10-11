return {
  'mrjones2014/smart-splits.nvim',
  lazy = true,
  opts = {
    ignored_filetypes = { 'nofile', 'quickfix', 'qf', 'prompt' },
    ignored_buftypes = { 'nofile' },
    resize_mode = {
      hooks = {
        on_leave = require('bufresize').register,
      },
    },
  },
  keys = function()
    local ssplits = require 'smart-splits'
    return {
      { '<C-Up>', ssplits.resize_up, desc = 'Resize Window Up' },
      { '<C-Down>', ssplits.resize_down, desc = 'Resize Window Up' },
      { '<C-Right>', ssplits.resize_right, desc = 'Resize Window Up' },
      { '<C-Left>', ssplits.resize_left, desc = 'Resize Window Up' },
    }
  end,
}
