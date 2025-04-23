vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<cr>')

-- Splits and navigating
local smart_splits = require("smart-splits")
vim.keymap.set('n', '<C-l>', smart_splits.move_cursor_right)
vim.keymap.set('n', '<C-h>', smart_splits.move_cursor_left)
vim.keymap.set('n', '<C-k>', smart_splits.move_cursor_up)
vim.keymap.set('n', '<C-j>', smart_splits.move_cursor_down)

vim.keymap.set('n', '<leader>h', '<cmd>split<cr>', { desc = 'Horizontal split'})
vim.keymap.set('n', '<leader>v', '<cmd>vsplit<cr>', { desc = 'Vertical split' })

-- Search
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function() telescope_builtin.find_files( { hidden = true }) end, { desc = 'Search files' })
vim.keymap.set('n', '<leader>fw', telescope_builtin.live_grep, { desc = 'Grep' })
vim.keymap.set('n', '<leader>fs', telescope_builtin.lsp_document_symbols, { desc = 'Search LSP document symbols' })
vim.keymap.set('n', '<leader>fW', telescope_builtin.lsp_workspace_symbols, { desc = 'Search LSP workspace symbols' })
vim.keymap.set('n', '<leader>fm', telescope_builtin.man_pages, { desc = 'Search man pages' })
vim.keymap.set('n', '<leader>fr', telescope_builtin.lsp_references, { desc = 'Search references' })
vim.keymap.set('n', '<leader>fe', telescope_builtin.diagnostics, { desc = 'Search diagnostic errors' })
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, { desc = 'Search opened buffers' })
-- Git related search
vim.keymap.set('n', '<leader>fgs', telescope_builtin.git_status, { desc = 'Search git status' })
vim.keymap.set('n', '<leader>fgc', telescope_builtin.git_commits, { desc = 'Search git commits' })
vim.keymap.set('n', '<leader>fgb', telescope_builtin.git_branches, { desc = 'Search git branches' })


-- LSP
vim.keymap.set("n", '<leader>r', vim.lsp.buf.rename)
vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

-- Buffers & Bufferline
vim.keymap.set('n', '<leader>bb', '<cmd>BufferLinePick<cr>', { desc = 'Open selected buffer' })
vim.keymap.set('n', '<leader>bc', '<cmd>bd<cr>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<leader>c', '<cmd>bd<cr>', { desc = 'Close current buffer' } )

vim.keymap.set('n', '<leader><leader>', '<C-6>', { desc = 'Open previous buffer' })

vim.keymap.set('n', 'E', vim.diagnostic.open_float, { desc = 'Hover LSP error' })

-- Comment.nvim
local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
local comment_api = require("Comment.api")

vim.keymap.set('n', '<leader>/', comment_api.toggle.linewise.current)
vim.keymap.set('x', '<leader>/', function()
    vim.api.nvim_feedkeys(esc, 'nx', false)
    comment_api.toggle.linewise(vim.fn.visualmode())
end)
