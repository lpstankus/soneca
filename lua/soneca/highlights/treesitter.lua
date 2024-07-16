local M = {}

function M.get(c)
  return {
    ["@none"]           = "Text",
    ["@text"]           = "Text",
    ["@text.emphasis"]  = "Emph",
    ["@text.strike"]    = "Strike",
    ["@text.underline"] = "Underline",

    ["@comment"]       = "Comment",
    ["@string"]        = "String",
    ["@string.escape"] = "Character",
    ["@string.regexp"] = "Constant",
    ["@character"]     = "Character",
    ["@number"]        = "Number",
    ["@boolean"]       = "Boolean",
    ["@tag"]           = "Label",
    ["@annotation"]    = "PreProc",

    ["@module"] = "Include",

    ["@variable"]                   = { fg = c.base },
    ["@variable.member"]            = { fg = c.dar0 },
    ["@variable.builtin"]           = { fg = c.base, italic = true },
    ["@variable.parameter"]         = { fg = c.base },
    ["@variable.parameter.builtin"] = { fg = c.base },

    ["@type"]           = "Type",
    ["@type.wgsl"]      = "Type",
    ["@type.enum"]      = "Type",
    ["@type.qualifier"] = "Keyword",

    ["@exception"] = "Exception",
    ["@namespace"] = "Namespace",
    ["@label"]     = "Label",

    ["@keyword"]                     = "Keyword",
    ["@keyword.import"]              = "Include",
    ["@keyword.operator"]            = "Operator",
    ["@keyword.conditional.ternary"] = "Operator",

    ["@operator"]            = "Operator",
    ["@conditional"]         = "Conditional",
    ["@conditional.ternary"] = "Operator",

    ["@parameter"] = "Variable",
    ["@field"]     = "Field",
    ["@property"]  = "Property",

    ["@function"]         = "Function",
    ["@function.builtin"] = "Function",
    ["@function.macro"]   = "Macro",

    ["@storageclass"]          = "Keyword",
    ["@storageclass.lifetime"] = "Keyword",
    ["@storageclass.zig"]      = "Type",

    ["@constant"]         = "Constant",
    ["@constant.builtin"] = "Constant",
    ["@constant.macro"]   = "Macro",

    ["@include"]      = "Include",
    ["@include.rust"] = "Keyword",
    ["@attribute"]    = "Keyword",

    ["@punctuation"]         = "Punctuation",
    ["@punctuation.bracket"] = "Punctuation",
    ["@punctuation.special"] = "Punctuation",

    ["@text.diff.add"]    = "DiffAdd",
    ["@text.diff.change"] = "DiffChange",
    ["@text.diff.delete"] = "DiffDelete",

    ["@diff.plus"]  = "DiffAdd",
    ["@diff.delta"] = "DiffChange",
    ["@diff.minus"] = "DiffDelete",
  }
end

return M
