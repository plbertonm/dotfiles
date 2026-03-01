return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()

    require("lualine").setup({
      options = {
        theme = {
          normal = {
            a = { bg = "none" },
            b = { bg = "none" },
            c = { bg = "none" },
          },
          insert = { a = { bg = "none" } },
          visual = { a = { bg = "none" } },
          replace = { a = { bg = "none" } },
          command = { a = { bg = "none" } },
          inactive = {
            a = { bg = "none" },
            b = { bg = "none" },
            c = { bg = "none" },
          },
        },
        globalstatus = true,
        component_separators = "",
        section_separators = "",
      },

      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },

        lualine_c = {
          {
            "filename",
            file_status = true,  -- readonly, modified, etc
            path = 0,            -- só nome do arquivo
            symbols = {
              modified = " ●",
              readonly = " 🔒",
              unnamed = "[No Name]",
            },
          },
        },

        lualine_x = {},

        lualine_y = {},

        lualine_z = {
          {
            function()
              return os.date("%H:%M:%S")
            end,
            icon = "", -- ícone de relógio
          },
        },
      },
    })
  end,
}
