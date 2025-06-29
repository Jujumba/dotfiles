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
        { "nvim-tree/nvim-web-devicons",  lazy = true },

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
        {
            'nvim-treesitter/nvim-treesitter',
            opts = {
                highlight = {
                    enable = true
                }
            }
        },

        -- Telescope
        {
            'nvim-telescope/telescope.nvim',
            tag = '0.1.8',
            dependencies = { 'nvim-lua/plenary.nvim' }
        },

        -- Bufferline
        --  {
        -- 'akinsho/bufferline.nvim',
        --    version = "4.9.1",
        --    dependencies = 'nvim-tree/nvim-web-devicons'
        --  },

        -- Mason
        {
            "williamboman/mason.nvim",
            lazy = false
        },
        -- LSP
        { "neovim/nvim-lspconfig" },
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'm4xshen/autoclose.nvim' },
        -- LSP: Show function signature on top
        { 'nvim-treesitter/nvim-treesitter-context' },

        -- Comment
        { 'numToStr/Comment.nvim' },

        -- Multiline cursor
        { 'mg979/vim-visual-multi' },

        -- Function signature help
        {
            "ray-x/lsp_signature.nvim",
            event = "InsertEnter",
            opts = {
                handler_opts = {
                    border = "rounded"
                },
                hint_prefix = ""
            },
        },

        -- Hightligth yank
        { "machakann/vim-highlightedyank" },
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
vim.cmd("let g:highlightedyank_highlight_duration = 100")
vim.opt.cursorline = true         -- Enable `CursorLineNr` highlight group
vim.opt.fillchars = { eob = " " } -- Remove leading tildas after EOF
vim.o.scrolloff = 4
