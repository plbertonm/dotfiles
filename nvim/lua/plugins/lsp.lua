return {
  "neovim/nvim-lspconfig",
  dependencies = { "saghen/blink.cmp" },
  config = function()
    -- 1. configure as capacidades globais via vim.lsp.config
    -- o '*' aplica para todos os servidores que você der 'enable'
    vim.lsp.config("*", {
      capabilities = require('blink.cmp').get_lsp_capabilities(),
      root_markers = { ".git", "package.json", "pyproject.toml" },
    })

    -- 2. habilite os servidores nominalmente
    -- o neovim 0.11 buscará automaticamente o 'cmd' (comando) correto
    -- nos arquivos fornecidos pelo nvim-lspconfig no seu disco.
    vim.lsp.enable({
      "lua_ls",
      "ts_ls",
      "bashls",
      "phpactor",
      "cssls",
      "html",
      "emmet_language_server",
    })
  end,
}
