return {
  "Saghen/blink.cmp",
  event = "InsertEnter",
  opts = {
    keymap = {
      preset = "default",
      ['<Tab>'] = { 'accept', 'fallback' },
    },
    appearance = {
      nerd_font_variant = "mono"
    },
    completion = {
      documentation = {
        auto_show = false, -- sem popup chato
      },
    },
    sources = {
      default = { "lsp", "path", "buffer" },
    },
    fuzzy = {
      implementation = "lua",
    },
  },
} 
