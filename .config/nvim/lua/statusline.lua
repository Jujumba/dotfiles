function fmt_lsp_diagnostics(severity, severity_text)
    local bufnr = vim.api.nvim_get_current_buf()
    local diagnostics = vim.diagnostic.get(bufnr, { severity = severity })
    local count = #diagnostics
    if count <= 0 then
        return ""
    elseif count == 1 then
        return "1 " .. severity_text .. " "
    else
        return count .. " " .. severity_text .. "s "
    end
end

function fmt_lsp_errors()
    return fmt_lsp_diagnostics(vim.diagnostic.severity.ERROR, 'error')
end

function fmt_lsp_warnings()
    return fmt_lsp_diagnostics(vim.diagnostic.severity.WARNING, 'warning')
end

vim.opt.statusline = "%t %l:%c %{v:lua.fmt_lsp_errors()}%{v:lua.fmt_lsp_warnings()}%m"
