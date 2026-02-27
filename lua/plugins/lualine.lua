return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()

    require("lualine").setup({
      options = {
        theme = {
          vim.api.nvim_set_hl(0, "lualine_a_normal", { bg = "none" }),
          vim.api.nvim_set_hl(0, "lualine_b_normal", { bg = "none" }),
          vim.api.nvim_set_hl(0, "lualine_c_normal", { bg = "none" }),
          vim.api.nvim_set_hl(0, "lualine_x_normal", { bg = "none" }),
          vim.api.nvim_set_hl(0, "lualine_y_normal", { bg = "none" }),
          vim.api.nvim_set_hl(0, "lualine_z_normal", { bg = "none" }),
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
              return os.date("%H:%M")
            end,
            icon = "", -- ícone de relógio
          },
        },
      },
    })
  end,
}
