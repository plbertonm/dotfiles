return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  lazy = false,
  priority = 100,
  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    },
    PATH = "prepend",
  },
}
