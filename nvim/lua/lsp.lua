local lspconfig = require('lspconfig')

local on_attach = function(client, bufnr)
  vim.keymap.set("n", '<leader>r', vim.lsp.buf.rename)
  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { reuse_win = true })
  vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, {})
end

-- Server-specific settings. See `:help lspconfig-setup`
lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
    single_file_support = true
}

lspconfig.clangd.setup {
    on_attach = on_attach,
}

lspconfig.pylyzer.setup {
    on_attach = on_attach,
}

local cmp = require('cmp')
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
