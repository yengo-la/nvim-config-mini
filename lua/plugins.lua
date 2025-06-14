local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = '1.*',
        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
        keymap = {
          preset = 'none',
          ['<CR>'] = { 'accept', 'fallback' },
          ['<Tab>'] = { 'select_next' },
          ['<S-Tab>'] = { 'select_prev' },
          ['<Down>'] = { 'select_next' },
          ['<Up>'] = { 'select_prev' },
          ["<C-d>"] = { "scroll_documentation_down" },
          ["<C-u>"] = { "scroll_documentation_up" },
        },
        
        appearance = {
            nerd_font_variant = 'mono'
        },
        completion = { documentation = { auto_show = true } },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    -- init.lua:
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim'}
        },
        config = function()
            vim.keymap.set('n', '<leader>fd', require('telescope.builtin').find_files)
        end
    },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {'ThePrimeagen/vim-be-good'}

})
