require('mini.surround').setup({
  mappings = {
    add          = '<leader>sa',
    delete       = '',
    replace      = '',
    find         = '',
    find_left    = '',
    highlight    = '',
    update_n_lines = '',
    suffix_last  = 'l',
    suffix_next  = 'n',
  },
  n_lines = 50,
  respect_selection_type = true,
  search_method = 'cover_or_next',
})
