vim.api.nvim_set_hl(0, "Number", { ctermfg = "blue" })
vim.api.nvim_set_hl(0, "Keyword", { ctermfg = "blue", })
vim.api.nvim_set_hl(0, "Statement", { ctermfg = "red", })
vim.api.nvim_set_hl(0, "Constant", { ctermfg = "darkblue" })
vim.api.nvim_set_hl(0, "PreProc", { })
vim.api.nvim_set_hl(0, "@string.escape", { ctermfg = "darkblue" })
vim.api.nvim_set_hl(0, "@character", { ctermfg = "green" })
-- vim.api.nvim_set_hl(0, "Comment", { ctermfg = "lightgreen" })
vim.api.nvim_set_hl(0, "Comment", { link = "Special" })
vim.api.nvim_set_hl(0, "Delimiter", { ctermfg = "gray" })
vim.api.nvim_set_hl(0, "Type", { ctermfg = "blue" })
vim.api.nvim_set_hl(0, "Operator", { ctermfg = "red" })
vim.api.nvim_set_hl(0, "Function", { link = "Normal" })
vim.api.nvim_set_hl(0, "@variable", { link = "Normal" })


-- Rust specific
vim.api.nvim_set_hl(0, "rustCharacter", { ctermfg = "green" })
vim.api.nvim_set_hl(0, "rustSigil", { ctermfg = "red" })
vim.api.nvim_set_hl(0, "@lsp.type.const.rust", { link = "Normal" })
vim.api.nvim_set_hl(0, "rustFuncCall", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.method.rust", { link = "Normal" })
vim.api.nvim_set_hl(0, "rustStorage", { link = "Keyword" })
vim.api.nvim_set_hl(0, "rustModPath", { link = "Normal" })
vim.api.nvim_set_hl(0, "rustEscape", { ctermfg = "lightblue" })
vim.api.nvim_set_hl(0, "@lsp.type.macro.rust", { link = "Normal", italic = true })


-- Other language specific
vim.api.nvim_set_hl(0, "pythonInclude", { ctermfg = "red" })

vim.api.nvim_set_hl(0, "zigMacro", { link = "Keyword" })
