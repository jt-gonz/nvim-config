return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',

  version = '*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'none',
      ['<C-n>'] = { 'select_next', 'fallback' },
      ['<C-p>'] = { 'select_prev', 'fallback' },
      ['<C-y>'] = { 'accept', 'fallback' },
      ['<C-f>'] = { 'scroll_documentation_up', 'fallback' },
      ['<C-b>'] = { 'scroll_documentation_down', 'fallback' },

      ['<C-l>'] = { 'snippet_forward', 'fallback' },
      ['<C-h>'] = { 'snippet_backward', 'fallback' },

      ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
    },

    completion = {
      menu = {
        border = 'rounded',
      },
      documentation = {
        auto_show = true,
        window = {
          max_width = 50,
          border = 'rounded',
        },
      },
    },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono',
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    signature = {
      enabled = true,
      window = {
        border = 'rounded',
      },
    },
  },
  opts_extend = { 'sources.default' },
}
