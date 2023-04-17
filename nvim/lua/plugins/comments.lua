return {
    {"JoosepAlviste/nvim-ts-context-commentstring", lazy = true}, 
    {
        "echasnovski/mini.comment",
        event = "VeryLazy",
        opts = {
            hooks = {
                pre = function()
                    require("ts_context_commentstring.internal").update_commentstring(
                        {})
                end
            },
            -- Module mappings. Use `''` (empty string) to disable one.
            mappings = {
                -- Toggle comment (like `gcip` - comment inner paragraph) for both
                -- Normal and Visual modes
                comment = 'gc',

                -- Toggle comment on current line
                comment_line = 'gcc',

                -- Define 'comment' textobject (like `dgc` - delete whole comment block)
                textobject = 'gc'
            }
        },
        config = function(_, opts) require("mini.comment").setup(opts) end
    }
}
