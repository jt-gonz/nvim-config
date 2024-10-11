return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
    settings = {
      save_on_toggle = true,
    },
  },
  keys = function()
    local harpoon = require 'harpoon'
    return {
      {
        '<leader>a',
        function()
          harpoon:list():add()
        end,
      },
      {
        '<C-e>',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
      },
      {
        '<C-x>',
        function()
          vim.ui.input({ prompt = 'Harpoon mark index: ' }, function(input)
            local num = tonumber(input)
            if num then
              harpoon:list():select(num)
            end
          end)
        end,
      },
      {
        '<C-u>',
        function()
          harpoon:list():select(1)
        end,
      },
      {
        '<C-i>',
        function()
          harpoon:list():select(2)
        end,
      },
      {
        '<C-o>',
        function()
          harpoon:list():select(3)
        end,
      },
      {
        '<C-p>',
        function()
          harpoon:list():select(4)
        end,
      },
    }
  end,
}
