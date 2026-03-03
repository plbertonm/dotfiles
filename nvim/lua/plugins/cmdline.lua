return {
  "nvim-mini/mini.cmdline",
  config = function()
    require("mini.cmdline").setup({
      window = {
        config = {
          border = "rounded",
        },
      },
    })
  end,
}
