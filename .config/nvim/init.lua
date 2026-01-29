-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


-- Plugins
require("lazy").setup({
    spec = {
        { "nvim-tree/nvim-web-devicons", lazy = false },

        -- Neo-tree
        {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v3.x",
            dependencies = {
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons",
                "MunifTanjim/nui.nvim",
                -- { "3rd/image.nvim", opts = {} },
            },
            opts = function()
                return {
                    window = {
                        mappings = {
                            h = "parent_or_close",
                            l = "child_or_open",
                        }
                    }
                }
            end
        },

        -- Smart-splits
        { 'mrjones2014/smart-splits.nvim' },

        -- Tree-sitter
        { 'nvim-treesitter/nvim-treesitter' },

        -- Underscore cursor word
        { 'nvim-mini/mini.cursorword', version = false },

        -- Surround words
        { 'nvim-mini/mini.surround', version = false },

        -- Completion for LSP
        { 'nvim-mini/mini.completion', version = false },

        -- Status line
        { 'nvim-mini/mini.statusline', version = false },

        -- LSP
        { "neovim/nvim-lspconfig" }, -- WARN: even though it's not used, lsp won't work without it

        -- Telescope
        {
            'nvim-telescope/telescope.nvim',
            tag = '0.1.8',
            dependencies = { 'nvim-lua/plenary.nvim' }
        },

        -- Mason
        {
            "williamboman/mason.nvim",
            lazy = false
        },

        -- Bracket autoclose
        { 'm4xshen/autoclose.nvim' },

        -- Comment
        { 'numToStr/Comment.nvim' },

        -- Multiline cursor
        { 'mg979/vim-visual-multi' },

    },

    checker = { enabled = false },
})

require("keymaps")
require("lsp")
require("plugins.neo-tree")
require("plugins.telescope")
require("plugins.mason")
require("plugins.autoclose")
require("plugins.comment")
require("plugins.treesitter")
require('plugins.cursorword')
require('plugins.surround')
require("highlight")
require("statusline")

-- QOL

-- Indentations
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Misc
vim.cmd("set noswapfile")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set t_Co=16") -- Use terminal color for background
vim.cmd("set notermguicolors")
vim.opt.cursorline = true -- Enable `CursorLineNr` highlight group
vim.o.scrolloff = 6
vim.o.showmode = false
vim.opt.fillchars:append({ diff = " " }) -- vimdiff fill char

