local M = {}

function M.get(_)
  return {
    ["@lsp.keyword"]        = "Keyword",
    ["@lsp.keyword.import"] = "Include",

    ["@lsp.type"]           = "Type",
    ["@lsp.type.enum"]      = "Type",
    ["@lsp.type.struct"]    = "Type",
    ["@lsp.type.builtin"]   = "Function",
    ["@lsp.type.variable"]  = "Variable",
    ["@lsp.type.parameter"] = "Variable",
    ["@lsp.type.property"]  = "Property",
    ["@lsp.type.errorTag"]  = "Constant",

    ["@lsp.type.keywordLiteral"] = "Literal",

    ["@lsp.type.macro"]     = "Macro",
    ["@lsp.type.namespace"] = "Namespace",
  }
end

return M
