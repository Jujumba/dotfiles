vim.api.nvim_set_hl(0, "Number", { ctermfg = 4 })
vim.api.nvim_set_hl(0, "Keyword", { ctermfg = 5, bold = true })
vim.api.nvim_set_hl(0, "Statement", { ctermfg = "red", })
vim.api.nvim_set_hl(0, "PreProc", { })
vim.api.nvim_set_hl(0, "@string.escape", { ctermfg = 12 })
vim.api.nvim_set_hl(0, "String", { ctermfg = 10 })
vim.api.nvim_set_hl(0, "@character", { link = "String" })
vim.api.nvim_set_hl(0, "Comment", { link = "Special" })
vim.api.nvim_set_hl(0, "Delimiter", { ctermfg = 7 })
vim.api.nvim_set_hl(0, "Type", { ctermfg = 12 })
vim.api.nvim_set_hl(0, "Operator", { ctermfg = 5 })
vim.api.nvim_set_hl(0, "Function", { link = "Normal" })
vim.api.nvim_set_hl(0, "@variable", { link = "Normal" })


-- Rust specific
vim.api.nvim_set_hl(0, "rustCharacter", { ctermfg = "green" })
vim.api.nvim_set_hl(0, "rustSigil", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.const.rust", { link = "Normal" })
vim.api.nvim_set_hl(0, "rustFuncCall", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.method.rust", { link = "Normal" })
vim.api.nvim_set_hl(0, "rustStorage", { link = "Keyword" })
vim.api.nvim_set_hl(0, "rustModPath", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.macro.rust", { link = "Normal", italic = true })
vim.api.nvim_set_hl(0, "@lsp.type.namespace.rust", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.property.rust", { link = "Normal" })


-- Other language specific
-- vim.api.nvim_set_hl(0, "pythonInclude", {})

vim.api.nvim_set_hl(0, "zigMacro", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@constructor.lua", { ctermfg = 7 })
 
