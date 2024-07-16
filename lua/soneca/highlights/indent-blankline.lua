local M = {}

function M.get(c)
  return {
    IblScope                   = { fg = c.dar2, nocombine = true },
    IblIndent                  = { fg = c.bg2, nocombine = true },
    IndentBlanklineChar        = { fg = c.bg2, nocombine = true },
    IndentBlanklineContextChar = { fg = c.bg2, nocombine = true },
  }
end

return M
