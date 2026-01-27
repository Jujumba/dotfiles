vim.keymap.set("n", '<leader>r', vim.lsp.buf.rename)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'K', function() vim.lsp.buf.hover({ border = "rounded" }) end, {})

local capabilities = vim.lsp.protocol.make_client_capabilities()
-- disable snippets snippets
capabilities.textDocument.completion.completionItem.snippetSupport = false

local on_attach = function(client, bufnr)
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
    clangd = { capabilities = capabilities },
    zls = { },
    luals = { },
    pyright = {},
}

for lsp, opts in pairs(lsps) do
    opts["on_attach"] = on_attach
    vim.lsp.enable(tostring(lsp))
    vim.lsp.config(tostring(lsp), opts)
end

require('mini.completion').setup()

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
