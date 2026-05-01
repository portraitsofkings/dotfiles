return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  opts = {
    keymap = { preset = 'default' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
      documentation = { auto_show = true, auto_show_delay_ms = 0 },
      list = { selection = { preselect = true, auto_insert = true } }
    },
    sources = {
      default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      },
    },
    signature = { enabled = true },
    fuzzy = { implementation = "prefer_rust_with_warning" },
    cmdline = {
      completion = {
        list = { selection = { preselect = true, auto_insert = true } },
      }
    },
  },
  opts_extend = { "sources.default" }
}
