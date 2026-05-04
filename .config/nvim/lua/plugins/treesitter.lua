vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    -- Map the filetype to a Tree-sitter language name
    local lang = vim.treesitter.language.get_lang(args.match)
    if not lang then
      return -- No Tree-sitter language for this filetype
    end

    -- Check if a parser actually exists for this language
    local parser = vim.treesitter.get_parser(args.buf, lang)
    if not parser then
      return -- No parser installed, skip silently
    end

    vim.treesitter.start(args.buf, lang)
  end,
})
