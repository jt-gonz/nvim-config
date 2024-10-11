return {
  'stevearc/aerial.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    {
      '<leader>cs',
      '<cmd>AerialToggle!<cr>',
      mode = 'n',
      desc = 'Toggle Aerial',
    },
  },
}
