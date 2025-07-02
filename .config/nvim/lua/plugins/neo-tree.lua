require("neo-tree").setup({
    source_selector = {
        statusline = true,
    },

    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
        },
        window = {
            mappings = {
                ["h"] = "toggle_node", -- Collapse
                ["l"] = "open",        -- Open file or enter directory
            },
        },
    },
})
