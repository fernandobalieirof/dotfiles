vim.g.mapleader = " "
-- open fuzzy finder
local telescope = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})

-- save
vim.keymap.set('n', '<leader>w', ':w<CR>')
-- quit
vim.keymap.set('n', '<leader>qq', ':q<CR>')

-- file search
vim.keymap.set('n', '<leader>ee', ':Ex<CR>')

vim.keymap.set('n', '<leader>pv', ':Ex<CR>')


vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
vim.keymap.set('n', "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v'}, "<leader>ca", vim.lsp.buf.code_action, {})
