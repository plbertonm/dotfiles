function map(mode, lhs, rhs, opts) -- alias pra ter q escrever menos pra fzr keymaps e configurar automaticamente
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- leaders
vim.g.mapleader = " "                              -- set leader key to space
vim.g.maplocalleader = " "                         -- set local leader key (new)

map("n", "<leader>c", ":nohlsearch<cr>", { desc = "Clear Search Highlights" })

map("n", "<C-h>", "<C-w>h", { desc = "Focus on Right window" })
map("n", "<C-l>", "<C-w>l", { desc = "Focus on Left window" })

-- map("n", "<leader>E", ":NvimTreeToggle<cr>", { desc = "Toogle File Tree" })
-- map("n", "<leader>e", ":NvimTreeOpen<cr>", { desc = "Open File Tree" })
map("n", "<leader>e", ":lua MiniFiles.open()<cr>", { desc = "Open Mini Files"})

map("n", "<leader>f", ":Pick files<cr>", { desc = "Pick Files"})
map("n", "<leader>g", ":Pick grep_live", { desc = "Pick text inside files W/ Grep"})
map("n", "<leader>?", ":Pick help", { desc = "Help Menu"})

-- configurar Tab para menus pops (mini.completions)
map('i', '<Tab>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { desc = "Scroll down on Popups", expr = true })
map('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>Files"]], { desc = "Scroll up on Popups", expr = true })
