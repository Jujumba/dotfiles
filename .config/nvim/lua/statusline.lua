vim.api.nvim_set_hl(0, "MiniStatuslineModeNormal", { ctermbg = 4, ctermfg = 0 })
vim.api.nvim_set_hl(0, "MiniStatuslineModeInsert", { ctermbg = 2, ctermfg = 0 })
vim.api.nvim_set_hl(0, "MiniStatuslineModeCommand", { ctermbg = 6, ctermfg = 0 })
vim.api.nvim_set_hl(0, "MiniStatuslineModeVisual", { ctermbg = 1, ctermfg = 0 })

vim.api.nvim_set_hl(0, "MiniStatuslineFilename", { ctermfg = 3 })


require('mini.statusline').setup({
  use_icons = false,

  content = {
    active = function()
      local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = nil })
      local filename    = MiniStatusline.section_filename({ trunc_width = 140 })
      local lsp         = MiniStatusline.section_lsp({ trunc_width = 50 })
      local location    = MiniStatusline.section_location({ trunc_width = 999 })

      return MiniStatusline.combine_groups({
        { hl = mode_hl, strings = { mode } },
        '%<',
        { hl = 'MiniStatuslineFilename', strings = { filename } },
        { hl = 'MiniStatuslineInactive', strings = { lsp } },
        { hl = 'MiniStatuslineFileinfo', strings = { '%l:%2v' } },
      })
    end,

    inactive = function()
      local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = nil })
      local filename    = MiniStatusline.section_filename({ trunc_width = 140 })
      local lsp         = MiniStatusline.section_lsp({ trunc_width = 50 })
      local location    = MiniStatusline.section_location({ trunc_width = 999 })

      return MiniStatusline.combine_groups({
        { hl = 'MiniStatuslineInactive', strings = { mode } },
        '%<',
        { hl = 'MiniStatuslineInactive', strings = { filename } },
        { hl = 'MiniStatuslineInactive', strings = { lsp } },
        { hl = 'MiniStatuslineInactive', strings = { '%l:%2v' } },
      })
    end,
  },
})
