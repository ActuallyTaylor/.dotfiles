-- Utility function to load a .env file
local function load_dotenv(dotenv_path)
  local file = io.open(dotenv_path, "r")
  if not file then
    return
  end

  for line in file:lines() do
    local key, value = line:match("^([%w_]+)=([%w_./:-]+)$")
    if key and value then
      vim.fn.setenv(key, value)
    end
  end

  file:close()
end

-- Call the function with your .env file path
load_dotenv(vim.fn.getcwd() .. "/.env")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
