return {
    -- file explorer
    {
        "nvim-neo-tree/neo-tree.nvim",
        cmd = "Neotree",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim"
        },
        deactivate = function() vim.cmd([[Neotree close]]) end,
        init = function()
            vim.g.neo_tree_remove_legacy_commands = 1
            if vim.fn.argc() == 1 then
                local stat = vim.loop.fs_stat(vim.fn.argv(0))
                if stat and stat.type == "directory" then
                    require("neo-tree")
                end
            end
        end,
        opts = {
            close_if_last_window = true, -- close neo-tree if it is the last window left in the tab
            popup_border_style = "rounded",
            enable_git_status = true,
            enable_diagnostics = true,
            open_files_do_not_replace_types = {"terminal", "trouble", "qf"}, -- when opening files, do not use windows containing these filetypes or buftypes
            default_component_configs = {
                modified = {symbol = "[+]", highlight = "NeoTreeModified"},
                name = {
                    trailing_slash = false,
                    use_git_status_colors = true,
                    highlight = "NeoTreeFileName"
                },
                git_status = {
                    symbols = {
                        -- Change type
                        added = "+", -- or "✚", but this is redundant info if you use git_status_colors on the name
                        modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
                        deleted = "✖", -- this can only be used in the git_status source
                        renamed = "", -- this can only be used in the git_status source
                        -- Status type
                        untracked = "🤨",
                        ignored = "🙅‍♀️",
                        unstaged = "􀂒",
                        staged = "􀂒",
                        conflict = ""
                    }
                }
            },
            window = {position = "left", width = 30},
            filesystem = {
                filtered_items = {
                    visible = false, -- when true, they will just be displayed differently than normal items
                    hide_dotfiles = false,
                    hide_gitignored = false
                },
                follow_current_file = true,
                group_empty_dirs = true,
                hijack_netrw_behavior = "open_current"
            },
            buffers = {
                follow_current_file = true, -- This will find and focus the file in the active buffer every
                -- time the current file is changed while the tree is open.
                group_empty_dirs = true, -- when true, empty folders will be grouped together
                show_unloaded = true
            }
        }
    }
}
