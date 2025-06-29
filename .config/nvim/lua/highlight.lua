vim.api.nvim_set_hl(0, "Number", { ctermfg = 4 })
vim.api.nvim_set_hl(0, "Keyword", { ctermfg = 5 })
vim.api.nvim_set_hl(0, '@punctuation.delimiter.string', { ctermfg = 13 })
vim.api.nvim_set_hl(0, "Statement", { ctermfg = "red", })
vim.api.nvim_set_hl(0, "@string.escape", { ctermfg = 12 })
vim.api.nvim_set_hl(0, "String", { ctermfg = 10 })
vim.api.nvim_set_hl(0, "Constant", { ctermfg = 9 })
vim.api.nvim_set_hl(0, "Delimiter", { ctermfg = 7 })
vim.api.nvim_set_hl(0, "Type", { ctermfg = 12 })
vim.api.nvim_set_hl(0, "LineNr", { ctermfg = 8, --[[ bold = true ]] })
vim.api.nvim_set_hl(0, "CursorLineNr", { ctermfg = 3, --[[ bold = true ]] })
vim.api.nvim_set_hl(0, "Function", { ctermfg = 2 })
vim.cmd("highlight Visual ctermbg=8 ctermfg=15") -- nvim_set_hl doesn't work (even with force=true)

vim.api.nvim_set_hl(0, "@character", { link = "String" })
vim.api.nvim_set_hl(0, "Comment", { link = "Special" })
vim.api.nvim_set_hl(0, "Operator", { link = "Keyword" })
vim.api.nvim_set_hl(0, "Function", { link = "Normal" })
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
vim.api.nvim_set_hl(0, "rustFuncCall", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.method.rust", { link = "Normal" })
vim.api.nvim_set_hl(0, "rustStorage", { link = "Keyword" })
vim.api.nvim_set_hl(0, "rustModPath", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.macro.rust", { link = "Normal", italic = true })
vim.api.nvim_set_hl(0, "@lsp.type.namespace.rust", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.property.rust", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.typeAlias.rust", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.struct.rust", { link = "Normal" })

-- Other language specific
-- vim.api.nvim_set_hl(0, "pythonInclude", {})
vim.api.nvim_set_hl(0, "zigMacro", { link = "Keyword" })
vim.api.nvim_set_hl(0, "zigEscape", { link = "@string.escape" })
vim.api.nvim_set_hl(0, "zigVarDecl", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@constructor.lua", { ctermfg = 7 })

-- Status Line
vim.api.nvim_set_hl(0, 'StatusLine', { ctermfg = 3, ctermbg = 0, bold = true }) -- Active status line
vim.api.nvim_set_hl(0, 'StatusLineNC', { ctermfg = 7, ctermbg = 0 })            -- Inactive status line
