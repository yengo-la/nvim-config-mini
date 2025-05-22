vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})
vim.api.nvim_set_keymap('n', '<C-CR>', 'o<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-CR>', '<Esc>o<Tab>', { noremap = true, silent = true }) 

vim.keymap.set("n", "<leader>pf", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>pe", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })

vim.keymap.set('n', '<Tab>', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>', { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
