local M = {}

function M.get(c)
  return {
    GitSignsAdd          = { fg = c.add, bg = c.bg1 },
    GitSignsChange       = { fg = c.mod, bg = c.bg1 },
    GitSignsChangeDelete = "GitSignsChange",
    GitSignsDelete       = { fg = c.rem, bg = c.bg1 },
    GitSignsTopDelete    = "GitSignsDelete",
    GitSignsUntracked    = { fg = c.unt, bg = c.bg1 },
  }
end

return M
