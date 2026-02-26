return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    build = ":TSUpdate",
    cmd = {
      "TSInstall",
      "TSUpdate",
      "TSUninstall",
      "TSInstallInfo",
    },
    opts = {
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "html",
        "css",
        "json",
        "bash",
        "php",
        "scss",
        "java",
        "yuck",
      },
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
    },
  },
}  
