return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix", -- helix = No canto direito, classic = clássico (em baixo, grande), modern = clássico bonito, como helix 
    icons = { mappings = false },
    plugins = {
      marks = false,     -- desativa o menu de marks ao digitar 'ou'
      registers = false, -- desativa o menu de registros ao digitar "
      spelling = { enabled = false }, -- desativa o z
    presets = {
      operators = false,    -- isso impede que apareça ajuda ao clicar v, d, y, etc.
      motions = false,      -- desativa ajuda para h, j, k, l...
      text_objects = false, -- desativa ajuda para iw, ap...
      windows = false,      -- desativa ajuda para <C-w>
      nav = false,          -- desativa ajuda para g...
      z = false,            -- desativa ajuda para comandos com z
      g = false,            -- desativa ajuda para comandos com g
      },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
