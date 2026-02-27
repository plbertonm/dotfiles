function map(mode, lhs, rhs, opts) -- Alias pra ter q escrever menos pra fzr keymaps e configurar automaticamente
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- Leaders
vim.g.mapleader = " "                              -- Set leader key to space
vim.g.maplocalleader = " "                         -- Set local leader key (NEW)

map("n", "<leader>c", ":nohlsearch<CR>", { desc = "Clear search highlights" })

