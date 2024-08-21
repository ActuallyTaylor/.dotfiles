return {
  -- add everforest
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("everforest").setup({
        background = "soft",
        transparent_background_level = 1,
        italics = true,
        disable_italic_comments = false,
      })
    end,
  },
  -- Configure LazyVim to load everforest
  --
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
