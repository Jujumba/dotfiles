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

local lsps = {
    rust_analyzer = { single_file_support = true },
    clangd = { },
    zls = { },
    luals = { }
}

for lsp, opts in pairs(lsps) do
    opts["on_attach"] = on_attach
    vim.lsp.enable(tostring(lsp))
    vim.lsp.config(tostring(lsp), opts)
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
    sources = cmp.config.sources(
        { { name = 'nvim_lsp' }, },
        { { name = 'buffer' } }
    ),
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },

    experimental = {
        ghost_text = {
            hl_group = "@comment",
            formatter = function(text)
                -- Only show the first line
                return text:match("^[^\n]*") or text
            end,
        },
    },

})

-- Print LSP errors on the erroneous line
vim.diagnostic.config({
    virtual_text = {
        severity = { min = vim.diagnostic.severity.WARN },
        spacing = 0,
        prefix = "",
    },
    -- Remove sign from the line number column
    signs = false,
    underline = true,
    update_in_insert = false,
})
