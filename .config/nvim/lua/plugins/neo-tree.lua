local common = require('neo-tree.sources.common.components')

require("neo-tree").setup({

    source_selector = {
        -- statusline = true,
    },

    filesystem = {

        components = {
            -- icon = function(config, node, state)
            --     if node.type == 'file' then
            --         return {
            --             text = "*",
            --             highlight = config.highlight,
            --         }
            --     end
            --     return common.icon(config, node, state)
            -- end,
            -- name = function(config, node, state)
            --     local result = common.name({right_padding = 0}, node, state)
            --     return result
            -- end,
            -- trailing_slash = function()
            --     return {
            --         text = "/",
            --         highlight = "Normal"
            --     }
            -- end,
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
            {"icon"},
            {"name", trailing_slash = true},
            -- {"trailing_slash"},
            {"diagnostics"},
            {"git_status"},
          },

        } -- renderers

    }, -- filesystem

    default_component_configs = {

      name = { use_git_status_colors = false },

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
          staged    = "",
          conflict  = "!",
        }, -- symbols

      }, -- git_status

    }, -- default_component_configs 

})

