return {
  "echasnovski/mini.comment",

  config = function()
    require("mini.comment").setup({
      mappings = {
        comment = "gc",
        comment_line = "gcc",
        comment_visual = "gc",
        textobject = "gc",
      },
    })
  end,
}
