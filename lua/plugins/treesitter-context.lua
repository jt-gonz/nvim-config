return {
  'nvim-treesitter/nvim-treesitter-context',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  opts = function()
    require('treesitter-context').setup()

    return { mode = 'cursor', max_lines = 3 }
  end,
}
