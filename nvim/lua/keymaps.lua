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
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fw', telescope_builtin.live_grep, { desc = 'Grep' })
vim.keymap.set('n', '<leader>fs', telescope_builtin.lsp_document_symbols, { desc = 'LSP document symbols' })
vim.keymap.set('n', '<leader>fW', telescope_builtin.lsp_workspace_symbols, { desc = 'LSP workspace symbols' })
vim.keymap.set('n', '<leader>fm', telescope_builtin.man_pages, { desc = 'Man pages' })
vim.keymap.set('n', '<leader>fr', telescope_builtin.lsp_references, { desc = 'Find references' })

-- Buffers & Bufferline
vim.keymap.set('n', '<leader>bb', '<cmd>BufferLinePick<cr>', { desc = 'Open selected buffer' })
vim.keymap.set('n', '<leader>bc', '<cmd>bd<cr>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<leader>bp', '<c-t>', { desc = 'Open previous buffer' })
vim.keymap.set('n', '<leader>c', '<cmd>bd<cr>', { desc = 'Close current buffer' } )
vim.keymap.set('n', '<leader>bC', '<cmd>BufferLinePickClose<cr>', { desc = 'Close selected buffer' })
vim.keymap.set('n', '<leader>bp', '<C-6>', { desc = 'Open previous buffer' })

-- Comment.nvim
local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
local comment_api = require("Comment.api")

vim.keymap.set('n', '<leader>/', comment_api.toggle.linewise.current)
vim.keymap.set('x', '<leader>/', function()
    vim.api.nvim_feedkeys(esc, 'nx', false)
    comment_api.toggle.linewise(vim.fn.visualmode())
end)
