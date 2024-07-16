local M = {}

---@class soneca.TermColors
---@field black   string
---@field red     string
---@field green   string
---@field yellow  string
---@field blue    string
---@field magenta string
---@field cyan    string
---@field white   string

---@class soneca.ColorMap
---@field bg0  string
---@field bg1  string
---@field bg2  string
---@field dar2 string
---@field dar1 string
---@field dar0 string
---@field base string
---@field lig0 string
---@field lig1 string
---@field lig2 string
---@field lig3 string
---@field gra0 string
---@field gra1 string
---@field gre0 string
---@field gre1 string
---@field gre2 string
---@field err  string
---@field war  string
---@field oka  string
---@field hin  string
---@field add  string
---@field mod  string
---@field rem  string
---@field term soneca.TermColors

---@return soneca.ColorMap
function M.get()
  return {
    bg0  = "#050402",
    -- bg0  = "#0D0C0A",
    bg1  = "#24221F",
    bg2  = "#332F2B",
    bg3  = "#1C1A18",

    dar2 = "#756E65",
    dar1 = "#8C8479",
    dar0 = "#A59B8F",
    base = "#BEB3A5",
    lig0 = "#C4BAAE",
    lig1 = "#CBC2B6",
    lig2 = "#D1C9BF",
    lig3 = "#D8D1C8",
    lig4 = "#F2EFED",

    gra0 = "#606969",
    gra1 = "#505959",

    gre0 = "#608070",
    gre1 = "#80A070",
    gre2 = "#709088",

    err = "#AC7168",
    war = "#B5B073",
    oka = "#7C9A79",
    hin = "#727C8F",

    add = "#A5BEA6",
    mod = "#A5B0BE",
    rem = "#BEA5BC",

    term = {
      black   = "#302C28",
      red     = "#B96A5F",
      green   = "#7C9A79",
      yellow  = "#CFC064",
      blue    = "#65779D",
      magenta = "#9C799A",
      cyan    = "#7AA5A5",
      white   = "#E8DCCB",
    }
  }
end

return M
