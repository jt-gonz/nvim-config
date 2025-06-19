--[[
=============================================================
====                                    .-----.          ====
====         .----------------------.   | === |          ====
====         |.-""""""""""""""""""-.|   |-----|          ====
====         ||                    ||   | === |          ====
====         ||    JONATHAN.NVIM   ||   |-----|          ====
====         ||                    ||   | === |          ====
====         ||                    ||   |-----|          ====
====         ||                    ||   |:::::|          ====
====         |'-..................-'|   |____o|          ====
====         `"")----------------(""`   ___________      ====
====        /::::::::::|  |::::::::::\  \ no mouse \     ====
====       /:::========|  |==hjkl==:::\  \ required \    ====
====      '""""""""""""'  '""""""""""""'  '""""""""""'   ====
====                                                     ====
=============================================================
Learn about lua:
- https://learnxinyminutes.com/docs/lua/
- :help lua-guide
--]]

require 'config.keymaps'
require 'config.options'
require 'config.autocommands'

require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- LSP Plugins
  {
    -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
    -- used for completion, annotations and signatures of Neovim apis
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = 'luvit-meta/library', words = { 'vim%.uv' } },
      },
    },
  },
  { 'Bilal2453/luvit-meta', lazy = true },

  {
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      require('mini.comment').setup {
        options = {
          ignore_blank_line = true,
        },
        mappings = {
          comment = '<leader>/',
          comment_line = '<leader>/',
          comment_visual = '<leader>/',
        },
      }

      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = true }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },

  -- `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  { import = 'plugins' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
