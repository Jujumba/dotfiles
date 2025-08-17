vim.api.nvim_set_hl(0, "Number", { ctermfg = 12 })
vim.api.nvim_set_hl(0, "Keyword", { ctermfg = 4 })
vim.api.nvim_set_hl(0, '@punctuation.delimiter.string', { ctermfg = 13 })
vim.api.nvim_set_hl(0, "Statement", { ctermfg = "red", })
vim.api.nvim_set_hl(0, "@string.escape", { ctermfg = 12 })
vim.api.nvim_set_hl(0, "String", { ctermfg = 11 })
vim.api.nvim_set_hl(0, "Constant", { link = "Normal" })
vim.api.nvim_set_hl(0, "Delimiter", { link = "Normal" })
vim.api.nvim_set_hl(0, "Type", { ctermfg = 7 })
vim.api.nvim_set_hl(0, "@type.builtin", { ctermfg = 7, bold = true })
vim.api.nvim_set_hl(0, "LineNr", { ctermfg = 8 })
vim.api.nvim_set_hl(0, "CursorLineNr", { ctermfg = 3, bold = true })
vim.api.nvim_set_hl(0, "Function", { ctermfg = 9 })
vim.api.nvim_set_hl(0, "MatchParen", { ctermfg = 8, ctermbg = 0, bold = true })
vim.cmd("highlight Visual ctermbg=8 ctermfg=15") -- nvim_set_hl doesn't work (even with force=true)


vim.api.nvim_set_hl(0, "@character", { link = "String" })
vim.api.nvim_set_hl(0, "Comment", { ctermfg = 14 })
vim.api.nvim_set_hl(0, "Operator", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@variable", { link = "Normal" })
vim.api.nvim_set_hl(0, "Statement", { link = "Keyword" })
vim.api.nvim_set_hl(0, "PreProc", { link = "Keyword" })
vim.api.nvim_set_hl(0, "Identifier", { link = "Normal" })

-- Rust specific
vim.api.nvim_set_hl(0, "rustCharacter", { ctermfg = "green" })
vim.api.nvim_set_hl(0, "rustEscape", { link = "@string.escape" })
vim.api.nvim_set_hl(0, "rustConditional", { link = "Keyword" })
vim.api.nvim_set_hl(0, "rustSigil", { link = "Normal" })
vim.api.nvim_set_hl(0, "rustLifetime", { link = "Constant" })
vim.api.nvim_set_hl(0, "@lsp.type.const.rust", { link = "Normal" })
vim.api.nvim_set_hl(0, "rustFuncCall", { link = "Function" })
vim.api.nvim_set_hl(0, "rustStorage", { link = "Keyword" })
vim.api.nvim_set_hl(0, "rustModPath", { link = "Normal" })
vim.api.nvim_set_hl(0, "rustModPathSep", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.typeAlias", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.struct", { link = "Type" })
vim.api.nvim_set_hl(0, "@lsp.type.const", { link = "Constant" })
vim.api.nvim_set_hl(0, "@lsp.type.operator", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.generic", { link = "Type" })
vim.api.nvim_set_hl(0, "rustMacro", { link = "Function" })

-- Other language specific
vim.api.nvim_set_hl(0, "zigMacro", { link = "Keyword" })
vim.api.nvim_set_hl(0, "zigEscape", { link = "@string.escape" })
vim.api.nvim_set_hl(0, "zigVarDecl", { link = "Keyword" })
vim.api.nvim_set_hl(0, "cCharacter", { link = "String" })
-- vim.api.nvim_set_hl(0, "@constructor", { ctermfg = 7 })
vim.api.nvim_set_hl(0, "@lsp.type.namespace", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.builtin", { ctermfg = 1, bold = true })
vim.api.nvim_set_hl(0, "@function.builtin.asm", { ctermfg = 4 })

vim.api.nvim_set_hl(0, "@lsp.typemod.property.declaration", { link = "Type" })
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { link = "@lsp.typemod.property.declaration" })
-- vim.api.nvim_set_hl(0, "@lsp.type.operator", { ctermfg = 8 })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { ctermfg = 8 })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { ctermfg = 8 })

-- Status Line
vim.cmd("highlight StatusLine ctermfg=3 ctermbg=0 cterm=bold")
vim.cmd("highlight StatusLineNC ctermfg=7 ctermbg=0 cterm=NONE")

-- Plugin specific
vim.api.nvim_set_hl(0, 'NeoTreeCursorLine', { ctermbg = 8 })

-- Highlight yanked area
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', {}),
    desc = 'Hightlight selection on yank',
    pattern = '*',
    callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 100 }
    end,
})
