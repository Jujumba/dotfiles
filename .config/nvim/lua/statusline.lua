function num_lsp_errors()
    local bufnr = vim.api.nvim_get_current_buf()
    local diagnostics = vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.ERROR })
    local count = #diagnostics
    return count > 0 and ("E:" .. count) or ""
end

vim.opt.statusline = "%t %m%Y %l/%L:%c %{v:lua.num_lsp_errors()}"
