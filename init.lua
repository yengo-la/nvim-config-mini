vim.keymap.set('n', 'F', 'F', { noremap = true })
vim.keymap.set('n', 'T', 'T', {noremap = true})
require("options")
require('plugins')
require("keymaps")
require('colorscheme')
require('lsp')


vim.lsp.set_log_level("debug")
