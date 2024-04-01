local M = {}
local wk = require("which-key")

local function getModeTables(tbl, plugin)
  local mmap = {}
  for key, value in pairs(tbl[plugin]) do
    if type(value) == "table" then
      mmap[#mmap + 1] = { key, value }
    end
  end
  return mmap
end

local function registerMapping(mapping, mode)
  wk.register(mapping, { mode = mode })
end

M.load_mappings = function(plugin)
  plugin = plugin or "general"
  local M = require("config.keymaps")
  local mmap = getModeTables(M, plugin)
  for _, map in ipairs(mmap) do
    registerMapping(map[2], map[1])
  end
end

return M
