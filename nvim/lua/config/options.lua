-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.whichwrap:append({
  ["<"] = true,
  [">"] = true,
  ["["] = true,
  ["]"] = true,
  h = true,
  l = true,
})

vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

vim.g.claude_api = os.getenv("CLAUDE_API_KEY")
