local lspconfig = require('lspconfig')

vim.keymap.set("n", '<leader>r', vim.lsp.buf.rename)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'K', function() vim.lsp.buf.hover({ border = "rounded" }) end, {})

local on_attach = function(client, bufnr)
    require "lsp_signature".on_attach(
        {
            bind = true,
            handler_opts = {
                border = "rounded"
            }
        },
        bufnr
    )
    -- Add format on save
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format({ bufnr = bufnr, filter = function(c) return c.id == client.id end })
            end,
        })
    end
end

local function lsp_fix()
    vim.lsp.buf.code_action({
        filter = function(a) return a.isPreferred end,
        apply = true
    })
end

vim.keymap.set("n", "<leader>lf", lsp_fix, {});

-- Server-specific settings. See `:help lspconfig-setup`
local lsps = {
    rust_analyzer = { single_file_support = true },
    clangd = {},
    pyright = {},
    zls = {},
    lua_ls = {},
}

for lsp, opts in pairs(lsps) do
    lspconfig[lsp].setup(vim.tbl_extend("force", { on_attach = on_attach }, opts))
end

local cmp = require('cmp')

-- LSP suggestion shortcuts
cmp.setup({
    snippet = {
        expand = function(args)
            vim.snippet.expand(args.body)
        end
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({ { name = 'nvim_lsp' }, },
        { { name = 'buffer' },
        })
})

-- Thing that prints context on top (fn decl, impl block etc)
require('treesitter-context').setup {
    enable = true,
    multiwindow = false,
    max_lines = 1,
    min_window_height = 1,
    line_numbers = true,
    multiline_threshold = 1,
    trim_scope = 'outer',
    mode = 'cursor',
    separator = nil,
    zindex = 20,
    on_attach = nil,
}

-- Print LSP errors on the erroneous line
vim.diagnostic.config({
    virtual_text = {
        severity = { min = vim.diagnostic.severity.WARN },
        spacing = 2,
        prefix = "",
    },
    -- Remove sign from the line number column
    signs = false,
    underline = true,
    update_in_insert = false,
})
