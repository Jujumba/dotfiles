vim.api.nvim_set_hl(0, "Number", { ctermfg = "blue" })
vim.api.nvim_set_hl(0, "Keyword", { ctermfg = "red", })
vim.api.nvim_set_hl(0, "Statement", { ctermfg = "red", })
vim.api.nvim_set_hl(0, "Constant", { ctermfg = "darkblue" })
vim.api.nvim_set_hl(0, "PreProc", { })
vim.api.nvim_set_hl(0, "@string.escape", { ctermfg = "darkblue" })
vim.api.nvim_set_hl(0, "@character", { ctermfg = "green" })
vim.api.nvim_set_hl(0, "Comment", { ctermfg = "darkgreen" })
vim.api.nvim_set_hl(0, "Delimiter", { ctermfg = "gray" })
vim.api.nvim_set_hl(0, "Type", { ctermfg = "cyan", bold = true })
vim.api.nvim_set_hl(0, "Operator", { ctermfg = "red" })


-- Rust specific
vim.api.nvim_set_hl(0, "rustCharacter", { ctermfg = "green" })
vim.api.nvim_set_hl(0, "rustSigil", { ctermfg = "red" })
vim.api.nvim_set_hl(0, "@lsp.type.const.rust", { ctermfg = "darkyellow" })
vim.api.nvim_set_hl(0, "rustFuncCall", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.method.rust", { link = "Normal" })
vim.api.nvim_set_hl(0, "rustStorage", { ctermfg = "red", bold = true })
vim.api.nvim_set_hl(0, "rustModPath", { link = "Normal" })


-- Other language specific
vim.api.nvim_set_hl(0, "pythonInclude", { ctermfg = "red" })

vim.api.nvim_set_hl(0, "zigMacro", { link = "Keyword" })
