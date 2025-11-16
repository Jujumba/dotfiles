vim.highlight.priorities.treesitter = 100

local keyword = { ctermfg = 1, bold = true };
local _function = { ctermfg = 10 };
local type = { ctermfg = 12 };
local type_builtin = { ctermfg = 12, bold = true };
local field = { ctermfg = 3 };
local constant = { ctermfg = 14, bold = true };
local number = { ctermfg = 13 };
local boolean = constant;
local punctuation = { ctermfg = 8 };
local string = {ctermfg = 11 };
local string_escape = { ctermfg = 12 };
local dead_code = { ctermfg = 8 }

-- General
vim.api.nvim_set_hl(0, "@number", number)
vim.api.nvim_set_hl(0, "@number.float", number)
vim.api.nvim_set_hl(0, "Punctuation", punctuation)
vim.api.nvim_set_hl(0, "@keyword", keyword)
vim.api.nvim_set_hl(0, "@string", string)
vim.api.nvim_set_hl(0, "@string.escape", string_escape)
vim.api.nvim_set_hl(0, "@lsp.type.escapeSequence", string_escape)
vim.api.nvim_set_hl(0, "@type", type)
vim.api.nvim_set_hl(0, "@type.builtin", type_builtin)
vim.api.nvim_set_hl(0, "LineNr", { ctermfg = 8 })
vim.api.nvim_set_hl(0, "CursorLineNr", { ctermfg = 3, bold = true })
vim.api.nvim_set_hl(0, "MatchParen", { ctermfg = 12, ctermbg = 0, bold = true })
vim.api.nvim_set_hl(0, "Visual", { ctermfg = 15, ctermbg = 8 })

vim.api.nvim_set_hl(0, "@function", _function)
vim.api.nvim_set_hl(0, "@function.builtin", _function)

vim.api.nvim_set_hl(0, "@character", string)
vim.api.nvim_set_hl(0, "@variable", { link = "Normal" })
vim.api.nvim_set_hl(0, "Statement", { link = "Keyword" })
vim.api.nvim_set_hl(0, "PreProc", { link = "Keyword" })
vim.api.nvim_set_hl(0, "Identifier", { link = "Normal" })
vim.api.nvim_set_hl(0, "@boolean", constant)


-- Punctuation and etc.
vim.api.nvim_set_hl(0, "@module", { link = "Normal" })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "Punctuation" })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { link = "Punctuation" })
vim.api.nvim_set_hl(0, "@constructor.lua", { link = "Punctuation" })
vim.api.nvim_set_hl(0, "@operator", keyword)

-- Language related
vim.api.nvim_set_hl(0, "@lsp.type.typeAlias", { link = "Normal" })
vim.api.nvim_set_hl(0, "@lsp.type.struct", { link = "Type" })
vim.api.nvim_set_hl(0, "@lsp.type.const", { link = "Constant" })
vim.api.nvim_set_hl(0, "@lsp.type.generic", { link = "Type" })
vim.api.nvim_set_hl(0, "@lsp.typemod.property.declaration", { link = "Type" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace", { link = "Normal" })
vim.api.nvim_set_hl(0, "@constructor", _function)
vim.api.nvim_set_hl(0, "@variable.builtin.cpp", { link = "@variable" })
vim.api.nvim_set_hl(0, "@variable.builtin.asm", { ctermfg = 11 })
vim.api.nvim_set_hl(0, "@function.builtin.asm", { ctermfg = 3, bold = true })
vim.api.nvim_set_hl(0, "Field", { link = "Normal" })
vim.api.nvim_set_hl(0, "@variable.member", { link = "Field" })
vim.api.nvim_set_hl(0, "@lsp.typemod.property.declaration", { link = "Field" })
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { ctermfg = 13 })
vim.api.nvim_set_hl(0, "@constant.builtin", constant)
vim.api.nvim_set_hl(0, "@property.toml", { link = Normal })

vim.api.nvim_set_hl(0, "@variable.member", field)
vim.api.nvim_set_hl(0, "@property", field)

vim.api.nvim_set_hl(0, "@keyword.import.zig", { link = "@function.builtin" }) -- mnemonics
vim.api.nvim_set_hl(0, "@markup.raw.block", { link = "Normal" }) -- md code blocks

-- This is a comment!
-- TODO: NOTE: WARN: ERROR:
vim.api.nvim_set_hl(0, "Comment", { ctermfg = 15 })
vim.api.nvim_set_hl(0, "SpecialComment", { ctermfg = 14, ctermbg = 0, bold = true })
vim.api.nvim_set_hl(0, "ErrorComment", { ctermfg = 9, ctermbg = 0, bold = true })
vim.api.nvim_set_hl(0, "@comment.todo.comment", { link = "SpecialComment" })
vim.api.nvim_set_hl(0, "@comment.note.comment", { link = "SpecialComment" })
vim.api.nvim_set_hl(0, "@comment.error.comment", { link = "ErrorComment" })
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", dead_code)

-- Git
vim.api.nvim_set_hl(0, "DiffAdd", { ctermfg = 10, bold = true })
vim.api.nvim_set_hl(0, "DiffTextAdd", { ctermfg = 14, bold = true })
vim.api.nvim_set_hl(0, "DiffText", { ctermfg = 14, bold = true })
vim.api.nvim_set_hl(0, "DiffDelete", { ctermfg = 9, bold = true })


-- Status Line
vim.cmd("highlight StatusLine ctermfg=3 ctermbg=0 cterm=bold")
vim.cmd("highlight StatusLineNC ctermfg=7 ctermbg=0 cterm=NONE")

-- Misc

-- Plugin specific
vim.api.nvim_set_hl(0, 'NeoTreeCursorLine', { ctermbg = 0 })
vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { ctermfg = 4, bold = true })
vim.api.nvim_set_hl(0, 'NeoTreeDirectoryIcon', { ctermfg = 4, bold = true })
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
