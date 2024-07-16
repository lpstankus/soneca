local M = {}

function M.get(c)
  return {
    NeogitBranch     = { fg = c.lig3, bold = true },
    NeogitBranchHead = { fg = c.dar1, bold = true },
    NeogitStash      = { fg = c.dar2, bold = true },
    NeogitRemote     = { fg = c.dar2, bold = true, italic = true },
    NeogitObjectId   = { fg = c.gra0 },
    NeogitFold       = { fg = c.gra1 },

    NeogitSelectionHeader = { fg = c.lig3 },
    NeogitSelectionCount  = { fg = c.base },

    NeogitChangeAdded    = { fg = c.add, bold = true, italic = true },
    NeogitChangeModified = { fg = c.mod, bold = true, italic = true },
    NeogitChangeDeleted  = { fg = c.rem, bold = true, italic = true },
    NeogitChangeRenamed  = { fg = c.base, bold = true, italic = true },
    NeogitChangeUpdated  = { fg = c.base, bold = true, italic = true },
    NeogitChangeCopied   = { fg = c.base, bold = true, italic = true },
    NeogitChangeNewFile  = { fg = c.base, bold = true, italic = true },
    NeogitChangeUnmerged = { fg = c.lig1, bold = true, italic = true },

    NeogitDiffHeader  = { fg = c.lig3, bg = c.bg0, bold = true },
    NeogitHunkHeader  = { fg = c.lig3, bg = c.bg0, bold = true },
    NeogitDiffContext = { fg = c.lig3, bg = c.bg1 },
    NeogitDiffAdd     = { fg = c.add, bg = c.bg1 },
    NeogitDiffDelete  = { fg = c.rem, bg = c.bg1 },

    NeogitHunkHeaderHighlight  = { fg = c.bg0, bg = c.base, bold = true },
    NeogitDiffContextHighlight = { fg = c.fg0, bg = c.bg1 },
    NeogitDiffAddHighlight     = { fg = c.add, bg = c.bg1 },
    NeogitDiffDeleteHighlight  = { fg = c.rem, bg = c.bg1 },
    NeogitDiffHeaderCursor     = { fg = c.lig1, bg = c.bg2, bold = true },
    NeogitHunkHeaderCursor     = { fg = c.lig1, bg = c.bg2, bold = true },
    NeogitDiffContextCursor    = { fg = c.base, bg = c.bg0 },
    NeogitDiffAddCursor        = { fg = c.add, bg = c.bg0 },
    NeogitDiffDeleteCursor     = { fg = c.rem, bg = c.bg0 },
  }
end

return M
