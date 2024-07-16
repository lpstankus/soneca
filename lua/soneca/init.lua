local M = {}

function M.load()
  vim.o.termguicolors = true
  vim.g.colors_name = "soneca"

  local colors = require("soneca.colors").get()
  local groups = require("soneca.groups").build_groups(colors)

  for group, hl in pairs(groups) do
    if type(hl) == "string" then hl = { link = hl } end
    vim.api.nvim_set_hl(0, group, hl)
  end

  Terminal(colors)
end

---@param c soneca.ColorMap
function Terminal(c)
  vim.g.terminal_color_0 = c.term.black
  vim.g.terminal_color_8 = c.term.black

  vim.g.terminal_color_1 = c.term.red
  vim.g.terminal_color_9 = c.term.red

  vim.g.terminal_color_2  = c.term.green
  vim.g.terminal_color_10 = c.term.green

  vim.g.terminal_color_3  = c.term.yellow
  vim.g.terminal_color_11 = c.term.yellow

  vim.g.terminal_color_4  = c.term.blue
  vim.g.terminal_color_12 = c.term.blue

  vim.g.terminal_color_5  = c.term.magenta
  vim.g.terminal_color_18 = c.term.magenta

  vim.g.terminal_color_6  = c.term.cyan
  vim.g.terminal_color_14 = c.term.cyan

  vim.g.terminal_color_7  = c.term.white
  vim.g.terminal_color_15 = c.term.white
end

return M
