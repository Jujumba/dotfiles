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

require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  multiwindow = false, -- Enable multiwindow support.
  max_lines = 1, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 1, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 1, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}
