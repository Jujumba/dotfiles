vim.highlight.priorities.treesitter = 100

-- General
vim.api.nvim_set_hl(0, "@number", { ctermfg = 12 })
vim.api.nvim_set_hl(0, "@number.float", { link = "@number" })
vim.api.nvim_set_hl(0, "Punctuation", { ctermfg = 8 })
vim.api.nvim_set_hl(0, "@keyword", { ctermfg = 3, bold = true })
vim.api.nvim_set_hl(0, "@string", { ctermfg = 9 })
vim.api.nvim_set_hl(0, "@string.escape", { ctermfg = 12 })
vim.api.nvim_set_hl(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
vim.api.nvim_set_hl(0, "@type", { ctermfg = 4 })
vim.api.nvim_set_hl(0, "@type.builtin", { ctermfg = 4, bold = true })
vim.api.nvim_set_hl(0, "LineNr", { ctermfg = 8 })
vim.api.nvim_set_hl(0, "CursorLineNr", { ctermfg = 3, bold = true })
vim.api.nvim_set_hl(0, "MatchParen", { ctermfg = 8, ctermbg = 0, bold = true })
vim.api.nvim_set_hl(0, "Visual", { ctermfg = 15, ctermbg = 8 })

vim.api.nvim_set_hl(0, "@function", { link = "Normal" })
vim.api.nvim_set_hl(0, "@function.builtin", { ctermfg = 14, bold = true })

vim.api.nvim_set_hl(0, "@character", { link = "@string" })
vim.api.nvim_set_hl(0, "@variable", { link = "Normal" })
vim.api.nvim_set_hl(0, "Statement", { link = "Keyword" })
vim.api.nvim_set_hl(0, "PreProc", { link = "Keyword" })
vim.api.nvim_set_hl(0, "Identifier", { link = "Normal" })
vim.api.nvim_set_hl(0, "@boolean", { ctermfg = 12, bold = true })


-- Punctuation and etc.
vim.api.nvim_set_hl(0, "@module", { link = "Normal" })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "Punctuation" })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { link = "Punctuation" })
vim.api.nvim_set_hl(0, "@constructor.lua", { link = "Punctuation" })
vim.api.nvim_set_hl(0, "@operator", { link = "Punctuation" })
-- vim.api.nvim_set_hl(0, "@lsp.type.operator", { ctermfg = 13, bold = true })


-- Language related
vim.api.nvim_set_hl(0, "@lsp.type.typeAlias", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.struct", { link = "Type" })
vim.api.nvim_set_hl(0, "@lsp.type.const", { link = "Constant" })
vim.api.nvim_set_hl(0, "@lsp.type.generic", { link = "Type" })
vim.api.nvim_set_hl(0, "@lsp.typemod.property.declaration", { link = "Type" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace", { link = "Normal" })
vim.api.nvim_set_hl(0, "@constructor", { link = "@function" })
vim.api.nvim_set_hl(0, "@variable.builtin.cpp", { link = "@variable" })
vim.api.nvim_set_hl(0, "@variable.builtin.asm", { ctermfg = 11 })
vim.api.nvim_set_hl(0, "@function.builtin.asm", { ctermfg = 3, bold = true })
-- vim.api.nvim_set_hl(0, "@lsp.type.variable", { ctermfg = 15 })
vim.api.nvim_set_hl(0, "Field", { link = "Normal" })
vim.api.nvim_set_hl(0, "@variable.member", { link = "Field" })
vim.api.nvim_set_hl(0, "@lsp.typemod.property.declaration", { link = "Field" })
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { ctermfg = 13 })
vim.api.nvim_set_hl(0, "@constant.builtin", { ctermfg = 12, bold = true })

vim.api.nvim_set_hl(0, "@keyword.import.zig", { link = "@function.builtin" }) -- mnemonics
vim.api.nvim_set_hl(0, "@markup.raw.block", { link = "Normal" }) -- md code blocks

-- Comments
vim.api.nvim_set_hl(0, "Comment", { ctermfg = 12 })
-- Preview: TODO 
vim.api.nvim_set_hl(0, "SpecialComment", { ctermfg = 14, ctermbg = 0, bold = true })
vim.api.nvim_set_hl(0, "@comment.todo.comment", { link = "SpecialComment" })
vim.api.nvim_set_hl(0, "@comment.error.comment", { link = "SpecialComment" })

-- Status Line
vim.cmd("highlight StatusLine ctermfg=3 ctermbg=7 cterm=bold")
vim.cmd("highlight StatusLineNC ctermfg=8 ctermbg=7 cterm=NONE")

-- Misc

-- Misc

-- Plugin specific
vim.api.nvim_set_hl(0, 'NeoTreeCursorLine', { ctermbg = 8 })
vim.api.nvim_set_hl(0, "TelescopeSelection", { ctermbg = 0, bold = true })
vim.api.nvim_set_hl(0, "TelescopeMatching", { ctermfg = 6 })

-- Highlight yanked area
vim.api.nvim_create_autocmd('TextYankPost', {
	group = vim.api.nvim_create_augroup('highlight_yank', {}),
	desc = 'Hightlight selection on yank',
	pattern = '*',
	callback = function()
		vim.highlight.on_yank { higroup = 'IncSearch', timeout = 100 }
	end,
})
