return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix", -- helix = No canto direito, classic = clássico (em baixo, grande), modern = clássico bonito, como helix 
    icons = { mappings = false },
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
