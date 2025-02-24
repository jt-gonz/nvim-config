return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'catppuccin'
    vim.diagnostic.config {
      virtual_text = true,
      float = {
        border = 'rounded',
        focusable = true,
      },
    }
  end,
  opts = {
    transparent_background = true,
    integrations = {
      aerial = true,
      alpha = true,
      cmp = true,
      dap = true,
      dap_ui = true,
      gitsigns = true,
      illuminate = true,
      indent_blankline = true,
      markdown = true,
      mason = true,
      native_lsp = { enabled = true },
      neotree = true,
      notify = true,
      semantic_tokens = true,
      symbols_outline = true,
      telescope = true,
      treesitter = true,
      ts_rainbow = false,
      ufo = true,
      which_key = true,
      window_picker = true,
      colorful_winsep = { enabled = true, color = 'lavender' },
    },
    custom_highlights = function(_)
      return {
        FloatBorder = { fg = '#F56F6F' },
        LspInfoBorder = { fg = '#F56F6F' },
        BlinkCmpDocBorder = { fg = '#F56F6F' },
        BlinkCmpMenuBorder = { fg = '#F56F6F' },
        BlinkCmpSignatureHelpBorder = { fg = '#F56F6F' },
      }
    end,
  },
  specs = {
    {
      'nvim-telescope/telescope.nvim',
      optional = true,
      opts = {
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      },
    },
  },
}
