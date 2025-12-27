require("neo-tree").setup({

    source_selector = {
        -- statusline = true,
    },

    filesystem = {

        components = {
            icon = function(config, node, state)
                if node.type == 'file' then
                    return {
                        text = "* ",
                        highlight = config.highlight,
                    }
                end
                return require('neo-tree.sources.common.components').icon(config, node, state)
            end,
        },

        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
        }, -- filtered_items

        window = {
            mappings = {
                ["h"] = "toggle_node", -- Collapse
                ["l"] = "open",        -- Open file or enter directory
            },
        }, -- window

        renderers = {

          directory = {
            {"name", use_git_status_colors = false, trailing_slash = true, right_padding = 0},
            {"diagnostics"},
            {"git_status"},
          },

        } -- renderers

    }, -- filesystem

    default_component_configs = {

      name = { use_git_status_colors = true },

      git_status = {

        symbols = {
          -- Change type
          added     = "+",
          deleted   = "-",
          modified  = "¿",
          renamed   = "¿",
          -- Status type
          untracked = "",
          ignored   = "",
          unstaged  = "",
          staged    = "%",
          conflict  = "!",
        }, -- symbols

      }, -- git_status

    }, -- default_component_configs 

})
