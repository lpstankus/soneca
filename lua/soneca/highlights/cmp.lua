local M = {}

function M.get(c)
  return {
    CmpItemKind               = { fg = c.bg0, bg = c.base, bold = true },
    CmpItemKindText           = "CmpItemKind",
    CmpItemKindComment        = "CmpItemKind",
    CmpItemKindVariable       = "CmpItemKind",
    CmpItemKindTreesitter     = "CmpItemKind",
    CmpItemKinDVariableMember = "CmpItemKind",
    CmpItemKindField          = "CmpItemKind",
    CmpItemKindProperty       = "CmpItemKindField",

    CmpItemKindFunction    = { fg = c.bg0, bg = c.lig1, bold = true },
    CmpItemKindOperator    = "CmpItemKindFunction",
    CmpItemKindConstructor = "CmpItemKindFunction",
    CmpItemKindMethod      = "CmpItemKindFunction",

    CmpItemKindString = { fg = c.bg0, bg = c.gre0, bold = true },
    CmpItemKindColor  = "CmpItemKindString",

    CmpItemKindEvent     = { fg = c.bg0, bg = c.gre1, bold = true },
    CmpItemKindUnit      = "CmpItemKindEvent",
    CmpItemKindReference = "CmpItemKindEvent",

    CmpItemKindConstant   = { fg = c.bg0, bg = c.gre2, bold = true },
    CmpItemKindValue      = "CmpItemKindConstant",
    CmpItemKindEnumMember = "CmpItemKindConstant",

    CmpItemKindKeyword = { fg = c.bg0, bg = c.dar2, bold = true },
    CmpItemKindModule  = "CmpItemKindKeyword",
    CmpItemKindFile    = "CmpItemKindKeyword",
    CmpItemKindFolder  = "CmpItemKindKeyword",

    CmpItemKindStruct        = { fg = c.bg0, bg = c.lig3, bold = true },
    CmpItemKindClass         = "CmpItemKindStruct",
    CmpItemKindEnum          = "CmpItemKindStruct",
    CmpItemKindTypeParameter = "CmpItemKindStruct",
    CmpItemKindInterface     = "CmpItemKindStruct",

    CmpItemKindSnippet = { fg = c.bg0, bg = c.hin, bold = true },
    CmpItemKindCopilot = "CmpItemKindSnippet",
  }
end

return M
