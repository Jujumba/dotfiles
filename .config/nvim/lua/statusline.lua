vim.api.nvim_set_hl(0, "MiniStatuslineModeNormal", { ctermbg = 12, ctermfg = 0 })
vim.api.nvim_set_hl(0, "MiniStatuslineModeInsert", { ctermbg = 10, ctermfg = 0 })
vim.api.nvim_set_hl(0, "MiniStatuslineModeCommand", { ctermbg = 14, ctermfg = 0 })
vim.api.nvim_set_hl(0, "MiniStatuslineModeVisual", { ctermbg = 9, ctermfg = 0 })

vim.api.nvim_set_hl(0, "MiniStatuslineFilename", { ctermfg = 3 })

local location_format = '%l:%v'

require('mini.statusline').setup({
  use_icons = false,

  content = {
    active = function()
      local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = nil })
      local filename    = MiniStatusline.section_filename({ trunc_width = 140 })
      local location    = MiniStatusline.section_location({ trunc_width = 999 })

      return MiniStatusline.combine_groups({
        { hl = mode_hl, strings = { mode } },
        '%<',
        { hl = 'MiniStatuslineFilename', strings = { filename } },
        { hl = 'MiniStatuslineFileinfo', strings = { location_format } },
      })
    end,

    inactive = function()
      local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = nil })
      local filename    = MiniStatusline.section_filename({ trunc_width = 140 })
      local location    = MiniStatusline.section_location({ trunc_width = 999 })

      return MiniStatusline.combine_groups({
        { hl = 'MiniStatuslineInactive', strings = { mode } },
        '%<',
        { hl = 'MiniStatuslineInactive', strings = { filename } },
        { hl = 'MiniStatuslineInactive', strings = { location_format } },
      })
    end,
  },
})
