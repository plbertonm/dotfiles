return {
  "echasnovski/mini.completion",
  config = function()
    local icons = require("mini.icons")
    icons.setup()
    icons.tweak_lsp_kind()
    require("mini.completion").setup({
      window = {
        winblend = 12,
      },
      delay = {
        completion = 200,
        info = 500,
        signature = 50,
      },

      lsp_completion = {
        auto_setup = true,
      },

      mappings = {
        force_twostep = "<C-Space>",
        force_fallback = "<A-Space>",
        scroll_down = '<C-f>',
      },
    })
  end,
}    
