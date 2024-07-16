local M = {}

local groups = {
  "base",
  "cmp",
  "gitsigns",
  "indent-blankline",
  "neogit",
  "noice",
  "semantic_tokens",
  "treesitter",
}

---@param colors soneca.ColorMap
function M.build_groups(colors)
  local highlights = {}
  for _, group in pairs(groups) do
    local h = require("soneca.highlights." .. group).get(colors)
    highlights = vim.tbl_deep_extend("force", highlights, h)
  end
  return highlights
end

return M
