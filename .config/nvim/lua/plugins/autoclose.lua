require('autoclose').setup({
    -- Disable single quote completion for rust (lifetimes aahhh)
    keys = {
        ["'"] = { escape = true, close = true, pair = "''", disabled_filetypes = { "rust" } },
    }
})
