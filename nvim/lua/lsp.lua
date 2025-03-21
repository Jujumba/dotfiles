local lspconfig = require('lspconfig')

local on_attach = function(client, bufnr)
  vim.keymap.set("n", '<leader>r', vim.lsp.buf.rename)
  vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

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

-- Server-specific settings. See `:help lspconfig-setup`
lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
    single_file_support = true,
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
